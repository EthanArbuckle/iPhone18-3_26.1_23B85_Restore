@interface CSDDuetDonater
- (void)reportingController:(id)a3 addedActivatedLink:(id)a4;
- (void)reportingController:(id)a3 statusChangedForCall:(id)a4 totalCallCount:(unint64_t)a5;
@end

@implementation CSDDuetDonater

- (void)reportingController:(id)a3 statusChangedForCall:(id)a4 totalCallCount:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_100037484(v9, v8);
}

- (void)reportingController:(id)a3 addedActivatedLink:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10031F0F0();
}

@end