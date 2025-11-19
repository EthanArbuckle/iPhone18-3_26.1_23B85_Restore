@interface UISnapshotWindowsRectBlock
@end

@implementation UISnapshotWindowsRectBlock

void ___UISnapshotWindowsRectBlock_block_invoke(uint64_t a1)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x1E6979FB0];
  v20[0] = *MEMORY[0x1E6979FC8];
  v4 = *MEMORY[0x1E6979F68];
  v19[0] = v3;
  v19[1] = v4;
  v5 = [v2 _name];
  v20[1] = v5;
  v19[2] = *MEMORY[0x1E6979F50];
  v6 = MEMORY[0x1E696AD98];
  v7 = [*(a1 + 40) _layer];
  v8 = [v7 _slotId];
  v9 = [v6 numberWithUnsignedInt:{objc_msgSend(v8, "value")}];
  v19[3] = *MEMORY[0x1E6979F48];
  v10 = *(a1 + 48);
  v20[2] = v9;
  v20[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
  v12 = *(a1 + 56);
  v13 = v11;
  v14 = v12;
  if ([v14 count])
  {
    v15 = [v13 mutableCopy];
    [v15 addEntriesFromDictionary:v14];
    v16 = [v15 copy];
  }

  else
  {
    v16 = v13;
  }

  v17 = [(UIScreen *)v2 _appendSnapshotDisplaySystemIdentifierToOptionsIfNeeded:v16];

  if ((CARenderServerSnapshot() & 1) == 0)
  {
    v18 = [*(a1 + 40) _layer];
    [v18 _setSlotId:0];
  }
}

@end