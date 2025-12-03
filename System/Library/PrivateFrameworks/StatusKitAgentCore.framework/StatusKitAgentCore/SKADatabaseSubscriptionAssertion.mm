@interface SKADatabaseSubscriptionAssertion
- (SKADatabaseSubscriptionAssertion)initWithChannelIdentifier:(id)identifier statusTypeIdentifier:(id)typeIdentifier applicationIdentifier:(id)applicationIdentifier;
- (SKADatabaseSubscriptionAssertion)initWithCoreDataSubscriptionAssertion:(id)assertion;
@end

@implementation SKADatabaseSubscriptionAssertion

- (SKADatabaseSubscriptionAssertion)initWithCoreDataSubscriptionAssertion:(id)assertion
{
  assertionCopy = assertion;
  channelIdentifier = [assertionCopy channelIdentifier];
  statusTypeIdentifier = [assertionCopy statusTypeIdentifier];
  applicationIdentifier = [assertionCopy applicationIdentifier];

  v8 = [(SKADatabaseSubscriptionAssertion *)self initWithChannelIdentifier:channelIdentifier statusTypeIdentifier:statusTypeIdentifier applicationIdentifier:applicationIdentifier];
  return v8;
}

- (SKADatabaseSubscriptionAssertion)initWithChannelIdentifier:(id)identifier statusTypeIdentifier:(id)typeIdentifier applicationIdentifier:(id)applicationIdentifier
{
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  applicationIdentifierCopy = applicationIdentifier;
  v19.receiver = self;
  v19.super_class = SKADatabaseSubscriptionAssertion;
  v11 = [(SKADatabaseSubscriptionAssertion *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    channelIdentifier = v11->_channelIdentifier;
    v11->_channelIdentifier = v12;

    v14 = [typeIdentifierCopy copy];
    statusTypeIdentifier = v11->_statusTypeIdentifier;
    v11->_statusTypeIdentifier = v14;

    v16 = [applicationIdentifierCopy copy];
    applicationIdentifier = v11->_applicationIdentifier;
    v11->_applicationIdentifier = v16;
  }

  return v11;
}

@end