@interface TSWPAttachment
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)mostSpecificAttachmentFromInfo:(id)a3;
- (BOOL)isAttachedToBodyText;
- (BOOL)isEqual:(id)a3;
- (TSWPAttachment)initWithContext:(id)a3;
- (TSWPStorage)parentStorage;
- (id)copyWithContext:(id)a3;
- (id)topLevelAttachment;
- (unint64_t)findCharIndexWithHintIndex:(unint64_t *)a3;
- (void)migrateStyleWithDocumentRoot:(id)a3;
- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)willBeRemovedFromDocumentRoot:(id)a3;
@end

@implementation TSWPAttachment

+ (id)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {
    v7 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], v5, *MEMORY[0x277CBE658], @"It is illegal to instantiate TSWPAttachment it is abstract", 0);;
    objc_exception_throw(v7);
  }

  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___TSWPAttachment;
  return objc_msgSendSuper2(&v8, sel_allocWithZone_, a3);
}

+ (id)mostSpecificAttachmentFromInfo:(id)a3
{
  v3 = a3;
  if (v3)
  {
    while (1)
    {
      objc_opt_class();
      v6 = objc_msgSend_owningAttachment(v3, v4, v5);
      v7 = TSUDynamicCast();

      if (v7)
      {
        break;
      }

      v10 = objc_msgSend_parentInfo(v3, v8, v9);

      v3 = v10;
      if (!v10)
      {
        v7 = 0;
        v3 = 0;
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

- (TSWPAttachment)initWithContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSWPAttachment;
  return [(TSWPAttachment *)&v4 initWithContext:a3];
}

- (id)copyWithContext:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_initWithContext_(v4, v5, v3);

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = objc_opt_class();
  return v3 == objc_opt_class();
}

- (id)topLevelAttachment
{
  v4 = self;
  if (v4)
  {
    do
    {
      v5 = objc_msgSend_parentStorage(v4, v2, v3);
      v8 = objc_msgSend_wpKind(v5, v6, v7);

      if (!v8)
      {
        break;
      }

      v11 = objc_msgSend_parentStorage(v4, v9, v10);
      v14 = objc_msgSend_wpKind(v11, v12, v13);

      objc_opt_class();
      v17 = objc_msgSend_parentStorage(v4, v15, v16);
      v20 = v17;
      if (v14 == 2)
      {
        v26 = objc_msgSend_owningAttachment(v17, v18, v19);
        v27 = TSUDynamicCast();

        v4 = v27;
        break;
      }

      v21 = objc_msgSend_parentInfo(v17, v18, v19);
      v24 = objc_msgSend_owningAttachment(v21, v22, v23);
      v25 = TSUDynamicCast();

      v4 = v25;
    }

    while (v25);
  }

  return v4;
}

- (unint64_t)findCharIndexWithHintIndex:(unint64_t *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_parentStorage);
  CharIndexForAttachment_withHintIndex = objc_msgSend_findCharIndexForAttachment_withHintIndex_(WeakRetained, v6, self, a3);

  return CharIndexForAttachment_withHintIndex;
}

- (void)migrateStyleWithDocumentRoot:(id)a3
{
  v12 = a3;
  v6 = objc_msgSend_objectsForStyleMigrating(self, v4, v5);
  v9 = v6;
  if (v6 && objc_msgSend_count(v6, v7, v8) && objc_msgSend_objectsNeedToBeMigrated_(v12, v10, v9))
  {
    objc_msgSend_migrateStylesInObjects_(v12, v11, v9);
  }
}

- (BOOL)isAttachedToBodyText
{
  v3 = objc_msgSend_parentStorage(self, a2, v2);
  v6 = objc_msgSend_wpKind(v3, v4, v5) == 0;

  return v6;
}

- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v6 = objc_msgSend_context(a3, a2, a3, a4);
  objc_msgSend_wasAddedToDocumentWithContext_(self, v5, v6);
}

- (void)willBeRemovedFromDocumentRoot:(id)a3
{
  v5 = objc_msgSend_context(a3, a2, a3);
  objc_msgSend_willBeRemovedFromDocumentWithContext_(self, v4, v5);
}

- (TSWPStorage)parentStorage
{
  WeakRetained = objc_loadWeakRetained(&self->_parentStorage);

  return WeakRetained;
}

@end