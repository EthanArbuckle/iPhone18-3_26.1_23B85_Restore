@interface PFPhotosFaceUtilities
+ (BOOL)getCropRectForPortraitImage:(CGRect *)a3 size:(double)a4 imgWidth:(double)a5 imgHeight:(double)a6 centerX:(double)a7 centerY:(double)a8;
+ (CGSize)faceTileSizeAdjustingForImageAspectRatio:(CGSize)result imgWidth:(double)a4 imgHeight:(double)a5;
+ (id)bestMergeCandidateFaceFor:(id)a3 from:(id)a4 ignoreSourceAssetDimensions:(BOOL)a5;
+ (id)selectRepresentativeFromFaces:(id)a3 qualityMeasureByLocalIdentifier:(id)a4 representativenessByCSN:(id)a5 candidateFaces:(id)a6;
+ (id)sortedViableMergeCandidateFacesFor:(id)a3 from:(id)a4 ignoreSourceAssetDimensions:(BOOL)a5 matchScores:(id *)a6;
+ (id)sortedViableMergeCandidateTorsosFor:(id)a3 from:(id)a4 ignoreSourceAssetDimensions:(BOOL)a5 matchScores:(id *)a6;
+ (int64_t)qualityMeasureForFace:(id)a3 countOfFacesOnAsset:(unint64_t)a4;
@end

@implementation PFPhotosFaceUtilities

+ (CGSize)faceTileSizeAdjustingForImageAspectRatio:(CGSize)result imgWidth:(double)a4 imgHeight:(double)a5
{
  if (a4 <= a5)
  {
    result.width = result.height * (a5 / a4);
  }

  else
  {
    result.height = result.width * (a4 / a5);
  }

  if (result.width > 1.0)
  {
    result.height = result.height * (1.0 / result.width);
    result.width = 1.0;
  }

  if (result.height > 1.0)
  {
    result.width = result.width * (1.0 / result.height);
    result.height = 1.0;
  }

  return result;
}

+ (BOOL)getCropRectForPortraitImage:(CGRect *)a3 size:(double)a4 imgWidth:(double)a5 imgHeight:(double)a6 centerX:(double)a7 centerY:(double)a8
{
  [a1 faceTileSizeAdjustingForImageAspectRatio:a4 * 0.5 imgWidth:a4 * 0.5 imgHeight:{a5, a6}];
  v13 = v12 * -1.63999999 + a7 - v12 * 0.5;
  v14 = 1.0 - a8 - v11 * 0.5 - v11 * 1.91999996;
  v15 = v12 - (v12 * -1.63999999 + v12 * -1.63999999);
  v16 = v11 - (v11 * 1.91999996 * -1.10000002 - v11 * 1.91999996);
  if (v14 >= 0.0)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0.0;
  }

  v25.origin.x = v13;
  v25.origin.y = v17;
  v25.size.width = v15;
  v25.size.height = v16;
  MaxY = CGRectGetMaxY(v25);
  if (MaxY <= 1.0)
  {
    goto LABEL_7;
  }

  v19 = MaxY + -1.0;
  if (v19 < v16 * 0.200000003 / 3.0 + v16 * 0.200000003 / 3.0)
  {
    v17 = v19 * 0.5 + v17;
    v16 = v16 + v19 * -1.5;
LABEL_7:
    v20 = 1;
    goto LABEL_9;
  }

  v20 = 0;
  v16 = v16 - v19;
LABEL_9:
  if (v17 < 0.0)
  {
    v16 = 1.0;
    v17 = 0.0;
  }

  if (v13 < 0.0)
  {
    v13 = 0.0;
  }

  v26.origin.x = v13;
  v26.origin.y = v17;
  v26.size.width = v15;
  v26.size.height = v16;
  v21 = v13 - fmax(CGRectGetMaxX(v26) + -1.0, 0.0);
  v22 = v21 < 0.0;
  if (v21 < 0.0)
  {
    v21 = 0.0;
  }

  a3->origin.x = v21;
  a3->origin.y = v17;
  if (v22)
  {
    v23 = 1.0;
  }

  else
  {
    v23 = v15;
  }

  a3->size.width = v23;
  a3->size.height = v16;
  return v20;
}

