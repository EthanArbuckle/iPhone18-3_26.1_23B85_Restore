@interface SKStatusPublishRequest
- (SKStatusPublishRequest)initWithCoder:(id)coder;
- (SKStatusPublishRequest)initWithStatusPayload:(id)payload;
- (SKStatusPublishRequest)initWithStatusPayload:(id)payload isScheduledRequest:(BOOL)request;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKStatusPublishRequest

- (SKStatusPublishRequest)initWithStatusPayload:(id)payload
{
  payloadCopy = payload;
  v12.receiver = self;
  v12.super_class = SKStatusPublishRequest;
  v6 = [(SKStatusPublishRequest *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_statusPayload, payload);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    statusUniqueIdentifier = v7->_statusUniqueIdentifier;
    v7->_statusUniqueIdentifier = uUIDString;

    *&v7->_isScheduledRequest = 0;
  }

  return v7;
}

- (SKStatusPublishRequest)initWithStatusPayload:(id)payload isScheduledRequest:(BOOL)request
{
  result = [(SKStatusPublishRequest *)self initWithStatusPayload:payload];
  if (result)
  {
    result->_isScheduledRequest = request;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  statusPayload = self->_statusPayload;
  coderCopy = coder;
  [coderCopy encodeObject:statusPayload forKey:@"statusPayload"];
  [coderCopy encodeObject:self->_statusUniqueIdentifier forKey:@"statusUniqueIdentifier"];
  [coderCopy encodeBool:self->_isScheduledRequest forKey:@"scheduledRequest"];
  [coderCopy encodeObject:self->_dateCreated forKey:@"dateCreated"];
  [coderCopy encodeBool:self->_isSecondaryDeviceRepublish forKey:@"secondaryDeviceRepublish"];
}

- (SKStatusPublishRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = SKStatusPublishRequest;
  v5 = [(SKStatusPublishRequest *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"statusPayload"];
    statusPayload = v5->_statusPayload;
    v5->_statusPayload = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"statusUniqueIdentifier"];
    statusUniqueIdentifier = v5->_statusUniqueIdentifier;
    v5->_statusUniqueIdentifier = v8;

    v5->_isScheduledRequest = [coderCopy decodeBoolForKey:@"scheduledRequest"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateCreated"];
    dateCreated = v5->_dateCreated;
    v5->_dateCreated = v10;

    v5->_isSecondaryDeviceRepublish = [coderCopy decodeBoolForKey:@"secondaryDeviceRepublish"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  statusUniqueIdentifier = [(SKStatusPublishRequest *)self statusUniqueIdentifier];
  statusPayload = [(SKStatusPublishRequest *)self statusPayload];
  dateCreated = [(SKStatusPublishRequest *)self dateCreated];
  v8 = [v3 stringWithFormat:@"<%@: %p identifier = %@; payload = %@; dateCreated = %@; scheduled=%ld, republish=%ld>", v4, self, statusUniqueIdentifier, statusPayload, dateCreated, -[SKStatusPublishRequest isScheduledRequest](self, "isScheduledRequest"), -[SKStatusPublishRequest isSecondaryDeviceRepublish](self, "isSecondaryDeviceRepublish")];;

  return v8;
}

@end