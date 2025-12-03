@interface SSNameFormatManager
+ (id)contactFromName:(id)name;
+ (void)initialize;
- (SSNameFormatManager)init;
@end

@implementation SSNameFormatManager

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    sharedNameFormatManager = objc_opt_new();

    MEMORY[0x1EEE66BB8]();
  }
}

- (SSNameFormatManager)init
{
  v5.receiver = self;
  v5.super_class = SSNameFormatManager;
  v2 = [(SSNameFormatManager *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(SSNameFormatManager *)v2 setPersonNameComponentsFormatter:v3];
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