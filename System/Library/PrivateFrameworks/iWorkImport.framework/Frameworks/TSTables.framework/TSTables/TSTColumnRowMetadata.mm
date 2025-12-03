@interface TSTColumnRowMetadata
+ (id)metadata;
+ (id)metadataWithUid:(const TSKUIDStruct *)uid;
- (BOOL)migrateStylesToDocument:(id)document;
- (TSKUIDStruct)columnRowUID;
- (TSTColumnRowMetadata)initWithSize:(double)size hidingAction:(unsigned __int8)action cellStyle:(id)style textStyle:(id)textStyle columnRowUID:(TSKUIDStruct)d;
- (TSTColumnRowMetadata)metadataWithUid:(const TSKUIDStruct *)uid;
@end

@implementation TSTColumnRowMetadata

+ (id)metadata
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (id)metadataWithUid:(const TSKUIDStruct *)uid
{
  v4 = objc_opt_class();
  result = objc_msgSend_metadata(v4, v5, v6, v7, v8);
  *(result + 8) = *uid;
  return result;
}

- (TSTColumnRowMetadata)metadataWithUid:(const TSKUIDStruct *)uid
{
  v5 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithSize_hidingAction_cellStyle_textStyle_columnRowUID_(v5, v6, self->_hidingAction, self->_cellStyle, self->_textStyle, uid->_lower, uid->_upper, self->_size);

  return v7;
}

- (TSTColumnRowMetadata)initWithSize:(double)size hidingAction:(unsigned __int8)action cellStyle:(id)style textStyle:(id)textStyle columnRowUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  styleCopy = style;
  textStyleCopy = textStyle;
  v19.receiver = self;
  v19.super_class = TSTColumnRowMetadata;
  v16 = [(TSTColumnRowMetadata *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_columnRowUID.var0.var0._lower = lower;
    v16->_columnRowUID.var0.var0._upper = upper;
    v16->_size = size;
    v16->_hidingAction = action;
    objc_storeStrong(&v16->_cellStyle, style);
    v17->_definedCellStyle = styleCopy != 0;
    objc_storeStrong(&v17->_textStyle, textStyle);
    v17->_definedTextStyle = textStyleCopy != 0;
  }

  return v17;
}

- (BOOL)migrateStylesToDocument:(id)document
{
  documentCopy = document;
  v8 = documentCopy;
  cellStyle = self->_cellStyle;
  if (cellStyle)
  {
    v10 = objc_msgSend_migratedStyleForStyle_(documentCopy, v5, cellStyle, v6, v7);
    v11 = self->_cellStyle;
    v12 = v10 != v11;
    if (v10 != v11)
    {
      objc_storeStrong(&self->_cellStyle, v10);
    }
  }

  else
  {
    v12 = 0;
  }

  textStyle = self->_textStyle;
  if (textStyle)
  {
    v14 = objc_msgSend_migratedStyleForStyle_(v8, v5, textStyle, v6, v7);
    if (v14 != self->_textStyle)
    {
      objc_storeStrong(&self->_textStyle, v14);
      v12 = 1;
    }
  }

  return v12;
}

- (TSKUIDStruct)columnRowUID
{
  p_columnRowUID = &self->_columnRowUID;
  lower = self->_columnRowUID.var0.var0._lower;
  upper = p_columnRowUID->var0.var0._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

@end