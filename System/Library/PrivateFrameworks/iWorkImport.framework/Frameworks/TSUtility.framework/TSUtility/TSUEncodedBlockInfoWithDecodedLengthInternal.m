@interface TSUEncodedBlockInfoWithDecodedLengthInternal
- (TSUEncodedBlockInfoWithDecodedLengthInternal)initWithEncodedLength:(unint64_t)a3 decodedLength:(unint64_t)a4;
@end

@implementation TSUEncodedBlockInfoWithDecodedLengthInternal

- (TSUEncodedBlockInfoWithDecodedLengthInternal)initWithEncodedLength:(unint64_t)a3 decodedLength:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = TSUEncodedBlockInfoWithDecodedLengthInternal;
  result = [(TSUEncodedBlockInfoInternal *)&v6 initWithEncodedLength:a3];
  if (result)
  {
    result->_decodedLength = a4;
  }

  return result;
}

@end