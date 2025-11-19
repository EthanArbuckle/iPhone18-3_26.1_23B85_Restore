@interface _UIImageCIImageRenderer
- (uint64_t)_targetColorSpaceForHDR:(uint64_t)result;
- (void)_updateContextForHDRRendering:(uint64_t)a1;
- (void)_updateSurfaceForSize:(double)a3 usingHDR:(double)a4;
- (void)dealloc;
- (void)renderContent:(int)a3 usingHDR:(void *)a4 withEffects:;
@end

@implementation _UIImageCIImageRenderer

- (void)dealloc
{
  surface = self->_surface;
  if (surface)
  {
    CFRelease(surface);
  }

  v4.receiver = self;
  v4.super_class = _UIImageCIImageRenderer;
  [(_UIImageCIImageRenderer *)&v4 dealloc];
}

- (uint64_t)_targetColorSpaceForHDR:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      if (qword_1ED4996E8 == -1)
      {
        v2 = &qword_1ED4996E0;
        return *v2;
      }

      v2 = &qword_1ED4996E0;
      v3 = &__block_literal_global_317_0;
    }

    else
    {
      if (qword_1ED4996F8 == -1)
      {
        v2 = &qword_1ED4996F0;
        return *v2;
      }

      v2 = &qword_1ED4996F0;
      v3 = &__block_literal_global_320;
    }

    dispatch_once(v2 + 1, v3);
    return *v2;
  }

  return result;
}

- (void)_updateSurfaceForSize:(double)a3 usingHDR:(double)a4
{
  v28[6] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v7 = 1;
    }

    else
    {
      v8 = +[UIDevice currentDevice];
      v7 = [v8 _supportsDeepColor];
    }

    v9 = a3;
    v10 = vcvtps_s32_f32(v9);
    v11 = a4;
    v12 = vcvtps_s32_f32(v11);
    if ((*(a1 + 32) & 1) == 0 || v7 == ((*(a1 + 32) & 2) == 0) || *(a1 + 16) != v10 || *(a1 + 24) != v12)
    {
      *(a1 + 16) = v10;
      *(a1 + 24) = v12;
      if (v7)
      {
        v13 = 1380411457;
      }

      else
      {
        v13 = 1380401729;
      }

      if (v7)
      {
        v14 = 8;
      }

      else
      {
        v14 = 4;
      }

      AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
      v16 = AlignedBytesPerRow * v12;
      v27[0] = *MEMORY[0x1E696D130];
      v17 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
      v28[0] = v17;
      v27[1] = *MEMORY[0x1E696CF58];
      v18 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
      v28[1] = v18;
      v27[2] = *MEMORY[0x1E696CE58];
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:AlignedBytesPerRow];
      v28[2] = v19;
      v27[3] = *MEMORY[0x1E696CE30];
      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v16];
      v28[3] = v20;
      v27[4] = *MEMORY[0x1E696CE50];
      v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v14];
      v28[4] = v21;
      v27[5] = *MEMORY[0x1E696CFC0];
      v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v13];
      v28[5] = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:6];

      v24 = *(a1 + 8);
      if (v24)
      {
        CFRelease(v24);
      }

      v25 = IOSurfaceCreate(v23);
      *(a1 + 8) = v25;
      if (v7)
      {
        v26 = 2;
      }

      else
      {
        v26 = 0;
      }

      if (v25)
      {
        ++v26;
      }

      *(a1 + 32) = v26 | *(a1 + 32) & 0xFC;
    }
  }
}

- (void)_updateContextForHDRRendering:(uint64_t)a1
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((a2 & 1) != 0 || (+[UIDevice currentDevice](UIDevice, "currentDevice"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 _supportsDeepColor], v3, v4))
    {
      v5 = MEMORY[0x1E695F920];
    }

    else
    {
      v5 = MEMORY[0x1E695F910];
    }

    v6 = *v5;
    v7 = *(a1 + 40);
    if (!v7 || [v7 workingFormat] != v6)
    {
      v8 = MEMORY[0x1E695F620];
      v13 = *MEMORY[0x1E695F870];
      v9 = [MEMORY[0x1E696AD98] numberWithInt:v6];
      v14[0] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v11 = [v8 contextWithOptions:v10];
      v12 = *(a1 + 40);
      *(a1 + 40) = v11;
    }
  }
}

- (void)renderContent:(int)a3 usingHDR:(void *)a4 withEffects:
{
  v15 = a4;
  if (a1)
  {
    v7 = [a2 CIImage];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
      if (v15 && (v15[2](), v10 = objc_claimAutoreleasedReturnValue(), v9, [v9 extent], objc_msgSend(v10, "imageByCroppingToRect:"), v9 = objc_claimAutoreleasedReturnValue(), v10, !v9))
      {
        *(a1 + 32) &= ~1u;
      }

      else
      {
        [v9 extent];
        v12 = v11;
        v14 = v13;
        [(_UIImageCIImageRenderer *)a1 _updateSurfaceForSize:a3 usingHDR:v11, v13];
        [(_UIImageCIImageRenderer *)a1 _updateContextForHDRRendering:a3];
        if (*(a1 + 32))
        {
          [*(a1 + 40) render:v9 toIOSurface:*(a1 + 8) bounds:-[_UIImageCIImageRenderer _targetColorSpaceForHDR:](a1 colorSpace:{a3), *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v12, v14}];
        }
      }
    }

    else
    {
      *(a1 + 32) &= ~1u;
    }
  }
}

@end