@interface TSTCommentStorageWrapper
+ (id)cellDiffProperties;
- (TSTCommentStorageWrapper)initWithCommentStorage:(id)storage;
- (id)initFromPropertyCommandMessage:(const Message *)message unarchiver:(id)unarchiver;
- (id)objectByRemovingPropertiesInMap:(id)map addingPropertiesInMap:(id)inMap updateInverseResetPropertyMap:(id)propertyMap updateInverseSetPropertyMap:(id)setPropertyMap;
- (void)applyToCell:(id)cell;
- (void)saveToPropertyCommandMessage:(Message *)message archiver:(id)archiver;
@end

@implementation TSTCommentStorageWrapper

- (TSTCommentStorageWrapper)initWithCommentStorage:(id)storage
{
  storageCopy = storage;
  v9.receiver = self;
  v9.super_class = TSTCommentStorageWrapper;
  v6 = [(TSTCommentStorageWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_commentStorage, storage);
  }

  return v7;
}

- (void)applyToCell:(id)cell
{
  cellCopy = cell;
  commentStorage = self->_commentStorage;
  v9 = cellCopy;
  if (commentStorage)
  {
    objc_msgSend_setCommentStorage_(cellCopy, v5, commentStorage, v6, v7);
  }

  else
  {
    objc_msgSend_setCommentStorage_(cellCopy, v5, 0, v6, v7);
  }
}

+ (id)cellDiffProperties
{
  if (qword_27CFB6B90 != -1)
  {
    sub_22170B220();
  }

  v3 = qword_27CFB6B88;

  return v3;
}

- (id)objectByRemovingPropertiesInMap:(id)map addingPropertiesInMap:(id)inMap updateInverseResetPropertyMap:(id)propertyMap updateInverseSetPropertyMap:(id)setPropertyMap
{
  inMapCopy = inMap;
  objc_msgSend_setObject_forProperty_(setPropertyMap, v9, self, 910, v10);
  selfCopy = self;
  if (objc_msgSend_containsProperty_(inMapCopy, v12, 910, v13, v14))
  {
    v18 = objc_msgSend_objectForProperty_(inMapCopy, v15, 910, v16, v17);

    selfCopy = v18;
  }

  return selfCopy;
}

- (id)initFromPropertyCommandMessage:(const Message *)message unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v17.receiver = self;
  v17.super_class = TSTCommentStorageWrapper;
  v7 = [(TSTCommentStorageWrapper *)&v17 init];
  v8 = v7;
  if (v7)
  {
    commentStorage = v7->_commentStorage;
    v7->_commentStorage = 0;

    if (message[1].var0)
    {
      var0 = message[1].var1.var0;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = sub_2216CE0E0;
      v15[3] = &unk_27845F710;
      v16 = v8;
      v11 = unarchiverCopy;
      v12 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v11, v13, var0, v12, 0, v15);
    }
  }

  return v8;
}

- (void)saveToPropertyCommandMessage:(Message *)message archiver:(id)archiver
{
  archiverCopy = archiver;
  commentStorage = self->_commentStorage;
  if (commentStorage)
  {
    LODWORD(message[1].var0) |= 1u;
    var0 = message[1].var1.var0;
    if (!var0)
    {
      v10 = message->var1.var0;
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      var0 = MEMORY[0x223DA0390](v10);
      message[1].var1.var0 = var0;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v6, commentStorage, var0, v7);
    v15 = objc_msgSend_replies(self->_commentStorage, v11, v12, v13, v14);
    v20 = objc_msgSend_count(v15, v16, v17, v18, v19);

    if (v20)
    {
      objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v21, *MEMORY[0x277D80980], @"TSDThreadedComments", v22);
    }
  }
}

@end