@interface PGPlaybackStatePrerollAttributes
+ (id)prerollAttributesForAdContentWithRequiredLinearPlaybackEndTime:(double)time preferredTintColor:(id)color;
+ (id)prerollAttributesForSponsoredContentWithRequiredLinearPlaybackEndTime:(double)time preferredTintColor:(id)color;
- (BOOL)isEqual:(id)equal;
- (PGPlaybackStatePrerollAttributes)initWithDictionary:(id)dictionary;
- (PGPlaybackStatePrerollAttributes)initWithRequiredLinearPlaybackEndTime:(double)time preferredTintColor:(id)color contentType:(int64_t)type;
- (UIColor)preferredTintColor;
- (double)requiredLinearPlaybackEndTime;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)preferredTintColorDescription;
- (id)succinctDescription;
- (int64_t)contentType;
@end

@implementation PGPlaybackStatePrerollAttributes

+ (id)prerollAttributesForAdContentWithRequiredLinearPlaybackEndTime:(double)time preferredTintColor:(id)color
{
  colorCopy = color;
  v7 = [[self alloc] initWithRequiredLinearPlaybackEndTime:colorCopy preferredTintColor:1 contentType:time];

  return v7;
}

+ (id)prerollAttributesForSponsoredContentWithRequiredLinearPlaybackEndTime:(double)time preferredTintColor:(id)color
{
  colorCopy = color;
  v7 = [[self alloc] initWithRequiredLinearPlaybackEndTime:colorCopy preferredTintColor:2 contentType:time];

  return v7;
}

