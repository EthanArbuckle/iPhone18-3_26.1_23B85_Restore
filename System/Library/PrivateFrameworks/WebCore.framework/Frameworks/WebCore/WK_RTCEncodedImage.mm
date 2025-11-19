@interface WK_RTCEncodedImage
- (EncodedImage)nativeEncodedImage;
- (WK_RTCEncodedImage)initWithNativeEncodedImage:(const void *)a3;
- (scoped_refptr<webrtc::EncodedImageBufferInterface>)encodedData;
- (void)setEncodedData:(scoped_refptr<webrtc::EncodedImageBufferInterface>)a3;
@end

@implementation WK_RTCEncodedImage

- (scoped_refptr<webrtc::EncodedImageBufferInterface>)encodedData
{
  v3 = v2;
  v4 = objc_getAssociatedObject(self, sel_encodedData);
  v7 = v4;
  if (v4)
  {
    [v4 buffer];
    v5 = v7;
  }

  else
  {
    *v3 = 0;
    v5 = 0;
  }

  return v6;
}

- (void)setEncodedData:(scoped_refptr<webrtc::EncodedImageBufferInterface>)a3
{
  v5 = [WK_RTCWrappedEncodedImageBuffer alloc];
  v6 = *a3.ptr_;
  v9 = v6;
  if (v6)
  {
    v7 = v5;
    (**v6)(v6);
    v5 = v7;
  }

  v8 = [(WK_RTCWrappedEncodedImageBuffer *)v5 initWithEncodedImageBuffer:&v9];
  objc_setAssociatedObject(self, sel_encodedData, v8, 1);

  if (v9)
  {
    (*v9)[1](v9);
  }
}

- (WK_RTCEncodedImage)initWithNativeEncodedImage:(const void *)a3
{
  v14.receiver = self;
  v14.super_class = WK_RTCEncodedImage;
  v4 = [(WK_RTCEncodedImage *)&v14 init];
  if (v4)
  {
    v5 = *(a3 + 17);
    v13 = v5;
    if (v5)
    {
      (**v5)(v5);
    }

    [(WK_RTCEncodedImage *)v4 setEncodedData:&v13];
    if (v13)
    {
      (*v13)[1](v13);
    }

    v6 = MEMORY[0x277CBEA90];
    [(WK_RTCEncodedImage *)v4 encodedData];
    v7 = (*(*v12 + 40))();
    [(WK_RTCEncodedImage *)v4 encodedData];
    v8 = [v6 dataWithBytesNoCopy:v7 length:(*(*v11 + 48))() freeWhenDone:0];
    [(WK_RTCEncodedImage *)v4 setBuffer:v8];

    if (v11)
    {
      (*(*v11 + 8))();
    }

    if (v12)
    {
      (*(*v12 + 8))();
    }

    [(WK_RTCEncodedImage *)v4 setEncodedWidth:*a3];
    [(WK_RTCEncodedImage *)v4 setEncodedHeight:*(a3 + 1)];
    [(WK_RTCEncodedImage *)v4 setTimeStamp:*(a3 + 38)];
    [(WK_RTCEncodedImage *)v4 setCaptureTimeMs:*(a3 + 2)];
    [(WK_RTCEncodedImage *)v4 setNtpTimeMs:*(a3 + 1)];
    [(WK_RTCEncodedImage *)v4 setFlags:*(a3 + 40)];
    [(WK_RTCEncodedImage *)v4 setEncodeStartMs:*(a3 + 6)];
    [(WK_RTCEncodedImage *)v4 setEncodeFinishMs:*(a3 + 7)];
    [(WK_RTCEncodedImage *)v4 setFrameType:*(a3 + 6)];
    [(WK_RTCEncodedImage *)v4 setRotation:*(a3 + 7)];
    v9 = [MEMORY[0x277CCABB0] numberWithInt:*(a3 + 9)];
    [(WK_RTCEncodedImage *)v4 setQp:v9];

    [(WK_RTCEncodedImage *)v4 setContentType:*(a3 + 32) == 1];
  }

  return v4;
}

