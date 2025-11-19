@interface Score
- (id)description;
@end

@implementation Score

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  [(Score *)self upPct];
  v5 = v4;
  [(Score *)self overallStay];
  v7 = v6;
  [(Score *)self handicapStay];
  v9 = v8;
  [(Score *)self connSuccesses];
  v11 = v10;
  [(Score *)self connAttempts];
  v13 = v12;
  [(Score *)self epochs];
  v15 = v14;
  [(Score *)self lqmTransitionCount];
  v17 = [v3 initWithFormat:@"(uppct/all/imp/succ/atts/epochs/lqmtrans): %.1f/%.0f/%.0f/%.0f/%.0f/%.0f/%.0f", v5, v7, v9, v11, v13, v15, v16];

  return v17;
}

@end