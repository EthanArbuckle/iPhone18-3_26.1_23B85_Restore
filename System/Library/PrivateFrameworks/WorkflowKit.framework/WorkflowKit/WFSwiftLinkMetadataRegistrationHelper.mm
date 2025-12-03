@interface WFSwiftLinkMetadataRegistrationHelper
+ (BOOL)registerWithBundle:(id)bundle forBundleIdentifier:(id)identifier error:(id *)error;
@end

@implementation WFSwiftLinkMetadataRegistrationHelper

+ (BOOL)registerWithBundle:(id)bundle forBundleIdentifier:(id)identifier error:(id *)error
{
  sub_1CA94C3A8();
  bundleCopy = bundle;
  sub_1CA285F3C(bundleCopy);

  return 1;
}

@end