@interface PLBackgroundJobWorkerTypes
+ (id)allTypesMask;
+ (id)backgroundJobWorkerTypesMaskGuestAssetSync:(BOOL)a3 personSync:(BOOL)a4 syndicationSync:(BOOL)a5 syndicationResourceSanitization:(BOOL)a6 syndicationResourceDownload:(BOOL)a7 syndicationAssetCleanup:(BOOL)a8 assetStack:(BOOL)a9 duplicateDetector:(BOOL)a10 deferredRenderDerivativesLowPriority:(BOOL)a11 deferredRenderDerivativesHighPriority:(BOOL)a12 resourceAvailability:(BOOL)a13 stableHash:(BOOL)a14 editRenderingImage:(BOOL)a15 editRenderingVideo:(BOOL)a16 highPrioritySearchIndexing:(BOOL)a17 lowPriorityBatterySearchIndexing:(BOOL)a18 lowPriorityChargerSearchIndexing:(BOOL)a19 sharedAssetContainerUpdate:(BOOL)a20 assetResourceUploadJob:(BOOL)a21 assetResourceUploadExtensionRunner:(BOOL)a22 featureAvailability:(BOOL)a23;
+ (id)maskForAssetResourceExtensionRunner;
+ (id)maskForAssetResourceUploadJob;
+ (id)maskForFeatureAvailability;
+ (id)typesMaskForDeferredProcessingNeeded:(unsigned __int16)a3;
+ (id)typesMaskForDeferredProcessingNeeded:(unsigned __int16)a3 videoDeferredProcessingNeeded:(unsigned __int16)a4;
+ (id)typesMaskForVideoDeferredProcessingNeeded:(unsigned __int16)a3;
+ (id)typesMaskFromWorkerCodes:(id)a3;
+ (id)workerCodes;
+ (id)workerTypesMaskForBackgroundJobType:(signed __int16)a3;
+ (id)workerTypesMaskForBackgroundJobWorkerType:(unint64_t)a3;
+ (id)workerTypesMaskForBackgroundJobWorkerTypes:(id)a3;
- (BOOL)containsTypes:(id)a3;
- (BOOL)hasWork;
- (BOOL)isEqual:(id)a3;
- (PLBackgroundJobWorkerTypes)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)typesMaskByUnioningWithTypes:(id)a3;
@end

@implementation PLBackgroundJobWorkerTypes

- (BOOL)containsTypes:(id)a3
{
  v3 = 0;
  for (i = 0; i != 22; ++i)
  {
    if (*(a3 + i + 8) == 1 && !self->_includedTypes[i])
    {
      break;
    }

    v3 = i > 0x14;
  }

  return v3;
}

- (BOOL)hasWork
{
  if (self->_includedTypes[0])
  {
    return 1;
  }

  v3 = 9;
  v4 = 21;
  while (v3 != 30)
  {
    v5 = *(&self->super.isa + v3++);
    if (v5 == 1)
    {
      v4 = v3 - 10;
      return v4 < 0x15;
    }
  }

  return v4 < 0x15;
}

- (id)typesMaskByUnioningWithTypes:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PLBackgroundJobWorkerTypes);
  v6 = v5;
  for (i = 8; i != 30; ++i)
  {
    if (*(&self->super.isa + i))
    {
      v8 = 1;
    }

    else
    {
      v8 = v4[i];
    }

    *(&v5->super.isa + i) = v8 & 1;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p> ", v5, self];

  for (i = 8; i != 30; ++i)
  {
    if (*(&self->super.isa + i))
    {
      v8 = @"1";
    }

    else
    {
      v8 = @"0";
    }

    [v6 appendFormat:@"%@", v8];
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && *self->_includedTypes == *v4->_includedTypes && *&self->_includedTypes[8] == *&v4->_includedTypes[8] && *&self->_includedTypes[14] == *&v4->_includedTypes[14];
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = objc_alloc_init(PLBackgroundJobWorkerTypes);
  for (i = 8; i != 30; ++i)
  {
    *(result + i) = *(&self->super.isa + i);
  }

  return result;
}

- (PLBackgroundJobWorkerTypes)init
{
  v3.receiver = self;
  v3.super_class = PLBackgroundJobWorkerTypes;
  result = [(PLBackgroundJobWorkerTypes *)&v3 init];
  if (result)
  {
    *result->_includedTypes = 0;
    *&result->_includedTypes[8] = 0;
    *&result->_includedTypes[14] = 0;
  }

  return result;
}

+ (id)workerTypesMaskForBackgroundJobWorkerTypes:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(PLBackgroundJobWorkerTypes);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) unsignedIntegerValue];
        if ((v10 - 1) <= 0x14)
        {
          v4->_includedTypes[v10] = 1;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)workerTypesMaskForBackgroundJobWorkerType:(unint64_t)a3
{
  v4 = objc_alloc_init(PLBackgroundJobWorkerTypes);
  if (a3 - 1 <= 0x14)
  {
    v4->_includedTypes[a3] = 1;
  }

  return v4;
}

