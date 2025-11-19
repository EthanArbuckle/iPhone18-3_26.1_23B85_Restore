@interface PCSServiceItemsGetNoRollStingrayServiceTypes
@end

@implementation PCSServiceItemsGetNoRollStingrayServiceTypes

void ___PCSServiceItemsGetNoRollStingrayServiceTypes_block_invoke()
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = kPCSServiceRaw;
  v4[1] = kPCSServiceMaster;
  v4[2] = kPCSServiceEscrow;
  v4[3] = kPCSServiceFDE;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];
  v1 = [MEMORY[0x1E695DFD8] setWithArray:v0];
  v2 = _PCSServiceItemsGetNoRollStingrayServiceTypes_noRoll;
  _PCSServiceItemsGetNoRollStingrayServiceTypes_noRoll = v1;

  v3 = *MEMORY[0x1E69E9840];
}

@end