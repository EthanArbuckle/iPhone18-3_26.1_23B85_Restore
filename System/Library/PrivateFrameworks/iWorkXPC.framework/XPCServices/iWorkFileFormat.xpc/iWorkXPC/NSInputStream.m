@interface NSInputStream
+ (id)tsu_inputStreamWithReadChannel:(id)a3 length:(unint64_t)a4;
@end

@implementation NSInputStream

+ (id)tsu_inputStreamWithReadChannel:(id)a3 length:(unint64_t)a4
{
  v5 = a3;
  v6 = [[TSUReadChannelInputStreamAdapter alloc] initWithReadChannel:v5 length:a4];

  v7 = [[SFUReadChannelNSInputStreamAdaptor alloc] initWithSFUInputStream:v6];

  return v7;
}

@end