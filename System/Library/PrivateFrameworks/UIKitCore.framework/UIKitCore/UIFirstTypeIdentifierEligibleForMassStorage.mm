@interface UIFirstTypeIdentifierEligibleForMassStorage
@end

@implementation UIFirstTypeIdentifierEligibleForMassStorage

void ___UIFirstTypeIdentifierEligibleForMassStorage_block_invoke()
{
  v6[8] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6982D80];
  v6[0] = *MEMORY[0x1E6982D50];
  v6[1] = v0;
  v1 = *MEMORY[0x1E6982CC0];
  v6[2] = *MEMORY[0x1E6982DA8];
  v6[3] = v1;
  v2 = *MEMORY[0x1E6982DB0];
  v6[4] = *MEMORY[0x1E69830D0];
  v6[5] = v2;
  v3 = *MEMORY[0x1E6982D88];
  v6[6] = *MEMORY[0x1E6982D68];
  v6[7] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:8];
  v5 = _MergedGlobals_1351;
  _MergedGlobals_1351 = v4;
}

@end