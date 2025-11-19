@interface SIRINLURequestID
- (SIRINLURequestID)initWithCoder:(id)a3;
- (SIRINLURequestID)initWithIdAsString:(id)a3 connectionID:(id)a4;
- (SIRINLURequestID)initWithIdAsString:(id)a3 nluRequestId:(id)a4 connectionID:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIRINLURequestID

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SIRINLURequestID *)self idAsString];
  v5 = [(SIRINLURequestID *)self nluRequestId];
  v6 = [(SIRINLURequestID *)self connectionID];
  v7 = [v3 stringWithFormat:@"{RequestID:\n  idAsString: %@\n  nluRequestId: %@\n  connectionID: %@\n}", v4, v5, v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SIRINLURequestID *)self idAsString];
  [v4 encodeObject:v5 forKey:@"idAsString"];

  v6 = [(SIRINLURequestID *)self nluRequestId];
  [v4 encodeObject:v6 forKey:@"nluRequestId"];

  v7 = [(SIRINLURequestID *)self connectionID];
  [v4 encodeObject:v7 forKey:@"connectionID"];
}

- (SIRINLURequestID)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SIRINLURequestID;
  v5 = [(SIRINLURequestID *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"idAsString"];
    idAsString = v5->_idAsString;
    v5->_idAsString = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nluRequestId"];
    nluRequestId = v5->_nluRequestId;
    v5->_nluRequestId = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"connectionID"];
    connectionID = v5->_connectionID;
    v5->_connectionID = v10;
  }

  return v5;
}

- (SIRINLURequestID)initWithIdAsString:(id)a3 nluRequestId:(id)a4 connectionID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SIRINLURequestID;
  v12 = [(SIRINLURequestID *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_idAsString, a3);
    objc_storeStrong(&v13->_nluRequestId, a4);
    objc_storeStrong(&v13->_connectionID, a5);
  }

  return v13;
}

- (SIRINLURequestID)initWithIdAsString:(id)a3 connectionID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SIRINLURequestID;
  v9 = [(SIRINLURequestID *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_idAsString, a3);
    objc_storeStrong(&v10->_connectionID, a4);
    v11 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    nluRequestId = v10->_nluRequestId;
    v10->_nluRequestId = v11;
  }

  return v10;
}

@end