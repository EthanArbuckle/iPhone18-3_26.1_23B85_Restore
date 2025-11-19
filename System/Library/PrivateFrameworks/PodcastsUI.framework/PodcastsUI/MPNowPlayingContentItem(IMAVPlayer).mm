@interface MPNowPlayingContentItem(IMAVPlayer)
- (void)updateNowPlayingInfoIfNeeded:()IMAVPlayer;
@end

@implementation MPNowPlayingContentItem(IMAVPlayer)

- (void)updateNowPlayingInfoIfNeeded:()IMAVPlayer
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 allKeys];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [a1 nowPlayingInfo];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = [v7 objectForKey:{v13, v17}];
          v15 = [v8 objectForKey:v13];
          v16 = [v15 isEqual:v14];

          if (!v16)
          {

            [a1 setNowPlayingInfo:v8];
            goto LABEL_12;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

@end