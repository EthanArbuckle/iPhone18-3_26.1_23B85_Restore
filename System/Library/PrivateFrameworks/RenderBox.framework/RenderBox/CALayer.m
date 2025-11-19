@interface CALayer
+ (void)cancelAnimation:(uint64_t)a1;
- (float)displayHeadroom;
- (uint64_t)kitScreen;
- (uint64_t)observeDisplayHeadroomChanges:(uint64_t)result;
- (void)scheduleAnimation:(double)a3 atTime:(float)a4 maxVelocityInPixels:;
@end

@implementation CALayer

+ (void)cancelAnimation:(uint64_t)a1
{
  v3 = objc_opt_self();
}

- (uint64_t)observeDisplayHeadroomChanges:(uint64_t)result
{
  if (result)
  {
    result = [(CALayer *)result kitScreen];
    if (result)
    {
      if (a2)
      {
        operator new();
      }
    }
  }

  return result;
}

- (void)scheduleAnimation:(double)a3 atTime:(float)a4 maxVelocityInPixels:
{
  if (a1)
  {
    v7 = [(CALayer *)a1 kitScreen];
  }
}

- (uint64_t)kitScreen
{
  if (result)
  {
    if (_MergedGlobals_9 != -1)
    {
      dispatch_once_f(&_MergedGlobals_9, 0, screen_init);
    }

    if (qword_1ED6D5580)
    {
LABEL_5:
      Delegate = CALayerGetDelegate();
      if (Delegate && (v2 = Delegate, (objc_opt_isKindOfClass() & 1) != 0))
      {
        return [objc_msgSend(v2 "window")];
      }

      else
      {
        while (1)
        {
          result = CALayerGetSuperlayer();
          if (!result)
          {
            break;
          }

          if (qword_1ED6D5580)
          {
            goto LABEL_5;
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (float)displayHeadroom
{
  v1 = 0.0;
  if (a1)
  {
    v2 = [(CALayer *)a1 kitScreen];
    if (v2)
    {
      [v2 currentEDRHeadroom];
      return v3;
    }
  }

  return v1;
}

- (void)observeDisplayHeadroomChanges:(void *)a1 .cold.1(void *a1)
{
  v2 = dispatch_time(0, 250000000);
  v3 = MEMORY[0x1E69E96A0];

  dispatch_after_f(v2, v3, a1, [CALayer(RBLayerScreen) observeDisplayHeadroomChanges:]::HeadroomObserver::callback);
}

@end