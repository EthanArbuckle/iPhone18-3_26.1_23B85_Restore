@interface SBPIPDefaults
- (double)lastKnownSizeForContentType:(id)type;
- (unint64_t)lastKnownCornerPositionForContentType:(id)type;
- (void)_bindAndRegisterDefaults;
- (void)setLastKnownCornerPosition:(unint64_t)position contentType:(id)type;
- (void)setLastKnownSize:(double)size contentType:(id)type;
@end

@implementation SBPIPDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"allowAutoPIP"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBAllowAutoPIP" toDefaultValue:MEMORY[0x1E695E118] options:1];

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"visualizeKeyboardFrame"];
  v5 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v4 withDefaultKey:@"SBPIPVisualizeKeyboardFrame" toDefaultValue:MEMORY[0x1E695E110] options:1];

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"visualizePositionRegions"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v6 withDefaultKey:@"SBPIPVisualizePositionRegions" toDefaultValue:v5 options:1];

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"initiallyUsesMinimumPreferredContentSize"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v7 withDefaultKey:@"SBPIPInitiallyUsesMinimumPreferredContentSize" toDefaultValue:v5 options:1];

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"lastKnownCornerPositionByContentType"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v8 withDefaultKey:@"SBPIPLastKnownCornerPositionByContentType" toDefaultValue:0 options:1];

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"lastKnownSizeByContentType"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v9 withDefaultKey:@"SBPIPLastKnownSizeByContentType" toDefaultValue:0 options:1];
}

- (unint64_t)lastKnownCornerPositionForContentType:(id)type
{
  typeCopy = type;
  lastKnownCornerPositionByContentType = [(SBPIPDefaults *)self lastKnownCornerPositionByContentType];
  v6 = [lastKnownCornerPositionByContentType objectForKey:typeCopy];

  if (v6)
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 3;
  }

  return unsignedIntegerValue;
}

- (void)setLastKnownCornerPosition:(unint64_t)position contentType:(id)type
{
  typeCopy = type;
  lastKnownCornerPositionByContentType = [(SBPIPDefaults *)self lastKnownCornerPositionByContentType];
  v10 = lastKnownCornerPositionByContentType;
  if (lastKnownCornerPositionByContentType)
  {
    [MEMORY[0x1E695DF90] dictionaryWithDictionary:lastKnownCornerPositionByContentType];
  }

  else
  {
    [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  }
  v8 = ;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:position];
  [v8 setObject:v9 forKey:typeCopy];

  [(SBPIPDefaults *)self setLastKnownCornerPositionByContentType:v8];
}

- (double)lastKnownSizeForContentType:(id)type
{
  typeCopy = type;
  lastKnownSizeByContentType = [(SBPIPDefaults *)self lastKnownSizeByContentType];
  v6 = [lastKnownSizeByContentType objectForKey:typeCopy];

  [v6 doubleValue];
  v8 = v7;

  return v8;
}

- (void)setLastKnownSize:(double)size contentType:(id)type
{
  typeCopy = type;
  lastKnownSizeByContentType = [(SBPIPDefaults *)self lastKnownSizeByContentType];
  v10 = lastKnownSizeByContentType;
  if (lastKnownSizeByContentType)
  {
    [MEMORY[0x1E695DF90] dictionaryWithDictionary:lastKnownSizeByContentType];
  }

  else
  {
    [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  }
  v8 = ;
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:size];
  [v8 setObject:v9 forKey:typeCopy];

  [(SBPIPDefaults *)self setLastKnownSizeByContentType:v8];
}

@end