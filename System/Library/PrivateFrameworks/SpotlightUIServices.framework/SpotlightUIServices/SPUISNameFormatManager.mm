@interface SPUISNameFormatManager
+ (id)contactFromName:(id)a3;
+ (void)initialize;
- (SPUISNameFormatManager)init;
@end

@implementation SPUISNameFormatManager

+ (void)initialize
{
  if (objc_opt_class() == a1)
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

+ (id)contactFromName:(id)a3
{
  v3 = [a1 personNameComponentsFromString:a3];
  v4 = objc_opt_new();
  [v3 overrideComponentsInContact:v4];
  v5 = [v4 copy];

  return v5;
}

@end