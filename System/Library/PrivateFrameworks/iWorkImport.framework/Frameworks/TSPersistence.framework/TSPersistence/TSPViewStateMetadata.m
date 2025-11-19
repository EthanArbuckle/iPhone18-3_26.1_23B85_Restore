@interface TSPViewStateMetadata
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSPViewStateMetadata

- (void)loadFromUnarchiver:(id)a3
{
  v6 = a3;
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  v5 = objc_msgSend_messageWithDescriptor_(v6, v4, off_2812FBC48[38]);

  sub_2769EFBB4(&self->_message, v5);
}

- (void)saveToArchiver:(id)a3
{
  v6 = a3;
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v6, v4, sub_276AFD33C, off_2812FBC48[38]);

  sub_2769EFBB4(v5, &self->_message);
}

@end