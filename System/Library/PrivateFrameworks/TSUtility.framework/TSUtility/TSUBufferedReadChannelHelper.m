@interface TSUBufferedReadChannelHelper
- (TSUBufferedReadChannelHelper)initWithBufferedReadChannel:(id)a3;
- (void)readWithQueue:(id)a3 handler:(id)a4;
@end

@implementation TSUBufferedReadChannelHelper

- (TSUBufferedReadChannelHelper)initWithBufferedReadChannel:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TSUBufferedReadChannelHelper;
  v5 = [(TSUBufferedReadChannelHelper *)&v10 init];
  if (v5)
  {
    if (!v4)
    {
      v6 = +[TSUAssertionHandler currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBufferedReadChannelHelper initWithBufferedReadChannel:]"];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUBufferedReadChannel.m"];
      [v6 handleFailureInFunction:v7 file:v8 lineNumber:296 description:{@"invalid nil value for '%s'", "bufferedReadChannel"}];
    }

    objc_storeWeak(&v5->_bufferedReadChannel, v4);
  }

  return v5;
}

- (void)readWithQueue:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_bufferedReadChannel);
  [WeakRetained setStreamReadChannelSourceQueue:v7 handler:v6];
}

@end