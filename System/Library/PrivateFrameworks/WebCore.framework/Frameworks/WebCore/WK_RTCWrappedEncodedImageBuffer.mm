@interface WK_RTCWrappedEncodedImageBuffer
- (WK_RTCWrappedEncodedImageBuffer)initWithEncodedImageBuffer:(scoped_refptr<webrtc::EncodedImageBufferInterface>)a3;
- (scoped_refptr<webrtc::EncodedImageBufferInterface>)buffer;
- (void)setBuffer:(scoped_refptr<webrtc::EncodedImageBufferInterface>)a3;
@end

@implementation WK_RTCWrappedEncodedImageBuffer

- (WK_RTCWrappedEncodedImageBuffer)initWithEncodedImageBuffer:(scoped_refptr<webrtc::EncodedImageBufferInterface>)a3
{
  v8.receiver = self;
  v8.super_class = WK_RTCWrappedEncodedImageBuffer;
  v4 = [(WK_RTCWrappedEncodedImageBuffer *)&v8 init];
  if (v4)
  {
    v5 = *a3.ptr_;
    if (v5)
    {
      (**v5)(v5);
    }

    ptr = v4->_buffer.ptr_;
    if (ptr)
    {
      (*(*ptr + 8))(ptr);
    }

    v4->_buffer.ptr_ = v5;
  }

  return v4;
}

- (scoped_refptr<webrtc::EncodedImageBufferInterface>)buffer
{
  ptr = self->_buffer.ptr_;
  *v2 = ptr;
  if (ptr)
  {
    return (**ptr)(ptr);
  }

  return ptr;
}

- (void)setBuffer:(scoped_refptr<webrtc::EncodedImageBufferInterface>)a3
{
  v4 = *a3.ptr_;
  if (*a3.ptr_)
  {
    (**v4)(*a3.ptr_, a2);
  }

  ptr = self->_buffer.ptr_;
  if (ptr)
  {
    (*(*ptr + 8))(ptr, a2);
  }

  self->_buffer.ptr_ = v4;
}

@end