+ (id)allTypesMask
{
  v2 = objc_alloc_init(PLBackgroundJobWorkerTypes);
  for (i = 8; i != 30; ++i)
  {
    if ((i - 9) <= 0x14)
    {
      *(&v2->super.isa + i) = 1;
    }
  }

  return v2;
}

+ (id)workerTypesMaskForBackgroundJobType:(signed __int16)a3
{
  if (a3 > 5)
  {
    if (a3 <= 7)
    {
      if (a3 != 6)
      {
        v4 = [a1 maskForAssetResourceExtensionRunner];
        goto LABEL_21;
      }

      v3 = 8;
      goto LABEL_20;
    }

    switch(a3)
    {
      case 8:
        v3 = 12;
        goto LABEL_20;
      case 9:
        v3 = 18;
        goto LABEL_20;
      case 10:
        v3 = 2;
        goto LABEL_20;
    }
  }

  else
  {
    if (a3 > 3)
    {
      v3 = 7;
      goto LABEL_20;
    }

    if ((a3 - 2) < 2)
    {
      v4 = [a1 workerTypesMaskForBackgroundJobWorkerTypes:&unk_1F0FC03A8];
      goto LABEL_21;
    }

    if (!a3)
    {
      v3 = 1;
      goto LABEL_20;
    }

    if (a3 == 1)
    {
      v3 = 15;
LABEL_20:
      v4 = [a1 workerTypesMaskForBackgroundJobWorkerType:v3];
      goto LABEL_21;
    }
  }

  v4 = objc_alloc_init(a1);
LABEL_21:

  return v4;
}

+ (id)typesMaskForDeferredProcessingNeeded:(unsigned __int16)a3 videoDeferredProcessingNeeded:(unsigned __int16)a4
{
  v4 = a3;
  v5 = [PLBackgroundJobWorkerTypes typesMaskForVideoDeferredProcessingNeeded:a4];
  v6 = [PLBackgroundJobWorkerTypes typesMaskForDeferredProcessingNeeded:v4];
  v7 = [v5 typesMaskByUnioningWithTypes:v6];

  return v7;
}

+ (id)typesMaskForVideoDeferredProcessingNeeded:(unsigned __int16)a3
{
  if (a3 == 1)
  {
    v3 = [a1 workerTypesMaskForBackgroundJobWorkerType:11];
  }

  else
  {
    v3 = objc_alloc_init(a1);
  }

  return v3;
}

