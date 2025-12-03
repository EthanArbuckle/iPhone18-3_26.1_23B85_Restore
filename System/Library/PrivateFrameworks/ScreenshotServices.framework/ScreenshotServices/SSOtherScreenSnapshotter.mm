@interface SSOtherScreenSnapshotter
- (id)takeScreenshot;
@end

@implementation SSOtherScreenSnapshotter

- (id)takeScreenshot
{
  v29[7] = *MEMORY[0x1E69E9840];
  screen = [(SSScreenSnapshotter *)self screen];
  [screen potentialEDRHeadroom];
  v5 = v4;

  v28[0] = *MEMORY[0x1E69DEB98];
  screen2 = [(SSScreenSnapshotter *)self screen];
  v29[0] = screen2;
  v28[1] = *MEMORY[0x1E69DEB68];
  v7 = MEMORY[0x1E696AD98];
  screen3 = [(SSScreenSnapshotter *)self screen];
  traitCollection = [screen3 traitCollection];
  v10 = [v7 numberWithInteger:{objc_msgSend(traitCollection, "displayGamut")}];
  v11 = *MEMORY[0x1E69DEB78];
  v12 = MEMORY[0x1E695E118];
  v29[1] = v10;
  v29[2] = MEMORY[0x1E695E118];
  v13 = *MEMORY[0x1E69DEB80];
  v28[2] = v11;
  v28[3] = v13;
  v14 = MEMORY[0x1E696AD98];
  screen4 = [(SSScreenSnapshotter *)self screen];
  [screen4 scale];
  v16 = [v14 numberWithDouble:?];
  v17 = *MEMORY[0x1E69DEB90];
  v29[3] = v16;
  v29[4] = &unk_1F555C2E8;
  v18 = *MEMORY[0x1E69DEB88];
  v28[4] = v17;
  v28[5] = v18;
  v29[5] = v12;
  v28[6] = *MEMORY[0x1E69DEB70];
  v19 = MEMORY[0x1E696AD98];
  v20 = _SSHDRCaptureEnabled();
  if (v5 > 2.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = [v19 numberWithInt:v21];
  v29[6] = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:7];

  v24 = _UIRenderDisplay();
  if (v24)
  {
    v25 = v24;
    v26 = _UIRenderingBufferCreateUIImage();
    CFRelease(v25);
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

uint64_t __42__SSOtherScreenSnapshotter_takeScreenshot__block_invoke(uint64_t a1, void *a2)
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