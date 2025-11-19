@interface GestureController
- (void)didDetectedError;
- (void)didDetectedWithHeadGesture:(id)a3;
- (void)didStartStreamingWithIsStreaming:(BOOL)a3;
- (void)notifyObserver:(id)a3 didChangeStateFrom:(unint64_t)a4 to:(unint64_t)a5;
@end

@implementation GestureController

- (void)notifyObserver:(id)a3 didChangeStateFrom:(unint64_t)a4 to:(unint64_t)a5
{
  v6 = a3;
  v7 = self;
  sub_266E2A5F4();
}

- (void)didDetectedWithHeadGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_266E3BAF8();
}

- (void)didDetectedError
{
  v2 = self;
  sub_266E3CB58();
}

- (void)didStartStreamingWithIsStreaming:(BOOL)a3
{
  v4 = self;
  sub_266E3CBF8(a3);
}

@end