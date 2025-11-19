@interface PGFeatureExtractorAssetMediaSubtype
- (id)featureNames;
- (id)floatVectorWithEntity:(id)a3 error:(id *)a4;
@end

@implementation PGFeatureExtractorAssetMediaSubtype

- (id)floatVectorWithEntity:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277D22C68];
  v6 = a3;
  v7 = [v5 zerosOfCount:{-[PGFeatureExtractorAssetMediaSubtype featureLength](self, "featureLength")}];
  v8 = [v6 mediaSubtypes];

  if (!v8)
  {
    v10 = 0;
LABEL_20:
    LODWORD(v9) = 1.0;
    [v7 setFloat:v10 atIndex:v9];
    goto LABEL_21;
  }

  if (v8)
  {
    LODWORD(v9) = 1.0;
    [v7 setFloat:1 atIndex:v9];
    if ((v8 & 2) == 0)
    {
LABEL_4:
      if ((v8 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_4;
  }

  LODWORD(v9) = 1.0;
  [v7 setFloat:2 atIndex:v9];
  if ((v8 & 4) == 0)
  {
LABEL_5:
    if ((v8 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  LODWORD(v9) = 1.0;
  [v7 setFloat:3 atIndex:v9];
  if ((v8 & 8) == 0)
  {
LABEL_6:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  LODWORD(v9) = 1.0;
  [v7 setFloat:4 atIndex:v9];
  if ((v8 & 0x10) == 0)
  {
LABEL_7:
    if ((v8 & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  LODWORD(v9) = 1.0;
  [v7 setFloat:5 atIndex:v9];
  if ((v8 & 0x10000) == 0)
  {
LABEL_8:
    if ((v8 & 0x20000) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    LODWORD(v9) = 1.0;
    [v7 setFloat:8 atIndex:v9];
    if ((v8 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

LABEL_17:
  LODWORD(v9) = 1.0;
  [v7 setFloat:7 atIndex:v9];
  if ((v8 & 0x20000) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v8 & 0x40000) != 0)
  {
LABEL_19:
    v10 = 9;
    goto LABEL_20;
  }

LABEL_21:

  return v7;
}

- (id)featureNames
{
  v5[10] = *MEMORY[0x277D85DE8];
  v5[0] = @"MediaSubtypeNone";
  v5[1] = @"PhotoPanorama";
  v5[2] = @"PhotoHDR";
  v5[3] = @"PhotoScreenshot";
  v5[4] = @"PhotoLive";
  v5[5] = @"PhotoDepthEffect";
  v5[6] = @"SpatialOverCapture";
  v5[7] = @"VideoStreamed";
  v5[8] = @"VideoHighFrameRate";
  v5[9] = @"VideoTimelapse";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:10];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end