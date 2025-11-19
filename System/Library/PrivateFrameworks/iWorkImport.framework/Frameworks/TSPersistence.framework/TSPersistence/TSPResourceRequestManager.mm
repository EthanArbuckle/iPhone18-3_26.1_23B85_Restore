@interface TSPResourceRequestManager
+ (id)sharedManager;
- (TSPResourceRequestManager)init;
- (id)createResourceRequestForDocumentResourceInfos:(id)a3 resourceContext:(id)a4;
- (id)createResourceRequestForTags:(id)a3 resourceContext:(id)a4;
- (int64_t)resourceAccessTypeForResourceRequest:(id)a3;
- (void)resourceRequestDidPerformResourceAccess:(id)a3 error:(id)a4;
- (void)resourceRequestWillPerformResourceAccess:(id)a3;
@end

@implementation TSPResourceRequestManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A7C488;
  block[3] = &unk_27A6E4768;
  block[4] = a1;
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

- (id)createResourceRequestForTags:(id)a3 resourceContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_documentResourceRegistry(v7, v8, v9);
  v12 = objc_msgSend_documentResourceInfosForTags_(v10, v11, v6);

  if (v12)
  {
    v13 = [TSPDocumentResourceRequest alloc];
    v16 = objc_msgSend_documentResourceCache(v7, v14, v15);
    v18 = objc_msgSend_initWithDocumentResourceInfos_tags_documentResourceCache_(v13, v17, v12, v6, v16);

    objc_msgSend_addObserver_(v18, v19, self);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)createResourceRequestForDocumentResourceInfos:(id)a3 resourceContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [TSPDocumentResourceRequest alloc];
  v11 = objc_msgSend_documentResourceCache(v6, v9, v10);

  v13 = objc_msgSend_initWithDocumentResourceInfos_documentResourceCache_(v8, v12, v7, v11);
  objc_msgSend_addObserver_(v13, v14, self);
  return v13;
}

- (int64_t)resourceAccessTypeForResourceRequest:(id)a3
{
  v3 = a3;
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

- (void)resourceRequestWillPerformResourceAccess:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_276A7C780;
  v8[3] = &unk_27A6E5AB0;
  v9 = v4;
  v6 = v4;
  objc_msgSend_notifyObserversUsingBlock_(observers, v7, v8);
}

- (void)resourceRequestDidPerformResourceAccess:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  observers = self->_observers;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_276A7C84C;
  v12[3] = &unk_27A6E5AD8;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  objc_msgSend_notifyObserversUsingBlock_(observers, v11, v12);
}

@end