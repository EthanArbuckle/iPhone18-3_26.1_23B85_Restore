@interface SKPublishedStatus
- (SKPublishedStatus)initWithCoder:(id)a3;
- (SKPublishedStatus)initWithStatusPayload:(id)a3 statusUniqueIdentifier:(id)a4 datePublished:(id)a5 dateCreated:(id)a6 dateReceived:(id)a7 invitationPayload:(id)a8;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKPublishedStatus

- (SKPublishedStatus)initWithStatusPayload:(id)a3 statusUniqueIdentifier:(id)a4 datePublished:(id)a5 dateCreated:(id)a6 dateReceived:(id)a7 invitationPayload:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = SKPublishedStatus;
  v18 = [(SKPublishedStatus *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_statusPayload, a3);
    objc_storeStrong(&v19->_statusUniqueIdentifier, a4);
    objc_storeStrong(&v19->_datePublished, a5);
    objc_storeStrong(&v19->_dateCreated, a6);
    objc_storeStrong(&v19->_dateReceived, a7);
    objc_storeStrong(&v19->_invitationPayload, a8);
  }

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  statusPayload = self->_statusPayload;
  v5 = a3;
  [v5 encodeObject:statusPayload forKey:@"statusPayload"];
  [v5 encodeObject:self->_statusUniqueIdentifier forKey:@"statusUniqueIdentifier"];
  [v5 encodeObject:self->_datePublished forKey:@"datePublished"];
  [v5 encodeObject:self->_dateCreated forKey:@"dateCreated"];
  [v5 encodeObject:self->_dateReceived forKey:@"dateReceived"];
  [v5 encodeObject:self->_invitationPayload forKey:@"invitationPayload"];
}

- (SKPublishedStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SKPublishedStatus;
  v5 = [(SKPublishedStatus *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"statusPayload"];
    statusPayload = v5->_statusPayload;
    v5->_statusPayload = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"statusUniqueIdentifier"];
    statusUniqueIdentifier = v5->_statusUniqueIdentifier;
    v5->_statusUniqueIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"datePublished"];
    datePublished = v5->_datePublished;
    v5->_datePublished = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateCreated"];
    dateCreated = v5->_dateCreated;
    v5->_dateCreated = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateReceived"];
    dateReceived = v5->_dateReceived;
    v5->_dateReceived = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"invitationPayload"];
    invitationPayload = v5->_invitationPayload;
    v5->_invitationPayload = v16;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SKPublishedStatus *)self statusUniqueIdentifier];
  v6 = [(SKPublishedStatus *)self statusPayload];
  v7 = [(SKPublishedStatus *)self datePublished];
  v8 = [(SKPublishedStatus *)self dateReceived];
  v9 = [(SKPublishedStatus *)self dateCreated];
  v10 = [v3 stringWithFormat:@"<%@: %p identifier = %@; payload = %@; datePublished = %@; dateReceived = %@; dateCreated = %@>", v4, self, v5, v6, v7, v8, v9];;

  return v10;
}

@end