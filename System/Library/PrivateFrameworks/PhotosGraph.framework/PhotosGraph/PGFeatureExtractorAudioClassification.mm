@interface PGFeatureExtractorAudioClassification
- (id)featureNames;
- (id)floatVectorWithEntity:(id)a3 error:(id *)a4;
@end

@implementation PGFeatureExtractorAudioClassification

- (id)floatVectorWithEntity:(id)a3 error:(id *)a4
{
  v5 = [a3 mediaAnalysisProperties];
  v6 = [v5 audioClassification];
  v7 = [MEMORY[0x277D22C68] zerosOfCount:{-[PGFeatureExtractorAudioClassification featureLength](self, "featureLength")}];
  v9 = v7;
  if (!v6)
  {
    v10 = 0;
LABEL_16:
    LODWORD(v8) = 1.0;
    [v9 setFloat:v10 atIndex:v8];
    goto LABEL_17;
  }

  if (v6)
  {
    LODWORD(v8) = 1.0;
    [v7 setFloat:1 atIndex:v8];
    if ((v6 & 2) == 0)
    {
LABEL_4:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_4;
  }

  LODWORD(v8) = 1.0;
  [v9 setFloat:2 atIndex:v8];
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  LODWORD(v8) = 1.0;
  [v9 setFloat:3 atIndex:v8];
  if ((v6 & 8) == 0)
  {
LABEL_6:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    LODWORD(v8) = 1.0;
    [v9 setFloat:5 atIndex:v8];
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

LABEL_13:
  LODWORD(v8) = 1.0;
  [v9 setFloat:4 atIndex:v8];
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v6 & 0x20) != 0)
  {
LABEL_15:
    v10 = 6;
    goto LABEL_16;
  }

LABEL_17:

  return v9;
}

- (id)featureNames
{
  v5[7] = *MEMORY[0x277D85DE8];
  v5[0] = @"AudioNone";
  v5[1] = @"Applause";
  v5[2] = @"Babble";
  v5[3] = @"Cheering";
  v5[4] = @"Laughter";
  v5[5] = @"Speech";
  v5[6] = @"Music";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:7];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end