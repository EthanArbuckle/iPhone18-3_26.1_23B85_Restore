@interface UIAlertController(ICQUI)
+ (id)sheetAlertControllerWithTitle:()ICQUI message:;
@end

@implementation UIAlertController(ICQUI)

+ (id)sheetAlertControllerWithTitle:()ICQUI message:
{
  v5 = MEMORY[0x277D75418];
  v6 = a4;
  v7 = a3;
  currentDevice = [v5 currentDevice];
  v9 = [currentDevice userInterfaceIdiom] != 0;

  v10 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:v6 preferredStyle:v9];

  return v10;
}

@end