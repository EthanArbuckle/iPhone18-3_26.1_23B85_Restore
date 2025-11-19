@interface NSBundle(PFAdditions)
+ (id)podcastsFoundationBundle;
@end

@implementation NSBundle(PFAdditions)

+ (id)podcastsFoundationBundle
{
  if (podcastsFoundationBundle_onceToken != -1)
  {
    +[NSBundle(PFAdditions) podcastsFoundationBundle];
  }

  v1 = podcastsFoundationBundle_bundle;

  return v1;
}

@end