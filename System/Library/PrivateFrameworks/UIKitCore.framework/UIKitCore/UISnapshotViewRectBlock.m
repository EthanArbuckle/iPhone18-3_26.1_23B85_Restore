@interface UISnapshotViewRectBlock
@end

@implementation UISnapshotViewRectBlock

void ___UISnapshotViewRectBlock_block_invoke(uint64_t a1)
{
  v29[8] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) layer];
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x1E6979FB0];
  v29[0] = *MEMORY[0x1E6979FD0];
  v5 = *MEMORY[0x1E6979F68];
  v28[0] = v4;
  v28[1] = v5;
  v25 = [v3 _screen];
  v24 = [v25 _name];
  v29[1] = v24;
  v28[2] = *MEMORY[0x1E6979F40];
  v6 = MEMORY[0x1E696AD98];
  v7 = [v2 context];
  v8 = [v6 numberWithUnsignedInt:{objc_msgSend(v7, "contextId")}];
  v29[2] = v8;
  v28[3] = *MEMORY[0x1E6979FA8];
  v26 = v2;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v2];
  v29[3] = v9;
  v28[4] = *MEMORY[0x1E6979F50];
  v10 = MEMORY[0x1E696AD98];
  v11 = [*(a1 + 40) _layer];
  v12 = [v11 _slotId];
  v13 = [v10 numberWithUnsignedInt:{objc_msgSend(v12, "value")}];
  v29[4] = v13;
  v28[5] = *MEMORY[0x1E697A000];
  v14 = *(a1 + 128);
  v27[4] = *(a1 + 112);
  v27[5] = v14;
  v15 = *(a1 + 160);
  v27[6] = *(a1 + 144);
  v27[7] = v15;
  v16 = *(a1 + 64);
  v27[0] = *(a1 + 48);
  v27[1] = v16;
  v17 = *(a1 + 96);
  v27[2] = *(a1 + 80);
  v27[3] = v17;
  v18 = [MEMORY[0x1E696B098] valueWithCATransform3D:v27];
  v19 = *MEMORY[0x1E6979FF0];
  v29[5] = v18;
  v29[6] = MEMORY[0x1E695E118];
  v20 = *MEMORY[0x1E6979FA0];
  v28[6] = v19;
  v28[7] = v20;
  v29[7] = MEMORY[0x1E695E118];
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:8];
  v22 = [(UIView *)v3 _appendSnapshotDisplaySystemIdentifierToOptionsIfNeeded:v21];

  if ((CARenderServerSnapshot() & 1) == 0)
  {
    v23 = [*(a1 + 40) _layer];
    [v23 _setSlotId:0];
  }

  [*(a1 + 40) setAccessibilityIgnoresInvertColors:{objc_msgSend(*(a1 + 32), "accessibilityIgnoresInvertColors")}];
}

@end