@interface ACTAcceptCandidate
- (ACTAcceptCandidate)initWithCandidate:(id)candidate timestamp:(double)timestamp intendedCandidate:(id)intendedCandidate;
- (id)description;
- (id)shortDescription;
- (void)applyWithTyper:(id)typer log:(id)log;
@end

@implementation ACTAcceptCandidate

- (void)applyWithTyper:(id)typer log:(id)log
{
  logCopy = log;
  typerCopy = typer;
  candidate = [(ACTAcceptCandidate *)self candidate];
  [(ACTAcceptCandidate *)self timestamp];
  [typerCopy _performAcceptCandidate:candidate timestamp:logCopy typingLog:1 predictiveCandidate:self->_intendedCandidate intendedTransliteration:?];
}

- (id)shortDescription
{
  candidate = [(ACTAcceptCandidate *)self candidate];
  input = [candidate input];
  v5 = @"Prediction Accepted";
  if (([input isEqualToString:@" "] & 1) == 0)
  {
    candidate2 = [(ACTAcceptCandidate *)self candidate];
    input2 = [candidate2 input];
    v8 = [input2 isEqualToString:&stru_287EC4808];
    v9 = @"Completion Accepted";
    if (v8)
    {
      v9 = @"Prediction Accepted";
    }

    v5 = v9;
  }

  v10 = MEMORY[0x277CCACA8];
  candidate3 = [(ACTAcceptCandidate *)self candidate];
  v11Candidate = [candidate3 candidate];
  v13 = [v10 stringWithFormat:@"%@: %@ ", v5, v11Candidate];

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  candidate = [(ACTAcceptCandidate *)self candidate];
  [(ACTAcceptCandidate *)self timestamp];
  v8 = [v3 stringWithFormat:@"<%@: candidate=%@, t=%.2f>", v5, candidate, v7];

  return v8;
}

- (ACTAcceptCandidate)initWithCandidate:(id)candidate timestamp:(double)timestamp intendedCandidate:(id)intendedCandidate
{
  candidateCopy = candidate;
  intendedCandidateCopy = intendedCandidate;
  v14.receiver = self;
  v14.super_class = ACTAcceptCandidate;
  v11 = [(ACTAcceptCandidate *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_candidate, candidate);
    v12->_timestamp = timestamp;
    objc_storeStrong(&v12->_intendedCandidate, intendedCandidate);
  }

  return v12;
}

@end