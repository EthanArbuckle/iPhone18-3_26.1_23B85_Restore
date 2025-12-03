@interface PVUtils
+ (id)faceprintFromFaceprintArchive:(id)archive error:(id *)error;
+ (id)selectRepresentativeFromFaceDescriptors:(id)descriptors;
@end

@implementation PVUtils

+ (id)selectRepresentativeFromFaceDescriptors:(id)descriptors
{
  v38 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = descriptorsCopy;
  v5 = [v4 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v32;
    *&v6 = 138412290;
    v25 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v31 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        faceId = [v10 faceId];
        faceprint = [v10 faceprint];
        v14 = faceprint;
        if (faceId >= 1 && faceprint != 0)
        {
          v30 = 0;
          v16 = [PVUtils faceprintFromFaceprintArchive:faceprint error:&v30];
          v17 = v30;
          if (v16)
          {
            v18 = objc_alloc_init(MEMORY[0x277CE2CD0]);
            [v18 setFaceId:faceId];
            [v18 setFaceTorsoprint:v16];
            faceprint2 = [v16 faceprint];
            [v18 setFaceprint:faceprint2];

            [v26 addObject:v18];
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = v25;
            v36 = v17;
            _os_log_error_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to get VNFaceTorsoprint from faceprint data, error:%@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v7);
  }

  if ([v26 count])
  {
    v29 = 0;
    v20 = [MEMORY[0x277CE2C18] representativenessForFaces:v26 error:&v29];
    v21 = v29;
    if (v21 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = v21;
      _os_log_error_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to get representativenessForFaces. Error: %@", buf, 0xCu);
    }

    if ([v20 count])
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __51__PVUtils_selectRepresentativeFromFaceDescriptors___block_invoke;
      v27[3] = &unk_2788B1690;
      v28 = v20;
      v22 = [v4 sortedArrayUsingComparator:v27];
      lastObject = [v22 lastObject];
    }

    else
    {
      lastObject = 0;
    }
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

uint64_t __51__PVUtils_selectRepresentativeFromFaceDescriptors___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithInteger:{objc_msgSend(a2, "faceId")}];
  v9 = [v5 objectForKeyedSubscript:v8];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &unk_2844CC2D0;
  }

  v12 = v11;

  v13 = *(a1 + 32);
  v14 = MEMORY[0x277CCABB0];
  v15 = [v7 faceId];

  v16 = [v14 numberWithInteger:v15];
  v17 = [v13 objectForKeyedSubscript:v16];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = &unk_2844CC2D0;
  }

  v20 = v19;

  v21 = [v12 compare:v20];
  return v21;
}

+ (id)faceprintFromFaceprintArchive:(id)archive error:(id *)error
{
  v5 = MEMORY[0x277CE2CD8];
  archiveCopy = archive;
  v7 = [[v5 alloc] initWithState:archiveCopy error:error];

  return v7;
}

@end