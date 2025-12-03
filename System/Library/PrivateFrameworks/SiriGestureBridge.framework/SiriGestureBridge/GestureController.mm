@interface GestureController
- (void)didDetectedError;
- (void)didDetectedWithHeadGesture:(id)gesture;
- (void)didStartStreamingWithIsStreaming:(BOOL)streaming;
- (void)notifyObserver:(id)observer didChangeStateFrom:(unint64_t)from to:(unint64_t)to;
@end

@implementation GestureController

- (void)notifyObserver:(id)observer didChangeStateFrom:(unint64_t)from to:(unint64_t)to
{
  observerCopy = observer;
  selfCopy = self;
  sub_266E2A5F4();
}

- (void)didDetectedWithHeadGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_266E3BAF8();
}

- (void)didDetectedError
{
  selfCopy = self;
  sub_266E3CB58();
}

- (void)didStartStreamingWithIsStreaming:(BOOL)streaming
{
  selfCopy = self;
  sub_266E3CBF8(streaming);
}

@end