@interface TVPOffSubtitleOption
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation TVPOffSubtitleOption

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    equalCopy = equal;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  avMediaSelectionOption = [(TVPSubtitleOption *)self avMediaSelectionOption];
  v4 = [avMediaSelectionOption description];
  v5 = [v2 stringWithFormat:@"Off subtitle option with AVMediaSelectionOption: %@", v4];

  return v5;
}

@end