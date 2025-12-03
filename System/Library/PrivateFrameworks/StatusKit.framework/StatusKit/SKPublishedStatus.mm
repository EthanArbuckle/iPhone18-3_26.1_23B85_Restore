@interface SKPublishedStatus
- (SKPublishedStatus)initWithCoder:(id)coder;
- (SKPublishedStatus)initWithStatusPayload:(id)payload statusUniqueIdentifier:(id)identifier datePublished:(id)published dateCreated:(id)created dateReceived:(id)received invitationPayload:(id)invitationPayload;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKPublishedStatus

- (SKPublishedStatus)initWithStatusPayload:(id)payload statusUniqueIdentifier:(id)identifier datePublished:(id)published dateCreated:(id)created dateReceived:(id)received invitationPayload:(id)invitationPayload
{
  payloadCopy = payload;
  identifierCopy = identifier;
  publishedCopy = published;
  createdCopy = created;
  receivedCopy = received;
  invitationPayloadCopy = invitationPayload;
  v24.receiver = self;
  v24.super_class = SKPublishedStatus;
  v18 = [(SKPublishedStatus *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_statusPayload, payload);
    objc_storeStrong(&v19->_statusUniqueIdentifier, identifier);
    objc_storeStrong(&v19->_datePublished, published);
    objc_storeStrong(&v19->_dateCreated, created);
    objc_storeStrong(&v19->_dateReceived, received);
    objc_storeStrong(&v19->_invitationPayload, invitationPayload);
  }

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  statusPayload = self->_statusPayload;
  coderCopy = coder;
  [coderCopy encodeObject:statusPayload forKey:@"statusPayload"];
  [coderCopy encodeObject:self->_statusUniqueIdentifier forKey:@"statusUniqueIdentifier"];
  [coderCopy encodeObject:self->_datePublished forKey:@"datePublished"];
  [coderCopy encodeObject:self->_dateCreated forKey:@"dateCreated"];
  [coderCopy encodeObject:self->_dateReceived forKey:@"dateReceived"];
  [coderCopy encodeObject:self->_invitationPayload forKey:@"invitationPayload"];
}

- (SKPublishedStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = SKPublishedStatus;
  v5 = [(SKPublishedStatus *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"statusPayload"];
    statusPayload = v5->_statusPayload;
    v5->_statusPayload = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"statusUniqueIdentifier"];
    statusUniqueIdentifier = v5->_statusUniqueIdentifier;
    v5->_statusUniqueIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"datePublished"];
    datePublished = v5->_datePublished;
    v5->_datePublished = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateCreated"];
    dateCreated = v5->_dateCreated;
    v5->_dateCreated = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateReceived"];
    dateReceived = v5->_dateReceived;
    v5->_dateReceived = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"invitationPayload"];
    invitationPayload = v5->_invitationPayload;
    v5->_invitationPayload = v16;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  statusUniqueIdentifier = [(SKPublishedStatus *)self statusUniqueIdentifier];
  statusPayload = [(SKPublishedStatus *)self statusPayload];
  datePublished = [(SKPublishedStatus *)self datePublished];
  dateReceived = [(SKPublishedStatus *)self dateReceived];
  dateCreated = [(SKPublishedStatus *)self dateCreated];
  v10 = [v3 stringWithFormat:@"<%@: %p identifier = %@; payload = %@; datePublished = %@; dateReceived = %@; dateCreated = %@>", v4, self, statusUniqueIdentifier, statusPayload, datePublished, dateReceived, dateCreated];;

  return v10;
}

@end