@interface UIDictationStreamingOperation
- (void)start;
@end

@implementation UIDictationStreamingOperation

- (void)start
{
  v3 = +[UIDictationController sharedInstance];
  [v3 setPerformingStreamingEditingOperation:1];

  v5.receiver = self;
  v5.super_class = UIDictationStreamingOperation;
  [(UIDictationStreamingOperation *)&v5 start];
  v4 = +[UIDictationController sharedInstance];
  [v4 setPerformingStreamingEditingOperation:0];
}

@end