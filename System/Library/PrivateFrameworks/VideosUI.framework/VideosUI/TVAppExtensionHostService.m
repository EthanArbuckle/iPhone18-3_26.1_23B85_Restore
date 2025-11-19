@interface TVAppExtensionHostService
- (void)dismiss;
- (void)finishLoading;
- (void)playTrailerWithPlayableData:(id)a3;
- (void)reportWithError:(id)a3;
@end

@implementation TVAppExtensionHostService

- (void)reportWithError:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E38DBB14();
}

- (void)dismiss
{
  v2 = self;
  sub_1E38DBD50();
}

- (void)finishLoading
{
  v2 = self;
  sub_1E38DBDC0();
}

- (void)playTrailerWithPlayableData:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = sub_1E41FE464();
  v7 = v6;

  sub_1E38DC150();
  sub_1E38DCCB0(v5, v7);
}

@end