- (EncodedImage)nativeEncodedImage
{
  *&retstr->var0 = 0;
  retstr->var2 = 0;
  retstr->var3 = 0;
  *&retstr->var4 = 4;
  retstr->var6 = 0;
  retstr->var7 = -1;
  retstr->var8.var0 = -1;
  retstr->var9.var1 = 0;
  retstr->var13.__engaged_ = 0;
  retstr->var14.var0.var0 = 0;
  retstr->var14.var1 = 0;
  retstr->var15.var0.__null_state_ = 0;
  retstr->var15.__engaged_ = 0;
  retstr->var16.var0.__null_state_ = 0;
  retstr->var16.__engaged_ = 0;
  retstr->var17.var0.var1.var0 = 0;
  *&retstr->var8.var1 = 0u;
  p_var1 = &retstr->var8.var1;
  retstr->var10.ptr_ = 0;
  p_var10 = &retstr->var10;
  retstr->var17.var0.var2 = 0;
  retstr->var9.var0.var0 = 0;
  *&retstr->var8.var5 = 0u;
  *&retstr->var8.var7 = 0u;
  *&retstr->var8.var3 = 0u;
  *(&retstr->var11 + 5) = 0;
  retstr->var11 = 0;
  retstr->var17.var0.var0 = &retstr->var17.var0.var1;
  retstr->var18.var0.var0 = 0;
  retstr->var18.var1 = 0;
  retstr->var19.var0.var0 = 0;
  retstr->var19.var1 = 0;
  retstr->var20.var0.var0 = 0;
  *&retstr->var21 = 1;
  retstr->var23 = 0;
  retstr->var24.var0.var0 = 0;
  retstr->var24.var1 = 0;
  [(WK_RTCEncodedImage *)self encodedData];
  if (v14)
  {
    (*(*v14 + 8))();
    [(WK_RTCEncodedImage *)self encodedData];
    if (v13)
    {
      (**v13)();
    }

    if (p_var10->ptr_)
    {
      (*(*p_var10->ptr_ + 8))(p_var10->ptr_);
    }

    p_var10->ptr_ = v13;
    retstr->var11 = (*(*v13 + 48))();
    if (v13)
    {
      (*(*v13 + 8))();
    }
  }

  else
  {
    v7 = [(WK_RTCEncodedImage *)self buffer];

    if (v7)
    {
      v8 = [(WK_RTCEncodedImage *)self buffer];
      operator new();
    }
  }

  v9 = [(WK_RTCEncodedImage *)self buffer];
  retstr->var11 = [v9 length];

  retstr->var0 = [(WK_RTCEncodedImage *)self encodedWidth];
  retstr->var1 = [(WK_RTCEncodedImage *)self encodedHeight];
  retstr->var12 = [(WK_RTCEncodedImage *)self timeStamp];
  retstr->var3 = [(WK_RTCEncodedImage *)self captureTimeMs];
  retstr->var2 = [(WK_RTCEncodedImage *)self ntpTimeMs];
  retstr->var8.var0 = [(WK_RTCEncodedImage *)self flags];
  *p_var1 = [(WK_RTCEncodedImage *)self encodeStartMs];
  retstr->var8.var2 = [(WK_RTCEncodedImage *)self encodeFinishMs];
  retstr->var4 = [(WK_RTCEncodedImage *)self frameType];
  retstr->var5 = [(WK_RTCEncodedImage *)self rotation];
  v10 = [(WK_RTCEncodedImage *)self qp];
  if (v10)
  {
    v11 = [(WK_RTCEncodedImage *)self qp];
    retstr->var7 = [v11 intValue];
  }

  else
  {
    retstr->var7 = -1;
  }

  result = [(WK_RTCEncodedImage *)self contentType];
  retstr->var6 = result == 1;
  return result;
}

@end