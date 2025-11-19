@interface RPPairingChallenge
- (NSNumber)throttledBy;
- (void)answerWithPIN:(id)a3;
- (void)cancel;
@end

@implementation RPPairingChallenge

- (NSNumber)throttledBy
{
  v2 = self;
  v3 = sub_261FA0730();

  return v3;
}

- (void)answerWithPIN:(id)a3
{
  v4 = sub_26203A1BC();
  v6 = v5;
  v7 = self;
  sub_261FA0768(v4, v6);
}

- (void)cancel
{
  v2 = self;
  sub_261FA0830();
}

@end