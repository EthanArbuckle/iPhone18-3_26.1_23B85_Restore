@interface SKDDefaultsProvider
- (id)versionForPipeline:(id)pipeline;
@end

@implementation SKDDefaultsProvider

- (id)versionForPipeline:(id)pipeline
{
  if ([pipeline isEqualToString:@"Keyphrase"])
  {
    return &unk_2846E7AA0;
  }

  else
  {
    return &unk_2846E7AB8;
  }
}

@end