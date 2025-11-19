@interface WLKContentPlayResponse
- (WLKContentPlayResponse)init;
- (WLKContentPlayResponse)initWithDictionary:(id)a3;
@end

@implementation WLKContentPlayResponse

- (WLKContentPlayResponse)initWithDictionary:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v16.receiver = self;
  v16.super_class = WLKContentPlayResponse;
  v6 = [(WLKContentPlayResponse *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, a3);
    v8 = [v5 wlk_dictionaryForKey:@"data"];
    v9 = [WLKChannelsResponse parseChannelsFromPayload:v8];
    v10 = v9;
    if (v9)
    {
      v17 = @"WLKModelContextKeyChannels";
      v18[0] = v9;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    }

    else
    {
      v11 = 0;
    }

    v12 = [[WLKPlayable alloc] initWithDictionary:v8 context:v11];
    playable = v7->_playable;
    v7->_playable = v12;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (WLKContentPlayResponse)init
{
  [MEMORY[0x277CBEAD8] raise:@"WLKContentPlayResponse" format:@"-init is not supported"];

  return 0;
}

@end