+ (id)selectRepresentativeFromFaces:(id)a3 qualityMeasureByLocalIdentifier:(id)a4 representativenessByCSN:(id)a5 candidateFaces:(id)a6
{
  v50[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = ([v9 count] * 0.7);
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __126__PFPhotosFaceUtilities_selectRepresentativeFromFaces_qualityMeasureByLocalIdentifier_representativenessByCSN_candidateFaces___block_invoke;
  v47[3] = &unk_1E7B65038;
  v14 = v11;
  v48 = v14;
  v15 = [v9 sortedArrayUsingComparator:v47];
  v16 = [v15 subarrayWithRange:{v13, objc_msgSend(v9, "count") - v13}];
  v17 = [v16 count];
  if (!v17)
  {
    goto LABEL_16;
  }

  v18 = v17;
  v42 = v15;
  v43 = v14;
  v44 = v9;
  v19 = 0;
  v20 = 0;
  v21 = -1.79769313e308;
  do
  {
    v22 = [v16 objectAtIndex:{v20, v42, v43, v44}];
    [v22 photosFaceRepresentationRoll];
    if (fabs(v23) <= 0.785398163)
    {
      if (v10)
      {
        v24 = [v22 photosFaceRepresentationLocalIdentifier];
        v25 = [v10 objectForKey:v24];
        v26 = [v25 integerValue];
      }

      else
      {
        v26 = [v22 photosFaceRepresentationClusterSequenceNumber];
      }

      memset(v46, 0, sizeof(v46));
      [v22 photosFaceRepresentationSize];
      v28 = v27;
      v29 = [v22 photosFaceRepresentationSourceWidth];
      v30 = [v22 photosFaceRepresentationSourceHeight];
      [v22 photosFaceRepresentationCenterX];
      v32 = v31;
      [v22 photosFaceRepresentationCenterY];
      if ([a1 getCropRectForPortraitImage:v46 size:v28 imgWidth:v29 imgHeight:v30 centerX:v32 centerY:v33])
      {
        v34 = 1.0;
      }

      else
      {
        v34 = 0.8;
      }

      v35 = v34 * v26;
      if (v35 >= v21)
      {
        v36 = v22;

        v19 = v36;
        v21 = v35;
      }

      if (v12)
      {
        v49[0] = @"localIdentifier";
        v37 = [v22 photosFaceRepresentationLocalIdentifier];
        v49[1] = @"qualityMeasure";
        v50[0] = v37;
        v38 = [MEMORY[0x1E696AD98] numberWithDouble:v35];
        v50[1] = v38;
        v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:2];

        [v12 addObject:v39];
      }
    }

    ++v20;
  }

  while (v18 != v20);
  v14 = v43;
  v9 = v44;
  v15 = v42;
  if (!v19)
  {
LABEL_16:
    v19 = [v16 lastObject];
  }

  v40 = v19;

  return v19;
}

uint64_t __126__PFPhotosFaceUtilities_selectRepresentativeFromFaces_qualityMeasureByLocalIdentifier_representativenessByCSN_candidateFaces___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithInteger:{objc_msgSend(a2, "photosFaceRepresentationClusterSequenceNumber")}];
  v9 = [v5 objectForKey:v8];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &unk_1F2AAB3E0;
  }

  v12 = v11;

  v13 = *(a1 + 32);
  v14 = MEMORY[0x1E696AD98];
  v15 = [v7 photosFaceRepresentationClusterSequenceNumber];

  v16 = [v14 numberWithInteger:v15];
  v17 = [v13 objectForKey:v16];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = &unk_1F2AAB3E0;
  }

  v20 = v19;

  v21 = [v12 compare:v20];
  return v21;
}

