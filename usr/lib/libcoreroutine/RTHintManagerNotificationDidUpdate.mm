@interface RTHintManagerNotificationDidUpdate
+ (id)sourcesUpdatedForHints:(id)a3;
- (RTHintManagerNotificationDidUpdate)initWithHints:(id)a3;
- (id)description;
@end

@implementation RTHintManagerNotificationDidUpdate

- (RTHintManagerNotificationDidUpdate)initWithHints:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RTHintManagerNotificationDidUpdate;
  v5 = [(RTNotification *)&v9 init];
  if (v5)
  {
    v6 = [objc_opt_class() sourcesUpdatedForHints:v4];
    hintSourcesUpdated = v5->_hintSourcesUpdated;
    v5->_hintSourcesUpdated = v6;
  }

  return v5;
}

+ (id)sourcesUpdatedForHints:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v6 |= 1 << ([*(*(&v11 + 1) + 8 * i) source] + 1);
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v3 = [(RTHintManagerNotificationDidUpdate *)self hintSourcesUpdated];
  v4 = [v2 stringWithFormat:@"hintSourcesUpdated, %@", v3];

  return v4;
}

@end