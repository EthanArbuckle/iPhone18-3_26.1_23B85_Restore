@interface RecordingProvider
- (void)momentsController:(id)a3 didFinishRecordingMedia:(id)a4;
- (void)momentsControllerServerDied:(id)a3;
@end

@implementation RecordingProvider

- (void)momentsController:(id)a3 didFinishRecordingMedia:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1004096A4();
}

- (void)momentsControllerServerDied:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100409BB0();
}

@end