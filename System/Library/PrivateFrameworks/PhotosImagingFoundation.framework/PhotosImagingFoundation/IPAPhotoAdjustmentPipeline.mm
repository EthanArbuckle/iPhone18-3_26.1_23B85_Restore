@interface IPAPhotoAdjustmentPipeline
+ (id)pipelineForPlatform:(id)platform version:(unint64_t)version;
+ (id)pipelineFromString:(id)string;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAdjustmentPipeline:(id)pipeline;
- (IPAPhotoAdjustmentPipeline)initWithPlatform:(id)platform version:(unint64_t)version;
- (unint64_t)hash;
@end

@implementation IPAPhotoAdjustmentPipeline

- (BOOL)isEqualToAdjustmentPipeline:(id)pipeline
{
  pipelineCopy = pipeline;
  string = [(IPAPhotoAdjustmentPipeline *)self string];
  string2 = [pipelineCopy string];

  LOBYTE(pipelineCopy) = [string isEqual:string2];
  return pipelineCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IPAPhotoAdjustmentPipeline *)self isEqualToAdjustmentPipeline:equalCopy];

  return v5;
}

- (unint64_t)hash
{
  string = [(IPAPhotoAdjustmentPipeline *)self string];
  v3 = [string hash];

  return v3;
}

- (IPAPhotoAdjustmentPipeline)initWithPlatform:(id)platform version:(unint64_t)version
{
  platformCopy = platform;
  v11.receiver = self;
  v11.super_class = IPAPhotoAdjustmentPipeline;
  v7 = [(IPAPhotoAdjustmentPipeline *)&v11 init];
  if (v7)
  {
    v8 = [IPAAdjustmentVersion validatePlatformString:platformCopy];
    platform = v7->_platform;
    v7->_platform = v8;

    v7->_version = version;
  }

  return v7;
}

+ (id)pipelineFromString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy)
  {
    lowercaseString = [stringCopy lowercaseString];

    v6 = [lowercaseString length];
    v7 = [s_pipelineRegex firstMatchInString:lowercaseString options:0 range:{0, v6}];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 rangeAtIndex:1];
      v4 = [lowercaseString substringWithRange:{v9, v10}];
      v11 = [v8 rangeAtIndex:2];
      v13 = [lowercaseString substringWithRange:{v11, v12}];
      integerValue = [v13 integerValue];

      v8 = [IPAPhotoAdjustmentPipeline pipelineForPlatform:v4 version:integerValue];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    lowercaseString = 0;
    v8 = 0;
  }

  return v8;
}

+ (id)pipelineForPlatform:(id)platform version:(unint64_t)version
{
  platformCopy = platform;
  v7 = [[self alloc] initWithPlatform:platformCopy version:version];

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