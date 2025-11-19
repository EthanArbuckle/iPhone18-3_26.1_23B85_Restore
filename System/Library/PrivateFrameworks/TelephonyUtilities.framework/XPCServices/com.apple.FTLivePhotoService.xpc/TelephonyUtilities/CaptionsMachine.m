@interface CaptionsMachine
- (NSString)description;
- (void)captionsClient:(id)a3 didDetectGibberish:(BOOL)a4;
- (void)captionsClient:(id)a3 didDisableCaptions:(BOOL)a4 error:(id)a5;
- (void)captionsClient:(id)a3 didEnableCaptions:(BOOL)a4 error:(id)a5;
- (void)captionsClient:(id)a3 didStartCaptioningWithReason:(unsigned __int8)a4;
- (void)captionsClient:(id)a3 didStopCaptioningWithReason:(unsigned __int8)a4;
- (void)captionsClient:(id)a3 didUpdateCaptions:(id)a4 source:(int)a5;
- (void)captionsServerDidDie:(id)a3;
@end

@implementation CaptionsMachine

- (void)captionsClient:(id)a3 didEnableCaptions:(BOOL)a4 error:(id)a5
{
  v7 = a3;
  v8 = self;
  v9 = a5;
  sub_100010B6C();
}

- (void)captionsClient:(id)a3 didDisableCaptions:(BOOL)a4 error:(id)a5
{
  v7 = a3;
  v8 = self;
  v9 = a5;
  sub_100010B6C();
}

- (void)captionsClient:(id)a3 didStartCaptioningWithReason:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  sub_100011160();
}

- (void)captionsClient:(id)a3 didStopCaptioningWithReason:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  sub_100011160();
}

- (void)captionsClient:(id)a3 didDetectGibberish:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_100011614();
}

- (void)captionsClient:(id)a3 didUpdateCaptions:(id)a4 source:(int)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_100011A24();
}

- (void)captionsServerDidDie:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100012320();
}

- (NSString)description
{
  v2 = self;
  sub_100012680();

  v3 = sub_10003985C();

  return v3;
}

@end