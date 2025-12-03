@interface TSUBufferedReadChannelHelper
- (TSUBufferedReadChannelHelper)initWithBufferedReadChannel:(id)channel;
- (void)readWithQueue:(id)queue handler:(id)handler;
@end

@implementation TSUBufferedReadChannelHelper

- (TSUBufferedReadChannelHelper)initWithBufferedReadChannel:(id)channel
{
  channelCopy = channel;
  v10.receiver = self;
  v10.super_class = TSUBufferedReadChannelHelper;
  v5 = [(TSUBufferedReadChannelHelper *)&v10 init];
  if (v5)
  {
    if (!channelCopy)
    {
      v6 = +[TSUAssertionHandler currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBufferedReadChannelHelper initWithBufferedReadChannel:]"];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUBufferedReadChannel.m"];
      [v6 handleFailureInFunction:v7 file:v8 lineNumber:296 description:{@"invalid nil value for '%s'", "bufferedReadChannel"}];
    }

    objc_storeWeak(&v5->_bufferedReadChannel, channelCopy);
  }

  return v5;
}

- (void)readWithQueue:(id)queue handler:(id)handler
{
  handlerCopy = handler;
  queueCopy = queue;
  WeakRetained = objc_loadWeakRetained(&self->_bufferedReadChannel);
  [WeakRetained setStreamReadChannelSourceQueue:queueCopy handler:handlerCopy];
}

@end