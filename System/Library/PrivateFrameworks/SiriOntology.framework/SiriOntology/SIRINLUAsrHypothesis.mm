@interface SIRINLUAsrHypothesis
- (SIRINLUAsrHypothesis)initWithCoder:(id)a3;
- (SIRINLUAsrHypothesis)initWithUtterance:(id)a3 probability:(double)a4 asrTokens:(id)a5 uuid:(id)a6;
- (SIRINLUAsrHypothesis)initWithUtterance:(id)a3 probability:(double)a4 uuid:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIRINLUAsrHypothesis

- (id)description
{
  v3 = [(SIRINLUAsrHypothesis *)self asrTokens];
  v4 = [SIRINLUPrintUtils indentArray:v3 numSpaces:4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(SIRINLUAsrHypothesis *)self utterance];
  [(SIRINLUAsrHypothesis *)self probability];
  v8 = v7;
  v9 = [(SIRINLUAsrHypothesis *)self uuid];
  v10 = [v9 UUIDString];
  v11 = [v5 stringWithFormat:@"{AsrHypothesis:\n  utterance: %@\n  probability: %f\n  asrTokens: %@\n  uuid: %@\n}", v6, v8, v4, v10];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  probability = self->_probability;
  v6 = a3;
  v10 = [v4 numberWithDouble:probability];
  v7 = [(SIRINLUAsrHypothesis *)self utterance];
  [v6 encodeObject:v7 forKey:@"utterance"];

  [v6 encodeObject:v10 forKey:@"probability"];
  v8 = [(SIRINLUAsrHypothesis *)self uuid];
  [v6 encodeObject:v8 forKey:@"uuid"];

  v9 = [(SIRINLUAsrHypothesis *)self asrTokens];
  [v6 encodeObject:v9 forKey:@"asrTokens"];
}

- (SIRINLUAsrHypothesis)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SIRINLUAsrHypothesis;
  v5 = [(SIRINLUAsrHypothesis *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"utterance"];
    utterance = v5->_utterance;
    v5->_utterance = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"probability"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v9;

    [v8 doubleValue];
    v5->_probability = v11;
    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"asrTokens"];
    asrTokens = v5->_asrTokens;
    v5->_asrTokens = v15;
  }

  return v5;
}

- (SIRINLUAsrHypothesis)initWithUtterance:(id)a3 probability:(double)a4 asrTokens:(id)a5 uuid:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = SIRINLUAsrHypothesis;
  v14 = [(SIRINLUAsrHypothesis *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_utterance, a3);
    v15->_probability = a4;
    objc_storeStrong(&v15->_uuid, a6);
    objc_storeStrong(&v15->_asrTokens, a5);
  }

  return v15;
}

- (SIRINLUAsrHypothesis)initWithUtterance:(id)a3 probability:(double)a4 uuid:(id)a5
{
  v9 = a3;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = SIRINLUAsrHypothesis;
  v11 = [(SIRINLUAsrHypothesis *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_utterance, a3);
    v12->_probability = a4;
    objc_storeStrong(&v12->_uuid, a5);
    asrTokens = v12->_asrTokens;
    v12->_asrTokens = MEMORY[0x1E695E0F0];
  }

  return v12;
}

@end