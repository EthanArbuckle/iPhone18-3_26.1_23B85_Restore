@interface ISSettings
- (void)save;
@end

@implementation ISSettings

- (void)save
{
  v2 = +[ISRootSettings sharedInstance];
  [v2 save];
}

@end