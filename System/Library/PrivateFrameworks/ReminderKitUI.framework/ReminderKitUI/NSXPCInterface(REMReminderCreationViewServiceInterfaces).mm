@interface NSXPCInterface(REMReminderCreationViewServiceInterfaces)
+ (id)rem_reminderCreationViewServiceViewControllerExportedInterface;
@end

@implementation NSXPCInterface(REMReminderCreationViewServiceInterfaces)

+ (id)rem_reminderCreationViewServiceViewControllerExportedInterface
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287448FE8];
  v1 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v1 forSelector:sel_displayForCreationWithContext_completion_ argumentIndex:0 ofReply:0];

  return v0;
}

@end