@interface SKStatusPublishRequest
- (SKStatusPublishRequest)initWithCoder:(id)a3;
- (SKStatusPublishRequest)initWithStatusPayload:(id)a3;
- (SKStatusPublishRequest)initWithStatusPayload:(id)a3 isScheduledRequest:(BOOL)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKStatusPublishRequest

- (SKStatusPublishRequest)initWithStatusPayload:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = SKStatusPublishRequest;
  v6 = [(SKStatusPublishRequest *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_statusPayload, a3);
    v8 = [MEMORY[0x277CCAD78] UUID];
    v9 = [v8 UUIDString];
    statusUniqueIdentifier = v7->_statusUniqueIdentifier;
    v7->_statusUniqueIdentifier = v9;

    *&v7->_isScheduledRequest = 0;
  }

  return v7;
}

- (SKStatusPublishRequest)initWithStatusPayload:(id)a3 isScheduledRequest:(BOOL)a4
{
  result = [(SKStatusPublishRequest *)self initWithStatusPayload:a3];
  if (result)
  {
    result->_isScheduledRequest = a4;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  statusPayload = self->_statusPayload;
  v5 = a3;
  [v5 encodeObject:statusPayload forKey:@"statusPayload"];
  [v5 encodeObject:self->_statusUniqueIdentifier forKey:@"statusUniqueIdentifier"];
  [v5 encodeBool:self->_isScheduledRequest forKey:@"scheduledRequest"];
  [v5 encodeObject:self->_dateCreated forKey:@"dateCreated"];
  [v5 encodeBool:self->_isSecondaryDeviceRepublish forKey:@"secondaryDeviceRepublish"];
}

- (SKStatusPublishRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SKStatusPublishRequest;
  v5 = [(SKStatusPublishRequest *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"statusPayload"];
    statusPayload = v5->_statusPayload;
    v5->_statusPayload = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"statusUniqueIdentifier"];
    statusUniqueIdentifier = v5->_statusUniqueIdentifier;
    v5->_statusUniqueIdentifier = v8;

    v5->_isScheduledRequest = [v4 decodeBoolForKey:@"scheduledRequest"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateCreated"];
    dateCreated = v5->_dateCreated;
    v5->_dateCreated = v10;

    v5->_isSecondaryDeviceRepublish = [v4 decodeBoolForKey:@"secondaryDeviceRepublish"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SKStatusPublishRequest *)self statusUniqueIdentifier];
  v6 = [(SKStatusPublishRequest *)self statusPayload];
  v7 = [(SKStatusPublishRequest *)self dateCreated];
  v8 = [v3 stringWithFormat:@"<%@: %p identifier = %@; payload = %@; dateCreated = %@; scheduled=%ld, republish=%ld>", v4, self, v5, v6, v7, -[SKStatusPublishRequest isScheduledRequest](self, "isScheduledRequest"), -[SKStatusPublishRequest isSecondaryDeviceRepublish](self, "isSecondaryDeviceRepublish")];;

  return v8;
}

@end