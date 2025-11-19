@interface PGPlaybackStatePrerollAttributes
+ (id)prerollAttributesForAdContentWithRequiredLinearPlaybackEndTime:(double)a3 preferredTintColor:(id)a4;
+ (id)prerollAttributesForSponsoredContentWithRequiredLinearPlaybackEndTime:(double)a3 preferredTintColor:(id)a4;
- (BOOL)isEqual:(id)a3;
- (PGPlaybackStatePrerollAttributes)initWithDictionary:(id)a3;
- (PGPlaybackStatePrerollAttributes)initWithRequiredLinearPlaybackEndTime:(double)a3 preferredTintColor:(id)a4 contentType:(int64_t)a5;
- (UIColor)preferredTintColor;
- (double)requiredLinearPlaybackEndTime;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)preferredTintColorDescription;
- (id)succinctDescription;
- (int64_t)contentType;
@end

@implementation PGPlaybackStatePrerollAttributes

+ (id)prerollAttributesForAdContentWithRequiredLinearPlaybackEndTime:(double)a3 preferredTintColor:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithRequiredLinearPlaybackEndTime:v6 preferredTintColor:1 contentType:a3];

  return v7;
}

+ (id)prerollAttributesForSponsoredContentWithRequiredLinearPlaybackEndTime:(double)a3 preferredTintColor:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithRequiredLinearPlaybackEndTime:v6 preferredTintColor:2 contentType:a3];

  return v7;
}

- (PGPlaybackStatePrerollAttributes)initWithRequiredLinearPlaybackEndTime:(double)a3 preferredTintColor:(id)a4 contentType:(int64_t)a5
{
  v8 = (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  if (a3 >= 0.0)
  {
    v8 = 0;
  }

  v9 = (*&a3 & 0x7FFFFFFFFFFFFFFFLL) == 0 || v8;
  v10 = a3 < 0.0 && ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  v11 = a4;
  v12 = 2;
  if (v11)
  {
    v12 = 3;
  }

  if (a3 <= 0.0)
  {
    v13 = (v11 != 0) + 1;
  }

  else
  {
    v13 = v12;
  }

  v14 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v13];
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  [v14 setObject:v15 forKeyedSubscript:&unk_1F3959068];

  if (((v9 | v10) & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [v14 setObject:v16 forKey:&unk_1F3959080];
  }

  if (v11)
  {
    v25 = 0.0;
    v26 = 0.0;
    v23 = 0.0;
    v24 = 0.0;
    [v11 getRed:&v26 green:&v25 blue:&v24 alpha:&v23];
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

- (PGPlaybackStatePrerollAttributes)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PGPlaybackStatePrerollAttributes;
  v5 = [(PGPlaybackStatePrerollAttributes *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    dictionaryRepresentation = v5->_dictionaryRepresentation;
    v5->_dictionaryRepresentation = v6;
  }

  return v5;
}

- (UIColor)preferredTintColor
{
  v3 = [(PGPlaybackStatePrerollAttributes *)self dictionaryRepresentation];
  v4 = [v3 objectForKey:&unk_1F3959098];

  if (v4)
  {
    v5 = [(PGPlaybackStatePrerollAttributes *)self dictionaryRepresentation];
    v6 = [v5 objectForKey:&unk_1F3959098];
    [v6 doubleValue];
    v8 = v7;

    v9 = [(PGPlaybackStatePrerollAttributes *)self dictionaryRepresentation];
    v10 = [v9 objectForKey:&unk_1F39590B0];
    [v10 doubleValue];
    v12 = v11;

    v13 = [(PGPlaybackStatePrerollAttributes *)self dictionaryRepresentation];
    v14 = [v13 objectForKey:&unk_1F39590C8];
    [v14 doubleValue];
    v16 = v15;

    v17 = [(PGPlaybackStatePrerollAttributes *)self dictionaryRepresentation];
    v18 = [v17 objectForKey:&unk_1F39590E0];
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
  v2 = [(PGPlaybackStatePrerollAttributes *)self dictionaryRepresentation];
  v3 = [v2 objectForKey:&unk_1F3959068];
  v4 = [v3 integerValue];

  return v4;
}

- (double)requiredLinearPlaybackEndTime
{
  v2 = [(PGPlaybackStatePrerollAttributes *)self dictionaryRepresentation];
  v3 = [v2 objectForKey:&unk_1F3959080];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 dictionaryRepresentation];
  v7 = [(PGPlaybackStatePrerollAttributes *)self dictionaryRepresentation];
  v8 = [v6 isEqualToDictionary:v7];

  return v8;
}

- (id)succinctDescription
{
  v2 = [(PGPlaybackStatePrerollAttributes *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PGPlaybackStatePrerollAttributes *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(PGPlaybackStatePrerollAttributes *)self succinctDescriptionBuilder];
  [(PGPlaybackStatePrerollAttributes *)self requiredLinearPlaybackEndTime];
  v5 = [v4 appendDouble:@"requiredLinearPlaybackEndTime" withName:3 decimalPrecision:?];
  v6 = [(PGPlaybackStatePrerollAttributes *)self contentType];
  v7 = @"unknown";
  if (v6 == 1)
  {
    v7 = @"Advertisement";
  }

  if (v6 == 2)
  {
    v8 = @"Sponsored";
  }

  else
  {
    v8 = v7;
  }

  [v4 appendString:v8 withName:@"Content Type"];
  v9 = [(PGPlaybackStatePrerollAttributes *)self preferredTintColorDescription];
  [v4 appendString:v9 withName:@"preferredTintColor" skipIfEmpty:1];

  return v4;
}

- (id)preferredTintColorDescription
{
  v3 = [(PGPlaybackStatePrerollAttributes *)self dictionaryRepresentation];
  v4 = [v3 objectForKey:&unk_1F3959098];

  if (v4)
  {
    v5 = [(PGPlaybackStatePrerollAttributes *)self dictionaryRepresentation];
    v6 = [v5 objectForKey:&unk_1F3959098];

    v7 = [(PGPlaybackStatePrerollAttributes *)self dictionaryRepresentation];
    v8 = [v7 objectForKey:&unk_1F39590B0];

    v9 = [(PGPlaybackStatePrerollAttributes *)self dictionaryRepresentation];
    v10 = [v9 objectForKey:&unk_1F39590C8];

    v11 = [(PGPlaybackStatePrerollAttributes *)self dictionaryRepresentation];
    v12 = [v11 objectForKey:&unk_1F39590E0];

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"r: %@ g: %@ b: %@ a: %@", v6, v8, v10, v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end