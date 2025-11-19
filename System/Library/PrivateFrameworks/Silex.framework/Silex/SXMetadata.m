@interface SXMetadata
- (int64_t)suppressRecommendedReadsWithValue:(id)a3 withType:(int)a4;
@end

@implementation SXMetadata

- (int64_t)suppressRecommendedReadsWithValue:(id)a3 withType:(int)a4
{
  if (a4 == 2)
  {
    return [a3 BOOLValue];
  }

  else
  {
    return -1;
  }
}

@end