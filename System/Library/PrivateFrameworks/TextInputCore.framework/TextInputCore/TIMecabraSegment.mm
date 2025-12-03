@interface TIMecabraSegment
+ (void)splitSegments:(id)segments at:(int)at forPrefix:(id *)prefix forSuffix:(id *)suffix;
@end

@implementation TIMecabraSegment

+ (void)splitSegments:(id)segments at:(int)at forPrefix:(id *)prefix forSuffix:(id *)suffix
{
  segmentsCopy = segments;
  v9 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v10 = [segmentsCopy count];
  if (v10 < 1)
  {
    v13 = 0;
    if (prefix)
    {
LABEL_10:
      v18 = v13;
      *prefix = v13;
    }
  }

  else
  {
    v11 = v10;
    v12 = 0;
    v13 = 0;
    v14 = v10 - at;
    do
    {
      if (v12 >= v14)
      {
        v15 = [segmentsCopy objectAtIndexedSubscript:v12];
        reading = [v15 reading];
        v17 = v9;
      }

      else
      {
        if (!v13)
        {
          v13 = objc_alloc_init(MEMORY[0x277CCAB68]);
        }

        v15 = [segmentsCopy objectAtIndexedSubscript:v12];
        reading = [v15 surface];
        v17 = v13;
      }

      [v17 appendString:reading];

      ++v12;
    }

    while (v11 != v12);
    if (prefix)
    {
      goto LABEL_10;
    }
  }

  if (suffix)
  {
    v19 = v9;
    *suffix = v9;
  }
}

@end