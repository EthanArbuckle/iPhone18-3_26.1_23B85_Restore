@interface KNMacArchivedUILayout
- (KNMacArchivedUILayout)initWithUILayout:(id)a3 context:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
@end

@implementation KNMacArchivedUILayout

- (KNMacArchivedUILayout)initWithUILayout:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = KNMacArchivedUILayout;
  v10 = [(KNMacArchivedUILayout *)&v14 initWithContext:v7];
  if (v10)
  {
    v11 = objc_msgSend_copy(v6, v8, v9);
    uiLayout = v10->_uiLayout;
    v10->_uiLayout = v11;
  }

  return v10;
}

- (void)loadFromUnarchiver:(id)a3
{
  v12 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(v12, v4, off_2812EA908[38]);

  v8 = objc_msgSend_context(self, v6, v7);
  v10 = objc_msgSend_uiLayoutFromArchive_unarchiver_context_(KNMacUILayout, v9, v5, v12, v8);
  uiLayout = self->_uiLayout;
  self->_uiLayout = v10;
}

- (void)saveToArchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v7, v4, sub_275DCD620, off_2812EA908[38]);

  objc_msgSend_saveToArchive_archiver_(self->_uiLayout, v6, v5, v7);
}

@end