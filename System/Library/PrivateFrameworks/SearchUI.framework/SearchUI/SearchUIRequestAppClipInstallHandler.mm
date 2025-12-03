@interface SearchUIRequestAppClipInstallHandler
+ (id)fallbackCommandForRowModel:(id)model environment:(id)environment;
- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment;
@end

@implementation SearchUIRequestAppClipInstallHandler

+ (id)fallbackCommandForRowModel:(id)model environment:(id)environment
{
  modelCopy = model;
  identifyingResult = [modelCopy identifyingResult];
  punchouts = [modelCopy punchouts];
  firstObject = [punchouts firstObject];

  preferredOpenableURL = [firstObject preferredOpenableURL];
  if (!preferredOpenableURL || ![firstObject hasClip])
  {
    v12 = 0;
LABEL_9:

    goto LABEL_10;
  }

  if (([identifyingResult isLocalApplicationResult] & 1) == 0)
  {

    goto LABEL_8;
  }

  applicationBundleIdentifier = [identifyingResult applicationBundleIdentifier];
  v10 = [SearchUIUtilities bundleIdentifierForApp:0];
  v11 = [applicationBundleIdentifier isEqualToString:v10];

  v12 = 0;
  if ((v11 & 1) == 0)
  {
LABEL_8:
    v12 = objc_opt_new();
    preferredOpenableURL = [modelCopy punchouts];
    firstObject2 = [preferredOpenableURL firstObject];
    preferredOpenableURL2 = [firstObject2 preferredOpenableURL];
    [v12 setUrl:preferredOpenableURL2];

    goto LABEL_9;
  }

LABEL_10:

  return v12;
}

- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment
{
  v5 = [command url];
  [SearchUIUtilities requestClipInstallWithURL:v5 completion:0];
}

@end