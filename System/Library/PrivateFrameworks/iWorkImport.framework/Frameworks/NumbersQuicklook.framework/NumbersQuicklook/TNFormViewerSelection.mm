@interface TNFormViewerSelection
+ (id)selection;
+ (id)selectionForRecordIndex:(unsigned int)a3;
+ (id)selectionForRecordIndex:(unsigned int)a3 fieldIndex:(unsigned __int16)a4;
- (BOOL)isEqual:(id)a3;
- (TNFormViewerSelection)initWithRecordIndex:(unsigned int)a3 fieldIndex:(unsigned __int16)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TNFormViewerSelection

+ (id)selection
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)selectionForRecordIndex:(unsigned int)a3
{
  v3 = *&a3;
  v4 = [a1 alloc];
  v6 = objc_msgSend_initWithRecordIndex_(v4, v5, v3);

  return v6;
}

+ (id)selectionForRecordIndex:(unsigned int)a3 fieldIndex:(unsigned __int16)a4
{
  v4 = a4;
  v5 = *&a3;
  v6 = [a1 alloc];
  v8 = objc_msgSend_initWithRecordIndex_fieldIndex_(v6, v7, v5, v4);

  return v8;
}

- (TNFormViewerSelection)initWithRecordIndex:(unsigned int)a3 fieldIndex:(unsigned __int16)a4
{
  v7.receiver = self;
  v7.super_class = TNFormViewerSelection;
  result = [(TNFormViewerSelection *)&v7 init];
  if (result)
  {
    result->_recordIndex = a3;
    result->_fieldIndex = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_recordIndex(self, v5, v6);
  v11 = objc_msgSend_fieldIndex(self, v8, v9);

  return objc_msgSend_initWithRecordIndex_fieldIndex_(v4, v10, v7, v11);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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