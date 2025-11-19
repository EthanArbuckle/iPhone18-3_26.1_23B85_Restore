@interface UISnapshotLayerIdRectBlock
@end

@implementation UISnapshotLayerIdRectBlock

void ___UISnapshotLayerIdRectBlock_block_invoke(uint64_t a1)
{
  v24[8] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x1E6979FB0];
  v24[0] = *MEMORY[0x1E6979FD0];
  v4 = *MEMORY[0x1E6979F68];
  v23[0] = v3;
  v23[1] = v4;
  v5 = [v2 _name];
  v24[1] = v5;
  v23[2] = *MEMORY[0x1E6979F40];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 184)];
  v24[2] = v6;
  v23[3] = *MEMORY[0x1E6979FA8];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 48)];
  v24[3] = v7;
  v23[4] = *MEMORY[0x1E6979F50];
  v8 = MEMORY[0x1E696AD98];
  v9 = [*(a1 + 40) _layer];
  v10 = [v9 _slotId];
  v11 = [v8 numberWithUnsignedInt:{objc_msgSend(v10, "value")}];
  v24[4] = v11;
  v23[5] = *MEMORY[0x1E697A000];
  v12 = *(a1 + 136);
  v22[4] = *(a1 + 120);
  v22[5] = v12;
  v13 = *(a1 + 168);
  v22[6] = *(a1 + 152);
  v22[7] = v13;
  v14 = *(a1 + 72);
  v22[0] = *(a1 + 56);
  v22[1] = v14;
  v15 = *(a1 + 104);
  v22[2] = *(a1 + 88);
  v22[3] = v15;
  v16 = [MEMORY[0x1E696B098] valueWithCATransform3D:v22];
  v17 = *MEMORY[0x1E6979FA0];
  v24[5] = v16;
  v24[6] = MEMORY[0x1E695E118];
  v18 = *MEMORY[0x1E6979F98];
  v23[6] = v17;
  v23[7] = v18;
  v24[7] = MEMORY[0x1E695E118];
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:8];
  v20 = [(UIScreen *)v2 _appendSnapshotDisplaySystemIdentifierToOptionsIfNeeded:v19];

  if ((CARenderServerSnapshot() & 1) == 0)
  {
    v21 = [*(a1 + 40) _layer];
    [v21 _setSlotId:0];
  }
}

@end