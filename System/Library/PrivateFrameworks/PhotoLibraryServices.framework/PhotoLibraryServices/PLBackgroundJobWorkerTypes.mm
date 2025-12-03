@interface PLBackgroundJobWorkerTypes
+ (id)allTypesMask;
+ (id)backgroundJobWorkerTypesMaskGuestAssetSync:(BOOL)sync personSync:(BOOL)personSync syndicationSync:(BOOL)syndicationSync syndicationResourceSanitization:(BOOL)sanitization syndicationResourceDownload:(BOOL)download syndicationAssetCleanup:(BOOL)cleanup assetStack:(BOOL)stack duplicateDetector:(BOOL)self0 deferredRenderDerivativesLowPriority:(BOOL)self1 deferredRenderDerivativesHighPriority:(BOOL)self2 resourceAvailability:(BOOL)self3 stableHash:(BOOL)self4 editRenderingImage:(BOOL)self5 editRenderingVideo:(BOOL)self6 highPrioritySearchIndexing:(BOOL)self7 lowPriorityBatterySearchIndexing:(BOOL)self8 lowPriorityChargerSearchIndexing:(BOOL)self9 sharedAssetContainerUpdate:(BOOL)update assetResourceUploadJob:(BOOL)job assetResourceUploadExtensionRunner:(BOOL)runner featureAvailability:(BOOL)featureAvailability;
+ (id)maskForAssetResourceExtensionRunner;
+ (id)maskForAssetResourceUploadJob;
+ (id)maskForFeatureAvailability;
+ (id)typesMaskForDeferredProcessingNeeded:(unsigned __int16)needed;
+ (id)typesMaskForDeferredProcessingNeeded:(unsigned __int16)needed videoDeferredProcessingNeeded:(unsigned __int16)processingNeeded;
+ (id)typesMaskForVideoDeferredProcessingNeeded:(unsigned __int16)needed;
+ (id)typesMaskFromWorkerCodes:(id)codes;
+ (id)workerCodes;
+ (id)workerTypesMaskForBackgroundJobType:(signed __int16)type;
+ (id)workerTypesMaskForBackgroundJobWorkerType:(unint64_t)type;
+ (id)workerTypesMaskForBackgroundJobWorkerTypes:(id)types;
- (BOOL)containsTypes:(id)types;
- (BOOL)hasWork;
- (BOOL)isEqual:(id)equal;
- (PLBackgroundJobWorkerTypes)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)typesMaskByUnioningWithTypes:(id)types;
@end

@implementation PLBackgroundJobWorkerTypes

