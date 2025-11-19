@interface SXAudioComponent
- (unint64_t)traits;
@end

@implementation SXAudioComponent

- (unint64_t)traits
{
  v2 = [(SXAudioComponent *)self stillImageIdentifier];

  if (v2)
  {
    return 12;
  }

  else
  {
    return 8;
  }
}

@end