@interface TranscriptionDecoder
+ (id)decodeAttributedStringRuns:(id)runs error:(id *)error;
+ (id)decodeDictionary:(id)dictionary error:(id *)error;
+ (id)decodeString:(id)string error:(id *)error;
+ (id)decodeTransciptionData:(id)data error:(id *)error;
@end

@implementation TranscriptionDecoder

+ (id)decodeTransciptionData:(id)data error:(id *)error
{
  v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:data options:0 error:error];
  if (v6)
  {
    v7 = [self decodeDictionary:v6 error:error];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 objectForKeyedSubscript:@"attributedString"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v11 = [self decodeAttributedStringRuns:v9 error:error];
        if (v11)
        {
          v12 = objc_alloc_init(MEMORY[0x277CCAB68]);
          if ([v11 count] < 2)
          {
LABEL_12:
            v10 = v12;
          }

          else
          {
            v13 = 0;
            while (1)
            {
              v14 = [v11 objectAtIndexedSubscript:v13];
              v15 = [self decodeString:v14 error:error];

              if (!v15)
              {
                break;
              }

              [v12 appendString:v15];

              v16 = [v11 count];
              v17 = v13 + 3;
              v13 += 2;
              if (v16 <= v17)
              {
                goto LABEL_12;
              }
            }

            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)decodeDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = dictionaryCopy;
  }

  else
  {
    v6 = RCDecodeFail(1, error);
  }

  v7 = v6;

  return v7;
}

+ (id)decodeAttributedStringRuns:(id)runs error:(id *)error
{
  runsCopy = runs;
  if (!runsCopy)
  {
    v9 = 2;
LABEL_8:
    v6 = RCDecodeFail(v9, error);
    goto LABEL_9;
  }

  v6 = runsCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKeyedSubscript:@"runs"];

    v6 = v7;
    if (!v7)
    {
      v9 = 5;
      goto LABEL_8;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = RCDecodeFail(3, error);

    v6 = v8;
  }

LABEL_9:

  return v6;
}

+ (id)decodeString:(id)string error:(id *)error
{
  stringCopy = string;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = stringCopy;
  }

  else
  {
    v6 = RCDecodeFail(4, error);
  }

  v7 = v6;

  return v7;
}

@end