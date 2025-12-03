@interface CRGreedyTrackingAssociator
+ (id)performAssociationOnCandidates:(id)candidates useRegionsAtOCRDispatchTime:(BOOL)time existingRegions:(id)regions fineGrainedResults:(id)results newRegionHandler:(id)handler matchedRegionHandler:(id)regionHandler;
@end

@implementation CRGreedyTrackingAssociator

+ (id)performAssociationOnCandidates:(id)candidates useRegionsAtOCRDispatchTime:(BOOL)time existingRegions:(id)regions fineGrainedResults:(id)results newRegionHandler:(id)handler matchedRegionHandler:(id)regionHandler
{
  timeCopy = time;
  candidatesCopy = candidates;
  regionsCopy = regions;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  array4 = [MEMORY[0x1E695DF70] array];
  if ([candidatesCopy count])
  {
    v12 = 0;
    do
    {
      if (![regionsCopy count])
      {
        goto LABEL_14;
      }

      v13 = 0;
      v14 = 0;
      do
      {
        v15 = [regionsCopy objectAtIndexedSubscript:v13];
        v16 = v15;
        if (timeCopy)
        {
          [v15 boundingQuadAtOCRDispatch];
        }

        else
        {
          [v15 boundingQuad];
        }
        v17 = ;

        v18 = [candidatesCopy objectAtIndexedSubscript:v12];
        boundingQuad = [v18 boundingQuad];
        v20 = [v17 overlapsNormalizedQuad:boundingQuad];

        if (v20)
        {
          v21 = [regionsCopy objectAtIndexedSubscript:v13];
          trackingID = [v21 trackingID];
          v23 = [array2 containsObject:trackingID];

          if ((v23 & 1) == 0)
          {
            v24 = [regionsCopy objectAtIndexedSubscript:v13];
            trackingID2 = [v24 trackingID];
            [array2 addObject:trackingID2];

            v26 = [regionsCopy objectAtIndexedSubscript:v13];
            [array addObject:v26];
          }

          v14 = 1;
        }

        ++v13;
      }

      while ([regionsCopy count] > v13);
      if ((v14 & 1) == 0)
      {
LABEL_14:
        v27 = [candidatesCopy objectAtIndexedSubscript:v12];
        [array addObject:v27];

        v28 = [candidatesCopy objectAtIndexedSubscript:v12];
        trackingID3 = [v28 trackingID];
        [array4 addObject:trackingID3];
      }

      ++v12;
    }

    while ([candidatesCopy count] > v12);
  }

  if ([regionsCopy count])
  {
    v30 = 0;
    do
    {
      v31 = [regionsCopy objectAtIndexedSubscript:v30];
      trackingID4 = [v31 trackingID];
      v33 = [array2 containsObject:trackingID4];

      if ((v33 & 1) == 0)
      {
        v34 = [regionsCopy objectAtIndexedSubscript:v30];
        trackingID5 = [v34 trackingID];
        [array3 addObject:trackingID5];
      }

      ++v30;
    }

    while ([regionsCopy count] > v30);
  }

  v36 = [[CRTrackingAssociatorResults alloc] initWithTotalError:array tracked:array2 updatedRegionIDs:array3 removedRegionIDs:array4 addedRegionIDs:0.0];

  return v36;
}

@end