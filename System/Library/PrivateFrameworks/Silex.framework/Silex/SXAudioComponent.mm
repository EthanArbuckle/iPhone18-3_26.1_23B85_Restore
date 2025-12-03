@interface SXAudioComponent
- (unint64_t)traits;
@end

@implementation SXAudioComponent

- (unint64_t)traits
{
  stillImageIdentifier = [(SXAudioComponent *)self stillImageIdentifier];

  if (stillImageIdentifier)
  {
    return 12;
  }

  else
  {
    return 8;
  }
}

@end