+ (id)typesMaskForDeferredProcessingNeeded:(unsigned __int16)a3
{
  if (a3 > 4)
  {
    if (a3 >= 8)
    {
      if (a3 == 8)
      {
        v3 = 9;
        goto LABEL_15;
      }

      if (a3 != 10)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (a3 <= 1)
  {
    if (a3 == 1)
    {
LABEL_11:
      v3 = 11;
      goto LABEL_15;
    }

LABEL_12:
    v4 = objc_alloc_init(a1);
    goto LABEL_16;
  }

  if (a3 == 2)
  {
    v4 = [a1 workerTypesMaskForBackgroundJobWorkerTypes:&unk_1F0FC0390];
    goto LABEL_16;
  }

  if (a3 == 3)
  {
    goto LABEL_12;
  }

  v3 = 10;
LABEL_15:
  v4 = [a1 workerTypesMaskForBackgroundJobWorkerType:v3];
LABEL_16:

  return v4;
}

+ (id)maskForFeatureAvailability
{
  v2 = objc_alloc_init(PLBackgroundJobWorkerTypes);
  v2->_includedTypes[21] = 1;

  return v2;
}

+ (id)maskForAssetResourceUploadJob
{
  v2 = objc_alloc_init(PLBackgroundJobWorkerTypes);
  v2->_includedTypes[19] = 1;

  return v2;
}

+ (id)maskForAssetResourceExtensionRunner
{
  v2 = objc_alloc_init(PLBackgroundJobWorkerTypes);
  v2->_includedTypes[20] = 1;

  return v2;
}

+ (id)backgroundJobWorkerTypesMaskGuestAssetSync:(BOOL)a3 personSync:(BOOL)a4 syndicationSync:(BOOL)a5 syndicationResourceSanitization:(BOOL)a6 syndicationResourceDownload:(BOOL)a7 syndicationAssetCleanup:(BOOL)a8 assetStack:(BOOL)a9 duplicateDetector:(BOOL)a10 deferredRenderDerivativesLowPriority:(BOOL)a11 deferredRenderDerivativesHighPriority:(BOOL)a12 resourceAvailability:(BOOL)a13 stableHash:(BOOL)a14 editRenderingImage:(BOOL)a15 editRenderingVideo:(BOOL)a16 highPrioritySearchIndexing:(BOOL)a17 lowPriorityBatterySearchIndexing:(BOOL)a18 lowPriorityChargerSearchIndexing:(BOOL)a19 sharedAssetContainerUpdate:(BOOL)a20 assetResourceUploadJob:(BOOL)a21 assetResourceUploadExtensionRunner:(BOOL)a22 featureAvailability:(BOOL)a23
{
  v26 = objc_alloc_init(PLBackgroundJobWorkerTypes);
  v26->_includedTypes[1] = a3;
  v26->_includedTypes[2] = a4;
  v26->_includedTypes[3] = a5;
  v26->_includedTypes[4] = a6;
  v26->_includedTypes[5] = a7;
  v26->_includedTypes[6] = a8;
  v26->_includedTypes[7] = a9;
  v26->_includedTypes[8] = a10;
  v26->_includedTypes[9] = a11;
  v26->_includedTypes[10] = a12;
  v26->_includedTypes[11] = a13;
  v26->_includedTypes[12] = a14;
  v26->_includedTypes[13] = a15;
  v26->_includedTypes[14] = a16;
  v26->_includedTypes[15] = a17;
  v26->_includedTypes[16] = a18;
  v26->_includedTypes[17] = a19;
  v26->_includedTypes[18] = a20;
  v26->_includedTypes[19] = a21;
  v26->_includedTypes[20] = a22;
  v26->_includedTypes[21] = a23;

  return v26;
}

+ (id)typesMaskFromWorkerCodes:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"PLBackgroundJobWorkerTypes+PhotosCtlSupport.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"workerCodes"}];
  }

  v6 = [a1 workerCodes];
  v52 = [v6 objectAtIndexedSubscript:1];
  v46 = [v5 containsObject:v52];
  v51 = [v6 objectAtIndexedSubscript:2];
  v45 = [v5 containsObject:v51];
  v50 = [v6 objectAtIndexedSubscript:3];
  v43 = [v5 containsObject:v50];
  v49 = [v6 objectAtIndexedSubscript:4];
  v41 = [v5 containsObject:v49];
  v48 = [v6 objectAtIndexedSubscript:5];
  v39 = [v5 containsObject:v48];
  v47 = [v6 objectAtIndexedSubscript:6];
  v38 = [v5 containsObject:v47];
  v44 = [v6 objectAtIndexedSubscript:7];
  v36 = [v5 containsObject:v44];
  v42 = [v6 objectAtIndexedSubscript:8];
  v34 = [v5 containsObject:v42];
  v40 = [v6 objectAtIndexedSubscript:9];
  v32 = [v5 containsObject:v40];
  v37 = [v6 objectAtIndexedSubscript:10];
  v30 = [v5 containsObject:v37];
  v35 = [v6 objectAtIndexedSubscript:11];
  v28 = [v5 containsObject:v35];
  v33 = [v6 objectAtIndexedSubscript:12];
  v26 = [v5 containsObject:v33];
  v31 = [v6 objectAtIndexedSubscript:13];
  v25 = [v5 containsObject:v31];
  v29 = [v6 objectAtIndexedSubscript:14];
  v23 = [v5 containsObject:v29];
  v27 = [v6 objectAtIndexedSubscript:15];
  v21 = [v5 containsObject:v27];
  v24 = [v6 objectAtIndexedSubscript:16];
  v20 = [v5 containsObject:v24];
  v22 = [v6 objectAtIndexedSubscript:17];
  v19 = [v5 containsObject:v22];
  v7 = [v6 objectAtIndexedSubscript:18];
  v8 = [v5 containsObject:v7];
  v9 = [v6 objectAtIndexedSubscript:19];
  v10 = [v5 containsObject:v9];
  v11 = [v6 objectAtIndexedSubscript:20];
  v12 = [v5 containsObject:v11];
  v13 = [v6 objectAtIndexedSubscript:21];
  BYTE6(v18) = [v5 containsObject:v13];
  BYTE5(v18) = v12;
  BYTE4(v18) = v10;
  BYTE3(v18) = v8;
  BYTE2(v18) = v19;
  BYTE1(v18) = v20;
  LOBYTE(v18) = v21;
  HIBYTE(v17) = v23;
  BYTE6(v17) = v25;
  BYTE5(v17) = v26;
  BYTE4(v17) = v28;
  BYTE3(v17) = v30;
  BYTE2(v17) = v32;
  BYTE1(v17) = v34;
  LOBYTE(v17) = v36;
  v14 = [a1 backgroundJobWorkerTypesMaskGuestAssetSync:v46 personSync:v45 syndicationSync:v43 syndicationResourceSanitization:v41 syndicationResourceDownload:v39 syndicationAssetCleanup:v38 assetStack:v17 duplicateDetector:v18 deferredRenderDerivativesLowPriority:? deferredRenderDerivativesHighPriority:? resourceAvailability:? stableHash:? editRenderingImage:? editRenderingVideo:? highPrioritySearchIndexing:? lowPriorityBatterySearchIndexing:? lowPriorityChargerSearchIndexing:? sharedAssetContainerUpdate:? assetResourceUploadJob:? assetResourceUploadExtensionRunner:? featureAvailability:?];

  return v14;
}

