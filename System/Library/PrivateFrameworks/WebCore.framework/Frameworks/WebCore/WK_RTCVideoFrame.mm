@interface WK_RTCVideoFrame
- (WK_RTCVideoFrame)initWithBuffer:(id)a3 rotation:(int64_t)a4 timeStampNs:(int64_t)a5;
- (id)newI420VideoFrame;
@end

@implementation WK_RTCVideoFrame

- (id)newI420VideoFrame
{
  v3 = [WK_RTCVideoFrame alloc];
  v4 = [(RTCVideoFrameBuffer *)self->_buffer toI420];
  v5 = [(WK_RTCVideoFrame *)v3 initWithBuffer:v4 rotation:self->_rotation timeStampNs:self->_timeStampNs];

  return v5;
}

- (WK_RTCVideoFrame)initWithBuffer:(id)a3 rotation:(int64_t)a4 timeStampNs:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = WK_RTCVideoFrame;
  v10 = [(WK_RTCVideoFrame *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_buffer, a3);
    v11->_rotation = a4;
    v11->_timeStampNs = a5;
    v11->_duration = 0;
  }

  return v11;
}

@end