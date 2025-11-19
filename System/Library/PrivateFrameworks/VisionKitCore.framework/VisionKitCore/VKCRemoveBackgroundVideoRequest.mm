@interface VKCRemoveBackgroundVideoRequest
- (VKCRemoveBackgroundVideoRequest)initWithPhotosAnalyzerRequest:(id)a3;
- (__n128)commonInit;
- (id)createMADPreviewRequest;
- (id)createMADRequest;
- (int)madRequestID;
- (void)setMadRequestID:(int)a3;
- (void)setMaskTime:(id *)a3;
@end

@implementation VKCRemoveBackgroundVideoRequest

- (VKCRemoveBackgroundVideoRequest)initWithPhotosAnalyzerRequest:(id)a3
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = VKCRemoveBackgroundVideoRequest;
  v6 = [(VKCRemoveBackgroundVideoRequest *)&v8 init];
  if (v6)
  {
    if (!v5)
    {
      [VKAssert handleFailedAssertWithCondition:"((request) != nil)" functionName:"[VKCRemoveBackgroundVideoRequest initWithPhotosAnalyzerRequest:]" simulateCrash:0 showAlert:0 format:@"Expected non-nil value for '%s'", "request"];
    }

    objc_storeStrong(&v6->_photosRequest, a3);
    [(VKCRemoveBackgroundVideoRequest *)v6 commonInit];
  }

  return v6;
}

- (void)setMadRequestID:(int)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_madRequestID = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (int)madRequestID
{
  os_unfair_lock_lock(&self->_lock);
  madRequestID = self->_madRequestID;
  os_unfair_lock_unlock(&self->_lock);
  return madRequestID;
}

- (id)createMADRequest
{
  v3 = objc_alloc_init(MEMORY[0x1E69AE4D8]);
  v4 = [(VKCRemoveBackgroundVideoRequest *)self maxDimension];

  if (v4)
  {
    v5 = [(VKCRemoveBackgroundVideoRequest *)self maxDimension];
    [v3 setMaxDimension:v5];
  }

  v6 = [(VKCRemoveBackgroundVideoRequest *)self minDimension];

  if (v6)
  {
    v7 = [(VKCRemoveBackgroundVideoRequest *)self minDimension];
    [v3 setMinDimension:v7];
  }

  v8 = [(VKCRemoveBackgroundVideoRequest *)self maxFileSize];

  if (v8)
  {
    v9 = [(VKCRemoveBackgroundVideoRequest *)self maxFileSize];
    [v3 setMaxFileSize:v9];
  }

  v10 = [(VKCRemoveBackgroundVideoRequest *)self instancePoint];

  if (v10)
  {
    v11 = [(VKCRemoveBackgroundVideoRequest *)self instancePoint];
    [v3 setInstancePoint:v11];
  }

  v12 = [(VKCRemoveBackgroundVideoRequest *)self outputType];

  if (v12)
  {
    v13 = [(VKCRemoveBackgroundVideoRequest *)self outputType];
    [v3 setOutputType:v13];
  }

  v14 = [(VKCRemoveBackgroundVideoRequest *)self stickerIDs];

  if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v15 = [(VKCRemoveBackgroundVideoRequest *)self stickerIDs];
    [v3 setStickerIdentifiers:v15];
  }

  [(VKCRemoveBackgroundVideoRequest *)self maskTime];
  time2 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&time1, &time2))
  {
    [(VKCRemoveBackgroundVideoRequest *)self maskTime];
    time1 = v17;
    [v3 setMaskTime:&time1];
  }

  return v3;
}

- (id)createMADPreviewRequest
{
  v2 = NSClassFromString(&cfstr_Madvideoremove.isa);
  if (v2)
  {
    v2 = objc_alloc_init(v2);
  }

  return v2;
}

- (void)setMaskTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_maskTime.epoch = a3->var3;
  *&self->_maskTime.value = v3;
}

- (__n128)commonInit
{
  if (a1)
  {
    *(a1 + 12) = 0;
    v2 = [MEMORY[0x1E696AFB0] UUID];
    v3 = [v2 UUIDString];
    v4 = *(a1 + 72);
    *(a1 + 72) = v3;

    *(a1 + 8) = -1;
    v5 = MEMORY[0x1E6960CC0];
    result = *MEMORY[0x1E6960CC0];
    *(a1 + 80) = *MEMORY[0x1E6960CC0];
    *(a1 + 96) = *(v5 + 16);
  }

  return result;
}

@end