@interface SKADatabaseTransientSubscriptionHistory
- (SKADatabaseTransientSubscriptionHistory)initWithChannelIdentifier:(id)identifier lastSubscriptionDate:(id)date;
- (SKADatabaseTransientSubscriptionHistory)initWithCoreDataTransientSubscriptionHistory:(id)history;
@end

@implementation SKADatabaseTransientSubscriptionHistory

- (SKADatabaseTransientSubscriptionHistory)initWithCoreDataTransientSubscriptionHistory:(id)history
{
  historyCopy = history;
  channelIdentifier = [historyCopy channelIdentifier];
  lastSubscriptionDate = [historyCopy lastSubscriptionDate];

  v7 = [(SKADatabaseTransientSubscriptionHistory *)self initWithChannelIdentifier:channelIdentifier lastSubscriptionDate:lastSubscriptionDate];
  return v7;
}

- (SKADatabaseTransientSubscriptionHistory)initWithChannelIdentifier:(id)identifier lastSubscriptionDate:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  v14.receiver = self;
  v14.super_class = SKADatabaseTransientSubscriptionHistory;
  v8 = [(SKADatabaseTransientSubscriptionHistory *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    channelIdentifier = v8->_channelIdentifier;
    v8->_channelIdentifier = v9;

    v11 = [dateCopy copy];
    lastSubscriptionDate = v8->_lastSubscriptionDate;
    v8->_lastSubscriptionDate = v11;
  }

  return v8;
}

@end