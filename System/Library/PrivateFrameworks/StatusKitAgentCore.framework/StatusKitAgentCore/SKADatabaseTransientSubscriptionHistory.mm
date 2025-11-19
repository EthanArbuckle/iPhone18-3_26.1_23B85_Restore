@interface SKADatabaseTransientSubscriptionHistory
- (SKADatabaseTransientSubscriptionHistory)initWithChannelIdentifier:(id)a3 lastSubscriptionDate:(id)a4;
- (SKADatabaseTransientSubscriptionHistory)initWithCoreDataTransientSubscriptionHistory:(id)a3;
@end

@implementation SKADatabaseTransientSubscriptionHistory

- (SKADatabaseTransientSubscriptionHistory)initWithCoreDataTransientSubscriptionHistory:(id)a3
{
  v4 = a3;
  v5 = [v4 channelIdentifier];
  v6 = [v4 lastSubscriptionDate];

  v7 = [(SKADatabaseTransientSubscriptionHistory *)self initWithChannelIdentifier:v5 lastSubscriptionDate:v6];
  return v7;
}

- (SKADatabaseTransientSubscriptionHistory)initWithChannelIdentifier:(id)a3 lastSubscriptionDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SKADatabaseTransientSubscriptionHistory;
  v8 = [(SKADatabaseTransientSubscriptionHistory *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    channelIdentifier = v8->_channelIdentifier;
    v8->_channelIdentifier = v9;

    v11 = [v7 copy];
    lastSubscriptionDate = v8->_lastSubscriptionDate;
    v8->_lastSubscriptionDate = v11;
  }

  return v8;
}

@end