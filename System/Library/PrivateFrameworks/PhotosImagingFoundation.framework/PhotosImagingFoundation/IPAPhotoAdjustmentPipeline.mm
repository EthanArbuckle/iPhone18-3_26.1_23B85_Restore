@interface IPAPhotoAdjustmentPipeline
+ (id)pipelineForPlatform:(id)a3 version:(unint64_t)a4;
+ (id)pipelineFromString:(id)a3;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAdjustmentPipeline:(id)a3;
- (IPAPhotoAdjustmentPipeline)initWithPlatform:(id)a3 version:(unint64_t)a4;
- (unint64_t)hash;
@end

@implementation IPAPhotoAdjustmentPipeline

- (BOOL)isEqualToAdjustmentPipeline:(id)a3
{
  v4 = a3;
  v5 = [(IPAPhotoAdjustmentPipeline *)self string];
  v6 = [v4 string];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IPAPhotoAdjustmentPipeline *)self isEqualToAdjustmentPipeline:v4];

  return v5;
}

- (unint64_t)hash
{
  v2 = [(IPAPhotoAdjustmentPipeline *)self string];
  v3 = [v2 hash];

  return v3;
}

- (IPAPhotoAdjustmentPipeline)initWithPlatform:(id)a3 version:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = IPAPhotoAdjustmentPipeline;
  v7 = [(IPAPhotoAdjustmentPipeline *)&v11 init];
  if (v7)
  {
    v8 = [IPAAdjustmentVersion validatePlatformString:v6];
    platform = v7->_platform;
    v7->_platform = v8;

    v7->_version = a4;
  }

  return v7;
}

+ (id)pipelineFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 lowercaseString];

    v6 = [v5 length];
    v7 = [s_pipelineRegex firstMatchInString:v5 options:0 range:{0, v6}];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 rangeAtIndex:1];
      v4 = [v5 substringWithRange:{v9, v10}];
      v11 = [v8 rangeAtIndex:2];
      v13 = [v5 substringWithRange:{v11, v12}];
      v14 = [v13 integerValue];

      v8 = [IPAPhotoAdjustmentPipeline pipelineForPlatform:v4 version:v14];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v5 = 0;
    v8 = 0;
  }

  return v8;
}

+ (id)pipelineForPlatform:(id)a3 version:(unint64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithPlatform:v6 version:a4];

  return v7;
}

+ (void)initialize
{
  v9 = *MEMORY[0x277D85DE8];
  if (!s_pipelineRegex)
  {
    v6 = 0;
    v2 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^(osx|ios)\\.([0-9]+)$" options:0 error:&v6];
    v3 = v6;
    v4 = s_pipelineRegex;
    s_pipelineRegex = v2;

    if (!s_pipelineRegex)
    {
      v5 = IPAAdjustmentGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v8 = @"^(osx|ios)\\.([0-9]+)$";
        _os_log_impl(&dword_25E5BB000, v5, OS_LOG_TYPE_ERROR, "unable to create regex for pattern: %@", buf, 0xCu);
      }
    }
  }
}

@end