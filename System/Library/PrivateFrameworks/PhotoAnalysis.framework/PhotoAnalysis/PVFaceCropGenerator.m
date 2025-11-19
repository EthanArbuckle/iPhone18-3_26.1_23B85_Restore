@interface PVFaceCropGenerator
+ (id)generateFaceCropsFromSourceDescriptors:(id)a3 withProgressBlock:(id)a4 failureBlock:(id)a5 canceler:(id)a6;
@end

@implementation PVFaceCropGenerator

+ (id)generateFaceCropsFromSourceDescriptors:(id)a3 withProgressBlock:(id)a4 failureBlock:(id)a5 canceler:(id)a6
{
  v73 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v62 = a6;
  v12 = [v9 count];
  if (v12)
  {
    v59 = v12;
    v58 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v53 = v9;
    obj = v9;
    v61 = [obj countByEnumeratingWithState:&v64 objects:v72 count:16];
    if (v61)
    {
      v55 = v10;
      v13 = -1;
      v60 = *v65;
      v56 = v11;
      while (2)
      {
        v14 = 0;
        v15 = v13;
        do
        {
          if (*v65 != v60)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v64 + 1) + 8 * v14);
          v17 = objc_autoreleasePoolPush();
          v13 = v15 + 1;
          if (v10)
          {
            v18 = objc_autoreleasePoolPush();
            v10[2](v10, v16, v15 + 1, v59);
            objc_autoreleasePoolPop(v18);
          }

          v63 = 0;
          v19 = v16;
          if ([v62 canceled])
          {
            [MEMORY[0x277CCA9B8] errorForPhotoVisionCancelledOperation];
            v63 = v20 = 0;
          }

          else
          {
            v21 = [v19 face];
            if (v21)
            {
              v22 = [v19 image];
              if (v22)
              {
                [v21 normalizedFaceRect];
                v24 = v23;
                v26 = v25;
                v28 = v27;
                v30 = v29;
                v31 = v22;
                [v31 imageRectForNormalizedRect:{v24, v26, v28, v30}];
                x = v75.origin.x;
                y = v75.origin.y;
                width = v75.size.width;
                height = v75.size.height;
                if (CGRectIsNull(v75))
                {
                  v36 = MEMORY[0x277CCA9B8];
                  v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"{ { %f, %f }, { %f, %f} } is not a normalized rect", *&v24, *&v26, *&v28, *&v30];
                  [v36 errorForPhotoVisionInvalidParameterWithLocalizedDescription:v37];
                  v63 = v38 = 0;
                }

                else
                {
                  v54 = v17;
                  v37 = [v31 groupingIdentifier];
                  v39 = [v31 imageURL];
                  if (v39)
                  {
                    v38 = [PVFaceCropUtils newFaceCropFromImageURL:v39 withFaceRect:v37 groupingIdentifier:&v63 error:x, y, width, height];
                  }

                  else
                  {
                    v40 = [v31 imageData];
                    if (v40)
                    {
                      v38 = [PVFaceCropUtils newFaceCropFromImageData:v40 withFaceRect:v37 groupingIdentifier:&v63 error:x, y, width, height];
                    }

                    else
                    {
                      [MEMORY[0x277CCA9B8] errorForPhotoVisionInvalidParameterWithLocalizedDescription:@"The image cannot provide an URL or a data representation"];
                      v63 = v38 = 0;
                    }

                    v39 = 0;
                  }

                  v17 = v54;
                }

                if (v38)
                {
                  v41 = [[PVFaceCrop alloc] initWithFaceCropData:v38 originatingFace:v21];
                  v20 = v41;
                  if (v41)
                  {
                    v42 = v41;
                  }

                  else
                  {
                    v63 = [MEMORY[0x277CCA9B8] errorForPhotoVisionUnexpectedCondition:@"failed to create PVFaceCrop"];
                  }
                }

                else
                {
                  v20 = 0;
                }
              }

              else
              {
                [MEMORY[0x277CCA9B8] errorForPhotoVisionInvalidNilParameterNamed:@"faceCropSourceDescriptor.image"];
                v63 = v20 = 0;
              }

              v10 = v55;
            }

            else
            {
              [MEMORY[0x277CCA9B8] errorForPhotoVisionInvalidNilParameterNamed:@"faceCropSourceDescriptor.face"];
              v63 = v20 = 0;
            }

            v11 = v56;
          }

          v43 = v63;
          if (v20)
          {
            [v58 addObject:v20];
          }

          else
          {
            if (v11)
            {
              v11[2](v11, v19, v15 + 1, v59, v43);
            }

            if ([v62 canceled])
            {
              v44 = obj;
              v45 = v11;
              if (v11)
              {
                v46 = [v44 count];
                v47 = v46 - (v15 + 2);
                if (v46 > v15 + 2)
                {
                  v48 = v46;
                  v49 = [MEMORY[0x277CCA9B8] errorForPhotoVisionCancelledOperation];
                  v50 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v15 + 2, v47}];
                  v68[0] = MEMORY[0x277D85DD0];
                  v68[1] = 3221225472;
                  v68[2] = ___reportCancellationOfRemainingFaceCropSourceDescriptors_block_invoke;
                  v68[3] = &unk_2788B1DF8;
                  v70 = v45;
                  v71 = v48;
                  v69 = v49;
                  v51 = v49;
                  [v44 enumerateObjectsAtIndexes:v50 options:0 usingBlock:v68];
                }
              }

              objc_autoreleasePoolPop(v17);
              v10 = v55;
              v11 = v56;
              goto LABEL_45;
            }
          }

          objc_autoreleasePoolPop(v17);
          ++v14;
          ++v15;
        }

        while (v61 != v14);
        v61 = [obj countByEnumeratingWithState:&v64 objects:v72 count:16];
        if (v61)
        {
          continue;
        }

        break;
      }
    }

LABEL_45:

    v9 = v53;
  }

  else
  {
    v58 = [MEMORY[0x277CBEA60] array];
  }

  return v58;
}

@end