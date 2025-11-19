@interface SIRINLUUserParse
- (SIRINLUUserParse)initWithCoder:(id)a3;
- (SIRINLUUserParse)initWithUserDialogActs:(id)a3 probability:(double)a4 nsUUID:(id)a5 parserId:(id)a6;
- (SIRINLUUserParse)initWithUserDialogActs:(id)a3 probability:(double)a4 nsUUID:(id)a5 parserId:(id)a6 repetitionResult:(id)a7 parser:(id)a8 comparableProbability:(double)a9;
- (SIRINLUUserParse)initWithUserDialogActs:(id)a3 probability:(double)a4 parserId:(id)a5;
- (SIRINLUUserParse)initWithUserDialogActs:(id)a3 probability:(double)a4 parserId:(id)a5 repetitionResult:(id)a6;
- (SIRINLUUserParse)initWithUserDialogActs:(id)a3 probability:(double)a4 parserId:(id)a5 repetitionResult:(id)a6 parser:(id)a7;
- (SIRINLUUserParse)initWithUserDialogActs:(id)a3 probability:(double)a4 parserId:(id)a5 repetitionResult:(id)a6 parser:(id)a7 comparableProbability:(double)a8;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIRINLUUserParse

- (id)description
{
  v3 = [(SIRINLUUserParse *)self userDialogActs];
  v4 = [SIRINLUPrintUtils indentArray:v3 numSpaces:4];

  v5 = MEMORY[0x1E696AEC0];
  [(SIRINLUUserParse *)self probability];
  v7 = v6;
  v8 = [(SIRINLUUserParse *)self nsUUID];
  v9 = [v8 UUIDString];
  v10 = [(SIRINLUUserParse *)self parserId];
  v11 = [(SIRINLUUserParse *)self repetitionResult];
  v12 = [v11 description];
  v13 = [(SIRINLUUserParse *)self parser];
  v14 = [v13 description];
  [(SIRINLUUserParse *)self comparableProbability];
  v16 = [v5 stringWithFormat:@"{UserParse\n  userDialogActs:\n%@\n  probability: %f\n  nsUUID: %@\n  parserId: %@\n  repetitionResult: %@\n  parser: %@\n  comparableProbability: %f\n}", v4, v7, v9, v10, v12, v14, v15];

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  probability = self->_probability;
  v6 = a3;
  v13 = [v4 numberWithDouble:probability];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_comparableProbability];
  v8 = [(SIRINLUUserParse *)self userDialogActs];
  [v6 encodeObject:v8 forKey:@"userDialogActs"];

  [v6 encodeObject:v13 forKey:@"probability"];
  v9 = [(SIRINLUUserParse *)self nsUUID];
  [v6 encodeObject:v9 forKey:@"nsUUID"];

  v10 = [(SIRINLUUserParse *)self parserId];
  [v6 encodeObject:v10 forKey:@"parserId"];

  v11 = [(SIRINLUUserParse *)self repetitionResult];
  [v6 encodeObject:v11 forKey:@"repetitionResult"];

  v12 = [(SIRINLUUserParse *)self parser];
  [v6 encodeObject:v12 forKey:@"parser"];

  [v6 encodeObject:v7 forKey:@"comparableProbability"];
}

- (SIRINLUUserParse)initWithCoder:(id)a3
{
  v26 = MEMORY[0x1E695DFD8];
  v3 = a3;
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v26 setWithObjects:{v4, v5, v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  v14 = [v3 decodeObjectOfClasses:v13 forKey:@"userDialogActs"];
  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"probability"];
  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"nsUUID"];
  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"parserId"];
  [v15 doubleValue];
  v19 = v18;
  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"repetitionResult"];
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"parser"];
  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"comparableProbability"];

  [v22 doubleValue];
  v24 = [(SIRINLUUserParse *)self initWithUserDialogActs:v14 probability:v16 nsUUID:v17 parserId:v20 repetitionResult:v21 parser:v19 comparableProbability:v23];

  return v24;
}

- (SIRINLUUserParse)initWithUserDialogActs:(id)a3 probability:(double)a4 nsUUID:(id)a5 parserId:(id)a6 repetitionResult:(id)a7 parser:(id)a8 comparableProbability:(double)a9
{
  v24 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v25.receiver = self;
  v25.super_class = SIRINLUUserParse;
  v21 = [(SIRINLUUserParse *)&v25 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_userDialogActs, a3);
    v22->_probability = a4;
    objc_storeStrong(&v22->_nsUUID, a5);
    objc_storeStrong(&v22->_parserId, a6);
    objc_storeStrong(&v22->_repetitionResult, a7);
    objc_storeStrong(&v22->_parser, a8);
    v22->_comparableProbability = a9;
  }

  return v22;
}

- (SIRINLUUserParse)initWithUserDialogActs:(id)a3 probability:(double)a4 nsUUID:(id)a5 parserId:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [[SIRINLURepetitionResult alloc] initWithAsrHypothesisIndex:0 repetitionType:0];
  v14 = [(SIRINLUUserParse *)self initWithUserDialogActs:v12 probability:v11 nsUUID:v10 parserId:v13 repetitionResult:0 parser:a4 comparableProbability:0.0];

  return v14;
}

- (SIRINLUUserParse)initWithUserDialogActs:(id)a3 probability:(double)a4 parserId:(id)a5
{
  v8 = MEMORY[0x1E696AFB0];
  v9 = a5;
  v10 = a3;
  v11 = [v8 UUID];
  v12 = [(SIRINLUUserParse *)self initWithUserDialogActs:v10 probability:v11 nsUUID:v9 parserId:a4];

  return v12;
}

- (SIRINLUUserParse)initWithUserDialogActs:(id)a3 probability:(double)a4 parserId:(id)a5 repetitionResult:(id)a6
{
  v10 = MEMORY[0x1E696AFB0];
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = [v10 UUID];
  v15 = [(SIRINLUUserParse *)self initWithUserDialogActs:v13 probability:v14 nsUUID:v12 parserId:v11 repetitionResult:0 parser:a4 comparableProbability:0.0];

  return v15;
}

- (SIRINLUUserParse)initWithUserDialogActs:(id)a3 probability:(double)a4 parserId:(id)a5 repetitionResult:(id)a6 parser:(id)a7
{
  v12 = MEMORY[0x1E696AFB0];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a3;
  v17 = [v12 UUID];
  v18 = [(SIRINLUUserParse *)self initWithUserDialogActs:v16 probability:v17 nsUUID:v15 parserId:v14 repetitionResult:v13 parser:a4 comparableProbability:0.0];

  return v18;
}

- (SIRINLUUserParse)initWithUserDialogActs:(id)a3 probability:(double)a4 parserId:(id)a5 repetitionResult:(id)a6 parser:(id)a7 comparableProbability:(double)a8
{
  v14 = MEMORY[0x1E696AFB0];
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a3;
  v19 = [v14 UUID];
  v20 = [(SIRINLUUserParse *)self initWithUserDialogActs:v18 probability:v19 nsUUID:v17 parserId:v16 repetitionResult:v15 parser:a4 comparableProbability:a8];

  return v20;
}

@end