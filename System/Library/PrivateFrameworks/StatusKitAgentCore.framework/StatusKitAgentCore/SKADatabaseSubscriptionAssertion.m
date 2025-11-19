@interface SKADatabaseSubscriptionAssertion
- (SKADatabaseSubscriptionAssertion)initWithChannelIdentifier:(id)a3 statusTypeIdentifier:(id)a4 applicationIdentifier:(id)a5;
- (SKADatabaseSubscriptionAssertion)initWithCoreDataSubscriptionAssertion:(id)a3;
@end

@implementation SKADatabaseSubscriptionAssertion

- (SKADatabaseSubscriptionAssertion)initWithCoreDataSubscriptionAssertion:(id)a3
{
  v4 = a3;
  v5 = [v4 channelIdentifier];
  v6 = [v4 statusTypeIdentifier];
  v7 = [v4 applicationIdentifier];

  v8 = [(SKADatabaseSubscriptionAssertion *)self initWithChannelIdentifier:v5 statusTypeIdentifier:v6 applicationIdentifier:v7];
  return v8;
}

- (SKADatabaseSubscriptionAssertion)initWithChannelIdentifier:(id)a3 statusTypeIdentifier:(id)a4 applicationIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = SKADatabaseSubscriptionAssertion;
  v11 = [(SKADatabaseSubscriptionAssertion *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    channelIdentifier = v11->_channelIdentifier;
    v11->_channelIdentifier = v12;

    v14 = [v9 copy];
    statusTypeIdentifier = v11->_statusTypeIdentifier;
    v11->_statusTypeIdentifier = v14;

    v16 = [v10 copy];
    applicationIdentifier = v11->_applicationIdentifier;
    v11->_applicationIdentifier = v16;
  }

  return v11;
}

@end