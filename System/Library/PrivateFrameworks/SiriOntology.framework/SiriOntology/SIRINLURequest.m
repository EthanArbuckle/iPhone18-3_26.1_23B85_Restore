@interface SIRINLURequest
- (SIRINLURequest)initWithCoder:(id)a3;
- (SIRINLURequest)initWithRequestId:(id)a3 currentTurnInput:(id)a4 previousTurnInputs:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIRINLURequest

- (id)description
{
  v3 = [(SIRINLURequest *)self requestId];
  v4 = [v3 description];
  v5 = [SIRINLUPrintUtils indentLines:v4 numSpaces:4];

  v6 = [(SIRINLURequest *)self currentTurnInput];
  v7 = [v6 description];
  v8 = [SIRINLUPrintUtils indentLines:v7 numSpaces:4];

  v9 = [(SIRINLURequest *)self previousTurnInputs];
  v10 = [SIRINLUPrintUtils indentArray:v9 numSpaces:4];

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{Request\n  requestId:\n%@\n  currentTurnInput:\n%@\n  previousTurnInputs:\n%@\n}", v5, v8, v10];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SIRINLURequest *)self requestId];
  [v4 encodeObject:v5 forKey:@"requestId"];

  v6 = [(SIRINLURequest *)self currentTurnInput];
  [v4 encodeObject:v6 forKey:@"currentTurnInput"];

  v7 = [(SIRINLURequest *)self previousTurnInputs];
  [v4 encodeObject:v7 forKey:@"previousTurnInputs"];
}

- (SIRINLURequest)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SIRINLURequest;
  v5 = [(SIRINLURequest *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestId"];
    requestId = v5->_requestId;
    v5->_requestId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentTurnInput"];
    currentTurnInput = v5->_currentTurnInput;
    v5->_currentTurnInput = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"previousTurnInputs"];
    previousTurnInputs = v5->_previousTurnInputs;
    v5->_previousTurnInputs = v13;
  }

  return v5;
}

- (SIRINLURequest)initWithRequestId:(id)a3 currentTurnInput:(id)a4 previousTurnInputs:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SIRINLURequest;
  v12 = [(SIRINLURequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_requestId, a3);
    objc_storeStrong(&v13->_currentTurnInput, a4);
    objc_storeStrong(&v13->_previousTurnInputs, a5);
  }

  return v13;
}

@end