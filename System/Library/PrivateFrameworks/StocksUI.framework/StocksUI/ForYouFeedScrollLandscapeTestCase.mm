@interface ForYouFeedScrollLandscapeTestCase
- (NSArray)requiredCapabilities;
- (NSString)testName;
- (id)scrollViewWithContext:(id)context;
@end

@implementation ForYouFeedScrollLandscapeTestCase

- (NSString)testName
{

  v2 = sub_22089132C();

  return v2;
}

- (NSArray)requiredCapabilities
{

  v2 = sub_2208916DC();

  return v2;
}

- (id)scrollViewWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_2205A194C(contextCopy);
  v7 = v6;

  return v7;
}

@end