@interface SSMainScreenSnapshotter
- (id)takeScreenshot;
@end

@implementation SSMainScreenSnapshotter

- (id)takeScreenshot
{
  v28[7] = *MEMORY[0x1E69E9840];
  v27[0] = *MEMORY[0x1E69DEB98];
  screen = [(SSScreenSnapshotter *)self screen];
  v28[0] = screen;
  v27[1] = *MEMORY[0x1E69DEB68];
  v3 = MEMORY[0x1E696AD98];
  screen2 = [(SSScreenSnapshotter *)self screen];
  traitCollection = [screen2 traitCollection];
  v6 = [v3 numberWithInteger:{objc_msgSend(traitCollection, "displayGamut")}];
  v7 = *MEMORY[0x1E69DEB78];
  v8 = MEMORY[0x1E695E118];
  v28[1] = v6;
  v28[2] = MEMORY[0x1E695E118];
  v9 = *MEMORY[0x1E69DEB80];
  v27[2] = v7;
  v27[3] = v9;
  v10 = MEMORY[0x1E696AD98];
  screen3 = [(SSScreenSnapshotter *)self screen];
  [screen3 scale];
  v12 = [v10 numberWithDouble:?];
  v28[3] = v12;
  v27[4] = *MEMORY[0x1E69DEB90];
  v13 = MEMORY[0x1E696AD98];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v15 = [v13 numberWithInteger:{objc_msgSend(mEMORY[0x1E69DC668], "activeInterfaceOrientation")}];
  v16 = *MEMORY[0x1E69DEB88];
  v28[4] = v15;
  v28[5] = v8;
  v17 = *MEMORY[0x1E69DEB70];
  v27[5] = v16;
  v27[6] = v17;
  v18 = MEMORY[0x1E696AD98];
  if (_SSHDRCaptureEnabled())
  {
    v19 = _SSDeviceSupportsHDRCaptureForMainScreen();
  }

  else
  {
    v19 = 0;
  }

  v20 = [v18 numberWithInt:v19];
  v28[6] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:7];

  v22 = _UIRenderDisplay();
  if (v22)
  {
    v23 = v22;
    v24 = _UIRenderingBufferCreateUIImage();
    CFRelease(v23);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

uint64_t __41__SSMainScreenSnapshotter_takeScreenshot__block_invoke(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x1E69DEB70];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:v2];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = _UIRenderingMultiBufferCreate();
  }

  else
  {
    v6 = _UIRenderingBufferCreate();
  }

  v7 = v6;

  return v7;
}

@end