@interface STAskForTimeResponseEvent
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAskForTimeRequestEvent:(id)a3;
- (STAskForTimeResponseEvent)initWithIdentifier:(id)a3 resourceType:(int64_t)a4 timestamp:(id)a5 requesterUserID:(id)a6 responderUserID:(id)a7 requestedResourceIdentifier:(id)a8 approvedTime:(int64_t)a9;
- (unint64_t)hash;
@end

@implementation STAskForTimeResponseEvent

- (STAskForTimeResponseEvent)initWithIdentifier:(id)a3 resourceType:(int64_t)a4 timestamp:(id)a5 requesterUserID:(id)a6 responderUserID:(id)a7 requestedResourceIdentifier:(id)a8 approvedTime:(int64_t)a9
{
  v31.receiver = self;
  v31.super_class = STAskForTimeResponseEvent;
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a3;
  v19 = [(STAskForTimeResponseEvent *)&v31 init];
  v20 = [v18 copy];

  identifier = v19->_identifier;
  v19->_identifier = v20;

  v19->_resourceType = a4;
  v22 = [v17 copy];

  timestamp = v19->_timestamp;
  v19->_timestamp = v22;

  v24 = [v16 copy];
  requesterUserID = v19->_requesterUserID;
  v19->_requesterUserID = v24;

  v26 = [v15 copy];
  responderUserID = v19->_responderUserID;
  v19->_responderUserID = v26;

  v28 = [v14 copy];
  requestedResourceIdentifier = v19->_requestedResourceIdentifier;
  v19->_requestedResourceIdentifier = v28;

  v19->_approvedTime = a9;
  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STAskForTimeResponseEvent *)self isEqualToAskForTimeRequestEvent:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToAskForTimeRequestEvent:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else
  {
    v5 = [(STAskForTimeResponseEvent *)self identifier];
    v6 = [(STAskForTimeResponseEvent *)v4 identifier];
    if ([v5 isEqualToString:v6] && (v7 = -[STAskForTimeResponseEvent resourceType](self, "resourceType"), v7 == -[STAskForTimeResponseEvent resourceType](v4, "resourceType")))
    {
      v8 = [(STAskForTimeResponseEvent *)self timestamp];
      v9 = [(STAskForTimeResponseEvent *)v4 timestamp];
      if ([v8 isEqualToDate:v9])
      {
        v10 = [(STAskForTimeResponseEvent *)self requesterUserID];
        v11 = [(STAskForTimeResponseEvent *)v4 requesterUserID];
        if ([v10 isEqualToUserID:v11])
        {
          v12 = [(STAskForTimeResponseEvent *)self requestedResourceIdentifier];
          v13 = [(STAskForTimeResponseEvent *)v4 requestedResourceIdentifier];
          if ([v12 isEqualToString:v13])
          {
            v14 = [(STAskForTimeResponseEvent *)self approvedTime];
            v15 = v14 == [(STAskForTimeResponseEvent *)v4 approvedTime];
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
  v3 = [(STAskForTimeResponseEvent *)self identifier];
  v4 = [v3 hash];
  v5 = [(STAskForTimeResponseEvent *)self resourceType]^ v4;
  v6 = [(STAskForTimeResponseEvent *)self timestamp];
  v7 = [v6 hash];
  v8 = [(STAskForTimeResponseEvent *)self requesterUserID];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [(STAskForTimeResponseEvent *)self requestedResourceIdentifier];
  v11 = [v10 hash];
  v12 = v11 ^ [(STAskForTimeResponseEvent *)self approvedTime];

  return v9 ^ v12;
}

@end