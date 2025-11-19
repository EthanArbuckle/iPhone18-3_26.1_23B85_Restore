@interface ISURLRequestPerformance
- (void)dealloc;
@end

@implementation ISURLRequestPerformance

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ISURLRequestPerformance;
  [(ISURLRequestPerformance *)&v3 dealloc];
}

@end