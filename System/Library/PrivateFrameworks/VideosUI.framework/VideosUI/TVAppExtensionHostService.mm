@interface TVAppExtensionHostService
- (void)dismiss;
- (void)finishLoading;
- (void)playTrailerWithPlayableData:(id)data;
- (void)reportWithError:(id)error;
@end

@implementation TVAppExtensionHostService

- (void)reportWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  sub_1E38DBB14();
}

- (void)dismiss
{
  selfCopy = self;
  sub_1E38DBD50();
}

- (void)finishLoading
{
  selfCopy = self;
  sub_1E38DBDC0();
}

- (void)playTrailerWithPlayableData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  v5 = sub_1E41FE464();
  v7 = v6;

  sub_1E38DC150();
  sub_1E38DCCB0(v5, v7);
}

@end