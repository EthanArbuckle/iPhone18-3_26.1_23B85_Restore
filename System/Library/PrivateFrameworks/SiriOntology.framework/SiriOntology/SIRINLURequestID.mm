@interface SIRINLURequestID
- (SIRINLURequestID)initWithCoder:(id)coder;
- (SIRINLURequestID)initWithIdAsString:(id)string connectionID:(id)d;
- (SIRINLURequestID)initWithIdAsString:(id)string nluRequestId:(id)id connectionID:(id)d;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIRINLURequestID

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  idAsString = [(SIRINLURequestID *)self idAsString];
  nluRequestId = [(SIRINLURequestID *)self nluRequestId];
  connectionID = [(SIRINLURequestID *)self connectionID];
  v7 = [v3 stringWithFormat:@"{RequestID:\n  idAsString: %@\n  nluRequestId: %@\n  connectionID: %@\n}", idAsString, nluRequestId, connectionID];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  idAsString = [(SIRINLURequestID *)self idAsString];
  [coderCopy encodeObject:idAsString forKey:@"idAsString"];

  nluRequestId = [(SIRINLURequestID *)self nluRequestId];
  [coderCopy encodeObject:nluRequestId forKey:@"nluRequestId"];

  connectionID = [(SIRINLURequestID *)self connectionID];
  [coderCopy encodeObject:connectionID forKey:@"connectionID"];
}

- (SIRINLURequestID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = SIRINLURequestID;
  v5 = [(SIRINLURequestID *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"idAsString"];
    idAsString = v5->_idAsString;
    v5->_idAsString = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nluRequestId"];
    nluRequestId = v5->_nluRequestId;
    v5->_nluRequestId = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"connectionID"];
    connectionID = v5->_connectionID;
    v5->_connectionID = v10;
  }

  return v5;
}

- (SIRINLURequestID)initWithIdAsString:(id)string nluRequestId:(id)id connectionID:(id)d
{
  stringCopy = string;
  idCopy = id;
  dCopy = d;
  v15.receiver = self;
  v15.super_class = SIRINLURequestID;
  v12 = [(SIRINLURequestID *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_idAsString, string);
    objc_storeStrong(&v13->_nluRequestId, id);
    objc_storeStrong(&v13->_connectionID, d);
  }

  return v13;
}

- (SIRINLURequestID)initWithIdAsString:(id)string connectionID:(id)d
{
  stringCopy = string;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = SIRINLURequestID;
  v9 = [(SIRINLURequestID *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_idAsString, string);
    objc_storeStrong(&v10->_connectionID, d);
    v11 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    nluRequestId = v10->_nluRequestId;
    v10->_nluRequestId = v11;
  }

  return v10;
}

@end