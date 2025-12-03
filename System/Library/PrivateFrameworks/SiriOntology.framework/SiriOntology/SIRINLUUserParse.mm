@interface SIRINLUUserParse
- (SIRINLUUserParse)initWithCoder:(id)coder;
- (SIRINLUUserParse)initWithUserDialogActs:(id)acts probability:(double)probability nsUUID:(id)d parserId:(id)id;
- (SIRINLUUserParse)initWithUserDialogActs:(id)acts probability:(double)probability nsUUID:(id)d parserId:(id)id repetitionResult:(id)result parser:(id)parser comparableProbability:(double)comparableProbability;
- (SIRINLUUserParse)initWithUserDialogActs:(id)acts probability:(double)probability parserId:(id)id;
- (SIRINLUUserParse)initWithUserDialogActs:(id)acts probability:(double)probability parserId:(id)id repetitionResult:(id)result;
- (SIRINLUUserParse)initWithUserDialogActs:(id)acts probability:(double)probability parserId:(id)id repetitionResult:(id)result parser:(id)parser;
- (SIRINLUUserParse)initWithUserDialogActs:(id)acts probability:(double)probability parserId:(id)id repetitionResult:(id)result parser:(id)parser comparableProbability:(double)comparableProbability;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIRINLUUserParse

- (id)description
{
  userDialogActs = [(SIRINLUUserParse *)self userDialogActs];
  v4 = [SIRINLUPrintUtils indentArray:userDialogActs numSpaces:4];

  v5 = MEMORY[0x1E696AEC0];
  [(SIRINLUUserParse *)self probability];
  v7 = v6;
  nsUUID = [(SIRINLUUserParse *)self nsUUID];
  uUIDString = [nsUUID UUIDString];
  parserId = [(SIRINLUUserParse *)self parserId];
  repetitionResult = [(SIRINLUUserParse *)self repetitionResult];
  v12 = [repetitionResult description];
  parser = [(SIRINLUUserParse *)self parser];
  v14 = [parser description];
  [(SIRINLUUserParse *)self comparableProbability];
  v16 = [v5 stringWithFormat:@"{UserParse\n  userDialogActs:\n%@\n  probability: %f\n  nsUUID: %@\n  parserId: %@\n  repetitionResult: %@\n  parser: %@\n  comparableProbability: %f\n}", v4, v7, uUIDString, parserId, v12, v14, v15];

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  probability = self->_probability;
  coderCopy = coder;
  v13 = [v4 numberWithDouble:probability];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_comparableProbability];
  userDialogActs = [(SIRINLUUserParse *)self userDialogActs];
  [coderCopy encodeObject:userDialogActs forKey:@"userDialogActs"];

  [coderCopy encodeObject:v13 forKey:@"probability"];
  nsUUID = [(SIRINLUUserParse *)self nsUUID];
  [coderCopy encodeObject:nsUUID forKey:@"nsUUID"];

  parserId = [(SIRINLUUserParse *)self parserId];
  [coderCopy encodeObject:parserId forKey:@"parserId"];

  repetitionResult = [(SIRINLUUserParse *)self repetitionResult];
  [coderCopy encodeObject:repetitionResult forKey:@"repetitionResult"];

  parser = [(SIRINLUUserParse *)self parser];
  [coderCopy encodeObject:parser forKey:@"parser"];

  [coderCopy encodeObject:v7 forKey:@"comparableProbability"];
}

- (SIRINLUUserParse)initWithCoder:(id)coder
{
  v26 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
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
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"userDialogActs"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"probability"];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nsUUID"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parserId"];
  [v15 doubleValue];
  v19 = v18;
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"repetitionResult"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parser"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"comparableProbability"];

  [v22 doubleValue];
  v24 = [(SIRINLUUserParse *)self initWithUserDialogActs:v14 probability:v16 nsUUID:v17 parserId:v20 repetitionResult:v21 parser:v19 comparableProbability:v23];

  return v24;
}

- (SIRINLUUserParse)initWithUserDialogActs:(id)acts probability:(double)probability nsUUID:(id)d parserId:(id)id repetitionResult:(id)result parser:(id)parser comparableProbability:(double)comparableProbability
{
  actsCopy = acts;
  dCopy = d;
  idCopy = id;
  resultCopy = result;
  parserCopy = parser;
  v25.receiver = self;
  v25.super_class = SIRINLUUserParse;
  v21 = [(SIRINLUUserParse *)&v25 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_userDialogActs, acts);
    v22->_probability = probability;
    objc_storeStrong(&v22->_nsUUID, d);
    objc_storeStrong(&v22->_parserId, id);
    objc_storeStrong(&v22->_repetitionResult, result);
    objc_storeStrong(&v22->_parser, parser);
    v22->_comparableProbability = comparableProbability;
  }

  return v22;
}

- (SIRINLUUserParse)initWithUserDialogActs:(id)acts probability:(double)probability nsUUID:(id)d parserId:(id)id
{
  idCopy = id;
  dCopy = d;
  actsCopy = acts;
  v13 = [[SIRINLURepetitionResult alloc] initWithAsrHypothesisIndex:0 repetitionType:0];
  v14 = [(SIRINLUUserParse *)self initWithUserDialogActs:actsCopy probability:dCopy nsUUID:idCopy parserId:v13 repetitionResult:0 parser:probability comparableProbability:0.0];

  return v14;
}

- (SIRINLUUserParse)initWithUserDialogActs:(id)acts probability:(double)probability parserId:(id)id
{
  v8 = MEMORY[0x1E696AFB0];
  idCopy = id;
  actsCopy = acts;
  uUID = [v8 UUID];
  v12 = [(SIRINLUUserParse *)self initWithUserDialogActs:actsCopy probability:uUID nsUUID:idCopy parserId:probability];

  return v12;
}

- (SIRINLUUserParse)initWithUserDialogActs:(id)acts probability:(double)probability parserId:(id)id repetitionResult:(id)result
{
  v10 = MEMORY[0x1E696AFB0];
  resultCopy = result;
  idCopy = id;
  actsCopy = acts;
  uUID = [v10 UUID];
  v15 = [(SIRINLUUserParse *)self initWithUserDialogActs:actsCopy probability:uUID nsUUID:idCopy parserId:resultCopy repetitionResult:0 parser:probability comparableProbability:0.0];

  return v15;
}

- (SIRINLUUserParse)initWithUserDialogActs:(id)acts probability:(double)probability parserId:(id)id repetitionResult:(id)result parser:(id)parser
{
  v12 = MEMORY[0x1E696AFB0];
  parserCopy = parser;
  resultCopy = result;
  idCopy = id;
  actsCopy = acts;
  uUID = [v12 UUID];
  v18 = [(SIRINLUUserParse *)self initWithUserDialogActs:actsCopy probability:uUID nsUUID:idCopy parserId:resultCopy repetitionResult:parserCopy parser:probability comparableProbability:0.0];

  return v18;
}

- (SIRINLUUserParse)initWithUserDialogActs:(id)acts probability:(double)probability parserId:(id)id repetitionResult:(id)result parser:(id)parser comparableProbability:(double)comparableProbability
{
  v14 = MEMORY[0x1E696AFB0];
  parserCopy = parser;
  resultCopy = result;
  idCopy = id;
  actsCopy = acts;
  uUID = [v14 UUID];
  v20 = [(SIRINLUUserParse *)self initWithUserDialogActs:actsCopy probability:uUID nsUUID:idCopy parserId:resultCopy repetitionResult:parserCopy parser:probability comparableProbability:comparableProbability];

  return v20;
}

@end