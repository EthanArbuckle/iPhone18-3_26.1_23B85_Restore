@interface SKDDefaultsProvider
- (id)versionForPipeline:(id)a3;
@end

@implementation SKDDefaultsProvider

- (id)versionForPipeline:(id)a3
{
  if ([a3 isEqualToString:@"Keyphrase"])
  {
    return &unk_2846E7AA0;
  }

  else
  {
    return &unk_2846E7AB8;
  }
}

@end