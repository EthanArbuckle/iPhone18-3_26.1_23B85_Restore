@interface UIDragStatisticLogItemsInDragByType
@end

@implementation UIDragStatisticLogItemsInDragByType

void ___UIDragStatisticLogItemsInDragByType_block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = v1;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v2;
  v40 = [v2 countByEnumeratingWithState:&v63 objects:v68 count:16];
  if (v40)
  {
    v34 = v3;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v4 = 0;
    v47 = 0;
    v48 = 0;
    v5 = 0;
    v6 = 0;
    v39 = *v64;
    v7 = *MEMORY[0x1E6982F40];
    v8 = *MEMORY[0x1E6982E30];
    v9 = *MEMORY[0x1E6983030];
    v58 = *MEMORY[0x1E6982F10];
    v55 = *MEMORY[0x1E6982DC8];
    v54 = *MEMORY[0x1E6982F30];
    v53 = *MEMORY[0x1E6982D00];
    v52 = *MEMORY[0x1E6982F90];
    v41 = *MEMORY[0x1E6982F98];
    v38 = *MEMORY[0x1E6982E18];
    v36 = *MEMORY[0x1E6982DC0];
    v35 = *MEMORY[0x1E6983098];
    v56 = *MEMORY[0x1E6983030];
    v57 = *MEMORY[0x1E6982E30];
    do
    {
      v10 = 0;
      do
      {
        v44 = v6;
        if (*v64 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v45 = v5;
        v46 = v4;
        v43 = v10;
        v11 = [*(*(&v63 + 1) + 8 * v10) itemProvider];
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v42 = v11;
        v12 = [v11 registeredTypeIdentifiers];
        v13 = [v12 countByEnumeratingWithState:&v59 objects:v67 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = 0;
          v16 = *v60;
          do
          {
            v17 = 0;
            do
            {
              if (*v60 != v16)
              {
                objc_enumerationMutation(v12);
              }

              v18 = [MEMORY[0x1E6982C40] _typeWithIdentifier:*(*(&v59 + 1) + 8 * v17) allowUndeclared:1];
              if ([v18 conformsToType:v7])
              {
                v19 = 1;
              }

              else if ([v18 conformsToType:v8])
              {
                v19 = 16;
              }

              else if ([v18 conformsToType:v9])
              {
                v19 = 8;
              }

              else if ([v18 conformsToType:v58])
              {
                v19 = 4;
              }

              else
              {
                v20 = [MEMORY[0x1E6982C40] _typeWithIdentifier:@"com.apple.uikit.useractivity" allowUndeclared:1];
                v21 = [v18 conformsToType:v20];

                if (v21)
                {
                  v19 = 64;
                  v9 = v56;
                  v8 = v57;
                }

                else
                {
                  v9 = v56;
                  if ([v18 conformsToType:v55])
                  {
                    v19 = 32;
                    v8 = v57;
                  }

                  else
                  {
                    v8 = v57;
                    if ([v18 conformsToType:v54] & 1) != 0 || (objc_msgSend(v18, "conformsToType:", v53))
                    {
                      v19 = 32;
                    }

                    else if ([v18 conformsToType:v52] & 1) != 0 || (objc_msgSend(v18, "conformsToType:", v41) & 1) != 0 || (objc_msgSend(v18, "conformsToType:", v38) & 1) != 0 || (objc_msgSend(v18, "conformsToType:", v36) & 1) != 0 || (objc_msgSend(v18, "conformsToType:", v35))
                    {
                      v19 = 2;
                    }

                    else
                    {
                      v22 = [MEMORY[0x1E6982C40] _typeWithIdentifier:@"com.apple.uikit.attributedstring" allowUndeclared:1];
                      v23 = [v18 conformsToType:v22];

                      v24 = v23 == 0;
                      v9 = v56;
                      v8 = v57;
                      v19 = 2;
                      if (v24)
                      {
                        v19 = 128;
                      }
                    }
                  }
                }
              }

              v15 |= v19;

              ++v17;
            }

            while (v14 != v17);
            v25 = [v12 countByEnumeratingWithState:&v59 objects:v67 count:16];
            v14 = v25;
          }

          while (v25);
        }

        else
        {
          v15 = 0;
        }

        v6 = &v44[v15 & 1];
        v47 += (v15 >> 1) & 1;
        v5 = ((v15 >> 2) & 1) + v45;
        v48 += (v15 >> 3) & 1;
        v49 += (v15 >> 4) & 1;
        v50 += (v15 >> 5) & 1;
        v51 += (v15 >> 6) & 1;
        v4 = ((v15 >> 7) & 1) + v46;

        v10 = v43 + 1;
      }

      while (v43 + 1 != v40);
      v40 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
    }

    while (v40);
    v3 = v34;
    if (v6)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v34, @"plainTextType"];
      [_UIKitDragAndDropStatistics recordUIKitDragAndDropDistributionValue:v6 forKey:&v44[v15 & 1]];
    }

    if (v47)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v34, @"richTextType"];

      [_UIKitDragAndDropStatistics recordUIKitDragAndDropDistributionValue:v26 forKey:v47];
      v6 = v26;
      v5 = ((v15 >> 2) & 1) + v45;
    }

    if (v5)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v34, @"PDFType"];
      v28 = v27 = v5;

      [_UIKitDragAndDropStatistics recordUIKitDragAndDropDistributionValue:v28 forKey:v27];
      v6 = v28;
    }

    if (v48)
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v34, @"URLType"];

      [_UIKitDragAndDropStatistics recordUIKitDragAndDropDistributionValue:v29 forKey:v48];
      v6 = v29;
    }

    if (v49)
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v34, @"imageType"];

      [_UIKitDragAndDropStatistics recordUIKitDragAndDropDistributionValue:v30 forKey:v49];
      v6 = v30;
    }

    if (v50)
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v34, @"folderType"];

      [_UIKitDragAndDropStatistics recordUIKitDragAndDropDistributionValue:v31 forKey:v50];
      v6 = v31;
    }

    if (v51)
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v34, @"userActivityType"];

      [_UIKitDragAndDropStatistics recordUIKitDragAndDropDistributionValue:v32 forKey:v51];
      v6 = v32;
    }

    if (v4)
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v34, @"customType"];

      [_UIKitDragAndDropStatistics recordUIKitDragAndDropDistributionValue:v33 forKey:v4];
      v6 = v33;
    }
  }

  else
  {
    v6 = 0;
  }
}

@end