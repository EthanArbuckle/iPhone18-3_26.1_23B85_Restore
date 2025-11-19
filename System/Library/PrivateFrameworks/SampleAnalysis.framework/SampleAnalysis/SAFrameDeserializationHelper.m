@interface SAFrameDeserializationHelper
- (SAFrameDeserializationHelper)initWithFrame:(id)a3 buffer:(const void *)a4 bufferLength:(unint64_t)a5;
@end

@implementation SAFrameDeserializationHelper

- (SAFrameDeserializationHelper)initWithFrame:(id)a3 buffer:(const void *)a4 bufferLength:(unint64_t)a5
{
  v12.receiver = self;
  v12.super_class = SAFrameDeserializationHelper;
  v8 = [(SAFrameDeserializationHelper *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_frame, a3);
    v9->_buffer = a4;
    v9->_bufferLength = a5;
    v10 = v9;
  }

  return v9;
}

@end