@interface TVPOffSubtitleOption
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation TVPOffSubtitleOption

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v3 = a3;
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
  v3 = [(TVPSubtitleOption *)self avMediaSelectionOption];
  v4 = [v3 description];
  v5 = [v2 stringWithFormat:@"Off subtitle option with AVMediaSelectionOption: %@", v4];

  return v5;
}

@end