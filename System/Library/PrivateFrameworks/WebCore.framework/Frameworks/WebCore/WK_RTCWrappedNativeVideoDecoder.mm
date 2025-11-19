@interface WK_RTCWrappedNativeVideoDecoder
- (WK_RTCWrappedNativeVideoDecoder)initWithNativeDecoder:()unique_ptr<webrtc:(std::default_delete<webrtc::VideoDecoder>>)a3 :VideoDecoder;
- (unique_ptr<webrtc::VideoDecoder,)releaseWrappedDecoder;
@end

@implementation WK_RTCWrappedNativeVideoDecoder

- (WK_RTCWrappedNativeVideoDecoder)initWithNativeDecoder:()unique_ptr<webrtc:(std::default_delete<webrtc::VideoDecoder>>)a3 :VideoDecoder
{
  v8.receiver = self;
  v8.super_class = WK_RTCWrappedNativeVideoDecoder;
  result = [(WK_RTCWrappedNativeVideoDecoder *)&v8 init];
  if (result)
  {
    v5 = *a3.__ptr_;
    *a3.__ptr_ = 0;
    ptr = result->_wrappedDecoder.__ptr_;
    result->_wrappedDecoder.__ptr_ = v5;
    if (ptr)
    {
      v7 = result;
      (*(*ptr + 8))(ptr);
      return v7;
    }
  }

  return result;
}

- (unique_ptr<webrtc::VideoDecoder,)releaseWrappedDecoder
{
  ptr = self->_wrappedDecoder.__ptr_;
  self->_wrappedDecoder.__ptr_ = 0;
  *v2 = ptr;
  return self;
}

@end