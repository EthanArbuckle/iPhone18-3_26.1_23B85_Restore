@interface NSDictionary(PVStabilizationConfig)
- (id)arrayOfTimedStabilizationConfigsWithCleanAperture:()PVStabilizationConfig fillMode:;
- (id)timedStabilizationConfigWithCleanAperture:()PVStabilizationConfig cropRect:fillMode:;
@end

@implementation NSDictionary(PVStabilizationConfig)

- (id)timedStabilizationConfigWithCleanAperture:()PVStabilizationConfig cropRect:fillMode:
{
  selfCopy = self;
  v21 = [selfCopy objectForKeyedSubscript:@"rawTime"];

  if (v21 && ([selfCopy objectForKeyedSubscript:@"homography"], v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
  {
    memset(&v35, 0, sizeof(v35));
    v23 = [selfCopy objectForKeyedSubscript:@"rawTime"];
    CMTimeMakeFromDictionary(&v35, v23);

    v24 = [selfCopy objectForKeyedSubscript:@"homography"];
    [v24 SIMDFloat3x3];
    v32 = v26;
    v33 = v25;
    v31 = v27;

    v28 = [PVStabilizationConfig configWithHomography:a11 cleanAperture:v33 cropRect:v32 fillMode:v31, a2, a3, a4, a5, *&a6, *&a7, *&a8, *&a9];
    v34 = v35;
    v29 = [PVTimedObject timedObjectWithTime:&v34 object:v28];
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (id)arrayOfTimedStabilizationConfigsWithCleanAperture:()PVStabilizationConfig fillMode:
{
  v12 = *(MEMORY[0x277CBF3A0] + 16);
  rect.origin = *MEMORY[0x277CBF3A0];
  rect.size = v12;
  selfCopy = self;
  v14 = [selfCopy objectForKeyedSubscript:@"stabCropRect"];
  CGRectMakeWithDictionaryRepresentation(v14, &rect);

  v15 = [selfCopy objectForKeyedSubscript:@"frameInstructions"];

  if ([v15 count])
  {
    v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v15, "count")}];
    v20 = MEMORY[0x277D85DD0];
    v21 = *"";
    v22 = __98__NSDictionary_PVStabilizationConfig__arrayOfTimedStabilizationConfigsWithCleanAperture_fillMode___block_invoke;
    v23 = &unk_279AA5AE0;
    v25 = a2;
    v26 = a3;
    v27 = a4;
    v28 = a5;
    v29 = rect;
    v30 = a7;
    v17 = v16;
    v24 = v17;
    [v15 enumerateObjectsUsingBlock:&v20];
    if ([v17 count])
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end