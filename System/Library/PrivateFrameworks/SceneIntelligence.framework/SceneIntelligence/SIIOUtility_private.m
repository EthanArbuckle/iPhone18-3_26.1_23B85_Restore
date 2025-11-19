@interface SIIOUtility_private
+ (BOOL)ImageInfoEqual:(id)a3 to:(id)a4;
+ (id)DictionaryFromImageInfo:(id)a3;
+ (id)ImageInfoFromCVPixelBuffer:(__CVBuffer *)a3;
+ (id)ImageInfoFromDictionary:(id)a3;
+ (id)StringFromOSType:(unsigned int)a3;
+ (unsigned)GetDefaultPixelFormatForRawImageWithChannels:(unint64_t)a3 bytesPerPixel:(unint64_t)a4;
+ (unsigned)OSTypeFromString:(id)a3;
@end

@implementation SIIOUtility_private

+ (unsigned)GetDefaultPixelFormatForRawImageWithChannels:(unint64_t)a3 bytesPerPixel:(unint64_t)a4
{
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      if (a4 == 1)
      {
        return 24;
      }

      if (a4 != 2)
      {
        +[SIIOUtility_private GetDefaultPixelFormatForRawImageWithChannels:bytesPerPixel:];
      }

      return 1647589490;
    }

    if (a3 == 4)
    {
      if (a4 == 1)
      {
        return 32;
      }

      if (a4 == 4)
      {
        return 1380410945;
      }

      if (a4 != 2)
      {
        +[SIIOUtility_private GetDefaultPixelFormatForRawImageWithChannels:bytesPerPixel:];
      }

      return 1647719521;
    }

    goto LABEL_26;
  }

  if (a3 != 1)
  {
    if (a3 == 2)
    {
      result = 843264056;
      if (a4 != 1)
      {
        if (a4 != 4)
        {
          if (a4 != 2)
          {
            +[SIIOUtility_private GetDefaultPixelFormatForRawImageWithChannels:bytesPerPixel:];
          }

LABEL_17:
          result += 254;
          return result;
        }

LABEL_21:
        result += 46;
        return result;
      }

      return result;
    }

LABEL_26:
    +[SIIOUtility_private GetDefaultPixelFormatForRawImageWithChannels:bytesPerPixel:];
  }

  result = 1278226488;
  if (a4 != 1)
  {
    if (a4 != 4)
    {
      if (a4 != 2)
      {
        +[SIIOUtility_private GetDefaultPixelFormatForRawImageWithChannels:bytesPerPixel:];
      }

      goto LABEL_17;
    }

    goto LABEL_21;
  }

  return result;
}

+ (unsigned)OSTypeFromString:(id)a3
{
  v3 = a3;
  v4 = [v3 UTF8String];
  if ([v3 length] >= 5)
  {
    __assert_rtn("+[SIIOUtility_private OSTypeFromString:]", "SIIOUtility.mm", 1151, "[str length] <= 4");
  }

  v5 = [v3 length];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = &v10;
  v7 = v5;
  do
  {
    *v6 = *(v4 - 1 + v7);
    v6 = (v6 + 1);
    --v7;
  }

  while (v7);
  if (v5 <= 3)
  {
LABEL_6:
    bzero(&v10 + v5, 4 - v5);
  }

  v8 = v10;

  return v8;
}

+ (id)StringFromOSType:(unsigned int)a3
{
  if (!a3)
  {
    +[SIIOUtility_private StringFromOSType:];
  }

  v3 = 0;
  v6[0] = HIBYTE(a3);
  v6[1] = BYTE2(a3);
  v6[2] = BYTE1(a3);
  v6[3] = a3;
  v6[4] = 0;
  while (!v6[v3])
  {
    if (++v3 == 4)
    {
      +[SIIOUtility_private StringFromOSType:];
    }
  }

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v6[v3]];

  return v4;
}

