@interface FBSDisplayLayoutElement(SBSDisplayLayoutElement)
- (uint64_t)isSpringBoardElement;
- (uint64_t)layoutRole;
- (uint64_t)sb_isStashedPIP;
- (uint64_t)sb_isTransitioning;
- (uint64_t)zOrderIndex;
@end

@implementation FBSDisplayLayoutElement(SBSDisplayLayoutElement)

- (uint64_t)layoutRole
{
  if (![self isSpringBoardElement])
  {
    return 0;
  }

  otherSettings = [self otherSettings];
  v3 = [otherSettings objectForSetting:1];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (uint64_t)isSpringBoardElement
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings objectForSetting:0];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = BSEqualStrings();
  return v7;
}

- (uint64_t)zOrderIndex
{
  if (![self isSpringBoardElement])
  {
    return 0;
  }

  otherSettings = [self otherSettings];
  v3 = [otherSettings objectForSetting:4];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (uint64_t)sb_isTransitioning
{
  result = [self isSpringBoardElement];
  if (result)
  {
    otherSettings = [self otherSettings];
    v4 = [otherSettings BOOLForSetting:2];

    return v4;
  }

  return result;
}

- (uint64_t)sb_isStashedPIP
{
  result = [self isSpringBoardElement];
  if (result)
  {
    otherSettings = [self otherSettings];
    v4 = [otherSettings BOOLForSetting:3];

    return v4;
  }

  return result;
}

@end