+ (int64_t)qualityMeasureForFace:(id)a3 countOfFacesOnAsset:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 photosFaceRepresentationSourceWidth];
  v7 = [v5 photosFaceRepresentationSourceHeight];
  [v5 photosFaceRepresentationSize];
  v9 = v8;
  [v5 photosFaceRepresentationBlurScore];
  v11 = v10;
  v12 = [v5 photosFaceRepresentationHasSmile];
  v13 = [v5 photosFaceRepresentationIsLeftEyeClosed];
  LODWORD(v14) = 0.5;
  if ((v13 & 1) == 0)
  {
    v15 = [v5 photosFaceRepresentationIsRightEyeClosed];
    LODWORD(v14) = 2.0;
    if (v15)
    {
      *&v14 = 0.5;
    }
  }

  if (v6 <= v7)
  {
    v16 = v7;
  }

  else
  {
    v16 = v6;
  }

  v17 = 0.25;
  if (v16 >= 0x400)
  {
    v17 = 1.0;
    if (v16 <= 0xC00)
    {
      v17 = (v16 * 0.00036621) + -0.125;
    }
  }

  if (a4)
  {
    v18 = v9;
    v19 = v18 > 0.5 || v18 < 0.1;
    v20 = (v18 * 0.5) + 0.75;
    v21 = 0.8;
    if (v19)
    {
      v20 = 0.8;
    }

    if (v12)
    {
      v21 = 1.0;
    }

    v22 = (1.0 - v11) * 5.0;
    v23 = *&v14 * (v21 * ((v20 * v22) * v17));
    v24 = 3;
    if (a4 < 3)
    {
      v24 = a4;
    }

    v25 = (v23 * PFFaceCountPenalties[v24 - 1]) * 100.0;
  }

  else
  {
    v25 = 0.0;
  }

  if (v25 < 1.0)
  {
    v25 = 1.0;
  }

  v26 = v25;

  return v26;
}

+ (id)bestMergeCandidateFaceFor:(id)a3 from:(id)a4 ignoreSourceAssetDimensions:(BOOL)a5
{
  v5 = [a1 sortedViableMergeCandidateFacesFor:a3 from:a4 ignoreSourceAssetDimensions:a5 matchScores:0];
  v6 = [v5 firstObject];

  return v6;
}

