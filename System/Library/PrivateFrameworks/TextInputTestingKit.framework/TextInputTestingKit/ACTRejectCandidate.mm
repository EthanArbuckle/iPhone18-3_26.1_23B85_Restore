@interface ACTRejectCandidate
- (ACTRejectCandidate)initWithCandidate:(id)candidate timestamp:(double)timestamp;
- (id)description;
- (void)applyWithTyper:(id)typer log:(id)log;
@end

@implementation ACTRejectCandidate

- (void)applyWithTyper:(id)typer log:(id)log
{
  logCopy = log;
  typerCopy = typer;
  candidate = [(ACTRejectCandidate *)self candidate];
  [(ACTRejectCandidate *)self timestamp];
  [typerCopy _performRejectCandidate:candidate timestamp:logCopy typingLog:?];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  candidate = [(ACTRejectCandidate *)self candidate];
  [(ACTRejectCandidate *)self timestamp];
  v8 = [v3 stringWithFormat:@"<%@: candidate=%@, t=%.2f>", v5, candidate, v7];

  return v8;
}

- (ACTRejectCandidate)initWithCandidate:(id)candidate timestamp:(double)timestamp
{
  candidateCopy = candidate;
  v11.receiver = self;
  v11.super_class = ACTRejectCandidate;
  v8 = [(ACTRejectCandidate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_candidate, candidate);
    v9->_timestamp = timestamp;
  }

  return v9;
}

@end