@interface TSWPCharacterStyler
- (TSWPCharacterStyler)initWithStorage:(id)storage;
- (void)applyStyle:(id)style range:(_NSRange)range undoTransaction:(TSWPStorageTransaction *)transaction;
- (void)performStylingInRange:(_NSRange)range undoTransaction:(TSWPStorageTransaction *)transaction;
@end

@implementation TSWPCharacterStyler

- (TSWPCharacterStyler)initWithStorage:(id)storage
{
  v4.receiver = self;
  v4.super_class = TSWPCharacterStyler;
  return [(TSWPStorageStyler *)&v4 initWithStorage:storage attributeArrayKind:3];
}

- (void)applyStyle:(id)style range:(_NSRange)range undoTransaction:(TSWPStorageTransaction *)transaction
{
  length = range.length;
  location = range.location;
  styleCopy = style;
  objc_opt_class();
  v9 = TSUDynamicCast();
  v12 = objc_msgSend_storage(self, v10, v11);
  objc_msgSend_setCharacterStyle_range_undoTransaction_(v12, v13, v9, location, length, transaction);
}

- (void)performStylingInRange:(_NSRange)range undoTransaction:(TSWPStorageTransaction *)transaction
{
  length = range.length;
  location = range.location;
  v8 = objc_msgSend_storage(self, a2, range.location);
  v10 = objc_msgSend_attributeArrayForKind_withCreate_(v8, v9, 3, 1);

  if (v10)
  {
    v11 = *(v10 + 24);
    if (v11)
    {
      v12 = v11 - 1;
      v13 = TSWPAttributeArray::charIndexForAttributeIndex(v10, (v11 - 1));
      v16 = objc_msgSend_storage(self, v14, v15);
      if (v13 == objc_msgSend_length(v16, v17, v18))
      {
        v19 = TSWPAttributeArray::objectForAttributeIndex(v10, v12);

        if (!v19)
        {
          (*(*v10 + 64))(v10, v12, 1, 0);
          v26.receiver = self;
          v26.super_class = TSWPCharacterStyler;
          [(TSWPStorageStyler *)&v26 performStylingInRange:location undoTransaction:length, transaction];
          v22 = objc_msgSend_storage(self, v20, v21);
          v25 = objc_msgSend_length(v22, v23, v24);
          (*(*v10 + 56))(v10, 0, v25, *(v10 + 24), 0, 0);

          return;
        }
      }

      else
      {
      }
    }

    v26.receiver = self;
    v26.super_class = TSWPCharacterStyler;
    [(TSWPStorageStyler *)&v26 performStylingInRange:location undoTransaction:length, transaction];
  }
}

@end