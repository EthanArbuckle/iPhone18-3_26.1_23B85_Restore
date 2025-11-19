@interface ACTAcceptCandidate
- (ACTAcceptCandidate)initWithCandidate:(id)a3 timestamp:(double)a4 intendedCandidate:(id)a5;
- (id)description;
- (id)shortDescription;
- (void)applyWithTyper:(id)a3 log:(id)a4;
@end

@implementation ACTAcceptCandidate

- (void)applyWithTyper:(id)a3 log:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACTAcceptCandidate *)self candidate];
  [(ACTAcceptCandidate *)self timestamp];
  [v7 _performAcceptCandidate:v8 timestamp:v6 typingLog:1 predictiveCandidate:self->_intendedCandidate intendedTransliteration:?];
}

- (id)shortDescription
{
  v3 = [(ACTAcceptCandidate *)self candidate];
  v4 = [v3 input];
  v5 = @"Prediction Accepted";
  if (([v4 isEqualToString:@" "] & 1) == 0)
  {
    v6 = [(ACTAcceptCandidate *)self candidate];
    v7 = [v6 input];
    v8 = [v7 isEqualToString:&stru_287EC4808];
    v9 = @"Completion Accepted";
    if (v8)
    {
      v9 = @"Prediction Accepted";
    }

    v5 = v9;
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = [(ACTAcceptCandidate *)self candidate];
  v12 = [v11 candidate];
  v13 = [v10 stringWithFormat:@"%@: %@ ", v5, v12];

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ACTAcceptCandidate *)self candidate];
  [(ACTAcceptCandidate *)self timestamp];
  v8 = [v3 stringWithFormat:@"<%@: candidate=%@, t=%.2f>", v5, v6, v7];

  return v8;
}

- (ACTAcceptCandidate)initWithCandidate:(id)a3 timestamp:(double)a4 intendedCandidate:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = ACTAcceptCandidate;
  v11 = [(ACTAcceptCandidate *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_candidate, a3);
    v12->_timestamp = a4;
    objc_storeStrong(&v12->_intendedCandidate, a5);
  }

  return v12;
}

@end