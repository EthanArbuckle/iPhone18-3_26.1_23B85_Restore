@interface SIIOSurfaceAllocator
- (id)allocateWithWidth:(unint64_t)a3 height:(unint64_t)a4 pixelFormat:(unsigned int)a5 stride:(unint64_t)a6;
@end

@implementation SIIOSurfaceAllocator

- (id)allocateWithWidth:(unint64_t)a3 height:(unint64_t)a4 pixelFormat:(unsigned int)a5 stride:(unint64_t)a6
{
  v74[7] = *MEMORY[0x277D85DE8];
  v8 = SIPlaneCountForPixelFormat(a5);
  v64 = a5;
  if (v8 == 1)
  {
    v9 = SIBytesPerElementForPixelFormat(a5);
  }

  else
  {
    v9 = SIBytesPerElementForPlanarPixelFormat(a5, 0);
  }

  v10 = v9;
  v11 = v8 == 1;
  v12 = MEMORY[0x277CBEB38];
  v73[0] = *MEMORY[0x277CD2B88];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
  v74[0] = v13;
  v73[1] = *MEMORY[0x277CD2A28];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a4];
  v74[1] = v14;
  v73[2] = *MEMORY[0x277CD2A70];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v64];
  v74[2] = v15;
  v16 = *MEMORY[0x277CD29E8];
  v73[3] = *MEMORY[0x277CD29F0];
  v73[4] = v16;
  v74[3] = &unk_282F34C40;
  v74[4] = &unk_282F34C40;
  v73[5] = *MEMORY[0x277CD2960];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v10];
  v74[5] = v17;
  v73[6] = *MEMORY[0x277CD2A60];
  v74[6] = &unk_282F34C58;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:7];
  properties = [v12 dictionaryWithDictionary:v18];

  if (v11)
  {
    if (a6)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a6 * a4];
      [(__CFDictionary *)properties setObject:v19 forKeyedSubscript:*MEMORY[0x277CD2948]];

      v56 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a6];
      [(__CFDictionary *)properties setObject:v56 forKeyedSubscript:*MEMORY[0x277CD2968]];
    }
  }

  else
  {
    if (a6)
    {
      v20 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136380931;
        v70 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Surface/SIIOSurfaceAllocator.m";
        v71 = 1025;
        v72 = 52;
        _os_log_impl(&dword_21DE0D000, v20, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Attempting to provide stride for multiplanar images is not currently supported. Falling back to auto-determined stride. ***", buf, 0x12u);
      }
    }

    v57 = [MEMORY[0x277CBEB18] arrayWithCapacity:{2, properties}];
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v61 = *MEMORY[0x277CD2B40];
    v60 = *MEMORY[0x277CD2B38];
    v52 = *MEMORY[0x277CD2AA0];
    v53 = *MEMORY[0x277CD2948];
    v51 = *MEMORY[0x277CD2A98];
    v50 = *MEMORY[0x277CD2B50];
    v49 = *MEMORY[0x277CD2B18];
    v48 = *MEMORY[0x277CD2AF0];
    v24 = 1;
    v47 = *MEMORY[0x277CD2AE8];
    do
    {
      v59 = v22;
      v58 = v24;
      v65 = v23;
      v25 = SIBytesPerElementForPlanarPixelFormat(v64, v23);
      v26 = SIVerticalSubsamplingForPlanarPixelFormat(v64, v65);
      v27 = a3 / SIHorizontalSubsamplingForPlanarPixelFormat(v64, v65);
      v28 = [SIIOSurfaceAllocator alignPlaneBytesPerRow:v27 * v25];
      v29 = a4 / v26;
      v30 = MEMORY[0x223D4BE20](v61, v28 * (a4 / v26));
      v62 = MEMORY[0x223D4BE20](v60, v21);
      v67[0] = v52;
      v63 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v28];
      v68[0] = v63;
      v67[1] = v61;
      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v30];
      v68[1] = v31;
      v67[2] = v53;
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v30];
      v68[2] = v32;
      v67[3] = v60;
      v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v62];
      v68[3] = v33;
      v67[4] = v51;
      v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v25];
      v68[4] = v34;
      v67[5] = v50;
      v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v27];
      v68[5] = v35;
      v67[6] = v49;
      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v29];
      v68[6] = v36;
      v67[7] = v48;
      v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:1];
      v68[7] = v37;
      v67[8] = v47;
      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:1];
      v68[8] = v38;
      v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:9];

      [v57 setObject:v39 atIndexedSubscript:v65];
      v24 = 0;
      v21 = v62 + v30;
      v22 = v39;
      v23 = 1;
    }

    while ((v58 & 1) != 0);
    [(__CFDictionary *)properties setObject:v57 forKeyedSubscript:*MEMORY[0x277CD2B30]];
    v40 = [SIIOSurfaceAllocator alignAllocation:v21];
    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v40];
    [(__CFDictionary *)properties setObject:v41 forKeyedSubscript:v53];
  }

  v42 = IOSurfaceCreate(properties);
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __68__SIIOSurfaceAllocator_allocateWithWidth_height_pixelFormat_stride___block_invoke;
  v66[3] = &__block_descriptor_40_e5_v8__0l;
  v66[4] = v42;
  v43 = [[SIIOSurface alloc] initFromSurface:v42];
  __68__SIIOSurfaceAllocator_allocateWithWidth_height_pixelFormat_stride___block_invoke(v66);

  v44 = *MEMORY[0x277D85DE8];

  return v43;
}

void __68__SIIOSurfaceAllocator_allocateWithWidth_height_pixelFormat_stride___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

@end