+ (BOOL)ImageInfoEqual:(id)a3 to:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 planes];
  if (v7 == [v6 planes] && (v8 = objc_msgSend(v5, "channels"), v8 == objc_msgSend(v6, "channels")) && (v9 = objc_msgSend(v5, "planes"), v9 == objc_msgSend(v6, "planes")) && (v10 = objc_msgSend(v5, "width"), !memcmp(v10, objc_msgSend(v6, "width"), objc_msgSend(v5, "width") + 8 * objc_msgSend(v5, "planes") - v10)) && (v11 = objc_msgSend(v5, "height"), !memcmp(v11, objc_msgSend(v6, "height"), objc_msgSend(v5, "height") + 8 * objc_msgSend(v5, "planes") - v11)) && (v12 = objc_msgSend(v5, "bytesPerRow"), !memcmp(v12, objc_msgSend(v6, "bytesPerRow"), objc_msgSend(v5, "bytesPerRow") + 8 * objc_msgSend(v5, "planes") - v12)) && (v13 = objc_msgSend(v5, "bytesPerPixel"), !memcmp(v13, objc_msgSend(v6, "bytesPerPixel"), objc_msgSend(v5, "bytesPerPixel") + 8 * objc_msgSend(v5, "planes") - v13)))
  {
    v16 = [v5 size];
    v14 = memcmp(v16, [v6 size], objc_msgSend(v5, "size") + 8 * objc_msgSend(v5, "planes") - v16) == 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)DictionaryFromImageInfo:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 planes] >= 3)
  {
    __assert_rtn("+[SIIOUtility_private DictionaryFromImageInfo:]", "SIIOUtility.mm", 1200, "info.planes < kSIRawImageInfoMaxPlanes");
  }

  v26[0] = @"width";
  v4 = [v3 width];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  for (i = 0; i < [v3 planes]; ++i)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(v4 + 8 * i)];
    [v5 addObject:v7];
  }

  v27[0] = v5;
  v26[1] = @"height";
  v8 = [v3 height];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  for (j = 0; j < [v3 planes]; ++j)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(v8 + 8 * j)];
    [v9 addObject:v11];
  }

  v27[1] = v9;
  v26[2] = @"channels";
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v3, "channels")}];
  v26[3] = @"planes";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v3, "planes")}];
  v25 = v28;
  v29 = v12;
  v26[4] = @"bytesPerPixel";
  v13 = [v3 bytesPerPixel];
  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  for (k = 0; k < [v3 planes]; ++k)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(v13 + 8 * k)];
    [v14 addObject:v16];
  }

  v30 = v14;
  v26[5] = @"bytesPerRow";
  v17 = [v3 bytesPerRow];
  v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  for (m = 0; m < [v3 planes]; ++m)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(v17 + 8 * m)];
    [v18 addObject:v20];
  }

  v31 = v18;
  v26[6] = @"pixelFormat";
  v21 = +[SIIOUtility_private StringFromOSType:](SIIOUtility_private, "StringFromOSType:", [v3 pixelFormat]);
  v32 = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:7];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)ImageInfoFromDictionary:(id)a3
{
  v66[1] = *MEMORY[0x277D85DE8];
  v58 = a3;
  if (!v58)
  {
    __assert_rtn("+[SIIOUtility_private ImageInfoFromDictionary:]", "SIIOUtility.mm", 1215, "infoDictionary");
  }

  v3 = objc_opt_new();
  v4 = [v58 objectForKeyedSubscript:@"channels"];
  [v3 setChannels:{objc_msgSend(v4, "unsignedLongValue")}];

  v5 = [v58 objectForKeyedSubscript:@"planes"];
  v6 = [v5 unsignedLongValue];
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  [v3 setPlanes:v7];

  v57 = [v58 objectForKeyedSubscript:@"bytesPerPixel"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v57;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v57, "unsignedLongValue")}];
      v66[0] = v9;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:1];
    }

    else
    {
      v8 = 0;
    }
  }

  v10 = [v58 objectForKeyedSubscript:@"pixelFormat"];
  v54 = v10;
  if (!v10)
  {
    if ([v3 channels])
    {
      if ([v3 planes] < 2)
      {
        if (!v8)
        {
          if (![0 count])
          {
            __assert_rtn("+[SIIOUtility_private ImageInfoFromDictionary:]", "SIIOUtility.mm", 1253, "bytesPerPixel.count >= 1");
          }

          v48 = [v3 channels];
          v49 = [0 objectAtIndexedSubscript:0];
          [v3 setPixelFormat:+[SIIOUtility_private GetDefaultPixelFormatForRawImageWithChannels:bytesPerPixel:](SIIOUtility_private, "GetDefaultPixelFormatForRawImageWithChannels:bytesPerPixel:", v48, objc_msgSend(v49, "unsignedLongValue"))];

          goto LABEL_12;
        }

        v12 = __SceneIntelligenceLogSharedInstance();
        v56 = v12;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 136380931;
          v63 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
          v64 = 1025;
          v65 = 1249;
          v13 = " %{private}s:%{private}d *** Must specify either byesPerPixel or pixelFormat ***";
          goto LABEL_59;
        }
      }

      else
      {
        v12 = __SceneIntelligenceLogSharedInstance();
        v56 = v12;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 136380931;
          v63 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
          v64 = 1025;
          v65 = 1245;
          v13 = " %{private}s:%{private}d *** Inferring PixelFormat from multiplanar images is not supported. ***";
LABEL_59:
          _os_log_impl(&dword_21DE0D000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x12u);
        }
      }
    }

    else
    {
      v12 = __SceneIntelligenceLogSharedInstance();
      v56 = v12;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136380931;
        v63 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
        v64 = 1025;
        v65 = 1241;
        v13 = " %{private}s:%{private}d *** Must specify either channels or pixelFormat ***";
        goto LABEL_59;
      }
    }

    v36 = 0;
    goto LABEL_61;
  }

  [v3 setPixelFormat:+[SIIOUtility_private OSTypeFromString:](SIIOUtility_private, "OSTypeFromString:", v10)];
