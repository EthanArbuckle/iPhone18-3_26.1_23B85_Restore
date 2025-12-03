@interface WLKChannelResponse
- (WLKChannelResponse)initWithDictionary:(id)dictionary expirationDate:(id)date environmentHash:(unint64_t)hash;
@end

@implementation WLKChannelResponse

- (WLKChannelResponse)initWithDictionary:(id)dictionary expirationDate:(id)date environmentHash:(unint64_t)hash
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = WLKChannelResponse;
  v7 = [(WLKChannelResponse *)&v13 init];
  if (v7)
  {
    v8 = [dictionaryCopy wlk_dictionaryForKey:@"channel"];
    allValues = [v8 allValues];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __72__WLKChannelResponse_initWithDictionary_expirationDate_environmentHash___block_invoke;
    v11[3] = &unk_279E5FB20;
    v12 = v7;
    [allValues enumerateObjectsUsingBlock:v11];
  }

  return v7;
}

void __72__WLKChannelResponse_initWithDictionary_expirationDate_environmentHash___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v7 wlk_stringForKey:@"title"];
  v9 = [v8 copy];
  [v6 setChannelTitle:v9];

  v10 = *(a1 + 32);
  v11 = [v7 wlk_stringForKey:@"url"];

  v12 = [v11 copy];
  [v10 setChannelLink:v12];

  *a4 = 1;
}

@end