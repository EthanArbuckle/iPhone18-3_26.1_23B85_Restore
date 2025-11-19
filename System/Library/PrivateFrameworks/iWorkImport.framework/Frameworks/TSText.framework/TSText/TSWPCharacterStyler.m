@interface TSWPCharacterStyler
- (TSWPCharacterStyler)initWithStorage:(id)a3;
- (void)applyStyle:(id)a3 range:(_NSRange)a4 undoTransaction:(TSWPStorageTransaction *)a5;
- (void)performStylingInRange:(_NSRange)a3 undoTransaction:(TSWPStorageTransaction *)a4;
@end

@implementation TSWPCharacterStyler

- (TSWPCharacterStyler)initWithStorage:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSWPCharacterStyler;
  return [(TSWPStorageStyler *)&v4 initWithStorage:a3 attributeArrayKind:3];
}

- (void)applyStyle:(id)a3 range:(_NSRange)a4 undoTransaction:(TSWPStorageTransaction *)a5
{
  length = a4.length;
  location = a4.location;
  v14 = a3;
  objc_opt_class();
  v9 = TSUDynamicCast();
  v12 = objc_msgSend_storage(self, v10, v11);
  objc_msgSend_setCharacterStyle_range_undoTransaction_(v12, v13, v9, location, length, a5);
}

- (void)performStylingInRange:(_NSRange)a3 undoTransaction:(TSWPStorageTransaction *)a4
{
  length = a3.length;
  location = a3.location;
  v8 = objc_msgSend_storage(self, a2, a3.location);
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
          [(TSWPStorageStyler *)&v26 performStylingInRange:location undoTransaction:length, a4];
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
    [(TSWPStorageStyler *)&v26 performStylingInRange:location undoTransaction:length, a4];
  }
}

@end