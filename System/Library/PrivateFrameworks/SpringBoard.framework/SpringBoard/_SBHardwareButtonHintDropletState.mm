@interface _SBHardwareButtonHintDropletState
- (id)initWithButton:(void *)button dropletContextView:(void *)view contentView:(void *)contentView groupState:;
- (uint64_t)setPresentedStage:(uint64_t)result;
- (void)isIdle;
- (void)setLayoutCallback:(void *)callback;
- (void)stage;
@end

@implementation _SBHardwareButtonHintDropletState

- (uint64_t)setPresentedStage:(uint64_t)result
{
  if (result)
  {
    *(result + 64) = a2;
  }

  return result;
}

- (void)setLayoutCallback:(void *)callback
{
  if (callback)
  {
    objc_setProperty_nonatomic_copy(callback, newValue, newValue, 40);
  }
}

- (id)initWithButton:(void *)button dropletContextView:(void *)view contentView:(void *)contentView groupState:
{
  buttonCopy = button;
  viewCopy = view;
  contentViewCopy = contentView;
  if (self)
  {
    v16.receiver = self;
    v16.super_class = _SBHardwareButtonHintDropletState;
    v12 = objc_msgSendSuper2(&v16, sel_init);
    self = v12;
    if (v12)
    {
      objc_storeStrong(v12 + 2, contentView);
      self[1] = a2;
      self[8] = 1;
      if (a2 != 10)
      {
        v13 = [buttonCopy addContainerWithContentView:viewCopy];
        v14 = self[3];
        self[3] = v13;
      }

      objc_storeStrong(self + 4, view);
    }
  }

  return self;
}

- (void)stage
{
  if (result)
  {
    if (result[7])
    {
      v1 = result[2];
      if (!v1 || !v1[7] && !v1[6] && !v1[5])
      {
        v1 = result;
      }

      return v1[8];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)isIdle
{
  if (result)
  {
    if (result[7] || result[6])
    {
      return 0;
    }

    else
    {
      return (result[5] == 0);
    }
  }

  return result;
}

@end