+ (id)sortedViableMergeCandidateTorsosFor:(id)a3 from:(id)a4 ignoreSourceAssetDimensions:(BOOL)a5 matchScores:(id *)a6
{
  point_12 = a5;
  v73 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v57 = v8;
    if ([v7 conformsToProtocol:&unk_1F2AC9C88])
    {
      v58 = [MEMORY[0x1E695DF70] array];
      v59 = [MEMORY[0x1E695DF70] array];
      context = objc_autoreleasePoolPush();
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v9 = v57;
      v10 = [v9 countByEnumeratingWithState:&v68 objects:v72 count:16];
      if (v10)
      {
        v11 = *v69;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v69 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v68 + 1) + 8 * i);
            if (v13 != v7 && ([*(*(&v68 + 1) + 8 * i) conformsToProtocol:{&unk_1F2AC9C88, context}] & 1) != 0)
            {
              v14 = v7;
              v15 = v13;
              v16 = v15;
              if (v15 && (!point_12 ? (v17 = [v14 photosFaceRepresentationSourceWidth], v18 = objc_msgSend(v14, "photosFaceRepresentationSourceHeight")) : (v17 = objc_msgSend(v15, "photosFaceRepresentationSourceWidth"), v18 = objc_msgSend(v16, "photosFaceRepresentationSourceHeight")), (v19 = v18, v20 = v17, v17 == objc_msgSend(v16, "photosFaceRepresentationSourceWidth")) && (v21 = v19, v19 == objc_msgSend(v16, "photosFaceRepresentationSourceHeight")) && (v20 >= v21 ? (v22 = v17) : (v22 = v19), objc_msgSend(v14, "photosFaceRepresentationBodyCenterX"), pointa = v23, objc_msgSend(v14, "photosFaceRepresentationBodyCenterY"), v63 = v24, objc_msgSend(v14, "photosFaceRepresentationBodyWidth"), v26 = v25, objc_msgSend(v14, "photosFaceRepresentationBodyHeight"), v28 = v27, objc_msgSend(v16, "photosFaceRepresentationBodyCenterX"), v30 = v29, objc_msgSend(v16, "photosFaceRepresentationBodyCenterY"), v32 = v31, objc_msgSend(v16, "photosFaceRepresentationBodyWidth"), v34 = v33, objc_msgSend(v16, "photosFaceRepresentationBodyHeight"), v35 = v63 * v21, v36 = v22 * v26, v37 = v22 * v28, v38 = v30 * v20, v39 = v32 * v21, v40 = v22 * v34, v42 = v22 * v41, v62 = v35, v64 = pointa * v20, v43 = pointa * v20 - v36 * 0.5, v44 = v35 - v37 * 0.5, point = v38, v81.origin.x = v38 - v40 * 0.5, v81.origin.y = v39 - v42 * 0.5, v77.origin.x = v43, v77.origin.y = v44, v77.size.width = v36, v77.size.height = v37, y = v81.origin.y, x = v81.origin.x, v81.size.width = v40, v81.size.height = v42, v78 = CGRectIntersection(v77, v81), v45 = v78.size.height * v78.size.width, v78.size.height * v78.size.width > 0.0)))
              {
                v79.origin.x = v43;
                v79.origin.y = v44;
                v79.size.width = v36;
                v79.size.height = v37;
                v75.x = point;
                v75.y = v39;
                v46 = v45 / (v36 * v37);
                v47 = v45 / (v40 * v42);
                if (CGRectContainsPoint(v79, v75) && (v80.origin.y = y, v80.origin.x = x, v80.size.width = v40, v80.size.height = v42, v76.y = v62, v76.x = v64, CGRectContainsPoint(v80, v76)))
                {
                  if (v46 >= v47)
                  {
                    v48 = v45 / (v36 * v37);
                  }

                  else
                  {
                    v48 = v45 / (v40 * v42);
                  }
                }

                else if (v46 >= v47)
                {
                  v48 = v45 / (v40 * v42);
                }

                else
                {
                  v48 = v45 / (v36 * v37);
                }

                if (v48 >= 0.39)
                {
                  v49 = [MEMORY[0x1E696AD98] numberWithDouble:v48];
                  v50 = [v59 indexOfObject:v49 inSortedRange:0 options:objc_msgSend(v59 usingComparator:{"count"), 1024, &__block_literal_global_171}];

                  v51 = [MEMORY[0x1E696AD98] numberWithDouble:v48];
                  [v59 insertObject:v51 atIndex:v50];

                  [v58 insertObject:v16 atIndex:v50];
                }
              }

              else
              {
              }
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v68 objects:v72 count:16];
        }

        while (v10);
      }

      objc_autoreleasePoolPop(context);
      v52 = v59;
      if (a6)
      {
        v53 = v59;
        v52 = v59;
        *a6 = v59;
      }
    }

    else
    {
      v58 = 0;
    }

    v8 = v57;
  }

  else
  {
    v58 = 0;
  }

  return v58;
}

