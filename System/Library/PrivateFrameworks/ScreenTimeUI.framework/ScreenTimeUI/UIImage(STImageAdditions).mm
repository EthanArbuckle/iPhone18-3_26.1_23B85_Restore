@interface UIImage(STImageAdditions)
+ (id)blankIcon;
+ (id)blankSpaceImageWithSize:()STImageAdditions;
+ (id)iconWithAppBundleID:()STImageAdditions;
- (id)iconFromPrecomposedImage:()STImageAdditions platform:;
@end

@implementation UIImage(STImageAdditions)

- (id)iconFromPrecomposedImage:()STImageAdditions platform:
{
  v5 = 0;
  v23[1] = *MEMORY[0x277D85DE8];
  if (a4 <= 1)
  {
    if (!a4)
    {
      goto LABEL_9;
    }

    if (a4 != 1)
    {
      goto LABEL_11;
    }

LABEL_8:
    v6 = [a1 imageByPreparingThumbnailOfSize:{29.0, 29.0}];
LABEL_10:
    v5 = v6;
    goto LABEL_11;
  }

  switch(a4)
  {
    case 4:
      v8 = [a1 CGImage];
      if (v8)
      {
        v9 = v8;
        v10 = [a1 traitCollection];
        [v10 displayScale];
        v12 = v11;

        v13 = [objc_alloc(MEMORY[0x277D1B160]) initWithCGImage:v9 scale:v12];
        v14 = objc_alloc(MEMORY[0x277D1B1A8]);
        v23[0] = v13;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
        v16 = [v14 initWithImages:v15];

        v17 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:29.0 scale:{29.0, v12}];
        [v17 setShape:2];
        v22 = v17;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
        [v16 prepareImagesForImageDescriptors:v18];

        v19 = [v16 CGImageForDescriptor:v17];
        v20 = [MEMORY[0x277D755B8] imageWithCGImage:v19];
      }

      else
      {
        v20 = 0;
      }

      if (v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = a1;
      }

      v5 = [v21 imageByPreparingThumbnailOfSize:{29.0, 29.0}];

      break;
    case 3:
      goto LABEL_8;
    case 2:
LABEL_9:
      v6 = [a1 _applicationIconImageForFormat:0 precomposed:a3];
      goto LABEL_10;
  }

LABEL_11:

  return v5;
}

+ (id)iconWithAppBundleID:()STImageAdditions
{
  v4 = MEMORY[0x277D759A0];
  v5 = a3;
  v6 = [v4 mainScreen];
  [v6 scale];
  v7 = [a1 _applicationIconImageForBundleIdentifier:v5 format:0 scale:?];

  return v7;
}

+ (id)blankIcon
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D1B1A8] genericApplicationIcon];
  v1 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:29.0 scale:{29.0, 2.0}];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v0 prepareImagesForImageDescriptors:v2];

  v3 = [v0 CGImageForDescriptor:v1];
  v4 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:v3 scale:0 orientation:2.0];

  return v4;
}

+ (id)blankSpaceImageWithSize:()STImageAdditions
{
  v2 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{a1, a2}];
  v3 = [v2 imageWithActions:&__block_literal_global_2];

  return v3;
}

@end