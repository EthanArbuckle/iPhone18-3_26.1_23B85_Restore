@interface SIRINLUResponse
- (SIRINLUResponse)initWithCoder:(id)coder;
- (SIRINLUResponse)initWithRequestId:(id)id parses:(id)parses;
- (SIRINLUResponse)initWithRequestId:(id)id parses:(id)parses repetitionResults:(id)results;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIRINLUResponse

- (id)description
{
  requestId = [(SIRINLUResponse *)self requestId];
  v4 = [requestId description];
  v5 = [SIRINLUPrintUtils indentLines:v4 numSpaces:4];

  repetitionResults = [(SIRINLUResponse *)self repetitionResults];
  v7 = [SIRINLUPrintUtils indentArray:repetitionResults numSpaces:4];

  parses = [(SIRINLUResponse *)self parses];
  v9 = [SIRINLUPrintUtils indentArray:parses numSpaces:4];

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{Response\n  requestId:\n%@\n  parses:\n%@\n  repetitionResults:\n%@\n}", v5, v9, v7];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  requestId = [(SIRINLUResponse *)self requestId];
  [coderCopy encodeObject:requestId forKey:@"requestId"];

  parses = [(SIRINLUResponse *)self parses];
  [coderCopy encodeObject:parses forKey:@"parses"];

  repetitionResults = [(SIRINLUResponse *)self repetitionResults];
  [coderCopy encodeObject:repetitionResults forKey:@"repetitionResults"];
}

- (SIRINLUResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = SIRINLUResponse;
  v5 = [(SIRINLUResponse *)&v19 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestId"];
    requestId = v5->_requestId;
    v5->_requestId = v9;

    v11 = [coderCopy decodeObjectOfClasses:v8 forKey:@"parses"];
    parses = v5->_parses;
    v5->_parses = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"repetitionResults"];
    repetitionResults = v5->_repetitionResults;
    v5->_repetitionResults = v16;
  }

  return v5;
}

- (SIRINLUResponse)initWithRequestId:(id)id parses:(id)parses repetitionResults:(id)results
{
  idCopy = id;
  parsesCopy = parses;
  resultsCopy = results;
  v15.receiver = self;
  v15.super_class = SIRINLUResponse;
  v12 = [(SIRINLUResponse *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_requestId, id);
    objc_storeStrong(&v13->_parses, parses);
    objc_storeStrong(&v13->_repetitionResults, results);
  }

  return v13;
}

- (SIRINLUResponse)initWithRequestId:(id)id parses:(id)parses
{
  idCopy = id;
  parsesCopy = parses;
  v13.receiver = self;
  v13.super_class = SIRINLUResponse;
  v9 = [(SIRINLUResponse *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_requestId, id);
    objc_storeStrong(&v10->_parses, parses);
    repetitionResults = v10->_repetitionResults;
    v10->_repetitionResults = MEMORY[0x1E695E0F0];
  }

  return v10;
}

@end