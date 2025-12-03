@interface NSString(RTExtensions)
- (id)base64DecodedString;
- (id)base64EncodedString;
- (id)hmacSha1WithKey:()RTExtensions;
- (uint64_t)levenshteinDistanceFromString:()RTExtensions withMaxCutOffDistance:;
- (uint64_t)stringByRemovingAllWhitespace;
- (uint64_t)stringByRemovingAllWhitespaceAndPunctuation;
@end

@implementation NSString(RTExtensions)

- (uint64_t)stringByRemovingAllWhitespaceAndPunctuation
{
  v2 = [self length];

  return [self stringByReplacingOccurrencesOfString:@"[:space:]|[:punct:]" withString:&stru_284528390 options:1024 range:{0, v2}];
}

- (uint64_t)stringByRemovingAllWhitespace
{
  v2 = [self length];

  return [self stringByReplacingOccurrencesOfString:@"[:space:]" withString:&stru_284528390 options:1024 range:{0, v2}];
}

- (uint64_t)levenshteinDistanceFromString:()RTExtensions withMaxCutOffDistance:
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  selfCopy = self;
  v8 = [selfCopy length];
  if (v8 <= [v6 length] + a4 && (v9 = objc_msgSend(v6, "length"), v9 <= objc_msgSend(selfCopy, "length") + a4))
  {
    v12 = [selfCopy length];
    v10 = [v6 length];
    if (v12)
    {
      if (v10)
      {
        if ([selfCopy isEqualToString:v6])
        {
          v10 = 0;
        }

        else
        {
          v41[1] = v41;
          v13 = (v41 - ((8 * [selfCopy length] + 23) & 0xFFFFFFFFFFFFFFF0));
          v46 = v41 - ((8 * [selfCopy length] + 23) & 0xFFFFFFFFFFFFFFF0);
          v14 = [selfCopy length];
          v15 = v14 + 1;
          if (v14 != -1)
          {
            v16 = v14;
            bzero(v46, 8 * v14 + 8);
            v17 = vdupq_n_s64(v16);
            v18 = (v16 & 0xFFFFFFFFFFFFFFFELL) + 2;
            v19 = xmmword_230B01630;
            v20 = (v13 + 1);
            v21 = 1;
            v22 = vdupq_n_s64(2uLL);
            do
            {
              v23 = vmovn_s64(vcgeq_u64(v17, v19));
              if (v23.i8[0])
              {
                *(v20 - 1) = v21 - 1;
              }

              if (v23.i8[4])
              {
                *v20 = v21;
              }

              v19 = vaddq_s64(v19, v22);
              v20 += 2;
              v21 += 2;
              v18 -= 2;
            }

            while (v18);
          }

          if (([v6 length] - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            v40 = v13;
LABEL_43:
            if (v40[[selfCopy length]] <= a4)
            {
              v10 = v40[[selfCopy length]];
              goto LABEL_4;
            }
          }

          else
          {
            v24 = a4 + 1;
            v25 = 1;
            v42 = a4;
            v43 = a4 + 1;
            while (1)
            {
              v26 = v46;
              v46 = v13;
              v27 = v25 - a4;
              if (v25 <= a4)
              {
                *v26 = v25;
                v27 = 1;
              }

              else
              {
                v26[v27 - 1] = v24;
              }

              v44 = v25;
              v28 = v25 + a4;
              v29 = [selfCopy length];
              v45 = v26;
              if (v28 >= v29)
              {
                v28 = [selfCopy length];
              }

              else
              {
                v26[v28 + 1] = v24;
              }

              if (v27 < v15)
              {
                v24 = v43;
                if (v27 <= v28)
                {
                  v24 = v43;
                  v30 = v44 - 1;
                  v31 = &v46[8 * v27];
                  v32 = &v45[v27];
                  do
                  {
                    v33 = [selfCopy characterAtIndex:v27 - 1];
                    v34 = [v6 characterAtIndex:v30];
                    v35 = *(v31 - 1);
                    if (v33 != v34)
                    {
                      ++v35;
                    }

                    v36 = *v31 + 1;
                    v37 = *(v32 - 1);
                    if (v36 >= v37 + 1)
                    {
                      v36 = v37 + 1;
                    }

                    if (v35 >= v36)
                    {
                      v35 = v36;
                    }

                    *v32 = v35;
                    if (v24 >= v35)
                    {
                      v24 = v35;
                    }

                    if (v27 + 1 >= v15)
                    {
                      break;
                    }

                    v31 += 8;
                    ++v32;
                  }

                  while (v27++ < v28);
                }
              }

              a4 = v42;
              if (v24 > v42)
              {
                break;
              }

              v25 = v44 + 1;
              v39 = [v6 length] + 1;
              v40 = v45;
              v13 = v45;
              v24 = v43;
              if (v25 >= v39)
              {
                goto LABEL_43;
              }
            }
          }

          v10 = -1;
        }
      }

      else
      {
        v10 = [selfCopy length];
      }
    }
  }

  else
  {
    v10 = -1;
  }

LABEL_4:

  return v10;
}

- (id)base64EncodedString
{
  v1 = [self dataUsingEncoding:4];
  v2 = [v1 base64EncodedStringWithOptions:0];

  return v2;
}

- (id)base64DecodedString
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:self options:0];
  v4 = [v2 initWithData:v3 encoding:4];

  return v4;
}

- (id)hmacSha1WithKey:()RTExtensions
{
  if (a3)
  {
    v4 = a3;
    v5 = [self dataUsingEncoding:4];
    v6 = [v5 hmacSha1WithKey:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end