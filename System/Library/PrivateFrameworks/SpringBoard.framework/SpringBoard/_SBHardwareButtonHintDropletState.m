@interface _SBHardwareButtonHintDropletState
- (id)initWithButton:(void *)a3 dropletContextView:(void *)a4 contentView:(void *)a5 groupState:;
- (uint64_t)setPresentedStage:(uint64_t)result;
- (void)isIdle;
- (void)setLayoutCallback:(void *)a1;
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

- (void)setLayoutCallback:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 40);
  }
}

- (id)initWithButton:(void *)a3 dropletContextView:(void *)a4 contentView:(void *)a5 groupState:
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a1)
  {
    v16.receiver = a1;
    v16.super_class = _SBHardwareButtonHintDropletState;
    v12 = objc_msgSendSuper2(&v16, sel_init);
    a1 = v12;
    if (v12)
    {
      objc_storeStrong(v12 + 2, a5);
      a1[1] = a2;
      a1[8] = 1;
      if (a2 != 10)
      {
        v13 = [v9 addContainerWithContentView:v10];
        v14 = a1[3];
        a1[3] = v13;
      }

      objc_storeStrong(a1 + 4, a4);
    }
  }

  return a1;
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