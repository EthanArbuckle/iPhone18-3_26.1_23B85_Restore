@interface UIImageDecompressionCompletionQueue
@end

@implementation UIImageDecompressionCompletionQueue

void ___UIImageDecompressionCompletionQueue_block_invoke()
{
  v0 = dispatch_workloop_create("com.apple.UIKit.decompression-completed");
  v1 = qword_1ED4996B8;
  qword_1ED4996B8 = v0;
}

@end