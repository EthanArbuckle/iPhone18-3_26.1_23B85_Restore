@interface PDDepthAndImageProcessor
- (PDDepthAndImageProcessor)initWithPointCloudToImageTransform:(__n128)transform imageCameraCalibration:(__n128)calibration;
- (id).cxx_construct;
- (id)checkSyncResults:(PushResults *)results;
- (id)purgeAllQueuedImages;
- (id)pushImage:(id)image;
- (id)pushPointCloud:(id)cloud;
- (void)setNumberOfPointCloudsPerImage:(int)image;
@end

@implementation PDDepthAndImageProcessor

- (id).cxx_construct
{
  *&self->_sync.m_pointClouds.__map_.__first_ = 0u;
  *&self->_sync.m_images.__map_.__end_ = 0u;
  *&self->_sync.m_images.__start_ = 0u;
  *&self->_sync.m_pointClouds.__start_ = 0u;
  *&self->_sync.m_images.__map_.__first_ = 0u;
  *&self->_sync.m_pointClouds.__map_.__end_ = 0u;
  pthread_mutex_init(&self->_sync.m_lock, 0);
  self->_sync.m_numberOfBanksToMatch = 2;
  return self;
}

- (id)purgeAllQueuedImages
{
  v6.var4[0] = 0;
  v6.var4[1] = 0;
  TimeSync::purgeAllImages(&self->_sync, &v6);
  v3 = [(PDDepthAndImageProcessor *)self checkSyncResults:&v6];
  droppedImages = [v3 droppedImages];

  return droppedImages;
}

- (id)checkSyncResults:(PushResults *)results
{
  v5 = objc_alloc_init(PDDepthAndImagePushResults);
  if (results->var0)
  {
    v41 = *&self[1].super.isa;
    v37 = *&self[1]._sync.m_pointClouds.__map_.__cap_;
    v39 = *&self[1]._sync.m_pointClouds.__map_.__begin_;
    v35 = *&self[1]._sync.m_pointClouds.__size_;
    v6 = objc_alloc_init(PDMatchedDepthAndImage);
    [(PDDepthAndImagePushResults *)v5 setMatch:v6];

    v7 = [PDTimestampedImage alloc];
    var0 = results->var0;
    var1 = results->var1;
    time = results->var2;
    v10 = [(PDTimestampedImage *)v7 initWithImage:var0 metadataDictionary:var1 andTimestamp:&time];
    match = [(PDDepthAndImagePushResults *)v5 match];
    [match setImage:v10];

    CVPixelBufferRelease(results->var0);
    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:results->var3];
    v42 = v5;
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:results->var3];
    if (results->var3 < 1)
    {
      v17 = 0.0;
    }

    else
    {
      v14 = 0;
      var4 = results->var4;
      var5 = results->var5;
      v17 = 0.0;
      do
      {
        [v12 addObject:{var4[v14], v35, v37, v39}];
        v18 = [PDTimestampedPointCloud alloc];
        v19 = var4[v14];
        time = *var5;
        v20 = [(PDTimestampedPointCloud *)v18 initWithPointCloud:v19 andTimestamp:&time];
        [v13 addObject:v20];
        time = *var5;
        v17 = CMTimeGetSeconds(&time) + v17;

        ++v14;
        ++var5;
      }

      while (v14 < results->var3);
    }

    v5 = v42;
    v21 = [(PDDepthAndImagePushResults *)v42 match:v35];
    [v21 setOriginalPointClouds:v13];

    v22 = [MEMORY[0x277CED0A0] pointCloudByMergingPointClouds:v12];
    v23 = [v22 pointCloudByChangingPointOfViewByTransform:self->_imageCalibrationData to:{*&v41, v40, v38, v36}];
    memset(&time, 0, sizeof(time));
    CMTimeMakeWithSeconds(&time, v17 / results->var3, 1000000);
    v24 = [PDTimestampedPointCloud alloc];
    v43 = time;
    v25 = [(PDTimestampedPointCloud *)v24 initWithPointCloud:v23 andTimestamp:&v43];
    match2 = [(PDDepthAndImagePushResults *)v42 match];
    [match2 setPointCloud:v25];
  }

  if (results->var6 >= 1)
  {
    v27 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    if (results->var6 >= 1)
    {
      v28 = 0;
      var7 = results->var7;
      var8 = results->var8;
      do
      {
        v31 = [PDTimestampedImage alloc];
        v32 = var7[v28];
        time = *var8;
        v33 = [(PDTimestampedImage *)v31 initWithImage:v32 metadataDictionary:0 andTimestamp:&time];
        CVPixelBufferRelease(var7[v28]);
        [v27 addObject:v33];

        ++v28;
        ++var8;
      }

      while (v28 < results->var6);
    }

    [(PDDepthAndImagePushResults *)v5 setDroppedImages:v27];
  }

  return v5;
}

- (id)pushImage:(id)image
{
  imageCopy = image;
  v10.var4[0] = 0;
  v10.var4[1] = 0;
  image = [imageCopy image];
  metadataDictionary = [imageCopy metadataDictionary];
  if (imageCopy)
  {
    [imageCopy timestamp];
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
  }

  TimeSync::pushImage(&self->_sync, image, metadataDictionary, &v9, &v10);

  if (self->_retainImagesRemovedFromQueue)
  {
    CVPixelBufferRetain([imageCopy image]);
  }

  v7 = [(PDDepthAndImageProcessor *)self checkSyncResults:&v10, v9.value, *&v9.timescale, v9.epoch];

  return v7;
}

- (id)pushPointCloud:(id)cloud
{
  cloudCopy = cloud;
  v9.var4[0] = 0;
  v9.var4[1] = 0;
  pointCloud = [cloudCopy pointCloud];
  if (cloudCopy)
  {
    [cloudCopy timestamp];
  }

  else
  {
    memset(&v8, 0, sizeof(v8));
  }

  TimeSync::pushPeridotPointCloud(&self->_sync, pointCloud, &v8, &v9);

  v6 = [(PDDepthAndImageProcessor *)self checkSyncResults:&v9];

  return v6;
}

- (PDDepthAndImageProcessor)initWithPointCloudToImageTransform:(__n128)transform imageCameraCalibration:(__n128)calibration
{
  v9 = a7;
  v18.receiver = self;
  v18.super_class = PDDepthAndImageProcessor;
  v10 = [(PDDepthAndImageProcessor *)&v18 init];
  v11 = v10;
  if (v10)
  {
    *&v10[1].super.isa = a2;
    *&v10[1]._sync.m_pointClouds.__map_.__begin_ = transform;
    *&v10[1]._sync.m_pointClouds.__map_.__cap_ = calibration;
    *&v10[1]._sync.m_pointClouds.__size_ = a5;
    objc_storeStrong(&v10->_imageCalibrationData, a7);
    *&v11->_pointCloudFiltering = 0;
    v12 = v11;
  }

  return v11;
}

- (void)setNumberOfPointCloudsPerImage:(int)image
{
  v6 = *MEMORY[0x277D85DE8];
  if ((image - 5) <= 0xFFFFFFFB)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      imageCopy = image;
      _os_log_error_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ERROR: Bad configuration for timesync: does not know how to match %d banks per image", buf, 8u);
    }

    __assert_rtn("setNumberOfBanksToMatch", "TimeSync.mm", 55, "false");
  }

  self->_sync.m_numberOfBanksToMatch = image;
}

@end