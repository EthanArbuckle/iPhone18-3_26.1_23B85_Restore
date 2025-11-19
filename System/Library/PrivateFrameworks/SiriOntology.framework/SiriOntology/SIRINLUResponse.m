@interface SIRINLUResponse
- (SIRINLUResponse)initWithCoder:(id)a3;
- (SIRINLUResponse)initWithRequestId:(id)a3 parses:(id)a4;
- (SIRINLUResponse)initWithRequestId:(id)a3 parses:(id)a4 repetitionResults:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIRINLUResponse

- (id)description
{
  v3 = [(SIRINLUResponse *)self requestId];
  v4 = [v3 description];
  v5 = [SIRINLUPrintUtils indentLines:v4 numSpaces:4];

  v6 = [(SIRINLUResponse *)self repetitionResults];
  v7 = [SIRINLUPrintUtils indentArray:v6 numSpaces:4];

  v8 = [(SIRINLUResponse *)self parses];
  v9 = [SIRINLUPrintUtils indentArray:v8 numSpaces:4];

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{Response\n  requestId:\n%@\n  parses:\n%@\n  repetitionResults:\n%@\n}", v5, v9, v7];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SIRINLUResponse *)self requestId];
  [v4 encodeObject:v5 forKey:@"requestId"];

  v6 = [(SIRINLUResponse *)self parses];
  [v4 encodeObject:v6 forKey:@"parses"];

  v7 = [(SIRINLUResponse *)self repetitionResults];
  [v4 encodeObject:v7 forKey:@"repetitionResults"];
}

- (SIRINLUResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SIRINLUResponse;
  v5 = [(SIRINLUResponse *)&v19 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestId"];
    requestId = v5->_requestId;
    v5->_requestId = v9;

    v11 = [v4 decodeObjectOfClasses:v8 forKey:@"parses"];
    parses = v5->_parses;
    v5->_parses = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"repetitionResults"];
    repetitionResults = v5->_repetitionResults;
    v5->_repetitionResults = v16;
  }

  return v5;
}

- (SIRINLUResponse)initWithRequestId:(id)a3 parses:(id)a4 repetitionResults:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SIRINLUResponse;
  v12 = [(SIRINLUResponse *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_requestId, a3);
    objc_storeStrong(&v13->_parses, a4);
    objc_storeStrong(&v13->_repetitionResults, a5);
  }

  return v13;
}

- (SIRINLUResponse)initWithRequestId:(id)a3 parses:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = SIRINLUResponse;
  v9 = [(SIRINLUResponse *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_requestId, a3);
    objc_storeStrong(&v10->_parses, a4);
    repetitionResults = v10->_repetitionResults;
    v10->_repetitionResults = MEMORY[0x1E695E0F0];
  }

  return v10;
}

@end