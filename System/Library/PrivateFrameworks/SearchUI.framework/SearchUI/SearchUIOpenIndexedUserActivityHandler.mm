@interface SearchUIOpenIndexedUserActivityHandler
+ (id)fallbackCommandForRowModel:(id)model environment:(id)environment;
- (id)destinationApplicationBundleIdentifier;
- (void)getUserActivityForCommand:(id)command environment:(id)environment completionHandler:(id)handler;
@end

@implementation SearchUIOpenIndexedUserActivityHandler

+ (id)fallbackCommandForRowModel:(id)model environment:(id)environment
{
  identifyingResult = [model identifyingResult];
  userActivityRequiredString = [identifyingResult userActivityRequiredString];
  if (userActivityRequiredString)
  {
    v6 = objc_opt_new();
    [v6 setUserActivityRequiredString:userActivityRequiredString];
    applicationBundleIdentifier = [identifyingResult applicationBundleIdentifier];
    [v6 setApplicationBundleIdentifier:applicationBundleIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)getUserActivityForCommand:(id)command environment:(id)environment completionHandler:(id)handler
{
  v7 = MEMORY[0x1E69636A8];
  handlerCopy = handler;
  commandCopy = command;
  v10 = [v7 alloc];
  userActivityRequiredString = [commandCopy userActivityRequiredString];
  v11 = [v10 _initWithUserActivityStrings:userActivityRequiredString secondaryString:0 optionalData:0];
  applicationBundleIdentifier = [commandCopy applicationBundleIdentifier];

  (*(handler + 2))(handlerCopy, v11, applicationBundleIdentifier);
}

- (id)destinationApplicationBundleIdentifier
{
  command = [(SearchUICommandHandler *)self command];
  applicationBundleIdentifier = [command applicationBundleIdentifier];

  return applicationBundleIdentifier;
}

@end