@interface STAskForTimeRequestEvent
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAskForTimeRequestEvent:(id)a3;
- (STAskForTimeRequestEvent)initWithIdentifier:(id)a3 resourceType:(int64_t)a4 timestamp:(id)a5 requesterUserID:(id)a6 requestedResourceIdentifier:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation STAskForTimeRequestEvent

- (STAskForTimeRequestEvent)initWithIdentifier:(id)a3 resourceType:(int64_t)a4 timestamp:(id)a5 requesterUserID:(id)a6 requestedResourceIdentifier:(id)a7
{
  v25.receiver = self;
  v25.super_class = STAskForTimeRequestEvent;
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a3;
  v15 = [(STAskForTimeRequestEvent *)&v25 init];
  v16 = [v14 copy];

  identifier = v15->_identifier;
  v15->_identifier = v16;

  v15->_resourceType = a4;
  v18 = [v13 copy];

  timestamp = v15->_timestamp;
  v15->_timestamp = v18;

  v20 = [v12 copy];
  requesterUserID = v15->_requesterUserID;
  v15->_requesterUserID = v20;

  v22 = [v11 copy];
  requestedResourceIdentifier = v15->_requestedResourceIdentifier;
  v15->_requestedResourceIdentifier = v22;

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  identifier = self->_identifier;
  resourceType = self->_resourceType;
  timestamp = self->_timestamp;
  requesterUserID = self->_requesterUserID;
  requestedResourceIdentifier = self->_requestedResourceIdentifier;

  return [v4 initWithIdentifier:identifier resourceType:resourceType timestamp:timestamp requesterUserID:requesterUserID requestedResourceIdentifier:requestedResourceIdentifier];
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
      v5 = [(STAskForTimeRequestEvent *)self isEqualToAskForTimeRequestEvent:v4];
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
    v14 = 1;
  }

  else
  {
    v5 = [(STAskForTimeRequestEvent *)self identifier];
    v6 = [(STAskForTimeRequestEvent *)v4 identifier];
    if ([v5 isEqualToString:v6] && (v7 = -[STAskForTimeRequestEvent resourceType](self, "resourceType"), v7 == -[STAskForTimeRequestEvent resourceType](v4, "resourceType")))
    {
      v8 = [(STAskForTimeRequestEvent *)self timestamp];
      v9 = [(STAskForTimeRequestEvent *)v4 timestamp];
      if ([v8 isEqualToDate:v9])
      {
        v10 = [(STAskForTimeRequestEvent *)self requesterUserID];
        v11 = [(STAskForTimeRequestEvent *)v4 requesterUserID];
        if ([v10 isEqualToUserID:v11])
        {
          v12 = [(STAskForTimeRequestEvent *)self requestedResourceIdentifier];
          v13 = [(STAskForTimeRequestEvent *)v4 requestedResourceIdentifier];
          v14 = [v12 isEqualToString:v13];
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
  v3 = [(STAskForTimeRequestEvent *)self identifier];
  v4 = [v3 hash];
  v5 = [(STAskForTimeRequestEvent *)self resourceType]^ v4;
  v6 = [(STAskForTimeRequestEvent *)self timestamp];
  v7 = [v6 hash];
  v8 = [(STAskForTimeRequestEvent *)self requesterUserID];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [(STAskForTimeRequestEvent *)self requestedResourceIdentifier];
  v11 = [v10 hash];

  return v9 ^ v11;
}

@end