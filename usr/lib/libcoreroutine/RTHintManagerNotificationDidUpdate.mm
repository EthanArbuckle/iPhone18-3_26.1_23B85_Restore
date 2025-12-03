@interface RTHintManagerNotificationDidUpdate
+ (id)sourcesUpdatedForHints:(id)hints;
- (RTHintManagerNotificationDidUpdate)initWithHints:(id)hints;
- (id)description;
@end

@implementation RTHintManagerNotificationDidUpdate

- (RTHintManagerNotificationDidUpdate)initWithHints:(id)hints
{
  hintsCopy = hints;
  v9.receiver = self;
  v9.super_class = RTHintManagerNotificationDidUpdate;
  v5 = [(RTNotification *)&v9 init];
  if (v5)
  {
    v6 = [objc_opt_class() sourcesUpdatedForHints:hintsCopy];
    hintSourcesUpdated = v5->_hintSourcesUpdated;
    v5->_hintSourcesUpdated = v6;
  }

  return v5;
}

+ (id)sourcesUpdatedForHints:(id)hints
{
  v16 = *MEMORY[0x277D85DE8];
  hintsCopy = hints;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [hintsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(hintsCopy);
        }

        v6 |= 1 << ([*(*(&v11 + 1) + 8 * i) source] + 1);
      }

      v5 = [hintsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v6];

  return v9;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  hintSourcesUpdated = [(RTHintManagerNotificationDidUpdate *)self hintSourcesUpdated];
  v4 = [v2 stringWithFormat:@"hintSourcesUpdated, %@", hintSourcesUpdated];

  return v4;
}

@end