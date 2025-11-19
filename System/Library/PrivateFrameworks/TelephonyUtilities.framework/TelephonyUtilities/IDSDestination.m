@interface IDSDestination
+ (IDSDestination)destinationWithTUConversationMember:(id)a3;
+ (IDSDestination)destinationWithTUConversationParticipant:(id)a3;
- (BOOL)canReceiveMessagesForCallProvider:(id)a3;
- (BOOL)canReceiveRelayedCalls;
- (id)deviceForService:(id)a3;
@end

@implementation IDSDestination

+ (IDSDestination)destinationWithTUConversationMember:(id)a3
{
  v4 = a3;
  v5 = [v4 idsDestination];
  v6 = [v4 isLightweightMember];

  v7 = [a1 destinationWithStringURI:v5 isLightWeight:v6];

  return v7;
}

+ (IDSDestination)destinationWithTUConversationParticipant:(id)a3
{
  v4 = a3;
  if ([v4 audioVideoMode])
  {
    v5 = [v4 isLightweight];
  }

  else
  {
    v5 = 1;
  }

  v6 = [v4 handle];
  v7 = [v6 value];
  v8 = [v7 IDSFormattedDestinationID];
  v9 = [a1 destinationWithStringURI:v8 isLightWeight:v5];

  return v9;
}

- (BOOL)canReceiveRelayedCalls
{
  v2 = self;
  v3 = sub_100381390();

  return v3 & 1;
}

- (BOOL)canReceiveMessagesForCallProvider:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1003813B4();

  return self & 1;
}

- (id)deviceForService:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100381424(v4);

  return v6;
}

@end