LABEL_12:
  if ([v3 planes] <= 1)
  {
    v11 = SIChannelCountForPixelFormat([v3 pixelFormat]);
  }

  else
  {
    v11 = 0;
  }

  v14 = [v3 channels];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v11;
  }

  [v3 setChannels:v15];
  if ([v3 planes] >= 4)
  {
    __assert_rtn("+[SIIOUtility_private ImageInfoFromDictionary:]", "SIIOUtility.mm", 1261, "info.planes <= kSIRawImageInfoMaxPlanes");
  }

  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "planes")}];
    for (i = 0; i < [v3 planes]; ++i)
    {
      if ([v3 planes] == 1)
      {
        v38 = SIBytesPerElementForPixelFormat([v3 pixelFormat]);
      }

      else
      {
        v38 = SIBytesPerElementForPlanarPixelFormat([v3 pixelFormat], i);
      }

      if (!v38)
      {
        __assert_rtn("+[SIIOUtility_private ImageInfoFromDictionary:]", "SIIOUtility.mm", 1268, "bppInferred > 0");
      }

      v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v38];
      [v8 addObject:v39];
    }
  }

  if ([v3 planes] <= 1)
  {
    v16 = [v8 objectAtIndexedSubscript:0];
    v17 = [v16 unsignedIntValue];
    if ([v3 channels] > v17)
    {
      __assert_rtn("+[SIIOUtility_private ImageInfoFromDictionary:]", "SIIOUtility.mm", 1274, "info.planes > 1 || [bytesPerPixel[0] unsignedIntValue] >= info.channels");
    }
  }

  v56 = [v58 objectForKeyedSubscript:@"width"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v56;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v50 = __SceneIntelligenceLogSharedInstance();
      [SIIOUtility_private ImageInfoFromDictionary:v50];
    }

    v61 = v56;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
  }

  v19 = v18;
  v20 = [v58 objectForKeyedSubscript:@"height"];
  v53 = v20;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v51 = __SceneIntelligenceLogSharedInstance();
      [SIIOUtility_private ImageInfoFromDictionary:v51];
    }

    v60 = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
  }

  v22 = v21;
  v55 = [v58 objectForKeyedSubscript:@"bytesPerRow"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v55;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v55, "unsignedLongValue")}];
      v59 = v24;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
    }

    else
    {
      if (v55)
      {
        v52 = __SceneIntelligenceLogSharedInstance();
        [SIIOUtility_private ImageInfoFromDictionary:v52];
      }

      v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "planes")}];
      for (j = 0; j < [v3 planes]; ++j)
      {
        v41 = MEMORY[0x277CCABB0];
        v42 = [v19 objectAtIndexedSubscript:j];
        v43 = [v42 unsignedLongValue];
        v44 = [v8 objectAtIndexedSubscript:j];
        v45 = [v41 numberWithUnsignedLong:{objc_msgSend(v44, "unsignedLongValue") * v43}];
        [v23 addObject:v45];
      }
    }
  }

  for (k = 0; k < [v3 planes]; ++k)
  {
    v26 = [v19 objectAtIndexedSubscript:k];
    v27 = [v26 unsignedLongValue];
    *([v3 width] + 8 * k) = v27;

    v28 = [v22 objectAtIndexedSubscript:k];
    v29 = [v28 unsignedLongValue];
    *([v3 height] + 8 * k) = v29;

    v30 = [v23 objectAtIndexedSubscript:k];
    v31 = [v30 unsignedLongValue];
    *([v3 bytesPerRow] + 8 * k) = v31;

    v32 = [v8 objectAtIndexedSubscript:k];
    v33 = [v32 unsignedLongValue];
    *([v3 bytesPerPixel] + 8 * k) = v33;

    v34 = *([v3 height] + 8 * k);
    v35 = *([v3 bytesPerRow] + 8 * k);
    *([v3 size] + 8 * k) = v35 * v34;
  }

  v36 = v3;

LABEL_61:
  v46 = *MEMORY[0x277D85DE8];

  return v36;
}

