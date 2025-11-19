@interface TSWPFootnoteMarkAttachment
- (id)copyWithContext:(id)a3;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSWPFootnoteMarkAttachment

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v4, v5, sub_276DF7584, off_2812DC408[122]);

  v7.receiver = self;
  v7.super_class = TSWPFootnoteMarkAttachment;
  [(TSWPTextualAttachment *)&v7 saveToArchive:v6 archiver:v4];
  *(v6 + 16) |= 2u;
  *(v6 + 32) = 2;
}

- (id)copyWithContext:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_initWithContext_(v4, v5, v3);

  return v6;
}

@end