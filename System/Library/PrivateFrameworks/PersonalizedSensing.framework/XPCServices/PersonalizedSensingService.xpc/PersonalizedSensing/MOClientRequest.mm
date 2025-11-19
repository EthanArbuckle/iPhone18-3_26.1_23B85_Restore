@interface MOClientRequest
- (BOOL)isEqual:(id)a3;
- (MOClientRequest)initWithClientRequestMO:(id)a3;
- (MOClientRequest)initWithCoder:(id)a3;
- (MOClientRequest)initWithRequestIdentifier:(id)a3 requestType:(unint64_t)a4 creationDate:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOClientRequest

- (MOClientRequest)initWithRequestIdentifier:(id)a3 requestType:(unint64_t)a4 creationDate:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = MOClientRequest;
  v11 = [(MOClientRequest *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_requestIdentifier, a3);
    v12->_requestType = a4;
    objc_storeStrong(&v12->_creationDate, a5);
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  requestIdentifier = self->_requestIdentifier;
  v5 = a3;
  [v5 encodeObject:requestIdentifier forKey:@"requestIdentifier"];
  [v5 encodeInteger:self->_requestType forKey:@"requestType"];
  [v5 encodeObject:self->_creationDate forKey:@"creationDate"];
}

- (MOClientRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MOClientRequest;
  v5 = [(MOClientRequest *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestIdentifier"];
    requestIdentifier = v5->_requestIdentifier;
    v5->_requestIdentifier = v6;

    v5->_requestType = [v4 decodeIntegerForKey:@"requestType"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self == v5)
  {
    v12 = 1;
    goto LABEL_24;
  }

  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v12 = 0;
    goto LABEL_24;
  }

  v7 = v6;
  v8 = [(MOClientRequest *)self requestIdentifier];
  if (!v8)
  {
    v3 = [(MOClientRequest *)v7 requestIdentifier];
    if (!v3)
    {
      v11 = 1;
LABEL_11:

      goto LABEL_12;
    }
  }

  v9 = [(MOClientRequest *)self requestIdentifier];
  v10 = [(MOClientRequest *)v7 requestIdentifier];
  v11 = [v9 isEqual:v10];

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_12:

  v13 = [(MOClientRequest *)self creationDate];
  if (!v13)
  {
    v3 = [(MOClientRequest *)v7 creationDate];
    if (!v3)
    {
      v16 = 1;
LABEL_17:

      goto LABEL_18;
    }
  }

  v14 = [(MOClientRequest *)self creationDate];
  v15 = [(MOClientRequest *)v7 creationDate];
  v16 = [v14 isEqual:v15];

  if (!v13)
  {
    goto LABEL_17;
  }

LABEL_18:

  v17 = [(MOClientRequest *)self requestType];
  v18 = [(MOClientRequest *)v7 requestType];
  if (v11)
  {
    if (v17 == v18)
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

- (MOClientRequest)initWithClientRequestMO:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 requestIdentifier];
    v6 = [v4 requestType];
    v7 = [v4 creationDate];

    self = [(MOClientRequest *)self initWithRequestIdentifier:v5 requestType:v6 creationDate:v7];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end