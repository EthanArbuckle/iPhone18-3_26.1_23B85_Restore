@interface RIOImageIOTextureConverter
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)estimatedMemoryDeltaForTextureWithDescription:(id)a3;
- (int64_t)maxNativeDownsamplingFactorForDownsamplingFactor:(int64_t)a3 fileType:(int64_t)a4;
@end

@implementation RIOImageIOTextureConverter

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)estimatedMemoryDeltaForTextureWithDescription:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 originalPixelFormat];
  v7 = v6;
  if (v5 == 1)
  {
    if ([v4 fileType] >= 8)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  [v4 originalSize];
  v43 = v8;
  [v4 destinationSize];
  v45 = v9;
  v10 = [v4 destinationPixelFormat];
  v12 = v11;
  v13 = [RIOTextureDescription bytesPerPixelForPixelFormat:v5, v7];
  v14 = [RIOTextureDescription bytesPerPixelForPixelFormat:v10, v12];
  v15 = [v4 generateMipmaps];
  v16 = v45 * SHIDWORD(v45);
  v17 = v14 * v16;
  v18 = 1.33333333;
  if (!v15)
  {
    v18 = 1.0;
  }

  v19 = [(RIOTextureConverter *)self alignUp:(v18 * (v14 * v16)) toAlignment:getpagesize()];
  v20 = v43 * SHIDWORD(v43);
  v21 = v13 * v20;
  if ([v4 originalPixelFormat] == 6)
  {
    if ([v4 destinationPixelFormat] == 4)
    {
LABEL_9:
      v22 = v17 + v21;
      goto LABEL_28;
    }

    if ([v4 destinationPixelFormat] == 2)
    {
      v22 = v14 * (v16 + v20);
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    if ([v4 fileType] == 1)
    {
      v23 = -[RIOImageIOTextureConverter maxNativeDownsamplingFactorForDownsamplingFactor:fileType:](self, "maxNativeDownsamplingFactorForDownsamplingFactor:fileType:", [v4 downsamplingFactor], 1);
      v22 = v21 / (v23 * v23) + v17;
      goto LABEL_28;
    }

    if ([v4 fileType] == 7)
    {
      v24 = -[RIOImageIOTextureConverter maxNativeDownsamplingFactorForDownsamplingFactor:fileType:](self, "maxNativeDownsamplingFactorForDownsamplingFactor:fileType:", [v4 downsamplingFactor], 7);
      [v4 originalPixelFormat];
      v22 = (v21 / (v24 * v24) + v17) << (v25 == 2);
      goto LABEL_28;
    }

    if ([v4 fileType] == 4)
    {
      v26 = -[RIOImageIOTextureConverter maxNativeDownsamplingFactorForDownsamplingFactor:fileType:](self, "maxNativeDownsamplingFactorForDownsamplingFactor:fileType:", [v4 downsamplingFactor], 4);
      v27 = v21 / (v26 * v26);
      v28 = 2 * v27;
      v29 = v27 + v17;
      if (v28 <= v29)
      {
        v22 = v29;
      }

      else
      {
        v22 = v28;
      }

      goto LABEL_28;
    }

    if ([v4 fileType] != 2)
    {
      if ([v4 fileType] == 5)
      {
        if (v17 + v21 <= v21 + v20)
        {
          v22 = v21 + v20;
        }

        else
        {
          v22 = v17 + v21;
        }

        goto LABEL_28;
      }

      if ([v4 fileType] != 3)
      {
        goto LABEL_9;
      }
    }

    if (![v4 requiresDownsampling])
    {
      goto LABEL_9;
    }

    v22 = v17 + SHIDWORD(v45) * v43 * v13;
  }

LABEL_28:
  if ([v4 fileType] == 1)
  {
    v22 += 35968;
  }

  else if ([v4 fileType] == 4)
  {
    v22 += 1572864;
  }

  v30 = memoryConstraintLogObject();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [v4 fileType];
    v32 = [v4 downsamplingFactor];
    [v4 originalSize];
    v46 = v33;
    [v4 originalSize];
    v44 = v34;
    [v4 destinationSize];
    v42 = v35;
    [v4 destinationSize];
    v41 = v36;
    v37 = [v4 name];
    *buf = 134220034;
    v48 = v31;
    v49 = 2048;
    v50 = v32;
    v51 = 2048;
    v52 = v22 >> 10;
    v53 = 2048;
    v54 = v19 >> 10;
    v55 = 1024;
    v56 = v46;
    v57 = 1024;
    v58 = v44;
    v59 = 1024;
    v60 = v42;
    v61 = 1024;
    v62 = v41;
    v63 = 2112;
    v64 = v37;
    _os_log_impl(&dword_26187B000, v30, OS_LOG_TYPE_DEFAULT, "fileType: %lu. factor: %lu,\tpeak: %lluKB,\tfootprint: %lluKB, (%d x %d) -> (%d x %d) - '%@'", buf, 0x4Cu);
  }

  v38 = *MEMORY[0x277D85DE8];
  v39 = v19;
  v40 = v22;
  result.var1 = v40;
  result.var0 = v39;
  return result;
}

- (int64_t)maxNativeDownsamplingFactorForDownsamplingFactor:(int64_t)a3 fileType:(int64_t)a4
{
  if ((a4 - 1) > 6)
  {
    v4 = 1;
  }

  else
  {
    v4 = qword_261994160[a4 - 1];
  }

  if (v4 >= a3)
  {
    return a3;
  }

  else
  {
    return v4;
  }
}

@end