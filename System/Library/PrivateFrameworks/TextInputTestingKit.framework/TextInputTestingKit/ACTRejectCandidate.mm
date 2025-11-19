@interface ACTRejectCandidate
- (ACTRejectCandidate)initWithCandidate:(id)a3 timestamp:(double)a4;
- (id)description;
- (void)applyWithTyper:(id)a3 log:(id)a4;
@end

@implementation ACTRejectCandidate

- (void)applyWithTyper:(id)a3 log:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACTRejectCandidate *)self candidate];
  [(ACTRejectCandidate *)self timestamp];
  [v7 _performRejectCandidate:v8 timestamp:v6 typingLog:?];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ACTRejectCandidate *)self candidate];
  [(ACTRejectCandidate *)self timestamp];
  v8 = [v3 stringWithFormat:@"<%@: candidate=%@, t=%.2f>", v5, v6, v7];

  return v8;
}

- (ACTRejectCandidate)initWithCandidate:(id)a3 timestamp:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = ACTRejectCandidate;
  v8 = [(ACTRejectCandidate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_candidate, a3);
    v9->_timestamp = a4;
  }

  return v9;
}

@end