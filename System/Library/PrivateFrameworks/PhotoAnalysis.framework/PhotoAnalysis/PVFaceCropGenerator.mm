@interface PVFaceCropGenerator
+ (id)generateFaceCropsFromSourceDescriptors:(id)descriptors withProgressBlock:(id)block failureBlock:(id)failureBlock canceler:(id)canceler;
@end

@implementation PVFaceCropGenerator

+ (id)generateFaceCropsFromSourceDescriptors:(id)descriptors withProgressBlock:(id)block failureBlock:(id)failureBlock canceler:(id)canceler
{
  v73 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  blockCopy = block;
  failureBlockCopy = failureBlock;
  cancelerCopy = canceler;
  v12 = [descriptorsCopy count];
  if (v12)
  {
    v59 = v12;
    array = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v53 = descriptorsCopy;
    obj = descriptorsCopy;
    v61 = [obj countByEnumeratingWithState:&v64 objects:v72 count:16];
    if (v61)
    {
      v55 = blockCopy;
      v13 = -1;
      v60 = *v65;
      v56 = failureBlockCopy;
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
          if (blockCopy)
          {
            v18 = objc_autoreleasePoolPush();
            blockCopy[2](blockCopy, v16, v15 + 1, v59);
            objc_autoreleasePoolPop(v18);
          }

          v63 = 0;
          v19 = v16;
          if ([cancelerCopy canceled])
          {
            [MEMORY[0x277CCA9B8] errorForPhotoVisionCancelledOperation];
            v63 = v20 = 0;
          }

          else
          {
            face = [v19 face];
            if (face)
            {
              image = [v19 image];
              if (image)
              {
                [face normalizedFaceRect];
                v24 = v23;
                v26 = v25;
                v28 = v27;
                v30 = v29;
                v31 = image;
                [v31 imageRectForNormalizedRect:{v24, v26, v28, v30}];
                x = v75.origin.x;
                y = v75.origin.y;
                width = v75.size.width;
                height = v75.size.height;
                if (CGRectIsNull(v75))
                {
                  v36 = MEMORY[0x277CCA9B8];
                  groupingIdentifier = [MEMORY[0x277CCACA8] stringWithFormat:@"{ { %f, %f }, { %f, %f} } is not a normalized rect", *&v24, *&v26, *&v28, *&v30];
                  [v36 errorForPhotoVisionInvalidParameterWithLocalizedDescription:groupingIdentifier];
                  v63 = height = 0;
                }

                else
                {
                  v54 = v17;
                  groupingIdentifier = [v31 groupingIdentifier];
                  imageURL = [v31 imageURL];
                  if (imageURL)
                  {
                    height = [PVFaceCropUtils newFaceCropFromImageURL:imageURL withFaceRect:groupingIdentifier groupingIdentifier:&v63 error:x, y, width, height];
                  }

                  else
                  {
                    imageData = [v31 imageData];
                    if (imageData)
                    {
                      height = [PVFaceCropUtils newFaceCropFromImageData:imageData withFaceRect:groupingIdentifier groupingIdentifier:&v63 error:x, y, width, height];
                    }

                    else
                    {
                      [MEMORY[0x277CCA9B8] errorForPhotoVisionInvalidParameterWithLocalizedDescription:@"The image cannot provide an URL or a data representation"];
                      v63 = height = 0;
                    }

                    imageURL = 0;
                  }

                  v17 = v54;
                }

                if (height)
                {
                  v41 = [[PVFaceCrop alloc] initWithFaceCropData:height originatingFace:face];
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

              blockCopy = v55;
            }

            else
            {
              [MEMORY[0x277CCA9B8] errorForPhotoVisionInvalidNilParameterNamed:@"faceCropSourceDescriptor.face"];
              v63 = v20 = 0;
            }

            failureBlockCopy = v56;
          }

          v43 = v63;
          if (v20)
          {
            [array addObject:v20];
          }

          else
          {
            if (failureBlockCopy)
            {
              failureBlockCopy[2](failureBlockCopy, v19, v15 + 1, v59, v43);
            }

            if ([cancelerCopy canceled])
            {
              v44 = obj;
              v45 = failureBlockCopy;
              if (failureBlockCopy)
              {
                v46 = [v44 count];
                v47 = v46 - (v15 + 2);
                if (v46 > v15 + 2)
                {
                  v48 = v46;
                  errorForPhotoVisionCancelledOperation = [MEMORY[0x277CCA9B8] errorForPhotoVisionCancelledOperation];
                  v50 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v15 + 2, v47}];
                  v68[0] = MEMORY[0x277D85DD0];
                  v68[1] = 3221225472;
                  v68[2] = ___reportCancellationOfRemainingFaceCropSourceDescriptors_block_invoke;
                  v68[3] = &unk_2788B1DF8;
                  v70 = v45;
                  v71 = v48;
                  v69 = errorForPhotoVisionCancelledOperation;
                  v51 = errorForPhotoVisionCancelledOperation;
                  [v44 enumerateObjectsAtIndexes:v50 options:0 usingBlock:v68];
                }
              }

              objc_autoreleasePoolPop(v17);
              blockCopy = v55;
              failureBlockCopy = v56;
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

    descriptorsCopy = v53;
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  return array;
}

@end