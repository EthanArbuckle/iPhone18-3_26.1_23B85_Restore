@interface WK_RTCWrappedNativeVideoEncoder
- (WK_RTCWrappedNativeVideoEncoder)initWithNativeEncoder:()unique_ptr<webrtc:(std::default_delete<webrtc::VideoEncoder>>)webrtc :VideoEncoder;
- (unique_ptr<webrtc::VideoEncoder,)releaseWrappedEncoder;
@end

@implementation WK_RTCWrappedNativeVideoEncoder

- (WK_RTCWrappedNativeVideoEncoder)initWithNativeEncoder:()unique_ptr<webrtc:(std::default_delete<webrtc::VideoEncoder>>)webrtc :VideoEncoder
{
  v8.receiver = self;
  v8.super_class = WK_RTCWrappedNativeVideoEncoder;
  result = [(WK_RTCWrappedNativeVideoEncoder *)&v8 init];
  if (result)
  {
    v5 = *webrtc.__ptr_;
    *webrtc.__ptr_ = 0;
    ptr = result->_wrappedEncoder.__ptr_;
    result->_wrappedEncoder.__ptr_ = v5;
    if (ptr)
    {
      v7 = result;
      (*(*ptr + 8))(ptr);
      return v7;
    }
  }

  return result;
}

- (unique_ptr<webrtc::VideoEncoder,)releaseWrappedEncoder
{
  ptr = self->_wrappedEncoder.__ptr_;
  self->_wrappedEncoder.__ptr_ = 0;
  *v2 = ptr;
  return self;
}

@end