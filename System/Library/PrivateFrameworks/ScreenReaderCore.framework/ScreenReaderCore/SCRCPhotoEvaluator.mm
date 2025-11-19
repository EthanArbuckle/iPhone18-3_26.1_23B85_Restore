@interface SCRCPhotoEvaluator
+ (SCRCPhotoEvaluator)sharedInstance;
- (id)evaluateImage:(CGImage *)a3 forCriteria:(unint64_t)a4 inRect:(CGRect)a5;
@end

@implementation SCRCPhotoEvaluator

+ (SCRCPhotoEvaluator)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SCRCPhotoEvaluator sharedInstance];
  }

  v3 = _sharedInstance;

  return v3;
}

uint64_t __36__SCRCPhotoEvaluator_sharedInstance__block_invoke()
{
  _sharedInstance = objc_alloc_init(SCRCPhotoEvaluator);

  return MEMORY[0x2821F96F8]();
}

- (id)evaluateImage:(CGImage *)a3 forCriteria:(unint64_t)a4 inRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4;
  v10 = [SCRCRawImage rawImageForImage:a3];
  if ((v9 & 2) == 0)
  {
    v11 = 0;
    if ((v9 & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v12 = 0;
    if ((v9 & 0x10) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v11 = [SCRCPhotoEvaluatorBlur detect:v10 inRect:x, y, width, height];
  if ((v9 & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v12 = [SCRCPhotoEvaluatorColor detect:v10 inRect:x, y, width, height];
  if ((v9 & 0x10) != 0)
  {
LABEL_4:
    v13 = [SCRCPhotoEvaluatorLuminance detect:v10 inRect:x, y, width, height];
    goto LABEL_8;
  }

LABEL_7:
  v13 = 0;
LABEL_8:
  v14 = [[SCRCPhotoEvaluatorResults alloc] initWithBlurResult:v11 colorResult:v12 luminanceResult:v13];

  return v14;
}

@end