- (BOOL)containsTypes:(id)types
{
  v3 = 0;
  for (i = 0; i != 22; ++i)
  {
    if (*(types + i + 8) == 1 && !self->_includedTypes[i])
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

- (id)typesMaskByUnioningWithTypes:(id)types
{
  typesCopy = types;
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
      v8 = typesCopy[i];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && *self->_includedTypes == *equalCopy->_includedTypes && *&self->_includedTypes[8] == *&equalCopy->_includedTypes[8] && *&self->_includedTypes[14] == *&equalCopy->_includedTypes[14];
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
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

+ (id)workerTypesMaskForBackgroundJobWorkerTypes:(id)types
{
  v17 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v4 = objc_alloc_init(PLBackgroundJobWorkerTypes);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = typesCopy;
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

        unsignedIntegerValue = [*(*(&v12 + 1) + 8 * i) unsignedIntegerValue];
        if ((unsignedIntegerValue - 1) <= 0x14)
        {
          v4->_includedTypes[unsignedIntegerValue] = 1;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)workerTypesMaskForBackgroundJobWorkerType:(unint64_t)type
{
  v4 = objc_alloc_init(PLBackgroundJobWorkerTypes);
  if (type - 1 <= 0x14)
  {
    v4->_includedTypes[type] = 1;
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

+ (id)workerTypesMaskForBackgroundJobType:(signed __int16)type
{
  if (type > 5)
  {
    if (type <= 7)
    {
      if (type != 6)
      {
        maskForAssetResourceExtensionRunner = [self maskForAssetResourceExtensionRunner];
        goto LABEL_21;
      }

      v3 = 8;
      goto LABEL_20;
    }

    switch(type)
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
    if (type > 3)
    {
      v3 = 7;
      goto LABEL_20;
    }

    if ((type - 2) < 2)
    {
      maskForAssetResourceExtensionRunner = [self workerTypesMaskForBackgroundJobWorkerTypes:&unk_1F0FC03A8];
      goto LABEL_21;
    }

    if (!type)
    {
      v3 = 1;
      goto LABEL_20;
    }

    if (type == 1)
    {
      v3 = 15;
LABEL_20:
      maskForAssetResourceExtensionRunner = [self workerTypesMaskForBackgroundJobWorkerType:v3];
      goto LABEL_21;
    }
  }

  maskForAssetResourceExtensionRunner = objc_alloc_init(self);
LABEL_21:

  return maskForAssetResourceExtensionRunner;
}

+ (id)typesMaskForDeferredProcessingNeeded:(unsigned __int16)needed videoDeferredProcessingNeeded:(unsigned __int16)processingNeeded
{
  neededCopy = needed;
  v5 = [PLBackgroundJobWorkerTypes typesMaskForVideoDeferredProcessingNeeded:processingNeeded];
  v6 = [PLBackgroundJobWorkerTypes typesMaskForDeferredProcessingNeeded:neededCopy];
  v7 = [v5 typesMaskByUnioningWithTypes:v6];

  return v7;
}

+ (id)typesMaskForVideoDeferredProcessingNeeded:(unsigned __int16)needed
{
  if (needed == 1)
  {
    v3 = [self workerTypesMaskForBackgroundJobWorkerType:11];
  }

  else
  {
    v3 = objc_alloc_init(self);
  }

  return v3;
}

+ (id)typesMaskForDeferredProcessingNeeded:(unsigned __int16)needed
{
  if (needed > 4)
  {
    if (needed >= 8)
    {
      if (needed == 8)
      {
        v3 = 9;
        goto LABEL_15;
      }

      if (needed != 10)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (needed <= 1)
  {
    if (needed == 1)
    {
LABEL_11:
      v3 = 11;
      goto LABEL_15;
    }

LABEL_12:
    v4 = objc_alloc_init(self);
    goto LABEL_16;
  }

  if (needed == 2)
  {
    v4 = [self workerTypesMaskForBackgroundJobWorkerTypes:&unk_1F0FC0390];
    goto LABEL_16;
  }

  if (needed == 3)
  {
    goto LABEL_12;
  }

  v3 = 10;
LABEL_15:
  v4 = [self workerTypesMaskForBackgroundJobWorkerType:v3];
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

+ (id)backgroundJobWorkerTypesMaskGuestAssetSync:(BOOL)sync personSync:(BOOL)personSync syndicationSync:(BOOL)syndicationSync syndicationResourceSanitization:(BOOL)sanitization syndicationResourceDownload:(BOOL)download syndicationAssetCleanup:(BOOL)cleanup assetStack:(BOOL)stack duplicateDetector:(BOOL)self0 deferredRenderDerivativesLowPriority:(BOOL)self1 deferredRenderDerivativesHighPriority:(BOOL)self2 resourceAvailability:(BOOL)self3 stableHash:(BOOL)self4 editRenderingImage:(BOOL)self5 editRenderingVideo:(BOOL)self6 highPrioritySearchIndexing:(BOOL)self7 lowPriorityBatterySearchIndexing:(BOOL)self8 lowPriorityChargerSearchIndexing:(BOOL)self9 sharedAssetContainerUpdate:(BOOL)update assetResourceUploadJob:(BOOL)job assetResourceUploadExtensionRunner:(BOOL)runner featureAvailability:(BOOL)featureAvailability
{
  v26 = objc_alloc_init(PLBackgroundJobWorkerTypes);
  v26->_includedTypes[1] = sync;
  v26->_includedTypes[2] = personSync;
  v26->_includedTypes[3] = syndicationSync;
  v26->_includedTypes[4] = sanitization;
  v26->_includedTypes[5] = download;
  v26->_includedTypes[6] = cleanup;
  v26->_includedTypes[7] = stack;
  v26->_includedTypes[8] = detector;
  v26->_includedTypes[9] = priority;
  v26->_includedTypes[10] = highPriority;
  v26->_includedTypes[11] = availability;
  v26->_includedTypes[12] = hash;
  v26->_includedTypes[13] = image;
  v26->_includedTypes[14] = video;
  v26->_includedTypes[15] = indexing;
  v26->_includedTypes[16] = searchIndexing;
  v26->_includedTypes[17] = chargerSearchIndexing;
  v26->_includedTypes[18] = update;
  v26->_includedTypes[19] = job;
  v26->_includedTypes[20] = runner;
  v26->_includedTypes[21] = featureAvailability;

  return v26;
}

+ (id)typesMaskFromWorkerCodes:(id)codes
{
  codesCopy = codes;
  if (!codesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLBackgroundJobWorkerTypes+PhotosCtlSupport.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"workerCodes"}];
  }

  workerCodes = [self workerCodes];
  v52 = [workerCodes objectAtIndexedSubscript:1];
  v46 = [codesCopy containsObject:v52];
  v51 = [workerCodes objectAtIndexedSubscript:2];
  v45 = [codesCopy containsObject:v51];
  v50 = [workerCodes objectAtIndexedSubscript:3];
  v43 = [codesCopy containsObject:v50];
  v49 = [workerCodes objectAtIndexedSubscript:4];
  v41 = [codesCopy containsObject:v49];
  v48 = [workerCodes objectAtIndexedSubscript:5];
  v39 = [codesCopy containsObject:v48];
  v47 = [workerCodes objectAtIndexedSubscript:6];
  v38 = [codesCopy containsObject:v47];
  v44 = [workerCodes objectAtIndexedSubscript:7];
  v36 = [codesCopy containsObject:v44];
  v42 = [workerCodes objectAtIndexedSubscript:8];
  v34 = [codesCopy containsObject:v42];
  v40 = [workerCodes objectAtIndexedSubscript:9];
  v32 = [codesCopy containsObject:v40];
  v37 = [workerCodes objectAtIndexedSubscript:10];
  v30 = [codesCopy containsObject:v37];
  v35 = [workerCodes objectAtIndexedSubscript:11];
  v28 = [codesCopy containsObject:v35];
  v33 = [workerCodes objectAtIndexedSubscript:12];
  v26 = [codesCopy containsObject:v33];
  v31 = [workerCodes objectAtIndexedSubscript:13];
  v25 = [codesCopy containsObject:v31];
  v29 = [workerCodes objectAtIndexedSubscript:14];
  v23 = [codesCopy containsObject:v29];
  v27 = [workerCodes objectAtIndexedSubscript:15];
  v21 = [codesCopy containsObject:v27];
  v24 = [workerCodes objectAtIndexedSubscript:16];
  v20 = [codesCopy containsObject:v24];
  v22 = [workerCodes objectAtIndexedSubscript:17];
  v19 = [codesCopy containsObject:v22];
  v7 = [workerCodes objectAtIndexedSubscript:18];
  v8 = [codesCopy containsObject:v7];
  v9 = [workerCodes objectAtIndexedSubscript:19];
  v10 = [codesCopy containsObject:v9];
  v11 = [workerCodes objectAtIndexedSubscript:20];
  v12 = [codesCopy containsObject:v11];
  v13 = [workerCodes objectAtIndexedSubscript:21];
  BYTE6(v18) = [codesCopy containsObject:v13];
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
  v14 = [self backgroundJobWorkerTypesMaskGuestAssetSync:v46 personSync:v45 syndicationSync:v43 syndicationResourceSanitization:v41 syndicationResourceDownload:v39 syndicationAssetCleanup:v38 assetStack:v17 duplicateDetector:v18 deferredRenderDerivativesLowPriority:? deferredRenderDerivativesHighPriority:? resourceAvailability:? stableHash:? editRenderingImage:? editRenderingVideo:? highPrioritySearchIndexing:? lowPriorityBatterySearchIndexing:? lowPriorityChargerSearchIndexing:? sharedAssetContainerUpdate:? assetResourceUploadJob:? assetResourceUploadExtensionRunner:? featureAvailability:?];

  return v14;
}

+ (id)workerCodes
{
  v8 = a2;
  selfCopy = self;
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
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:v8 object:selfCopy file:@"PLBackgroundJobWorkerTypes+PhotosCtlSupport.m" lineNumber:97 description:@"Number of unique codes is not equal to number of worker types"];
        }

        array = [v2 array];

        return array;
      default:
        break;
    }

    [v2 addObject:{v4, v8, selfCopy}];
  }
}

@end