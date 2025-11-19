@interface TVPExternalImageLoader
- (TVPExternalImageLoader)initWithConfig:(id)a3;
- (double)closestImageTimeForTime:(double)a3;
- (double)closestImageTimeForTime:(double)a3 imageInterval:(double)a4;
- (double)firstImageTime;
- (double)lastImageTime;
- (id)_closestURLForImageTime:(double)a3 actualTime:(double *)a4;
- (id)loadImagesForTimes:(id)a3 maxSize:(CGSize)a4 withHandler:(id)a5;
- (unint64_t)_closestImageIndexForTime:(double)a3 actualTime:(double *)a4 imageInterval:(double)a5;
- (void)invalidate;
@end

@implementation TVPExternalImageLoader

- (TVPExternalImageLoader)initWithConfig:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = TVPExternalImageLoader;
  v6 = [(TVPExternalImageLoader *)&v17 init];
  if (v6)
  {
    v7 = [v5 imageNameFormatString];
    v8 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^[^%]*%[.0-9]*d[^%]*$" options:1 error:0];
    v9 = [v7 length];
    if (v7 && [v8 numberOfMatchesInString:v7 options:0 range:{0, v9}] == 1)
    {
      objc_storeStrong(&v6->_config, a3);
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
  v3 = [(TVPExternalImageLoader *)self imageProxies];
  [v3 removeAllObjects];

  v4 = [(TVPExternalImageLoader *)self imageProxyMappings];
  [v4 removeAllObjects];
}

- (double)closestImageTimeForTime:(double)a3
{
  v5 = [(TVPExternalImageLoader *)self config];
  [v5 imageInterval];
  [(TVPExternalImageLoader *)self closestImageTimeForTime:a3 imageInterval:v6];
  v8 = v7;

  return v8;
}

- (double)closestImageTimeForTime:(double)a3 imageInterval:(double)a4
{
  v5 = 0.0;
  [(TVPExternalImageLoader *)self _closestImageIndexForTime:&v5 actualTime:a3 imageInterval:a4];
  return v5;
}

- (id)loadImagesForTimes:(id)a3 maxSize:(CGSize)a4 withHandler:(id)a5
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);

  return v5;
}

- (double)firstImageTime
{
  v6 = 0.0;
  v3 = [(TVPExternalImageLoader *)self config];
  [v3 imageInterval];
  [(TVPExternalImageLoader *)self _closestImageIndexForTime:&v6 actualTime:0.0 imageInterval:v4];

  return v6;
}

- (double)lastImageTime
{
  v6 = 0.0;
  v3 = [(TVPExternalImageLoader *)self config];
  [v3 imageInterval];
  [(TVPExternalImageLoader *)self _closestImageIndexForTime:&v6 actualTime:1000000.0 imageInterval:v4];

  return v6;
}

- (unint64_t)_closestImageIndexForTime:(double)a3 actualTime:(double *)a4 imageInterval:(double)a5
{
  if (a3 < 0.0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = [(TVPExternalImageLoader *)self config];
  v10 = [v9 imageCount];
  v11 = round(a3 / a5) * a5;
  v12 = vcvtad_u64_f64(v11) / a5;
  v13 = v12;
  v14 = v10 + -1.0;
  if (v12 >= v10)
  {
    v15 = v14;
  }

  else
  {
    v15 = v12;
  }

  v5 = v15 + [v9 usesOneBasedImageIndexes];
  if (a4)
  {
    v16 = round(v11);
    if (v13 >= v10)
    {
      v16 = v14 * a5;
    }

    *a4 = v16;
  }

  return v5;
}

- (id)_closestURLForImageTime:(double)a3 actualTime:(double *)a4
{
  v7 = [(TVPExternalImageLoader *)self config];
  [v7 imageInterval];
  v9 = [(TVPExternalImageLoader *)self _closestImageIndexForTime:a4 actualTime:a3 imageInterval:v8];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(TVPExternalImageLoader *)self config];
    v12 = MEMORY[0x277CCACA8];
    v13 = [v11 imageNameFormatString];
    v14 = [v12 stringWithValidatedFormat:v13 validFormatSpecifiers:@"%d" error:0, v9];

    if (v14)
    {
      v15 = objc_alloc(MEMORY[0x277CCACE0]);
      v16 = [v11 baseURL];
      v17 = [v15 initWithURL:v16 resolvingAgainstBaseURL:0];

      if (v17)
      {
        v18 = [v17 path];
        if (([v18 hasSuffix:@"/"] & 1) == 0)
        {
          v19 = [v18 stringByAppendingString:@"/"];

          v18 = v19;
        }

        v20 = [v18 stringByAppendingString:v14];

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