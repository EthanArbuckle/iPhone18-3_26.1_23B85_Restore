@interface TSPVersionMessageObject
- (TSPVersionMessageObject)initWithVersionMessage:(const void *)message;
- (id).cxx_construct;
@end

@implementation TSPVersionMessageObject

- (TSPVersionMessageObject)initWithVersionMessage:(const void *)message
{
  v8.receiver = self;
  v8.super_class = TSPVersionMessageObject;
  v4 = [(TSPVersionMessageObject *)&v8 init];
  p_versionMessage = &v4->_versionMessage;
  if (v4)
  {
    v6 = p_versionMessage == message;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    p_versionMessage->current_size_ = 0;
    if (*message)
    {
      google::protobuf::RepeatedField<unsigned int>::Reserve();
    }
  }

  return v4;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end