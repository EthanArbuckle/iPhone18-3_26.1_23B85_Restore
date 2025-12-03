@interface SIRINLURequest
- (SIRINLURequest)initWithCoder:(id)coder;
- (SIRINLURequest)initWithRequestId:(id)id currentTurnInput:(id)input previousTurnInputs:(id)inputs;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIRINLURequest

- (id)description
{
  requestId = [(SIRINLURequest *)self requestId];
  v4 = [requestId description];
  v5 = [SIRINLUPrintUtils indentLines:v4 numSpaces:4];

  currentTurnInput = [(SIRINLURequest *)self currentTurnInput];
  v7 = [currentTurnInput description];
  v8 = [SIRINLUPrintUtils indentLines:v7 numSpaces:4];

  previousTurnInputs = [(SIRINLURequest *)self previousTurnInputs];
  v10 = [SIRINLUPrintUtils indentArray:previousTurnInputs numSpaces:4];

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{Request\n  requestId:\n%@\n  currentTurnInput:\n%@\n  previousTurnInputs:\n%@\n}", v5, v8, v10];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  requestId = [(SIRINLURequest *)self requestId];
  [coderCopy encodeObject:requestId forKey:@"requestId"];

  currentTurnInput = [(SIRINLURequest *)self currentTurnInput];
  [coderCopy encodeObject:currentTurnInput forKey:@"currentTurnInput"];

  previousTurnInputs = [(SIRINLURequest *)self previousTurnInputs];
  [coderCopy encodeObject:previousTurnInputs forKey:@"previousTurnInputs"];
}

- (SIRINLURequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = SIRINLURequest;
  v5 = [(SIRINLURequest *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestId"];
    requestId = v5->_requestId;
    v5->_requestId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentTurnInput"];
    currentTurnInput = v5->_currentTurnInput;
    v5->_currentTurnInput = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"previousTurnInputs"];
    previousTurnInputs = v5->_previousTurnInputs;
    v5->_previousTurnInputs = v13;
  }

  return v5;
}

- (SIRINLURequest)initWithRequestId:(id)id currentTurnInput:(id)input previousTurnInputs:(id)inputs
{
  idCopy = id;
  inputCopy = input;
  inputsCopy = inputs;
  v15.receiver = self;
  v15.super_class = SIRINLURequest;
  v12 = [(SIRINLURequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_requestId, id);
    objc_storeStrong(&v13->_currentTurnInput, input);
    objc_storeStrong(&v13->_previousTurnInputs, inputs);
  }

  return v13;
}

@end