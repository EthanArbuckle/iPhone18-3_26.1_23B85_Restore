@interface TUMomentsMessageSendRequest
- (TUMomentsMessageSendRequest)initWithCoder:(id)coder;
- (TUMomentsMessageSendRequest)initWithSessionUUID:(id)d conversationID:(id)iD senderHandle:(id)handle destinationHandles:(id)handles;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUMomentsMessageSendRequest

- (TUMomentsMessageSendRequest)initWithSessionUUID:(id)d conversationID:(id)iD senderHandle:(id)handle destinationHandles:(id)handles
{
  dCopy = d;
  iDCopy = iD;
  handleCopy = handle;
  handlesCopy = handles;
  v18.receiver = self;
  v18.super_class = TUMomentsMessageSendRequest;
  v15 = [(TUMomentsMessageSendRequest *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sessionUUID, d);
    objc_storeStrong(&v16->_conversationID, iD);
    objc_storeStrong(&v16->_senderHandle, handle);
    objc_storeStrong(&v16->_destinationHandles, handles);
  }

  return v16;
}

- (TUMomentsMessageSendRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionUUID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"conversationID"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderHandle"];
  v8 = [coderCopy decodeObjectForKey:@"destinationHandles"];

  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v7 == 0 || v8 == 0)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(TUMomentsMessageSendRequest *)self initWithSessionUUID:v5 conversationID:v6 senderHandle:v7 destinationHandles:v8];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sessionUUID = [(TUMomentsMessageSendRequest *)self sessionUUID];
  [coderCopy encodeObject:sessionUUID forKey:@"sessionUUID"];

  conversationID = [(TUMomentsMessageSendRequest *)self conversationID];
  [coderCopy encodeObject:conversationID forKey:@"conversationID"];

  senderHandle = [(TUMomentsMessageSendRequest *)self senderHandle];
  [coderCopy encodeObject:senderHandle forKey:@"senderHandle"];

  destinationHandles = [(TUMomentsMessageSendRequest *)self destinationHandles];
  [coderCopy encodeObject:destinationHandles forKey:@"destinationHandles"];
}

@end