+ (id)workerCodes
{
  v8 = a2;
  v9 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  for (i = 0; ; ++i)
  {
    v4 = @"unknown";
    switch(i)
    {
      case 1:
        v4 = @"yg";
        break;
      case 2:
        v4 = @"yp";
        break;
      case 3:
        v4 = @"ys";
        break;
      case 4:
        v4 = @"yr";
        break;
      case 5:
        v4 = @"yd";
        break;
      case 6:
        v4 = @"yc";
        break;
      case 7:
        v4 = @"as";
        break;
      case 8:
        v4 = @"dd";
        break;
      case 9:
        v4 = @"rdl";
        break;
      case 10:
        v4 = @"rdh";
        break;
      case 11:
        v4 = @"ra";
        break;
      case 12:
        v4 = @"shs";
        break;
      case 13:
        v4 = @"ei";
        break;
      case 14:
        v4 = @"ev";
        break;
      case 15:
        v4 = @"sh";
        break;
      case 16:
        v4 = @"sb";
        break;
      case 17:
        v4 = @"sc";
        break;
      case 18:
        v4 = @"sac";
        break;
      case 19:
        v4 = @"aruj";
        break;
      case 20:
        v4 = @"arue";
        break;
      case 21:
        [v2 addObject:@"fa"];
        if ([v2 count] != 22)
        {
          v7 = [MEMORY[0x1E696AAA8] currentHandler];
          [v7 handleFailureInMethod:v8 object:v9 file:@"PLBackgroundJobWorkerTypes+PhotosCtlSupport.m" lineNumber:97 description:@"Number of unique codes is not equal to number of worker types"];
        }

        v5 = [v2 array];

        return v5;
      default:
        break;
    }

    [v2 addObject:{v4, v8, v9}];
  }
}

@end