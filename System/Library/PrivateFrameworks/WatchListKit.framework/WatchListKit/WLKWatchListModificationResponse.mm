@interface WLKWatchListModificationResponse
- (WLKWatchListModificationResponse)init;
- (WLKWatchListModificationResponse)initWithDictionary:(id)dictionary;
@end

@implementation WLKWatchListModificationResponse

- (WLKWatchListModificationResponse)init
{
  [MEMORY[0x277CBEAD8] raise:@"WLKWatchListModificationResponse" format:@"-init is not supported"];

  return 0;
}

- (WLKWatchListModificationResponse)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = WLKWatchListModificationResponse;
  v5 = [(WLKWatchListModificationResponse *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy wlk_dictionaryForKey:@"data"];
    if ([v6 wlk_BOOLForKey:@"alreadyOnList" defaultValue:0])
    {
      v7 = 1;
    }

    else
    {
      if (![v6 wlk_BOOLForKey:@"notOnList" defaultValue:0])
      {
LABEL_7:

        goto LABEL_8;
      }

      v7 = 2;
    }

    v5->_responseType = v7;
    goto LABEL_7;
  }

LABEL_8:

  return v5;
}

@end