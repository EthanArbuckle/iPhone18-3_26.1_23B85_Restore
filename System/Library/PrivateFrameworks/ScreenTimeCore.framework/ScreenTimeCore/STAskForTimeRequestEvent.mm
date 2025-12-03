@interface STAskForTimeRequestEvent
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAskForTimeRequestEvent:(id)event;
- (STAskForTimeRequestEvent)initWithIdentifier:(id)identifier resourceType:(int64_t)type timestamp:(id)timestamp requesterUserID:(id)d requestedResourceIdentifier:(id)resourceIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation STAskForTimeRequestEvent

- (STAskForTimeRequestEvent)initWithIdentifier:(id)identifier resourceType:(int64_t)type timestamp:(id)timestamp requesterUserID:(id)d requestedResourceIdentifier:(id)resourceIdentifier
{
  v25.receiver = self;
  v25.super_class = STAskForTimeRequestEvent;
  resourceIdentifierCopy = resourceIdentifier;
  dCopy = d;
  timestampCopy = timestamp;
  identifierCopy = identifier;
  v15 = [(STAskForTimeRequestEvent *)&v25 init];
  v16 = [identifierCopy copy];

  identifier = v15->_identifier;
  v15->_identifier = v16;

  v15->_resourceType = type;
  v18 = [timestampCopy copy];

  timestamp = v15->_timestamp;
  v15->_timestamp = v18;

  v20 = [dCopy copy];
  requesterUserID = v15->_requesterUserID;
  v15->_requesterUserID = v20;

  v22 = [resourceIdentifierCopy copy];
  requestedResourceIdentifier = v15->_requestedResourceIdentifier;
  v15->_requestedResourceIdentifier = v22;

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  identifier = self->_identifier;
  resourceType = self->_resourceType;
  timestamp = self->_timestamp;
  requesterUserID = self->_requesterUserID;
  requestedResourceIdentifier = self->_requestedResourceIdentifier;

  return [v4 initWithIdentifier:identifier resourceType:resourceType timestamp:timestamp requesterUserID:requesterUserID requestedResourceIdentifier:requestedResourceIdentifier];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STAskForTimeRequestEvent *)self isEqualToAskForTimeRequestEvent:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToAskForTimeRequestEvent:(id)event
{
  eventCopy = event;
  if (self == eventCopy)
  {
    v14 = 1;
  }

  else
  {
    identifier = [(STAskForTimeRequestEvent *)self identifier];
    identifier2 = [(STAskForTimeRequestEvent *)eventCopy identifier];
    if ([identifier isEqualToString:identifier2] && (v7 = -[STAskForTimeRequestEvent resourceType](self, "resourceType"), v7 == -[STAskForTimeRequestEvent resourceType](eventCopy, "resourceType")))
    {
      timestamp = [(STAskForTimeRequestEvent *)self timestamp];
      timestamp2 = [(STAskForTimeRequestEvent *)eventCopy timestamp];
      if ([timestamp isEqualToDate:timestamp2])
      {
        requesterUserID = [(STAskForTimeRequestEvent *)self requesterUserID];
        requesterUserID2 = [(STAskForTimeRequestEvent *)eventCopy requesterUserID];
        if ([requesterUserID isEqualToUserID:requesterUserID2])
        {
          requestedResourceIdentifier = [(STAskForTimeRequestEvent *)self requestedResourceIdentifier];
          requestedResourceIdentifier2 = [(STAskForTimeRequestEvent *)eventCopy requestedResourceIdentifier];
          v14 = [requestedResourceIdentifier isEqualToString:requestedResourceIdentifier2];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  identifier = [(STAskForTimeRequestEvent *)self identifier];
  v4 = [identifier hash];
  v5 = [(STAskForTimeRequestEvent *)self resourceType]^ v4;
  timestamp = [(STAskForTimeRequestEvent *)self timestamp];
  v7 = [timestamp hash];
  requesterUserID = [(STAskForTimeRequestEvent *)self requesterUserID];
  v9 = v5 ^ v7 ^ [requesterUserID hash];
  requestedResourceIdentifier = [(STAskForTimeRequestEvent *)self requestedResourceIdentifier];
  v11 = [requestedResourceIdentifier hash];

  return v9 ^ v11;
}

@end