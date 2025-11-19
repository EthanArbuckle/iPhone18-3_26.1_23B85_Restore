@interface WFApplicationIconProvider
+ (id)applicationIconImageForBundleIdentifier:(id)a3 size:(CGSize)a4;
+ (id)applicationIconImageForCalendarDate:(id)a3 size:(CGSize)a4;
@end

@implementation WFApplicationIconProvider

+ (id)applicationIconImageForCalendarDate:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = MEMORY[0x1E69A8A00];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = [MEMORY[0x1E695DEE8] currentCalendar];
  v10 = [v8 initWithDate:v7 calendar:v9 format:0];

  v11 = UIImageFromISIcon(v10, width, height);

  return v11;
}

+ (id)applicationIconImageForBundleIdentifier:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  if ([v7 isEqualToString:@"com.apple.mobilecal"])
  {
    v8 = [MEMORY[0x1E695DF00] date];
    v9 = [a1 applicationIconImageForCalendarDate:v8 size:{width, height}];
    goto LABEL_9;
  }

  v10 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v7];
  v11 = [v10 appState];
  v12 = [v11 isInstalled];

  if (v12)
  {
    v8 = v10;
LABEL_7:
    v15 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithResourceProxy:v10];
    v9 = UIImageFromISIcon(v15, width, height);

    goto LABEL_9;
  }

  v8 = [MEMORY[0x1E69635E0] applicationProxyForSystemPlaceholder:v7];

  v13 = [v8 appState];
  v14 = [v13 isPlaceholder];

  if (v14)
  {
    v10 = v8;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

@end