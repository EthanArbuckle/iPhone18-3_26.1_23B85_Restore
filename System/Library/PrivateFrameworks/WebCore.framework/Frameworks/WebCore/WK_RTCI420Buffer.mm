@interface WK_RTCI420Buffer
- (WK_RTCI420Buffer)initWithFrameBuffer:(scoped_refptr<webrtc::I420BufferInterface>)a3;
- (WK_RTCI420Buffer)initWithWidth:(int)a3 height:(int)a4;
- (WK_RTCI420Buffer)initWithWidth:(int)a3 height:(int)a4 dataY:(const char *)a5 dataU:(const char *)a6 dataV:(const char *)a7;
- (WK_RTCI420Buffer)initWithWidth:(int)a3 height:(int)a4 strideY:(int)a5 strideU:(int)a6 strideV:(int)a7;
- (scoped_refptr<webrtc::I420BufferInterface>)nativeI420Buffer;
- (void)close;
@end

@implementation WK_RTCI420Buffer

- (WK_RTCI420Buffer)initWithWidth:(int)a3 height:(int)a4
{
  v4 = *&a3;
  v6.receiver = self;
  v6.super_class = WK_RTCI420Buffer;
  if ([(WK_RTCI420Buffer *)&v6 init])
  {
    webrtc::I420Buffer::Create(v4);
  }

  return 0;
}

- (WK_RTCI420Buffer)initWithWidth:(int)a3 height:(int)a4 dataY:(const char *)a5 dataU:(const char *)a6 dataV:(const char *)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v11 = *&a3;
  v14.receiver = self;
  v14.super_class = WK_RTCI420Buffer;
  if ([(WK_RTCI420Buffer *)&v14 init])
  {
    webrtc::I420Buffer::Copy(v11, a4, v9, v11, v8, ((v11 + 1) / 2), v7, ((v11 + 1) / 2), v13);
  }

  return 0;
}

- (WK_RTCI420Buffer)initWithWidth:(int)a3 height:(int)a4 strideY:(int)a5 strideU:(int)a6 strideV:(int)a7
{
  v13.receiver = self;
  v13.super_class = WK_RTCI420Buffer;
  if ([(WK_RTCI420Buffer *)&v13 init])
  {
    v17 = a4;
    v18 = a3;
    v15 = a6;
    v16 = a5;
    v14 = a7;
    webrtc::make_ref_counted<webrtc::I420Buffer,int &,int &,int &,int &,int &,(webrtc::I420Buffer*)0>();
  }

  return 0;
}

- (WK_RTCI420Buffer)initWithFrameBuffer:(scoped_refptr<webrtc::I420BufferInterface>)a3
{
  v8.receiver = self;
  v8.super_class = WK_RTCI420Buffer;
  v4 = [(WK_RTCI420Buffer *)&v8 init];
  if (v4)
  {
    v5 = *a3.ptr_;
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