@interface PIWhiteColorCalculator
@end

@implementation PIWhiteColorCalculator

void __125___PIWhiteColorCalculator__whitePointColorFromGrayEdgesImage_grayWorldImage_greenChannelPercentage_RAWCameraSpaceProperties___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __125___PIWhiteColorCalculator__whitePointColorFromGrayEdgesImage_grayWorldImage_greenChannelPercentage_RAWCameraSpaceProperties___block_invoke_2;
  v9[3] = &unk_1E82AA568;
  v9[4] = v4;
  v10 = v3;
  v12 = *(a1 + 64);
  v8 = *(a1 + 48);
  v6 = v8;
  v11 = v8;
  v7 = v3;
  [v4 readBufferFromImage:v5 withRGBAfBufferBlock:v9];
}

__n128 __125___PIWhiteColorCalculator__whitePointColorFromGrayEdgesImage_grayWorldImage_greenChannelPercentage_RAWCameraSpaceProperties___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _computeWhitePointColorWithGrayEdgesBuffer:*(a1 + 40) grayWorldBuffer:a2 greenChannelPercentage:*(a1 + 48) RAWCameraSpaceProperties:*(a1 + 64)];
  v3 = *(*(a1 + 56) + 8);
  *(v3 + 64) = v7;
  *(v3 + 80) = v8;
  *(v3 + 96) = v9;
  result = v6;
  *(v3 + 32) = v5;
  *(v3 + 48) = v6;
  return result;
}

void __67___PIWhiteColorCalculator_calculateColorWithProperties_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [a2 result:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = [v4 data];

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:@"color"];

    Components = CGColorGetComponents(v6);
    v8 = (*Components + Components[1] + Components[2]) * 0.25;
    [*(a1 + 32) doubleValue];
    if (v9 * v8 > 0.660000026)
    {
      *(*(*(a1 + 48) + 8) + 24) = 0x3FE3333340000000;
    }
  }
}

void __67___PIWhiteColorCalculator_calculateColorWithProperties_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [a2 result:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = [v4 image];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __67___PIWhiteColorCalculator_calculateColorWithProperties_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [a2 result:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = [v4 image];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __67___PIWhiteColorCalculator_calculateColorWithProperties_completion___block_invoke_4(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v2 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithError:*(*(*(a1 + 64) + 8) + 40)];
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_303);
    }

    v3 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 32);
      v10 = *(*(*(a1 + 72) + 8) + 24);
      if (*(a1 + 96))
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      *buf = 138412802;
      *&buf[4] = v9;
      *&buf[12] = 2048;
      *&buf[14] = v10;
      *&buf[22] = 2112;
      *&buf[24] = v11;
      _os_log_debug_impl(&dword_1C7694000, v3, OS_LOG_TYPE_DEBUG, "Brightness is %@, greenChannelPercentage is %f, Sushi: %@", buf, 0x20u);
    }

    if (*(a1 + 96) == 1)
    {
      v4 = [*(a1 + 40) rawProperties];
      v5 = [v4 rawCameraSpaceProperties];
    }

    else
    {
      v5 = 0;
    }

    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    memset(buf, 0, sizeof(buf));
    v6 = *(a1 + 48);
    if (v6)
    {
      [v6 _whitePointColorFromGrayEdgesImage:*(*(*(a1 + 80) + 8) + 40) grayWorldImage:*(*(*(a1 + 88) + 8) + 40) greenChannelPercentage:v5 RAWCameraSpaceProperties:*(*(*(a1 + 72) + 8) + 24)];
    }

    [*(a1 + 32) doubleValue];
    v17 = v7;
    v12[2] = v15;
    v12[3] = v16;
    v13 = v7;
    v12[0] = *buf;
    v12[1] = *&buf[16];
    v8 = [MEMORY[0x1E696B098] pi_valueWithGrayColorResult:v12];
    v2 = [objc_alloc(MEMORY[0x1E69B3C78]) initWithResult:v8];
  }

  (*(*(a1 + 56) + 16))();
}

void __68___PIWhiteColorCalculator_readBufferFromImage_withRGBAfBufferBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__7505;
  v31[4] = __Block_byref_object_dispose__7506;
  v32 = 0;
  v4 = [v3 buffer];
  v5 = [v4 size];
  v7 = v6;

  v8 = [MEMORY[0x1E69B3A58] sharedFactory];
  v9 = [v8 bufferFactory];
  v10 = [v3 buffer];
  v11 = [v10 size];
  v13 = v12;
  v14 = [MEMORY[0x1E69B3BF0] RGBAf];
  v15 = [v9 newStorageWithSize:v11 format:{v13, v14}];

  v16 = MEMORY[0x1E69B3908];
  v28 = *MEMORY[0x1E69B3908];
  v29 = v5;
  v30 = v7;
  v17 = [MEMORY[0x1E69B3C10] regionWithRect:&v28];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __68___PIWhiteColorCalculator_readBufferFromImage_withRGBAfBufferBlock___block_invoke_2;
  v21[3] = &unk_1E82AA4F0;
  v18 = v3;
  v25 = *v16;
  v26 = v5;
  v27 = v7;
  v22 = v18;
  v24 = v31;
  v23 = *(a1 + 32);
  [v15 writeBufferInRegion:v17 block:v21];

  v19 = [MEMORY[0x1E69B3A58] sharedFactory];
  v20 = [v19 bufferFactory];
  [v20 returnStorage:v15];

  _Block_object_dispose(v31, 8);
}

void __68___PIWhiteColorCalculator_readBufferFromImage_withRGBAfBufferBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) buffer];
  v5 = [v4 bytes];
  v7 = *(a1 + 72);
  v6 = *(a1 + 80);
  src.data = v5;
  src.height = v6;
  src.width = 4 * v7;
  v8 = [*(a1 + 32) buffer];
  src.rowBytes = [v8 rowBytes];

  v12.rowBytes = [v3 rowBytes];
  vImageConvert_Planar16FtoPlanarF(&src, &v12, 0);
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v3;
  v11 = v3;

  (*(*(a1 + 40) + 16))();
}

@end