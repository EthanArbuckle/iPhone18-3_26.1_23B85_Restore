@interface SPUISNameFormatManager
+ (id)contactFromName:(id)name;
+ (void)initialize;
- (SPUISNameFormatManager)init;
@end

@implementation SPUISNameFormatManager

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    sharedNameFormatManager = objc_opt_new();

    MEMORY[0x2821F96F8]();
  }
}

- (SPUISNameFormatManager)init
{
  v5.receiver = self;
  v5.super_class = SPUISNameFormatManager;
  v2 = [(SPUISNameFormatManager *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(SPUISNameFormatManager *)v2 setPersonNameComponentsFormatter:v3];
  }

  return v2;
}

+ (id)contactFromName:(id)name
{
  v3 = [self personNameComponentsFromString:name];
  v4 = objc_opt_new();
  [v3 overrideComponentsInContact:v4];
  v5 = [v4 copy];

  return v5;
}

@end