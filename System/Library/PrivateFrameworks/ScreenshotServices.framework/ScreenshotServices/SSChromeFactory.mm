@interface SSChromeFactory
+ (id)closeBarButtonItem;
@end

@implementation SSChromeFactory

+ (id)closeBarButtonItem
{
  if (_SSScreenshotsRedesign2025Enabled())
  {
    v2 = objc_alloc(MEMORY[0x1E69DC708]);
    v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
    v4 = [v2 initWithImage:v3 style:0 target:0 action:0];

    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    v6 = [mainBundle localizedStringForKey:@"CLOSE" value:@"Close" table:0];
    [v4 setTitle:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end