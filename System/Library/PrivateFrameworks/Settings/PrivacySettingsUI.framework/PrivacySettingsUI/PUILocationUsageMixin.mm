@interface PUILocationUsageMixin
- (CGSize)usageIndicatorSize;
- (PUILocationUsageMixin)init;
- (id)_authLevelStringForMask:(unint64_t)mask learnedRoutesAccess:(int)access visitHistoryAccess:(int)historyAccess;
- (id)iconForUsage:(int)usage;
- (void)setUsage:(int)usage;
@end

@implementation PUILocationUsageMixin

- (PUILocationUsageMixin)init
{
  if (loadLocationFillSystemImage_onceToken != -1)
  {
    [PUILocationIndicatorExplanationView initWithSpecifier:];
  }

  v10.receiver = self;
  v10.super_class = PUILocationUsageMixin;
  v3 = [(PUILocationUsageMixin *)&v10 init];
  v4 = v3;
  if (v3)
  {
    v3->_usage = -1;
    [(PUILocationUsageMixin *)v3 usageIndicatorSize];
    v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{0.0, 0.0, v5, v6}];
    usageIndicator = v4->_usageIndicator;
    v4->_usageIndicator = v7;

    [(UIImageView *)v4->_usageIndicator setHidden:1];
    [(UIImageView *)v4->_usageIndicator setContentMode:1];
  }

  return v4;
}

- (id)iconForUsage:(int)usage
{
  if ((usage - 2) > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *off_279BA1D40[usage - 2];
  }

  return v4;
}

- (void)setUsage:(int)usage
{
  if (self->_usage != usage)
  {
    v6 = [(PUILocationUsageMixin *)self iconForUsage:?];
    self->_usage = usage;
    v7 = v6;
    if (v6)
    {
      [(UIImageView *)self->_usageIndicator setImage:v6];
      v6 = v7;
    }

    [(UIImageView *)self->_usageIndicator setHidden:v6 == 0];
  }
}

- (CGSize)usageIndicatorSize
{
  if (usageIndicatorSize_onceToken != -1)
  {
    [PUILocationUsageMixin usageIndicatorSize];
  }

  v2 = *&usageIndicatorSize_size_0;
  v3 = *&usageIndicatorSize_size_1;
  result.height = v3;
  result.width = v2;
  return result;
}

uint64_t __43__PUILocationUsageMixin_usageIndicatorSize__block_invoke()
{
  result = [locationFillSystemImage size];
  usageIndicatorSize_size_0 = v1;
  usageIndicatorSize_size_1 = v2;
  return result;
}

- (id)_authLevelStringForMask:(unint64_t)mask learnedRoutesAccess:(int)access visitHistoryAccess:(int)historyAccess
{
  v6 = 0;
  if (mask > 1)
  {
    if (mask == 2)
    {
      if (historyAccess == 3 || access == 3)
      {
        v7 = @"WHEN_IN_USE_AUTHORIZATION_AND_MORE";
      }

      else
      {
        v7 = @"WHEN_IN_USE_AUTHORIZATION_SHORT";
      }
    }

    else
    {
      if (mask != 4)
      {
        goto LABEL_16;
      }

      v7 = @"ALWAYS_AUTHORIZATION";
    }
  }

  else if (mask)
  {
    if (mask != 1)
    {
      goto LABEL_16;
    }

    v7 = @"NEVER_AUTHORIZATION";
  }

  else
  {
    v7 = @"NOT_DETERMINED_AUTHORIZATION_SHORT";
  }

  v6 = PUI_LocalizedStringForLocationServicesPrivacy(v7);
LABEL_16:

  return v6;
}

@end