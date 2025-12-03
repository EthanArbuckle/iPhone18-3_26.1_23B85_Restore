@interface KNMacArchivedUILayout
- (KNMacArchivedUILayout)initWithUILayout:(id)layout context:(id)context;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation KNMacArchivedUILayout

- (KNMacArchivedUILayout)initWithUILayout:(id)layout context:(id)context
{
  layoutCopy = layout;
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = KNMacArchivedUILayout;
  v10 = [(KNMacArchivedUILayout *)&v14 initWithContext:contextCopy];
  if (v10)
  {
    v11 = objc_msgSend_copy(layoutCopy, v8, v9);
    uiLayout = v10->_uiLayout;
    v10->_uiLayout = v11;
  }

  return v10;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812EA908[38]);

  v8 = objc_msgSend_context(self, v6, v7);
  v10 = objc_msgSend_uiLayoutFromArchive_unarchiver_context_(KNMacUILayout, v9, v5, unarchiverCopy, v8);
  uiLayout = self->_uiLayout;
  self->_uiLayout = v10;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_275DCD620, off_2812EA908[38]);

  objc_msgSend_saveToArchive_archiver_(self->_uiLayout, v6, v5, archiverCopy);
}

@end