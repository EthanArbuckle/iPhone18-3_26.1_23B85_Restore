@interface TSWPAttachment
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)mostSpecificAttachmentFromInfo:(id)info;
- (BOOL)isAttachedToBodyText;
- (BOOL)isEqual:(id)equal;
- (TSWPAttachment)initWithContext:(id)context;
- (TSWPStorage)parentStorage;
- (id)copyWithContext:(id)context;
- (id)topLevelAttachment;
- (unint64_t)findCharIndexWithHintIndex:(unint64_t *)index;
- (void)migrateStyleWithDocumentRoot:(id)root;
- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
@end

@implementation TSWPAttachment

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {
    v7 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], v5, *MEMORY[0x277CBE658], @"It is illegal to instantiate TSWPAttachment it is abstract", 0);;
    objc_exception_throw(v7);
  }

  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___TSWPAttachment;
  return objc_msgSendSuper2(&v8, sel_allocWithZone_, zone);
}

+ (id)mostSpecificAttachmentFromInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    while (1)
    {
      objc_opt_class();
      v6 = objc_msgSend_owningAttachment(infoCopy, v4, v5);
      v7 = TSUDynamicCast();

      if (v7)
      {
        break;
      }

      v10 = objc_msgSend_parentInfo(infoCopy, v8, v9);

      infoCopy = v10;
      if (!v10)
      {
        v7 = 0;
        infoCopy = 0;
        break;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (TSWPAttachment)initWithContext:(id)context
{
  v4.receiver = self;
  v4.super_class = TSWPAttachment;
  return [(TSWPAttachment *)&v4 initWithContext:context];
}

- (id)copyWithContext:(id)context
{
  contextCopy = context;
  v4 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_initWithContext_(v4, v5, contextCopy);

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  v3 = objc_opt_class();
  return v3 == objc_opt_class();
}

- (id)topLevelAttachment
{
  selfCopy = self;
  if (selfCopy)
  {
    do
    {
      v5 = objc_msgSend_parentStorage(selfCopy, v2, v3);
      v8 = objc_msgSend_wpKind(v5, v6, v7);

      if (!v8)
      {
        break;
      }

      v11 = objc_msgSend_parentStorage(selfCopy, v9, v10);
      v14 = objc_msgSend_wpKind(v11, v12, v13);

      objc_opt_class();
      v17 = objc_msgSend_parentStorage(selfCopy, v15, v16);
      v20 = v17;
      if (v14 == 2)
      {
        v26 = objc_msgSend_owningAttachment(v17, v18, v19);
        v27 = TSUDynamicCast();

        selfCopy = v27;
        break;
      }

      v21 = objc_msgSend_parentInfo(v17, v18, v19);
      v24 = objc_msgSend_owningAttachment(v21, v22, v23);
      v25 = TSUDynamicCast();

      selfCopy = v25;
    }

    while (v25);
  }

  return selfCopy;
}

- (unint64_t)findCharIndexWithHintIndex:(unint64_t *)index
{
  WeakRetained = objc_loadWeakRetained(&self->_parentStorage);
  CharIndexForAttachment_withHintIndex = objc_msgSend_findCharIndexForAttachment_withHintIndex_(WeakRetained, v6, self, index);

  return CharIndexForAttachment_withHintIndex;
}

- (void)migrateStyleWithDocumentRoot:(id)root
{
  rootCopy = root;
  v6 = objc_msgSend_objectsForStyleMigrating(self, v4, v5);
  v9 = v6;
  if (v6 && objc_msgSend_count(v6, v7, v8) && objc_msgSend_objectsNeedToBeMigrated_(rootCopy, v10, v9))
  {
    objc_msgSend_migrateStylesInObjects_(rootCopy, v11, v9);
  }
}

- (BOOL)isAttachedToBodyText
{
  v3 = objc_msgSend_parentStorage(self, a2, v2);
  v6 = objc_msgSend_wpKind(v3, v4, v5) == 0;

  return v6;
}

- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  v6 = objc_msgSend_context(root, a2, root, context);
  objc_msgSend_wasAddedToDocumentWithContext_(self, v5, v6);
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  v5 = objc_msgSend_context(root, a2, root);
  objc_msgSend_willBeRemovedFromDocumentWithContext_(self, v4, v5);
}

- (TSWPStorage)parentStorage
{
  WeakRetained = objc_loadWeakRetained(&self->_parentStorage);

  return WeakRetained;
}

@end