@interface WK_RTCVideoFrame
- (WK_RTCVideoFrame)initWithBuffer:(id)buffer rotation:(int64_t)rotation timeStampNs:(int64_t)ns;
- (id)newI420VideoFrame;
@end

@implementation WK_RTCVideoFrame

- (id)newI420VideoFrame
{
  v3 = [WK_RTCVideoFrame alloc];
  toI420 = [(RTCVideoFrameBuffer *)self->_buffer toI420];
  v5 = [(WK_RTCVideoFrame *)v3 initWithBuffer:toI420 rotation:self->_rotation timeStampNs:self->_timeStampNs];

  return v5;
}

- (WK_RTCVideoFrame)initWithBuffer:(id)buffer rotation:(int64_t)rotation timeStampNs:(int64_t)ns
{
  bufferCopy = buffer;
  v13.receiver = self;
  v13.super_class = WK_RTCVideoFrame;
  v10 = [(WK_RTCVideoFrame *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_buffer, buffer);
    v11->_rotation = rotation;
    v11->_timeStampNs = ns;
    v11->_duration = 0;
  }

  return v11;
}

@end