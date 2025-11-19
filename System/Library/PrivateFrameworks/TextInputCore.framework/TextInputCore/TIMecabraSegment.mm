@interface TIMecabraSegment
+ (void)splitSegments:(id)a3 at:(int)a4 forPrefix:(id *)a5 forSuffix:(id *)a6;
@end

@implementation TIMecabraSegment

+ (void)splitSegments:(id)a3 at:(int)a4 forPrefix:(id *)a5 forSuffix:(id *)a6
{
  v20 = a3;
  v9 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v10 = [v20 count];
  if (v10 < 1)
  {
    v13 = 0;
    if (a5)
    {
LABEL_10:
      v18 = v13;
      *a5 = v13;
    }
  }

  else
  {
    v11 = v10;
    v12 = 0;
    v13 = 0;
    v14 = v10 - a4;
    do
    {
      if (v12 >= v14)
      {
        v15 = [v20 objectAtIndexedSubscript:v12];
        v16 = [v15 reading];
        v17 = v9;
      }

      else
      {
        if (!v13)
        {
          v13 = objc_alloc_init(MEMORY[0x277CCAB68]);
        }

        v15 = [v20 objectAtIndexedSubscript:v12];
        v16 = [v15 surface];
        v17 = v13;
      }

      [v17 appendString:v16];

      ++v12;
    }

    while (v11 != v12);
    if (a5)
    {
      goto LABEL_10;
    }
  }

  if (a6)
  {
    v19 = v9;
    *a6 = v9;
  }
}

@end