+ (id)ImageInfoFromCVPixelBuffer:(__CVBuffer *)a3
{
  v59 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v5 = CVPixelFormatDescriptionCreateWithPixelFormatType(0, PixelFormatType);
  v49 = v5;
  PlaneCount = CVPixelBufferGetPlaneCount(a3);
  v7 = PlaneCount;
  if (PlaneCount <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = PlaneCount;
  }

  v40 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x277CC4F30]];
  v46 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x277CC4F38]];
  v47 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x277CC4F28]];
  v48 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x277CC4F48]];
  v9 = *MEMORY[0x277CC4ED8];
  v10 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x277CC4ED8]];
  v45 = PixelFormatType;
  v11 = [v10 unsignedIntValue];

  v12 = *MEMORY[0x277CC4ED0];
  v13 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x277CC4ED0]];
  v14 = v11;
  v15 = [v13 unsignedIntValue];

  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __50__SIIOUtility_private_ImageInfoFromCVPixelBuffer___block_invoke;
  v50[3] = &unk_27833C2A8;
  v41 = v40;
  v51 = v41;
  v42 = v46;
  v52 = v42;
  v43 = v47;
  v53 = v43;
  v44 = v48;
  v54 = v44;
  v55 = v8;
  v56 = v15;
  v57 = v14;
  v16 = __50__SIIOUtility_private_ImageInfoFromCVPixelBuffer___block_invoke(v50);
  v17 = [(__CFDictionary *)v49 objectForKeyedSubscript:*MEMORY[0x277CC4F70]];
  v18 = v17;
  if (v17 && v8 != [v17 count])
  {
    __assert_rtn("+[SIIOUtility_private ImageInfoFromCVPixelBuffer:]", "SIIOUtility.mm", 1360, "!planesPixelDescr || planes == planesPixelDescr.count");
  }

  memset(v58, 0, sizeof(v58));
  if (v7 >= 2)
  {
    for (i = 0; i != v7; ++i)
    {
      v21 = [v18 objectAtIndexedSubscript:i];
      v22 = [v21 objectForKeyedSubscript:v12];
      *(v58 + i) = [v22 unsignedIntValue] >> 3;
    }
  }

  else
  {
    v19 = [(__CFDictionary *)v49 objectForKeyedSubscript:v9];
    *&v58[0] = ([v19 unsignedIntValue] * v16) >> 3;
  }

  v23 = objc_opt_new();
  [v23 setChannels:v16];
  [v23 setPlanes:v8];
  [v23 setPixelFormat:v45];
  for (j = 0; j != 3; ++j)
  {
    if (v7 > 1)
    {
      v27 = [v23 width];
      if (v8 <= j)
      {
        WidthOfPlane = 0;
      }

      else
      {
        WidthOfPlane = CVPixelBufferGetWidthOfPlane(a3, j);
      }

      *(v27 + 8 * j) = WidthOfPlane;
      v31 = [v23 height];
      if (v8 <= j)
      {
        HeightOfPlane = 0;
      }

      else
      {
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, j);
      }

      *(v31 + 8 * j) = HeightOfPlane;
      v33 = [v23 bytesPerRow];
      if (v8 > j)
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, j);
        goto LABEL_29;
      }
    }

    else
    {
      v25 = [v23 width];
      if (v8 <= j)
      {
        Width = 0;
      }

      else
      {
        Width = CVPixelBufferGetWidth(a3);
      }

      *(v25 + 8 * j) = Width;
      v29 = [v23 height];
      if (v8 <= j)
      {
        Height = 0;
      }

      else
      {
        Height = CVPixelBufferGetHeight(a3);
      }

      *(v29 + 8 * j) = Height;
      v33 = [v23 bytesPerRow];
      if (v8 > j)
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(a3);
        goto LABEL_29;
      }
    }

    BytesPerRowOfPlane = 0;
LABEL_29:
    *(v33 + 8 * j) = BytesPerRowOfPlane;
    v35 = *(v58 + j);
    *([v23 bytesPerPixel] + 8 * j) = v35;
    v36 = *([v23 height] + 8 * j);
    v37 = *([v23 bytesPerRow] + 8 * j);
    *([v23 size] + 8 * j) = v37 * v36;
  }

  v38 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (void)ImageInfoFromDictionary:(NSObject *)a1 .cold.1(NSObject *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0(&dword_21DE0D000, v2, v3, " %{private}s:%{private}d *** Unknown object type for width ***", v4, v5, v6, v7, 3u);
  }

  abort();
}

+ (void)ImageInfoFromDictionary:(NSObject *)a1 .cold.2(NSObject *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0(&dword_21DE0D000, v2, v3, " %{private}s:%{private}d *** Unknown object type for width ***", v4, v5, v6, v7, 3u);
  }

  abort();
}

+ (void)ImageInfoFromDictionary:(NSObject *)a1 .cold.3(NSObject *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0(&dword_21DE0D000, v2, v3, " %{private}s:%{private}d *** Unknown object type for bytesPerRow ***", v4, v5, v6, v7, 3u);
  }

  abort();
}

@end