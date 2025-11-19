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
  if (![a1 isSpringBoardElement])
  {
    return 0;
  }

  v2 = [a1 otherSettings];
  v3 = [v2 objectForSetting:1];
  v4 = [v3 integerValue];

  return v4;
}

- (uint64_t)isSpringBoardElement
{
  v1 = [a1 otherSettings];
  v2 = [v1 objectForSetting:0];
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
  if (![a1 isSpringBoardElement])
  {
    return 0;
  }

  v2 = [a1 otherSettings];
  v3 = [v2 objectForSetting:4];
  v4 = [v3 integerValue];

  return v4;
}

- (uint64_t)sb_isTransitioning
{
  result = [a1 isSpringBoardElement];
  if (result)
  {
    v3 = [a1 otherSettings];
    v4 = [v3 BOOLForSetting:2];

    return v4;
  }

  return result;
}

- (uint64_t)sb_isStashedPIP
{
  result = [a1 isSpringBoardElement];
  if (result)
  {
    v3 = [a1 otherSettings];
    v4 = [v3 BOOLForSetting:3];

    return v4;
  }

  return result;
}

@end