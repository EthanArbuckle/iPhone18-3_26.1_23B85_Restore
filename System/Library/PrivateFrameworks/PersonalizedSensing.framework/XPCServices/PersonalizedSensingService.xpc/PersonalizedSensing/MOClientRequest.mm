@interface MOClientRequest
- (BOOL)isEqual:(id)equal;
- (MOClientRequest)initWithClientRequestMO:(id)o;
- (MOClientRequest)initWithCoder:(id)coder;
- (MOClientRequest)initWithRequestIdentifier:(id)identifier requestType:(unint64_t)type creationDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOClientRequest

- (MOClientRequest)initWithRequestIdentifier:(id)identifier requestType:(unint64_t)type creationDate:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  v14.receiver = self;
  v14.super_class = MOClientRequest;
  v11 = [(MOClientRequest *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_requestIdentifier, identifier);
    v12->_requestType = type;
    objc_storeStrong(&v12->_creationDate, date);
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  requestIdentifier = self->_requestIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:requestIdentifier forKey:@"requestIdentifier"];
  [coderCopy encodeInteger:self->_requestType forKey:@"requestType"];
  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
}

- (MOClientRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MOClientRequest;
  v5 = [(MOClientRequest *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestIdentifier"];
    requestIdentifier = v5->_requestIdentifier;
    v5->_requestIdentifier = v6;

    v5->_requestType = [coderCopy decodeIntegerForKey:@"requestType"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MOClientRequest);
  objc_storeStrong(&v4->_requestIdentifier, self->_requestIdentifier);
  objc_storeStrong(&v4->_creationDate, self->_creationDate);
  v4->_requestType = self->_requestType;
  return v4;
}

- (id)description
{
  v2 = [[NSString alloc] initWithFormat:@"request id, %@, request type, %lu, creation date, %@", self->_requestIdentifier, self->_requestType, self->_creationDate];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
    goto LABEL_24;
  }

  if (!equalCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v12 = 0;
    goto LABEL_24;
  }

  v7 = v6;
  requestIdentifier = [(MOClientRequest *)self requestIdentifier];
  if (!requestIdentifier)
  {
    requestIdentifier2 = [(MOClientRequest *)v7 requestIdentifier];
    if (!requestIdentifier2)
    {
      v11 = 1;
LABEL_11:

      goto LABEL_12;
    }
  }

  requestIdentifier3 = [(MOClientRequest *)self requestIdentifier];
  requestIdentifier4 = [(MOClientRequest *)v7 requestIdentifier];
  v11 = [requestIdentifier3 isEqual:requestIdentifier4];

  if (!requestIdentifier)
  {
    goto LABEL_11;
  }

LABEL_12:

  creationDate = [(MOClientRequest *)self creationDate];
  if (!creationDate)
  {
    requestIdentifier2 = [(MOClientRequest *)v7 creationDate];
    if (!requestIdentifier2)
    {
      v16 = 1;
LABEL_17:

      goto LABEL_18;
    }
  }

  creationDate2 = [(MOClientRequest *)self creationDate];
  creationDate3 = [(MOClientRequest *)v7 creationDate];
  v16 = [creationDate2 isEqual:creationDate3];

  if (!creationDate)
  {
    goto LABEL_17;
  }

LABEL_18:

  requestType = [(MOClientRequest *)self requestType];
  requestType2 = [(MOClientRequest *)v7 requestType];
  if (v11)
  {
    if (requestType == requestType2)
    {
      v12 = v16;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_24:
  return v12;
}

- (MOClientRequest)initWithClientRequestMO:(id)o
{
  if (o)
  {
    oCopy = o;
    requestIdentifier = [oCopy requestIdentifier];
    requestType = [oCopy requestType];
    creationDate = [oCopy creationDate];

    self = [(MOClientRequest *)self initWithRequestIdentifier:requestIdentifier requestType:requestType creationDate:creationDate];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end