@interface RPPairingChallenge
- (NSNumber)throttledBy;
- (void)answerWithPIN:(id)n;
- (void)cancel;
@end

@implementation RPPairingChallenge

- (NSNumber)throttledBy
{
  selfCopy = self;
  v3 = sub_261FA0730();

  return v3;
}

- (void)answerWithPIN:(id)n
{
  v4 = sub_26203A1BC();
  v6 = v5;
  selfCopy = self;
  sub_261FA0768(v4, v6);
}

- (void)cancel
{
  selfCopy = self;
  sub_261FA0830();
}

@end