- (PGPlaybackStatePrerollAttributes)initWithRequiredLinearPlaybackEndTime:(double)time preferredTintColor:(id)color contentType:(int64_t)type
{
  v8 = (*&time & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  if (time >= 0.0)
  {
    v8 = 0;
  }

  v9 = (*&time & 0x7FFFFFFFFFFFFFFFLL) == 0 || v8;
  v10 = time < 0.0 && ((*&time & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  colorCopy = color;
  v12 = 2;
  if (colorCopy)
  {
    v12 = 3;
  }

  if (time <= 0.0)
  {
    v13 = (colorCopy != 0) + 1;
  }

  else
  {
    v13 = v12;
  }

  v14 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v13];
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [v14 setObject:v15 forKeyedSubscript:&unk_1F3959068];

  if (((v9 | v10) & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:time];
    [v14 setObject:v16 forKey:&unk_1F3959080];
  }

  if (colorCopy)
  {
    v25 = 0.0;
    v26 = 0.0;
    v23 = 0.0;
    v24 = 0.0;
    [colorCopy getRed:&v26 green:&v25 blue:&v24 alpha:&v23];
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:v26];
    [v14 setObject:v17 forKey:&unk_1F3959098];

    v18 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
    [v14 setObject:v18 forKey:&unk_1F39590B0];

    v19 = [MEMORY[0x1E696AD98] numberWithDouble:v24];
    [v14 setObject:v19 forKey:&unk_1F39590C8];

    v20 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
    [v14 setObject:v20 forKey:&unk_1F39590E0];
  }

  v21 = [(PGPlaybackStatePrerollAttributes *)self initWithDictionary:v14];

  return v21;
}

- (PGPlaybackStatePrerollAttributes)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = PGPlaybackStatePrerollAttributes;
  v5 = [(PGPlaybackStatePrerollAttributes *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    dictionaryRepresentation = v5->_dictionaryRepresentation;
    v5->_dictionaryRepresentation = v6;
  }

  return v5;
}

- (UIColor)preferredTintColor
{
  dictionaryRepresentation = [(PGPlaybackStatePrerollAttributes *)self dictionaryRepresentation];
  v4 = [dictionaryRepresentation objectForKey:&unk_1F3959098];

  if (v4)
  {
    dictionaryRepresentation2 = [(PGPlaybackStatePrerollAttributes *)self dictionaryRepresentation];
    v6 = [dictionaryRepresentation2 objectForKey:&unk_1F3959098];
    [v6 doubleValue];
    v8 = v7;

    dictionaryRepresentation3 = [(PGPlaybackStatePrerollAttributes *)self dictionaryRepresentation];
    v10 = [dictionaryRepresentation3 objectForKey:&unk_1F39590B0];
    [v10 doubleValue];
    v12 = v11;

    dictionaryRepresentation4 = [(PGPlaybackStatePrerollAttributes *)self dictionaryRepresentation];
    v14 = [dictionaryRepresentation4 objectForKey:&unk_1F39590C8];
    [v14 doubleValue];
    v16 = v15;

    dictionaryRepresentation5 = [(PGPlaybackStatePrerollAttributes *)self dictionaryRepresentation];
    v18 = [dictionaryRepresentation5 objectForKey:&unk_1F39590E0];
    [v18 doubleValue];
    v20 = v19;

    v21 = [MEMORY[0x1E69DC888] colorWithRed:v8 green:v12 blue:v16 alpha:v20];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (int64_t)contentType
{
  dictionaryRepresentation = [(PGPlaybackStatePrerollAttributes *)self dictionaryRepresentation];
  v3 = [dictionaryRepresentation objectForKey:&unk_1F3959068];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (double)requiredLinearPlaybackEndTime
{
  dictionaryRepresentation = [(PGPlaybackStatePrerollAttributes *)self dictionaryRepresentation];
  v3 = [dictionaryRepresentation objectForKey:&unk_1F3959080];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  dictionaryRepresentation = [v5 dictionaryRepresentation];
  dictionaryRepresentation2 = [(PGPlaybackStatePrerollAttributes *)self dictionaryRepresentation];
  v8 = [dictionaryRepresentation isEqualToDictionary:dictionaryRepresentation2];

  return v8;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(PGPlaybackStatePrerollAttributes *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PGPlaybackStatePrerollAttributes *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(PGPlaybackStatePrerollAttributes *)self succinctDescriptionBuilder];
  [(PGPlaybackStatePrerollAttributes *)self requiredLinearPlaybackEndTime];
  v5 = [succinctDescriptionBuilder appendDouble:@"requiredLinearPlaybackEndTime" withName:3 decimalPrecision:?];
  contentType = [(PGPlaybackStatePrerollAttributes *)self contentType];
  v7 = @"unknown";
  if (contentType == 1)
  {
    v7 = @"Advertisement";
  }

  if (contentType == 2)
  {
    v8 = @"Sponsored";
  }

  else
  {
    v8 = v7;
  }

  [succinctDescriptionBuilder appendString:v8 withName:@"Content Type"];
  preferredTintColorDescription = [(PGPlaybackStatePrerollAttributes *)self preferredTintColorDescription];
  [succinctDescriptionBuilder appendString:preferredTintColorDescription withName:@"preferredTintColor" skipIfEmpty:1];

  return succinctDescriptionBuilder;
}

- (id)preferredTintColorDescription
{
  dictionaryRepresentation = [(PGPlaybackStatePrerollAttributes *)self dictionaryRepresentation];
  v4 = [dictionaryRepresentation objectForKey:&unk_1F3959098];

  if (v4)
  {
    dictionaryRepresentation2 = [(PGPlaybackStatePrerollAttributes *)self dictionaryRepresentation];
    v6 = [dictionaryRepresentation2 objectForKey:&unk_1F3959098];

    dictionaryRepresentation3 = [(PGPlaybackStatePrerollAttributes *)self dictionaryRepresentation];
    v8 = [dictionaryRepresentation3 objectForKey:&unk_1F39590B0];

    dictionaryRepresentation4 = [(PGPlaybackStatePrerollAttributes *)self dictionaryRepresentation];
    v10 = [dictionaryRepresentation4 objectForKey:&unk_1F39590C8];

    dictionaryRepresentation5 = [(PGPlaybackStatePrerollAttributes *)self dictionaryRepresentation];
    v12 = [dictionaryRepresentation5 objectForKey:&unk_1F39590E0];

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"r: %@ g: %@ b: %@ a: %@", v6, v8, v10, v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end