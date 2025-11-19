@interface NSValueTransformer(PosterFoundation)
+ (PFGenericValueTransformer)pf_identityTransformerForClass:()PosterFoundation;
+ (id)pf_ISO8601DateTransformer;
+ (id)pf_JSONArrayTransformer;
+ (id)pf_JSONDictionaryTransformer;
+ (id)pf_NSKeyedArchivingValueTransformer;
+ (id)pf_UUIDToNSStringTransformer;
+ (uint64_t)pf_dateTransformerForDateFormatter:()PosterFoundation;
@end

@implementation NSValueTransformer(PosterFoundation)

+ (id)pf_ISO8601DateTransformer
{
  if (pf_ISO8601DateTransformer_onceToken != -1)
  {
    +[NSValueTransformer(PosterFoundation) pf_ISO8601DateTransformer];
  }

  v1 = pf_ISO8601DateTransformer_transformer;

  return v1;
}

+ (uint64_t)pf_dateTransformerForDateFormatter:()PosterFoundation
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__NSValueTransformer_PosterFoundation__pf_dateTransformerForDateFormatter___block_invoke;
  block[3] = &unk_1E8189BF8;
  v10 = v3;
  v4 = pf_dateTransformerForDateFormatter__onceToken;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&pf_dateTransformerForDateFormatter__onceToken, block);
  }

  v6 = pf_dateTransformerForDateFormatter__transformer;
  v7 = pf_dateTransformerForDateFormatter__transformer;

  return v6;
}

+ (id)pf_UUIDToNSStringTransformer
{
  if (pf_UUIDToNSStringTransformer_onceToken != -1)
  {
    +[NSValueTransformer(PosterFoundation) pf_UUIDToNSStringTransformer];
  }

  v1 = pf_UUIDToNSStringTransformer_transformer;

  return v1;
}

+ (id)pf_JSONDictionaryTransformer
{
  if (pf_JSONDictionaryTransformer_onceToken != -1)
  {
    +[NSValueTransformer(PosterFoundation) pf_JSONDictionaryTransformer];
  }

  v1 = pf_JSONDictionaryTransformer_transformer;

  return v1;
}

+ (id)pf_JSONArrayTransformer
{
  if (pf_JSONArrayTransformer_onceToken != -1)
  {
    +[NSValueTransformer(PosterFoundation) pf_JSONArrayTransformer];
  }

  v1 = pf_JSONArrayTransformer_transformer;

  return v1;
}

+ (PFGenericValueTransformer)pf_identityTransformerForClass:()PosterFoundation
{
  v3 = [[PFGenericValueTransformer alloc] initWithTransformedValueClass:a3 transformer:&__block_literal_global_37 reverseValueClass:0 reverseTransformer:&__block_literal_global_39];

  return v3;
}

+ (id)pf_NSKeyedArchivingValueTransformer
{
  if (pf_NSKeyedArchivingValueTransformer_onceToken != -1)
  {
    +[NSValueTransformer(PosterFoundation) pf_NSKeyedArchivingValueTransformer];
  }

  v1 = pf_NSKeyedArchivingValueTransformer_transformer;

  return v1;
}

@end