+ (id)sortedViableMergeCandidateFacesFor:(id)a3 from:(id)a4 ignoreSourceAssetDimensions:(BOOL)a5 matchScores:(id *)a6
{
  point_12 = a5;
  v64 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v53 = v8;
    if ([v7 conformsToProtocol:&unk_1F2AC9C88])
    {
      v54 = [MEMORY[0x1E695DF70] array];
      v55 = [MEMORY[0x1E695DF70] array];
      context = objc_autoreleasePoolPush();
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v9 = v53;
      v10 = [v9 countByEnumeratingWithState:&v59 objects:v63 count:16];
      if (v10)
      {
        v11 = *v60;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v60 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v59 + 1) + 8 * i);
            if (v13 != v7 && ([*(*(&v59 + 1) + 8 * i) conformsToProtocol:{&unk_1F2AC9C88, context}] & 1) != 0)
            {
              v14 = v7;
              v15 = v13;
              v16 = v15;
              if (v15 && (!point_12 ? (v17 = [v14 photosFaceRepresentationSourceWidth], v18 = objc_msgSend(v14, "photosFaceRepresentationSourceHeight")) : (v17 = objc_msgSend(v15, "photosFaceRepresentationSourceWidth"), v18 = objc_msgSend(v16, "photosFaceRepresentationSourceHeight")), (v19 = v18, v20 = v17, v17 == objc_msgSend(v16, "photosFaceRepresentationSourceWidth")) && (v21 = v19, v19 == objc_msgSend(v16, "photosFaceRepresentationSourceHeight")) && (v20 >= v21 ? (v22 = v17) : (v22 = v19), objc_msgSend(v14, "photosFaceRepresentationCenterX"), v24 = v23, objc_msgSend(v14, "photosFaceRepresentationCenterY"), v26 = v25, objc_msgSend(v14, "photosFaceRepresentationSize"), v28 = v27, objc_msgSend(v16, "photosFaceRepresentationCenterX"), v30 = v29, objc_msgSend(v16, "photosFaceRepresentationCenterY"), v32 = v31, objc_msgSend(v16, "photosFaceRepresentationSize"), v33 = v24 * v20, v34 = v26 * v21, v35 = v22 * v28, v36 = v30 * v20, v37 = v32 * v21, v39 = v22 * v38, v56 = v34, point = v33, v40 = v33 - v35 * 0.5, v41 = v34 - v35 * 0.5, v72.origin.x = v36 - v39 * 0.5, v68.origin.x = v40, v68.origin.y = v41, v68.size.width = v35, v68.size.height = v35, v72.origin.y = v37 - v39 * 0.5, v72.size.width = v39, v72.size.height = v39, v69 = CGRectIntersection(v68, v72), v42 = v69.size.height * v69.size.width, v69.size.height * v69.size.width > 0.0)))
              {
                v70.origin.x = v40;
                v70.origin.y = v41;
                v70.size.width = v35;
                v70.size.height = v35;
                v66.x = v36;
                v66.y = v37;
                v43 = v42 / (v35 * v35);
                v44 = v42 / (v39 * v39);
                if (CGRectContainsPoint(v70, v66) && (v71.origin.x = v36 - v39 * 0.5, v67.y = v56, v71.origin.y = v37 - v39 * 0.5, v71.size.width = v39, v71.size.height = v39, v67.x = point, CGRectContainsPoint(v71, v67)))
                {
                  if (v43 < v44)
                  {
                    v43 = v42 / (v39 * v39);
                  }
                }

                else if (v43 >= v44)
                {
                  v43 = v42 / (v39 * v39);
                }

                if (v43 >= 0.39)
                {
                  v45 = [MEMORY[0x1E696AD98] numberWithDouble:v43];
                  v46 = [v55 indexOfObject:v45 inSortedRange:0 options:objc_msgSend(v55 usingComparator:{"count"), 1024, &__block_literal_global_4304}];

                  v47 = [MEMORY[0x1E696AD98] numberWithDouble:v43];
                  [v55 insertObject:v47 atIndex:v46];

                  [v54 insertObject:v16 atIndex:v46];
                }
              }

              else
              {
              }
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v59 objects:v63 count:16];
        }

        while (v10);
      }

      objc_autoreleasePoolPop(context);
      v48 = v55;
      if (a6)
      {
        v49 = v55;
        v48 = v55;
        *a6 = v55;
      }
    }

    else
    {
      v54 = 0;
    }

    v8 = v53;
  }

  else
  {
    v54 = 0;
  }

  return v54;
}

@end