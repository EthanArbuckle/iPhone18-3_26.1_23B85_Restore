@interface RecordingProvider
- (void)momentsController:(id)controller didFinishRecordingMedia:(id)media;
- (void)momentsControllerServerDied:(id)died;
@end

@implementation RecordingProvider

- (void)momentsController:(id)controller didFinishRecordingMedia:(id)media
{
  controllerCopy = controller;
  mediaCopy = media;
  selfCopy = self;
  sub_1004096A4();
}

- (void)momentsControllerServerDied:(id)died
{
  diedCopy = died;
  selfCopy = self;
  sub_100409BB0();
}

@end