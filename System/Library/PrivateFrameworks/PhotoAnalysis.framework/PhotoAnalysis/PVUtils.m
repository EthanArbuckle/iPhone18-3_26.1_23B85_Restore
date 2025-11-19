@interface PVUtils
+ (id)faceprintFromFaceprintArchive:(id)a3 error:(id *)a4;
+ (id)selectRepresentativeFromFaceDescriptors:(id)a3;
@end

@implementation PVUtils

+ (id)selectRepresentativeFromFaceDescriptors:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = v3;
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
        v12 = [v10 faceId];
        v13 = [v10 faceprint];
        v14 = v13;
        if (v12 >= 1 && v13 != 0)
        {
          v30 = 0;
          v16 = [PVUtils faceprintFromFaceprintArchive:v13 error:&v30];
          v17 = v30;
          if (v16)
          {
            v18 = objc_alloc_init(MEMORY[0x277CE2CD0]);
            [v18 setFaceId:v12];
            [v18 setFaceTorsoprint:v16];
            v19 = [v16 faceprint];
            [v18 setFaceprint:v19];

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
      v23 = [v22 lastObject];
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
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

+ (id)faceprintFromFaceprintArchive:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CE2CD8];
  v6 = a3;
  v7 = [[v5 alloc] initWithState:v6 error:a4];

  return v7;
}

@end