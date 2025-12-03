@interface VKCRemoveBackgroundVideoRequest
- (VKCRemoveBackgroundVideoRequest)initWithPhotosAnalyzerRequest:(id)request;
- (__n128)commonInit;
- (id)createMADPreviewRequest;
- (id)createMADRequest;
- (int)madRequestID;
- (void)setMadRequestID:(int)d;
- (void)setMaskTime:(id *)time;
@end

@implementation VKCRemoveBackgroundVideoRequest

- (VKCRemoveBackgroundVideoRequest)initWithPhotosAnalyzerRequest:(id)request
{
  requestCopy = request;
  v8.receiver = self;
  v8.super_class = VKCRemoveBackgroundVideoRequest;
  v6 = [(VKCRemoveBackgroundVideoRequest *)&v8 init];
  if (v6)
  {
    if (!requestCopy)
    {
      [VKAssert handleFailedAssertWithCondition:"((request) != nil)" functionName:"[VKCRemoveBackgroundVideoRequest initWithPhotosAnalyzerRequest:]" simulateCrash:0 showAlert:0 format:@"Expected non-nil value for '%s'", "request"];
    }

    objc_storeStrong(&v6->_photosRequest, request);
    [(VKCRemoveBackgroundVideoRequest *)v6 commonInit];
  }

  return v6;
}

- (void)setMadRequestID:(int)d
{
  os_unfair_lock_lock(&self->_lock);
  self->_madRequestID = d;

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
  maxDimension = [(VKCRemoveBackgroundVideoRequest *)self maxDimension];

  if (maxDimension)
  {
    maxDimension2 = [(VKCRemoveBackgroundVideoRequest *)self maxDimension];
    [v3 setMaxDimension:maxDimension2];
  }

  minDimension = [(VKCRemoveBackgroundVideoRequest *)self minDimension];

  if (minDimension)
  {
    minDimension2 = [(VKCRemoveBackgroundVideoRequest *)self minDimension];
    [v3 setMinDimension:minDimension2];
  }

  maxFileSize = [(VKCRemoveBackgroundVideoRequest *)self maxFileSize];

  if (maxFileSize)
  {
    maxFileSize2 = [(VKCRemoveBackgroundVideoRequest *)self maxFileSize];
    [v3 setMaxFileSize:maxFileSize2];
  }

  instancePoint = [(VKCRemoveBackgroundVideoRequest *)self instancePoint];

  if (instancePoint)
  {
    instancePoint2 = [(VKCRemoveBackgroundVideoRequest *)self instancePoint];
    [v3 setInstancePoint:instancePoint2];
  }

  outputType = [(VKCRemoveBackgroundVideoRequest *)self outputType];

  if (outputType)
  {
    outputType2 = [(VKCRemoveBackgroundVideoRequest *)self outputType];
    [v3 setOutputType:outputType2];
  }

  stickerIDs = [(VKCRemoveBackgroundVideoRequest *)self stickerIDs];

  if (stickerIDs && (objc_opt_respondsToSelector() & 1) != 0)
  {
    stickerIDs2 = [(VKCRemoveBackgroundVideoRequest *)self stickerIDs];
    [v3 setStickerIdentifiers:stickerIDs2];
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

- (void)setMaskTime:(id *)time
{
  v3 = *&time->var0;
  self->_maskTime.epoch = time->var3;
  *&self->_maskTime.value = v3;
}

- (__n128)commonInit
{
  if (self)
  {
    *(self + 12) = 0;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v4 = *(self + 72);
    *(self + 72) = uUIDString;

    *(self + 8) = -1;
    v5 = MEMORY[0x1E6960CC0];
    result = *MEMORY[0x1E6960CC0];
    *(self + 80) = *MEMORY[0x1E6960CC0];
    *(self + 96) = *(v5 + 16);
  }

  return result;
}

@end