@interface PDDepthAndImageProcessor
- (PDDepthAndImageProcessor)initWithPointCloudToImageTransform:(__n128)a3 imageCameraCalibration:(__n128)a4;
- (id).cxx_construct;
- (id)checkSyncResults:(PushResults *)a3;
- (id)purgeAllQueuedImages;
- (id)pushImage:(id)a3;
- (id)pushPointCloud:(id)a3;
- (void)setNumberOfPointCloudsPerImage:(int)a3;
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
  v4 = [v3 droppedImages];

  return v4;
}

- (id)checkSyncResults:(PushResults *)a3
{
  v5 = objc_alloc_init(PDDepthAndImagePushResults);
  if (a3->var0)
  {
    v41 = *&self[1].super.isa;
    v37 = *&self[1]._sync.m_pointClouds.__map_.__cap_;
    v39 = *&self[1]._sync.m_pointClouds.__map_.__begin_;
    v35 = *&self[1]._sync.m_pointClouds.__size_;
    v6 = objc_alloc_init(PDMatchedDepthAndImage);
    [(PDDepthAndImagePushResults *)v5 setMatch:v6];

    v7 = [PDTimestampedImage alloc];
    var0 = a3->var0;
    var1 = a3->var1;
    time = a3->var2;
    v10 = [(PDTimestampedImage *)v7 initWithImage:var0 metadataDictionary:var1 andTimestamp:&time];
    v11 = [(PDDepthAndImagePushResults *)v5 match];
    [v11 setImage:v10];

    CVPixelBufferRelease(a3->var0);
    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:a3->var3];
    v42 = v5;
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:a3->var3];
    if (a3->var3 < 1)
    {
      v17 = 0.0;
    }

    else
    {
      v14 = 0;
      var4 = a3->var4;
      var5 = a3->var5;
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

      while (v14 < a3->var3);
    }

    v5 = v42;
    v21 = [(PDDepthAndImagePushResults *)v42 match:v35];
    [v21 setOriginalPointClouds:v13];

    v22 = [MEMORY[0x277CED0A0] pointCloudByMergingPointClouds:v12];
    v23 = [v22 pointCloudByChangingPointOfViewByTransform:self->_imageCalibrationData to:{*&v41, v40, v38, v36}];
    memset(&time, 0, sizeof(time));
    CMTimeMakeWithSeconds(&time, v17 / a3->var3, 1000000);
    v24 = [PDTimestampedPointCloud alloc];
    v43 = time;
    v25 = [(PDTimestampedPointCloud *)v24 initWithPointCloud:v23 andTimestamp:&v43];
    v26 = [(PDDepthAndImagePushResults *)v42 match];
    [v26 setPointCloud:v25];
  }

  if (a3->var6 >= 1)
  {
    v27 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    if (a3->var6 >= 1)
    {
      v28 = 0;
      var7 = a3->var7;
      var8 = a3->var8;
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

      while (v28 < a3->var6);
    }

    [(PDDepthAndImagePushResults *)v5 setDroppedImages:v27];
  }

  return v5;
}

- (id)pushImage:(id)a3
{
  v4 = a3;
  v10.var4[0] = 0;
  v10.var4[1] = 0;
  v5 = [v4 image];
  v6 = [v4 metadataDictionary];
  if (v4)
  {
    [v4 timestamp];
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
  }

  TimeSync::pushImage(&self->_sync, v5, v6, &v9, &v10);

  if (self->_retainImagesRemovedFromQueue)
  {
    CVPixelBufferRetain([v4 image]);
  }

  v7 = [(PDDepthAndImageProcessor *)self checkSyncResults:&v10, v9.value, *&v9.timescale, v9.epoch];

  return v7;
}

- (id)pushPointCloud:(id)a3
{
  v4 = a3;
  v9.var4[0] = 0;
  v9.var4[1] = 0;
  v5 = [v4 pointCloud];
  if (v4)
  {
    [v4 timestamp];
  }

  else
  {
    memset(&v8, 0, sizeof(v8));
  }

  TimeSync::pushPeridotPointCloud(&self->_sync, v5, &v8, &v9);

  v6 = [(PDDepthAndImageProcessor *)self checkSyncResults:&v9];

  return v6;
}

- (PDDepthAndImageProcessor)initWithPointCloudToImageTransform:(__n128)a3 imageCameraCalibration:(__n128)a4
{
  v9 = a7;
  v18.receiver = a1;
  v18.super_class = PDDepthAndImageProcessor;
  v10 = [(PDDepthAndImageProcessor *)&v18 init];
  v11 = v10;
  if (v10)
  {
    *&v10[1].super.isa = a2;
    *&v10[1]._sync.m_pointClouds.__map_.__begin_ = a3;
    *&v10[1]._sync.m_pointClouds.__map_.__cap_ = a4;
    *&v10[1]._sync.m_pointClouds.__size_ = a5;
    objc_storeStrong(&v10->_imageCalibrationData, a7);
    *&v11->_pointCloudFiltering = 0;
    v12 = v11;
  }

  return v11;
}

- (void)setNumberOfPointCloudsPerImage:(int)a3
{
  v6 = *MEMORY[0x277D85DE8];
  if ((a3 - 5) <= 0xFFFFFFFB)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v5 = a3;
      _os_log_error_impl(&dword_224668000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ERROR: Bad configuration for timesync: does not know how to match %d banks per image", buf, 8u);
    }

    __assert_rtn("setNumberOfBanksToMatch", "TimeSync.mm", 55, "false");
  }

  self->_sync.m_numberOfBanksToMatch = a3;
}

@end