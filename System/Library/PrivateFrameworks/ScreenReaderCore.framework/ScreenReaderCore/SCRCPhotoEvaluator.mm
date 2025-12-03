@interface SCRCPhotoEvaluator
+ (SCRCPhotoEvaluator)sharedInstance;
- (id)evaluateImage:(CGImage *)image forCriteria:(unint64_t)criteria inRect:(CGRect)rect;
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

- (id)evaluateImage:(CGImage *)image forCriteria:(unint64_t)criteria inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  criteriaCopy = criteria;
  v10 = [SCRCRawImage rawImageForImage:image];
  if ((criteriaCopy & 2) == 0)
  {
    height = 0;
    if ((criteriaCopy & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    height2 = 0;
    if ((criteriaCopy & 0x10) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  height = [SCRCPhotoEvaluatorBlur detect:v10 inRect:x, y, width, height];
  if ((criteriaCopy & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  height2 = [SCRCPhotoEvaluatorColor detect:v10 inRect:x, y, width, height];
  if ((criteriaCopy & 0x10) != 0)
  {
LABEL_4:
    height3 = [SCRCPhotoEvaluatorLuminance detect:v10 inRect:x, y, width, height];
    goto LABEL_8;
  }

LABEL_7:
  height3 = 0;
LABEL_8:
  v14 = [[SCRCPhotoEvaluatorResults alloc] initWithBlurResult:height colorResult:height2 luminanceResult:height3];

  return v14;
}

@end