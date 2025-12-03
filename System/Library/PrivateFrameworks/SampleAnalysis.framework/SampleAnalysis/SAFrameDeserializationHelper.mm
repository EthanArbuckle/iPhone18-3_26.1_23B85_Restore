@interface SAFrameDeserializationHelper
- (SAFrameDeserializationHelper)initWithFrame:(id)frame buffer:(const void *)buffer bufferLength:(unint64_t)length;
@end

@implementation SAFrameDeserializationHelper

- (SAFrameDeserializationHelper)initWithFrame:(id)frame buffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v12.receiver = self;
  v12.super_class = SAFrameDeserializationHelper;
  v8 = [(SAFrameDeserializationHelper *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_frame, frame);
    v9->_buffer = buffer;
    v9->_bufferLength = length;
    v10 = v9;
  }

  return v9;
}

@end