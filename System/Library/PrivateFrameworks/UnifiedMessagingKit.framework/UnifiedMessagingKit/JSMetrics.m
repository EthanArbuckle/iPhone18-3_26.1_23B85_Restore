@interface JSMetrics
- (void)enqueue:(id)a3 :(id)a4 :(id)a5;
- (void)enqueueBatch:(id)a3 :(id)a4;
- (void)flush;
@end

@implementation JSMetrics

- (void)enqueue:(id)a3 :(id)a4 :(id)a5
{
  sub_2705D7564();
  sub_2705D7464();
  sub_2705D7464();
  v6 = self;
  sub_27059D224();
}

- (void)enqueueBatch:(id)a3 :(id)a4
{
  v5 = sub_2705D7464();
  sub_2705D7464();
  v6 = self;
  sub_27059DD48(v5);
}

- (void)flush
{
  v2 = self;
  sub_27059DFA8();
}

@end