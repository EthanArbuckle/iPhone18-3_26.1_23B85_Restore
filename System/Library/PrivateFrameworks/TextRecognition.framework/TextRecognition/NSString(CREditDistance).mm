@interface NSString(CREditDistance)
+ (uint64_t)editDistance:()CREditDistance string:threshold:;
- (uint64_t)editDistanceFromStringIgnoringSpaces:()CREditDistance threshold:;
@end

@implementation NSString(CREditDistance)

- (uint64_t)editDistanceFromStringIgnoringSpaces:()CREditDistance threshold:
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v8 = [a1 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F2BB4348];
  v9 = [v7 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F2BB4348];

  v10 = [v6 editDistance:v8 string:v9 threshold:a4];
  return v10;
}

+ (uint64_t)editDistance:()CREditDistance string:threshold:
{
  v44 = a5;
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v45 = v6;
  v8 = [v6 length];
  v9 = [v7 length];
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      if ([v45 isEqualToString:v7])
      {
        v10 = 0;
      }

      else
      {
        v11 = [v7 length];
        v43 = &v43;
        *&v13 = MEMORY[0x1EEE9AC00](v11, v12).n128_u64[0];
        v15 = &v43 - v14;
        v16 = [v7 length];
        *&v18 = MEMORY[0x1EEE9AC00](v16, v17).n128_u64[0];
        v20 = (&v43 - v19);
        bzero(v15, (8 * [v7 length]) | 1);
        bzero(v20, (8 * [v7 length]) | 1);
        if ([v7 length] != -1)
        {
          v21 = 0;
          do
          {
            *&v15[8 * v21] = v21;
            ++v21;
          }

          while (v21 < [v7 length] + 1);
        }

        v22 = v45;
        v23 = [v45 length];
        *&v25 = MEMORY[0x1EEE9AC00](v23, v24).n128_u64[0];
        v27 = &v43 - v26;
        v28 = [v7 length];
        *&v30 = MEMORY[0x1EEE9AC00](v28, v29).n128_u64[0];
        v32 = &v43 - v31;
        [v22 getCharacters:v27 range:{0, objc_msgSend(v22, "length", v30)}];
        [v7 getCharacters:v32 range:{0, objc_msgSend(v7, "length")}];
        v33 = 0;
        while (1)
        {
          v34 = v20;
          if (v33 >= [v45 length])
          {
            break;
          }

          *v20 = v33 + 1;
          if ([v7 length])
          {
            v35 = 0;
            v36 = v15 + 8;
            v37 = 0x7FFFFFFFLL;
            do
            {
              v38 = &v20[v35];
              v39 = *v38 + 1;
              v40 = *&v32[2 * v35];
              if (v39 >= *v36 + 1)
              {
                v39 = *v36 + 1;
              }

              ++v35;
              if (*&v27[2 * v33] == v40)
              {
                v41 = *(v36 - 1);
              }

              else
              {
                v41 = *(v36 - 1) + 1;
              }

              if (v39 < v41)
              {
                v41 = v39;
              }

              if (v37 >= v41)
              {
                v37 = v41;
              }

              v38[1] = v41;
              ++v36;
            }

            while (v35 < [v7 length]);
          }

          else
          {
            v37 = 0x7FFFFFFFLL;
          }

          ++v33;
          v20 = v15;
          v15 = v34;
          if (v37 > v44)
          {
            v10 = 0x7FFFFFFFLL;
            goto LABEL_28;
          }
        }

        v10 = *&v15[8 * [v7 length]];
      }
    }

    else
    {
      v10 = [v45 length];
    }
  }

LABEL_28:

  return v10;
}

@end