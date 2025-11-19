@interface SearchUIRequestAppClipInstallHandler
+ (id)fallbackCommandForRowModel:(id)a3 environment:(id)a4;
- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5;
@end

@implementation SearchUIRequestAppClipInstallHandler

+ (id)fallbackCommandForRowModel:(id)a3 environment:(id)a4
{
  v4 = a3;
  v5 = [v4 identifyingResult];
  v6 = [v4 punchouts];
  v7 = [v6 firstObject];

  v8 = [v7 preferredOpenableURL];
  if (!v8 || ![v7 hasClip])
  {
    v12 = 0;
LABEL_9:

    goto LABEL_10;
  }

  if (([v5 isLocalApplicationResult] & 1) == 0)
  {

    goto LABEL_8;
  }

  v9 = [v5 applicationBundleIdentifier];
  v10 = [SearchUIUtilities bundleIdentifierForApp:0];
  v11 = [v9 isEqualToString:v10];

  v12 = 0;
  if ((v11 & 1) == 0)
  {
LABEL_8:
    v12 = objc_opt_new();
    v8 = [v4 punchouts];
    v13 = [v8 firstObject];
    v14 = [v13 preferredOpenableURL];
    [v12 setUrl:v14];

    goto LABEL_9;
  }

LABEL_10:

  return v12;
}

- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5
{
  v5 = [a3 url];
  [SearchUIUtilities requestClipInstallWithURL:v5 completion:0];
}

@end