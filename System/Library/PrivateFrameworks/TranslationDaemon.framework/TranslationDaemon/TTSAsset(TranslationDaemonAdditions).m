@interface TTSAsset(TranslationDaemonAdditions)
- (uint64_t)weight;
@end

@implementation TTSAsset(TranslationDaemonAdditions)

- (uint64_t)weight
{
  v2 = [a1 technology];
  v3 = [v2 string];

  v4 = [v3 characterAtIndex:0];
  switch(v4)
  {
    case 'v':
      v5 = 1;
      break;
    case 'n':
      v6 = [a1 name];
      v7 = [a1 primaryLanguage];
      v8 = [v6 hasPrefix:v7];

      v9 = [v3 hasPrefix:@"neural"];
      v10 = 3;
      if (!v8)
      {
        v10 = 4;
      }

      v11 = 5;
      if (!v8)
      {
        v11 = 6;
      }

      if (v9)
      {
        v5 = v10;
      }

      else
      {
        v5 = v11;
      }

      break;
    case 'g':
      v5 = 2;
      break;
    default:
      v5 = 0;
      break;
  }

  return v5;
}

@end