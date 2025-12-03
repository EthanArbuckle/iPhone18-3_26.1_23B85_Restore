@interface CaptionsMachine
- (NSString)description;
- (void)captionsClient:(id)client didDetectGibberish:(BOOL)gibberish;
- (void)captionsClient:(id)client didDisableCaptions:(BOOL)captions error:(id)error;
- (void)captionsClient:(id)client didEnableCaptions:(BOOL)captions error:(id)error;
- (void)captionsClient:(id)client didStartCaptioningWithReason:(unsigned __int8)reason;
- (void)captionsClient:(id)client didStopCaptioningWithReason:(unsigned __int8)reason;
- (void)captionsClient:(id)client didUpdateCaptions:(id)captions source:(int)source;
- (void)captionsServerDidDie:(id)die;
@end

@implementation CaptionsMachine

- (void)captionsClient:(id)client didEnableCaptions:(BOOL)captions error:(id)error
{
  clientCopy = client;
  selfCopy = self;
  errorCopy = error;
  sub_100010B6C();
}

- (void)captionsClient:(id)client didDisableCaptions:(BOOL)captions error:(id)error
{
  clientCopy = client;
  selfCopy = self;
  errorCopy = error;
  sub_100010B6C();
}

- (void)captionsClient:(id)client didStartCaptioningWithReason:(unsigned __int8)reason
{
  clientCopy = client;
  selfCopy = self;
  sub_100011160();
}

- (void)captionsClient:(id)client didStopCaptioningWithReason:(unsigned __int8)reason
{
  clientCopy = client;
  selfCopy = self;
  sub_100011160();
}

- (void)captionsClient:(id)client didDetectGibberish:(BOOL)gibberish
{
  clientCopy = client;
  selfCopy = self;
  sub_100011614();
}

- (void)captionsClient:(id)client didUpdateCaptions:(id)captions source:(int)source
{
  clientCopy = client;
  captionsCopy = captions;
  selfCopy = self;
  sub_100011A24();
}

- (void)captionsServerDidDie:(id)die
{
  dieCopy = die;
  selfCopy = self;
  sub_100012320();
}

- (NSString)description
{
  selfCopy = self;
  sub_100012680();

  v3 = sub_10003985C();

  return v3;
}

@end