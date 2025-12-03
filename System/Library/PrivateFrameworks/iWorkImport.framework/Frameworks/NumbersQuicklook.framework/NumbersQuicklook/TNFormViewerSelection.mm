@interface TNFormViewerSelection
+ (id)selection;
+ (id)selectionForRecordIndex:(unsigned int)index;
+ (id)selectionForRecordIndex:(unsigned int)index fieldIndex:(unsigned __int16)fieldIndex;
- (BOOL)isEqual:(id)equal;
- (TNFormViewerSelection)initWithRecordIndex:(unsigned int)index fieldIndex:(unsigned __int16)fieldIndex;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TNFormViewerSelection

+ (id)selection
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)selectionForRecordIndex:(unsigned int)index
{
  v3 = *&index;
  v4 = [self alloc];
  v6 = objc_msgSend_initWithRecordIndex_(v4, v5, v3);

  return v6;
}

+ (id)selectionForRecordIndex:(unsigned int)index fieldIndex:(unsigned __int16)fieldIndex
{
  fieldIndexCopy = fieldIndex;
  v5 = *&index;
  v6 = [self alloc];
  v8 = objc_msgSend_initWithRecordIndex_fieldIndex_(v6, v7, v5, fieldIndexCopy);

  return v8;
}

- (TNFormViewerSelection)initWithRecordIndex:(unsigned int)index fieldIndex:(unsigned __int16)fieldIndex
{
  v7.receiver = self;
  v7.super_class = TNFormViewerSelection;
  result = [(TNFormViewerSelection *)&v7 init];
  if (result)
  {
    result->_recordIndex = index;
    result->_fieldIndex = fieldIndex;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_recordIndex(self, v5, v6);
  v11 = objc_msgSend_fieldIndex(self, v8, v9);

  return objc_msgSend_initWithRecordIndex_fieldIndex_(v4, v10, v7, v11);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v8 = objc_msgSend_recordIndex(self, v6, v7);
      if (v8 == objc_msgSend_recordIndex(v5, v9, v10))
      {
        v13 = objc_msgSend_fieldIndex(self, v11, v12);
        v16 = v13 == objc_msgSend_fieldIndex(v5, v14, v15);
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

@end