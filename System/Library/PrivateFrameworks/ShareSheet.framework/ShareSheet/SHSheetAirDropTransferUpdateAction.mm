@interface SHSheetAirDropTransferUpdateAction
- (SFAirDropTransferChange)change;
- (SHSheetAirDropTransferUpdateAction)initWithAirDropTransferChange:(id)a3;
@end

@implementation SHSheetAirDropTransferUpdateAction

- (SHSheetAirDropTransferUpdateAction)initWithAirDropTransferChange:(id)a3
{
  v4 = MEMORY[0x1E698E700];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setObject:v5 forSetting:3];

  v7 = [(SHSheetAirDropTransferUpdateAction *)self initWithInfo:v6 responder:0];
  return v7;
}

- (SFAirDropTransferChange)change
{
  v2 = [(SHSheetAirDropTransferUpdateAction *)self info];
  v3 = [v2 objectForSetting:3];

  return v3;
}

@end