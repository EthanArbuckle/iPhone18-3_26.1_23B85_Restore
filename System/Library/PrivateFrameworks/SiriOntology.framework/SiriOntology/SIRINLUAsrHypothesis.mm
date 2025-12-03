@interface SIRINLUAsrHypothesis
- (SIRINLUAsrHypothesis)initWithCoder:(id)coder;
- (SIRINLUAsrHypothesis)initWithUtterance:(id)utterance probability:(double)probability asrTokens:(id)tokens uuid:(id)uuid;
- (SIRINLUAsrHypothesis)initWithUtterance:(id)utterance probability:(double)probability uuid:(id)uuid;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIRINLUAsrHypothesis

- (id)description
{
  asrTokens = [(SIRINLUAsrHypothesis *)self asrTokens];
  v4 = [SIRINLUPrintUtils indentArray:asrTokens numSpaces:4];

  v5 = MEMORY[0x1E696AEC0];
  utterance = [(SIRINLUAsrHypothesis *)self utterance];
  [(SIRINLUAsrHypothesis *)self probability];
  v8 = v7;
  uuid = [(SIRINLUAsrHypothesis *)self uuid];
  uUIDString = [uuid UUIDString];
  v11 = [v5 stringWithFormat:@"{AsrHypothesis:\n  utterance: %@\n  probability: %f\n  asrTokens: %@\n  uuid: %@\n}", utterance, v8, v4, uUIDString];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  probability = self->_probability;
  coderCopy = coder;
  v10 = [v4 numberWithDouble:probability];
  utterance = [(SIRINLUAsrHypothesis *)self utterance];
  [coderCopy encodeObject:utterance forKey:@"utterance"];

  [coderCopy encodeObject:v10 forKey:@"probability"];
  uuid = [(SIRINLUAsrHypothesis *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"uuid"];

  asrTokens = [(SIRINLUAsrHypothesis *)self asrTokens];
  [coderCopy encodeObject:asrTokens forKey:@"asrTokens"];
}

- (SIRINLUAsrHypothesis)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = SIRINLUAsrHypothesis;
  v5 = [(SIRINLUAsrHypothesis *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"utterance"];
    utterance = v5->_utterance;
    v5->_utterance = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"probability"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v9;

    [v8 doubleValue];
    v5->_probability = v11;
    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"asrTokens"];
    asrTokens = v5->_asrTokens;
    v5->_asrTokens = v15;
  }

  return v5;
}

- (SIRINLUAsrHypothesis)initWithUtterance:(id)utterance probability:(double)probability asrTokens:(id)tokens uuid:(id)uuid
{
  utteranceCopy = utterance;
  tokensCopy = tokens;
  uuidCopy = uuid;
  v17.receiver = self;
  v17.super_class = SIRINLUAsrHypothesis;
  v14 = [(SIRINLUAsrHypothesis *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_utterance, utterance);
    v15->_probability = probability;
    objc_storeStrong(&v15->_uuid, uuid);
    objc_storeStrong(&v15->_asrTokens, tokens);
  }

  return v15;
}

- (SIRINLUAsrHypothesis)initWithUtterance:(id)utterance probability:(double)probability uuid:(id)uuid
{
  utteranceCopy = utterance;
  uuidCopy = uuid;
  v15.receiver = self;
  v15.super_class = SIRINLUAsrHypothesis;
  v11 = [(SIRINLUAsrHypothesis *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_utterance, utterance);
    v12->_probability = probability;
    objc_storeStrong(&v12->_uuid, uuid);
    asrTokens = v12->_asrTokens;
    v12->_asrTokens = MEMORY[0x1E695E0F0];
  }

  return v12;
}

@end