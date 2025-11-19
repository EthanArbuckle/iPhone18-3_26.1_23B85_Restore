@interface WalletSettingsModel
- (void)passLibraryDidChangeWithNotification:(id)a3;
- (void)paymentOptionsDidChange;
@end

@implementation WalletSettingsModel

- (void)paymentOptionsDidChange
{
  sub_1BE048964();
  sub_1BD405E54();
}

- (void)passLibraryDidChangeWithNotification:(id)a3
{
  v3 = sub_1BE04A2E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04A2C4();
  sub_1BE048964();
  sub_1BD406730();

  (*(v4 + 8))(v7, v3);
}

@end