@interface JSMetrics
- (void)enqueue:(id)enqueue :(id)a4 :(id)a5;
- (void)enqueueBatch:(id)batch :(id)a4;
- (void)flush;
@end

@implementation JSMetrics

- (void)enqueue:(id)enqueue :(id)a4 :(id)a5
{
  sub_2705D7564();
  sub_2705D7464();
  sub_2705D7464();
  selfCopy = self;
  sub_27059D224();
}

- (void)enqueueBatch:(id)batch :(id)a4
{
  v5 = sub_2705D7464();
  sub_2705D7464();
  selfCopy = self;
  sub_27059DD48(v5);
}

- (void)flush
{
  selfCopy = self;
  sub_27059DFA8();
}

@end