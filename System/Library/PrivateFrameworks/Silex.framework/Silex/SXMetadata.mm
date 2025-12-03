@interface SXMetadata
- (int64_t)suppressRecommendedReadsWithValue:(id)value withType:(int)type;
@end

@implementation SXMetadata

- (int64_t)suppressRecommendedReadsWithValue:(id)value withType:(int)type
{
  if (type == 2)
  {
    return [value BOOLValue];
  }

  else
  {
    return -1;
  }
}

@end