@interface TTSAsset(TranslationDaemonAdditions)
- (uint64_t)weight;
@end

@implementation TTSAsset(TranslationDaemonAdditions)

- (uint64_t)weight
{
  technology = [self technology];
  string = [technology string];

  v4 = [string characterAtIndex:0];
  switch(v4)
  {
    case 'v':
      v5 = 1;
      break;
    case 'n':
      name = [self name];
      primaryLanguage = [self primaryLanguage];
      v8 = [name hasPrefix:primaryLanguage];

      v9 = [string hasPrefix:@"neural"];
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