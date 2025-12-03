@interface SidecarService_Display
- (id)localizedDescription;
- (id)localizedItemName;
@end

@implementation SidecarService_Display

- (id)localizedItemName
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Display" value:&stru_2877BC080 table:0];

  return v3;
}

- (id)localizedDescription
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Display" value:&stru_2877BC080 table:0];

  return v3;
}

@end