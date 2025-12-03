@interface IDSDestination
+ (IDSDestination)destinationWithTUConversationMember:(id)member;
+ (IDSDestination)destinationWithTUConversationParticipant:(id)participant;
- (BOOL)canReceiveMessagesForCallProvider:(id)provider;
- (BOOL)canReceiveRelayedCalls;
- (id)deviceForService:(id)service;
@end

@implementation IDSDestination

+ (IDSDestination)destinationWithTUConversationMember:(id)member
{
  memberCopy = member;
  idsDestination = [memberCopy idsDestination];
  isLightweightMember = [memberCopy isLightweightMember];

  v7 = [self destinationWithStringURI:idsDestination isLightWeight:isLightweightMember];

  return v7;
}

+ (IDSDestination)destinationWithTUConversationParticipant:(id)participant
{
  participantCopy = participant;
  if ([participantCopy audioVideoMode])
  {
    isLightweight = [participantCopy isLightweight];
  }

  else
  {
    isLightweight = 1;
  }

  handle = [participantCopy handle];
  value = [handle value];
  iDSFormattedDestinationID = [value IDSFormattedDestinationID];
  v9 = [self destinationWithStringURI:iDSFormattedDestinationID isLightWeight:isLightweight];

  return v9;
}

- (BOOL)canReceiveRelayedCalls
{
  selfCopy = self;
  v3 = sub_100381390();

  return v3 & 1;
}

- (BOOL)canReceiveMessagesForCallProvider:(id)provider
{
  providerCopy = provider;
  selfCopy = self;
  LOBYTE(self) = sub_1003813B4();

  return self & 1;
}

- (id)deviceForService:(id)service
{
  serviceCopy = service;
  selfCopy = self;
  v6 = sub_100381424(serviceCopy);

  return v6;
}

@end