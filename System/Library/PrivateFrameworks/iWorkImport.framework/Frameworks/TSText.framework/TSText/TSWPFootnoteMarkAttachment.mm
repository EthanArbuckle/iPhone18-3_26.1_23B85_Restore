@interface TSWPFootnoteMarkAttachment
- (id)copyWithContext:(id)context;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSWPFootnoteMarkAttachment

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_276DF7584, off_2812DC408[122]);

  v7.receiver = self;
  v7.super_class = TSWPFootnoteMarkAttachment;
  [(TSWPTextualAttachment *)&v7 saveToArchive:v6 archiver:archiverCopy];
  *(v6 + 16) |= 2u;
  *(v6 + 32) = 2;
}

- (id)copyWithContext:(id)context
{
  contextCopy = context;
  v4 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_initWithContext_(v4, v5, contextCopy);

  return v6;
}

@end