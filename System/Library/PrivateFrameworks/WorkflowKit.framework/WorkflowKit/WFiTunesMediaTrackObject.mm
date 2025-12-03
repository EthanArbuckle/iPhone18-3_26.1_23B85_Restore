@interface WFiTunesMediaTrackObject
+ (id)JSONKeyPathsByPropertyKey;
@end

@implementation WFiTunesMediaTrackObject

id __48__WFiTunesMediaTrackObject_priceJSONTransformer__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKey:@"trackPrice"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 objectForKey:@"price"];
  }

  v6 = v5;

  return v6;
}

uint64_t __51__WFiTunesMediaTrackObject_durationJSONTransformer__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  [a2 timeInterval];
  v4 = v3 * 1000.0;

  return [v2 numberWithDouble:v4];
}

id __51__WFiTunesMediaTrackObject_durationJSONTransformer__block_invoke(uint64_t a1, void *a2)
{
  [a2 doubleValue];
  v3 = v2 / 1000.0;
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = [v4 dateByAddingTimeInterval:v3];
  v7 = 224;
  v8 = [v5 components:224 fromDate:v4 toDate:v6 options:0];

  if ([v8 hour])
  {
    v9 = 1;
  }

  else
  {
    v10 = [v8 minute];
    if (v10)
    {
      v9 = 1;
    }

    else
    {
      v9 = 0x10000;
    }

    if (v10)
    {
      v7 = 224;
    }

    else
    {
      v7 = 192;
    }
  }

  v11 = [objc_alloc(MEMORY[0x1E6996F70]) initWithTimeInterval:v7 allowedUnits:0 unitsStyle:v9 zeroFormattingBehavior:v3];

  return v11;
}

+ (id)JSONKeyPathsByPropertyKey
{
  v9[11] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___WFiTunesMediaTrackObject;
  v2 = objc_msgSendSuper2(&v7, sel_JSONKeyPathsByPropertyKey);
  v3 = [v2 mutableCopy];

  v8[0] = @"identifier";
  v8[1] = @"name";
  v9[0] = @"trackId";
  v9[1] = @"trackName";
  v8[2] = @"censoredName";
  v8[3] = @"kind";
  v9[2] = @"trackCensoredName";
  v9[3] = @"kind";
  v8[4] = @"price";
  v8[5] = @"viewURL";
  v9[4] = &unk_1F4A9B5F0;
  v9[5] = @"trackViewUrl";
  v8[6] = @"duration";
  v8[7] = @"genre";
  v9[6] = @"trackTimeMillis";
  v9[7] = @"primaryGenreName";
  v8[8] = @"previewURL";
  v8[9] = @"explicit";
  v9[8] = @"previewUrl";
  v9[9] = @"trackExplicitness";
  v8[10] = @"streamable";
  v9[10] = @"isStreamable";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:11];
  [v3 addEntriesFromDictionary:v4];

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

@end