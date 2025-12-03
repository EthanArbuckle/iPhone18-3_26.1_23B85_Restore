@interface NSInputStream
+ (id)tsu_inputStreamWithReadChannel:(id)channel length:(unint64_t)length;
@end

@implementation NSInputStream

+ (id)tsu_inputStreamWithReadChannel:(id)channel length:(unint64_t)length
{
  channelCopy = channel;
  v6 = [[TSUReadChannelInputStreamAdapter alloc] initWithReadChannel:channelCopy length:length];

  v7 = [[SFUReadChannelNSInputStreamAdaptor alloc] initWithSFUInputStream:v6];

  return v7;
}

@end