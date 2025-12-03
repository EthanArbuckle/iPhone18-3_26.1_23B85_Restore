@interface WK_RTCI420Buffer
- (WK_RTCI420Buffer)initWithFrameBuffer:(scoped_refptr<webrtc::I420BufferInterface>)buffer;
- (WK_RTCI420Buffer)initWithWidth:(int)width height:(int)height;
- (WK_RTCI420Buffer)initWithWidth:(int)width height:(int)height dataY:(const char *)y dataU:(const char *)u dataV:(const char *)v;
- (WK_RTCI420Buffer)initWithWidth:(int)width height:(int)height strideY:(int)y strideU:(int)u strideV:(int)v;
- (scoped_refptr<webrtc::I420BufferInterface>)nativeI420Buffer;
- (void)close;
@end

@implementation WK_RTCI420Buffer

- (WK_RTCI420Buffer)initWithWidth:(int)width height:(int)height
{
  v4 = *&width;
  v6.receiver = self;
  v6.super_class = WK_RTCI420Buffer;
  if ([(WK_RTCI420Buffer *)&v6 init])
  {
    webrtc::I420Buffer::Create(v4);
  }

  return 0;
}

- (WK_RTCI420Buffer)initWithWidth:(int)width height:(int)height dataY:(const char *)y dataU:(const char *)u dataV:(const char *)v
{
  vCopy = v;
  uCopy = u;
  yCopy = y;
  v11 = *&width;
  v14.receiver = self;
  v14.super_class = WK_RTCI420Buffer;
  if ([(WK_RTCI420Buffer *)&v14 init])
  {
    webrtc::I420Buffer::Copy(v11, height, yCopy, v11, uCopy, ((v11 + 1) / 2), vCopy, ((v11 + 1) / 2), v13);
  }

  return 0;
}

- (WK_RTCI420Buffer)initWithWidth:(int)width height:(int)height strideY:(int)y strideU:(int)u strideV:(int)v
{
  v13.receiver = self;
  v13.super_class = WK_RTCI420Buffer;
  if ([(WK_RTCI420Buffer *)&v13 init])
  {
    heightCopy = height;
    widthCopy = width;
    uCopy = u;
    yCopy = y;
    vCopy = v;
    webrtc::make_ref_counted<webrtc::I420Buffer,int &,int &,int &,int &,int &,(webrtc::I420Buffer*)0>();
  }

  return 0;
}

- (WK_RTCI420Buffer)initWithFrameBuffer:(scoped_refptr<webrtc::I420BufferInterface>)buffer
{
  v8.receiver = self;
  v8.super_class = WK_RTCI420Buffer;
  v4 = [(WK_RTCI420Buffer *)&v8 init];
  if (v4)
  {
    v5 = *buffer.ptr_;
    if (v5)
    {
      (**v5)(v5);
    }

    ptr = v4->_i420Buffer.ptr_;
    if (ptr)
    {
      (*(*ptr + 8))(ptr);
    }

    v4->_i420Buffer.ptr_ = v5;
  }

  return v4;
}

- (scoped_refptr<webrtc::I420BufferInterface>)nativeI420Buffer
{
  ptr = self->_i420Buffer.ptr_;
  *v2 = ptr;
  if (ptr)
  {
    return (**ptr)(ptr);
  }

  return ptr;
}

- (void)close
{
  ptr = self->_i420Buffer.ptr_;
  if (ptr)
  {
    (*(*ptr + 8))(ptr, a2);
  }

  self->_i420Buffer.ptr_ = 0;
}

@end