@interface UISnapshotScreenWindowsRectBlock
@end

@implementation UISnapshotScreenWindowsRectBlock

void ___UISnapshotScreenWindowsRectBlock_block_invoke(uint64_t a1)
{
  v21[5] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x1E6979FB0];
  v21[0] = *MEMORY[0x1E6979FD8];
  v4 = *MEMORY[0x1E6979F68];
  v20[0] = v3;
  v20[1] = v4;
  v5 = [v2 _name];
  v21[1] = v5;
  v20[2] = *MEMORY[0x1E6979F50];
  v6 = MEMORY[0x1E696AD98];
  v7 = [*(a1 + 40) _layer];
  v8 = [v7 _slotId];
  v9 = [v6 numberWithUnsignedInt:{objc_msgSend(v8, "value")}];
  v21[2] = v9;
  v20[3] = *MEMORY[0x1E697A000];
  v10 = *(a1 + 136);
  v19[4] = *(a1 + 120);
  v19[5] = v10;
  v11 = *(a1 + 168);
  v19[6] = *(a1 + 152);
  v19[7] = v11;
  v12 = *(a1 + 72);
  v19[0] = *(a1 + 56);
  v19[1] = v12;
  v13 = *(a1 + 104);
  v19[2] = *(a1 + 88);
  v19[3] = v13;
  v14 = [MEMORY[0x1E696B098] valueWithCATransform3D:v19];
  v20[4] = *MEMORY[0x1E6979F48];
  v15 = *(a1 + 48);
  v21[3] = v14;
  v21[4] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:5];
  v17 = [(UIScreen *)v2 _appendSnapshotDisplaySystemIdentifierToOptionsIfNeeded:v16];

  if ((CARenderServerSnapshot() & 1) == 0)
  {
    v18 = [*(a1 + 40) _layer];
    [v18 _setSlotId:0];
  }
}

@end