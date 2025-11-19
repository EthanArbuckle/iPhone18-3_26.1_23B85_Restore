@interface OKAudioItem
+ (id)supportedSettings;
- (OKAudioItem)initWithSettings:(id)a3;
- (void)dealloc;
@end

@implementation OKAudioItem

- (OKAudioItem)initWithSettings:(id)a3
{
  v4 = [(OKAudioItem *)self init];
  if (v4)
  {
    v5 = [a3 objectForKey:@"url"];
    if (v5)
    {
      v4->_url = [v5 copy];
    }
  }

  return v4;
}

- (void)dealloc
{
  url = self->_url;
  if (url)
  {

    self->_url = 0;
  }

  v4.receiver = self;
  v4.super_class = OKAudioItem;
  [(OKAudioItem *)&v4 dealloc];
}

+ (id)supportedSettings
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v6 = @"url";
  v4[0] = @"type";
  v4[1] = @"default";
  v5[0] = &unk_287AF1DA8;
  v5[1] = [MEMORY[0x277CBEB68] null];
  v7[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v7, &v6, 1)}];
  return v2;
}

@end