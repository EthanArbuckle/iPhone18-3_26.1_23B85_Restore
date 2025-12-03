@interface SHSheetAirDropTransferUpdateAction
- (SFAirDropTransferChange)change;
- (SHSheetAirDropTransferUpdateAction)initWithAirDropTransferChange:(id)change;
@end

@implementation SHSheetAirDropTransferUpdateAction

- (SHSheetAirDropTransferUpdateAction)initWithAirDropTransferChange:(id)change
{
  v4 = MEMORY[0x1E698E700];
  changeCopy = change;
  v6 = objc_alloc_init(v4);
  [v6 setObject:changeCopy forSetting:3];

  v7 = [(SHSheetAirDropTransferUpdateAction *)self initWithInfo:v6 responder:0];
  return v7;
}

- (SFAirDropTransferChange)change
{
  info = [(SHSheetAirDropTransferUpdateAction *)self info];
  v3 = [info objectForSetting:3];

  return v3;
}

@end