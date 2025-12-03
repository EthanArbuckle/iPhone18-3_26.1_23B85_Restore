@interface TSPResourceRequestManager
+ (id)sharedManager;
- (TSPResourceRequestManager)init;
- (id)createResourceRequestForDocumentResourceInfos:(id)infos resourceContext:(id)context;
- (id)createResourceRequestForTags:(id)tags resourceContext:(id)context;
- (int64_t)resourceAccessTypeForResourceRequest:(id)request;
- (void)resourceRequestDidPerformResourceAccess:(id)access error:(id)error;
- (void)resourceRequestWillPerformResourceAccess:(id)access;
@end

@implementation TSPResourceRequestManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A7C488;
  block[3] = &unk_27A6E4768;
  block[4] = self;
  if (qword_280A52A08 != -1)
  {
    dispatch_once(&qword_280A52A08, block);
  }

  v2 = qword_280A52A00;

  return v2;
}

- (TSPResourceRequestManager)init
{
  v6.receiver = self;
  v6.super_class = TSPResourceRequestManager;
  v2 = [(TSPResourceRequestManager *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    observers = v2->_observers;
    v2->_observers = v3;
  }

  return v2;
}

- (id)createResourceRequestForTags:(id)tags resourceContext:(id)context
{
  tagsCopy = tags;
  contextCopy = context;
  v10 = objc_msgSend_documentResourceRegistry(contextCopy, v8, v9);
  v12 = objc_msgSend_documentResourceInfosForTags_(v10, v11, tagsCopy);

  if (v12)
  {
    v13 = [TSPDocumentResourceRequest alloc];
    v16 = objc_msgSend_documentResourceCache(contextCopy, v14, v15);
    v18 = objc_msgSend_initWithDocumentResourceInfos_tags_documentResourceCache_(v13, v17, v12, tagsCopy, v16);

    objc_msgSend_addObserver_(v18, v19, self);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)createResourceRequestForDocumentResourceInfos:(id)infos resourceContext:(id)context
{
  contextCopy = context;
  infosCopy = infos;
  v8 = [TSPDocumentResourceRequest alloc];
  v11 = objc_msgSend_documentResourceCache(contextCopy, v9, v10);

  v13 = objc_msgSend_initWithDocumentResourceInfos_documentResourceCache_(v8, v12, infosCopy, v11);
  objc_msgSend_addObserver_(v13, v14, self);
  return v13;
}

- (int64_t)resourceAccessTypeForResourceRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)resourceRequestWillPerformResourceAccess:(id)access
{
  accessCopy = access;
  observers = self->_observers;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_276A7C780;
  v8[3] = &unk_27A6E5AB0;
  v9 = accessCopy;
  v6 = accessCopy;
  objc_msgSend_notifyObserversUsingBlock_(observers, v7, v8);
}

- (void)resourceRequestDidPerformResourceAccess:(id)access error:(id)error
{
  accessCopy = access;
  errorCopy = error;
  observers = self->_observers;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_276A7C84C;
  v12[3] = &unk_27A6E5AD8;
  v13 = accessCopy;
  v14 = errorCopy;
  v9 = errorCopy;
  v10 = accessCopy;
  objc_msgSend_notifyObserversUsingBlock_(observers, v11, v12);
}

@end