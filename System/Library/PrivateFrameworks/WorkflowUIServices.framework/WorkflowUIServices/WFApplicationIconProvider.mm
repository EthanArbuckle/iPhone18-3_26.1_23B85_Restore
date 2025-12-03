@interface WFApplicationIconProvider
+ (id)applicationIconImageForBundleIdentifier:(id)identifier size:(CGSize)size;
+ (id)applicationIconImageForCalendarDate:(id)date size:(CGSize)size;
@end

@implementation WFApplicationIconProvider

+ (id)applicationIconImageForCalendarDate:(id)date size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = MEMORY[0x1E69A8A00];
  dateCopy = date;
  v8 = [v6 alloc];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v10 = [v8 initWithDate:dateCopy calendar:currentCalendar format:0];

  v11 = UIImageFromISIcon(v10, width, height);

  return v11;
}

+ (id)applicationIconImageForBundleIdentifier:(id)identifier size:(CGSize)size
{
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.mobilecal"])
  {
    date = [MEMORY[0x1E695DF00] date];
    v9 = [self applicationIconImageForCalendarDate:date size:{width, height}];
    goto LABEL_9;
  }

  v10 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:identifierCopy];
  appState = [v10 appState];
  isInstalled = [appState isInstalled];

  if (isInstalled)
  {
    date = v10;
LABEL_7:
    v15 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithResourceProxy:v10];
    v9 = UIImageFromISIcon(v15, width, height);

    goto LABEL_9;
  }

  date = [MEMORY[0x1E69635E0] applicationProxyForSystemPlaceholder:identifierCopy];

  appState2 = [date appState];
  isPlaceholder = [appState2 isPlaceholder];

  if (isPlaceholder)
  {
    v10 = date;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

@end