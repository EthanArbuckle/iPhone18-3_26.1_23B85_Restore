@interface TVPExternalImageLoader
- (TVPExternalImageLoader)initWithConfig:(id)config;
- (double)closestImageTimeForTime:(double)time;
- (double)closestImageTimeForTime:(double)time imageInterval:(double)interval;
- (double)firstImageTime;
- (double)lastImageTime;
- (id)_closestURLForImageTime:(double)time actualTime:(double *)actualTime;
- (id)loadImagesForTimes:(id)times maxSize:(CGSize)size withHandler:(id)handler;
- (unint64_t)_closestImageIndexForTime:(double)time actualTime:(double *)actualTime imageInterval:(double)interval;
- (void)invalidate;
@end

@implementation TVPExternalImageLoader

- (TVPExternalImageLoader)initWithConfig:(id)config
{
  configCopy = config;
  v17.receiver = self;
  v17.super_class = TVPExternalImageLoader;
  v6 = [(TVPExternalImageLoader *)&v17 init];
  if (v6)
  {
    imageNameFormatString = [configCopy imageNameFormatString];
    v8 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^[^%]*%[.0-9]*d[^%]*$" options:1 error:0];
    v9 = [imageNameFormatString length];
    if (imageNameFormatString && [v8 numberOfMatchesInString:imageNameFormatString options:0 range:{0, v9}] == 1)
    {
      objc_storeStrong(&v6->_config, config);
      v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
      imageProxies = v6->_imageProxies;
      v6->_imageProxies = v10;

      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      imageProxyMappings = v6->_imageProxyMappings;
      v6->_imageProxyMappings = v12;

      v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
      loadedImageActualTimes = v6->_loadedImageActualTimes;
      v6->_loadedImageActualTimes = v14;
    }

    else
    {
      loadedImageActualTimes = v6;
      v6 = 0;
    }
  }

  return v6;
}

- (void)invalidate
{
  imageProxies = [(TVPExternalImageLoader *)self imageProxies];
  [imageProxies removeAllObjects];

  imageProxyMappings = [(TVPExternalImageLoader *)self imageProxyMappings];
  [imageProxyMappings removeAllObjects];
}

- (double)closestImageTimeForTime:(double)time
{
  config = [(TVPExternalImageLoader *)self config];
  [config imageInterval];
  [(TVPExternalImageLoader *)self closestImageTimeForTime:time imageInterval:v6];
  v8 = v7;

  return v8;
}

- (double)closestImageTimeForTime:(double)time imageInterval:(double)interval
{
  v5 = 0.0;
  [(TVPExternalImageLoader *)self _closestImageIndexForTime:&v5 actualTime:time imageInterval:interval];
  return v5;
}

- (id)loadImagesForTimes:(id)times maxSize:(CGSize)size withHandler:(id)handler
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);

  return v5;
}

- (double)firstImageTime
{
  v6 = 0.0;
  config = [(TVPExternalImageLoader *)self config];
  [config imageInterval];
  [(TVPExternalImageLoader *)self _closestImageIndexForTime:&v6 actualTime:0.0 imageInterval:v4];

  return v6;
}

- (double)lastImageTime
{
  v6 = 0.0;
  config = [(TVPExternalImageLoader *)self config];
  [config imageInterval];
  [(TVPExternalImageLoader *)self _closestImageIndexForTime:&v6 actualTime:1000000.0 imageInterval:v4];

  return v6;
}

- (unint64_t)_closestImageIndexForTime:(double)time actualTime:(double *)actualTime imageInterval:(double)interval
{
  if (time < 0.0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  config = [(TVPExternalImageLoader *)self config];
  imageCount = [config imageCount];
  v11 = round(time / interval) * interval;
  v12 = vcvtad_u64_f64(v11) / interval;
  v13 = v12;
  v14 = imageCount + -1.0;
  if (v12 >= imageCount)
  {
    v15 = v14;
  }

  else
  {
    v15 = v12;
  }

  v5 = v15 + [config usesOneBasedImageIndexes];
  if (actualTime)
  {
    v16 = round(v11);
    if (v13 >= imageCount)
    {
      v16 = v14 * interval;
    }

    *actualTime = v16;
  }

  return v5;
}

- (id)_closestURLForImageTime:(double)time actualTime:(double *)actualTime
{
  config = [(TVPExternalImageLoader *)self config];
  [config imageInterval];
  v9 = [(TVPExternalImageLoader *)self _closestImageIndexForTime:actualTime actualTime:time imageInterval:v8];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    config2 = [(TVPExternalImageLoader *)self config];
    v12 = MEMORY[0x277CCACA8];
    imageNameFormatString = [config2 imageNameFormatString];
    v14 = [v12 stringWithValidatedFormat:imageNameFormatString validFormatSpecifiers:@"%d" error:0, v9];

    if (v14)
    {
      v15 = objc_alloc(MEMORY[0x277CCACE0]);
      baseURL = [config2 baseURL];
      v17 = [v15 initWithURL:baseURL resolvingAgainstBaseURL:0];

      if (v17)
      {
        path = [v17 path];
        if (([path hasSuffix:@"/"] & 1) == 0)
        {
          v19 = [path stringByAppendingString:@"/"];

          path = v19;
        }

        v20 = [path stringByAppendingString:v14];

        [v17 setPath:v20];
        v10 = [v17 URL];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end