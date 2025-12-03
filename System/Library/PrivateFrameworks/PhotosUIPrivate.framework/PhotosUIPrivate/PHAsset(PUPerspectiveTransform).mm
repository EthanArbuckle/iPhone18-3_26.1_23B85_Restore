@interface PHAsset(PUPerspectiveTransform)
- (__n128)pu_vitalityPerspectiveTransform;
@end

@implementation PHAsset(PUPerspectiveTransform)

- (__n128)pu_vitalityPerspectiveTransform
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E9B10];
  v17 = *MEMORY[0x1E69E9B10];
  if (([self hasAdjustments] & 1) == 0)
  {
    originalImageProperties = [self originalImageProperties];
    v4 = [originalImageProperties objectForKeyedSubscript:*MEMORY[0x1E696DE30]];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6986898]];

    if (v5)
    {
      v21 = 0;
      [v5 getBytes:&v21 length:8];
      v6 = v21;
      if (v21 == 1)
      {
        v20 = 0;
        memset(v19, 0, sizeof(v19));
        [v5 getBytes:v19 range:{HIDWORD(v21), 36}];
        v7 = 0;
        v8 = v2[1];
        *buf = *v2;
        v23 = v8;
        v24 = v2[2];
        v9 = v19;
        do
        {
          v10 = 0;
          v11 = &buf[16 * v7];
          v12 = *v11;
          v13 = v9;
          do
          {
            v14 = *v13;
            v13 += 3;
            v18 = v12;
            *(&v18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v10 & 3))) = v14;
            v12 = v18;
            ++v10;
          }

          while (v10 != 3);
          *(v11 + 2) = DWORD2(v18);
          *v11 = v12;
          ++v7;
          v9 = (v9 + 4);
        }

        while (v7 != 3);
        v17 = *buf;
      }

      else
      {
        v15 = PLLivePhotoPlaybackGetLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v6;
          _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_ERROR, "Encountered unknown AVStillImageProcessingHomography version %d. Unable to produce vitality transform.", buf, 8u);
        }
      }
    }
  }

  return v17;
}

@end