@interface POXSStringDefinition
+ (void)initialize;
- (id)_stringSuitableForHTML:(id)l;
@end

@implementation POXSStringDefinition

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = objc_opt_new();
    v3 = sCharactersToConvert;
    sCharactersToConvert = v2;

    [sCharactersToConvert addCharactersInRange:{9, 1}];
    [sCharactersToConvert addCharactersInRange:{10, 1}];
    [sCharactersToConvert addCharactersInRange:{13, 1}];
    [sCharactersToConvert addCharactersInRange:{32, 55264}];
    [sCharactersToConvert addCharactersInRange:{57344, 8190}];
    [sCharactersToConvert addCharactersInRange:{0x10000, 0x100000}];
    [sCharactersToConvert invert];
    v4 = sCharactersToConvert;

    [v4 addCharactersInString:@"&<>"];
  }
}

- (id)_stringSuitableForHTML:(id)l
{
  lCopy = l;
  v4 = [lCopy length];
  v5 = [lCopy rangeOfCharacterFromSet:sCharactersToConvert options:0 range:{0, v4}];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    string = lCopy;
    goto LABEL_17;
  }

  v8 = v5;
  v9 = v6;
  v10 = malloc_type_malloc(2 * v4 + 2, 0x1000040BDFB0063uLL);
  [lCopy getCharacters:v10];
  string = [MEMORY[0x277CCAB68] string];
  if (v4)
  {
    v11 = 0;
    while (1)
    {
      CFStringAppendCharacters(string, &v10[v11], v8 - v11);
      v12 = [lCopy characterAtIndex:v8];
      if (v12 == 38)
      {
        v13 = @"&amp;";
        goto LABEL_11;
      }

      if (v12 == 62)
      {
        break;
      }

      if (v12 == 60)
      {
        v13 = @"&lt;";
LABEL_11:
        [(__CFString *)string appendString:v13];
      }

      v11 = v8 + v9;
      v14 = v4 - (v8 + v9);
      v15 = [lCopy rangeOfCharacterFromSet:sCharactersToConvert options:0 range:{v8 + v9, v14}];
      if (v4 == v8 + v9)
      {
        goto LABEL_15;
      }

      v8 = v15;
      v9 = v16;
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        CFStringAppendCharacters(string, &v10[v11], v14);
        goto LABEL_15;
      }
    }

    v13 = @"&gt;";
    goto LABEL_11;
  }

LABEL_15:
  if (v10)
  {
    free(v10);
  }

LABEL_17:

  return string;
}

@end