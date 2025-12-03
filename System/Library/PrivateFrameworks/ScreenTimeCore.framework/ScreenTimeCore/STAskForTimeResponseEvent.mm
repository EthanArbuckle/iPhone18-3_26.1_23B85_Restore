@interface STAskForTimeResponseEvent
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAskForTimeRequestEvent:(id)event;
- (STAskForTimeResponseEvent)initWithIdentifier:(id)identifier resourceType:(int64_t)type timestamp:(id)timestamp requesterUserID:(id)d responderUserID:(id)iD requestedResourceIdentifier:(id)resourceIdentifier approvedTime:(int64_t)time;
- (unint64_t)hash;
@end

@implementation STAskForTimeResponseEvent

- (STAskForTimeResponseEvent)initWithIdentifier:(id)identifier resourceType:(int64_t)type timestamp:(id)timestamp requesterUserID:(id)d responderUserID:(id)iD requestedResourceIdentifier:(id)resourceIdentifier approvedTime:(int64_t)time
{
  v31.receiver = self;
  v31.super_class = STAskForTimeResponseEvent;
  resourceIdentifierCopy = resourceIdentifier;
  iDCopy = iD;
  dCopy = d;
  timestampCopy = timestamp;
  identifierCopy = identifier;
  v19 = [(STAskForTimeResponseEvent *)&v31 init];
  v20 = [identifierCopy copy];

  identifier = v19->_identifier;
  v19->_identifier = v20;

  v19->_resourceType = type;
  v22 = [timestampCopy copy];

  timestamp = v19->_timestamp;
  v19->_timestamp = v22;

  v24 = [dCopy copy];
  requesterUserID = v19->_requesterUserID;
  v19->_requesterUserID = v24;

  v26 = [iDCopy copy];
  responderUserID = v19->_responderUserID;
  v19->_responderUserID = v26;

  v28 = [resourceIdentifierCopy copy];
  requestedResourceIdentifier = v19->_requestedResourceIdentifier;
  v19->_requestedResourceIdentifier = v28;

  v19->_approvedTime = time;
  return v19;
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
      v5 = [(STAskForTimeResponseEvent *)self isEqualToAskForTimeRequestEvent:equalCopy];
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
    v15 = 1;
  }

  else
  {
    identifier = [(STAskForTimeResponseEvent *)self identifier];
    identifier2 = [(STAskForTimeResponseEvent *)eventCopy identifier];
    if ([identifier isEqualToString:identifier2] && (v7 = -[STAskForTimeResponseEvent resourceType](self, "resourceType"), v7 == -[STAskForTimeResponseEvent resourceType](eventCopy, "resourceType")))
    {
      timestamp = [(STAskForTimeResponseEvent *)self timestamp];
      timestamp2 = [(STAskForTimeResponseEvent *)eventCopy timestamp];
      if ([timestamp isEqualToDate:timestamp2])
      {
        requesterUserID = [(STAskForTimeResponseEvent *)self requesterUserID];
        requesterUserID2 = [(STAskForTimeResponseEvent *)eventCopy requesterUserID];
        if ([requesterUserID isEqualToUserID:requesterUserID2])
        {
          requestedResourceIdentifier = [(STAskForTimeResponseEvent *)self requestedResourceIdentifier];
          requestedResourceIdentifier2 = [(STAskForTimeResponseEvent *)eventCopy requestedResourceIdentifier];
          if ([requestedResourceIdentifier isEqualToString:requestedResourceIdentifier2])
          {
            approvedTime = [(STAskForTimeResponseEvent *)self approvedTime];
            v15 = approvedTime == [(STAskForTimeResponseEvent *)eventCopy approvedTime];
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  identifier = [(STAskForTimeResponseEvent *)self identifier];
  v4 = [identifier hash];
  v5 = [(STAskForTimeResponseEvent *)self resourceType]^ v4;
  timestamp = [(STAskForTimeResponseEvent *)self timestamp];
  v7 = [timestamp hash];
  requesterUserID = [(STAskForTimeResponseEvent *)self requesterUserID];
  v9 = v5 ^ v7 ^ [requesterUserID hash];
  requestedResourceIdentifier = [(STAskForTimeResponseEvent *)self requestedResourceIdentifier];
  v11 = [requestedResourceIdentifier hash];
  v12 = v11 ^ [(STAskForTimeResponseEvent *)self approvedTime];

  return v9 ^ v12;
}

@end