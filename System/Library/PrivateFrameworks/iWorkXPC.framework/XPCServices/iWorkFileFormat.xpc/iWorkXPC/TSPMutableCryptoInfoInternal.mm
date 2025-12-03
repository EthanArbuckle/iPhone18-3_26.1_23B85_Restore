@interface TSPMutableCryptoInfoInternal
- (TSPMutableCryptoInfoInternal)initWithCryptoKey:(id)key preferredBlockSize:(unint64_t)size blockInfos:(id)infos decodedLength:(unint64_t)length;
- (void)addBlockInfo:(id)info;
- (void)incrementDecodedLengthBy:(unint64_t)by;
- (void)reset;
@end

@implementation TSPMutableCryptoInfoInternal

- (TSPMutableCryptoInfoInternal)initWithCryptoKey:(id)key preferredBlockSize:(unint64_t)size blockInfos:(id)infos decodedLength:(unint64_t)length
{
  keyCopy = key;
  infosCopy = infos;
  v15.receiver = self;
  v15.super_class = TSPMutableCryptoInfoInternal;
  v12 = [(TSPCryptoInfoInternal *)&v15 initWithCryptoKey:keyCopy preferredBlockSize:size blockInfos:0 decodedLength:length];
  if (v12)
  {
    v13 = [infosCopy mutableCopy];
    [(TSPCryptoInfoInternal *)v12 setBlockInfos:v13];
  }

  return v12;
}

- (void)reset
{
  [(TSPCryptoInfoInternal *)self setBlockInfos:0];

  [(TSPCryptoInfoInternal *)self setDecodedLength:0];
}

- (void)addBlockInfo:(id)info
{
  infoCopy = info;
  if ([(TSPCryptoInfoInternal *)self preferredBlockSize]== -1)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100154DC4();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100154DD8();
    }

    v6 = [NSString stringWithUTF8String:"[TSPMutableCryptoInfoInternal addBlockInfo:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCryptoInfo.mm"];
    [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:97 isFatal:0 description:"We should not be adding a block info when the preferred block size is SIZE_T_MAX."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  else
  {
    blockInfos = [(TSPCryptoInfoInternal *)self blockInfos];
    if (!blockInfos)
    {
      blockInfos = objc_alloc_init(NSMutableArray);
      [(TSPCryptoInfoInternal *)self setBlockInfos:blockInfos];
    }

    [blockInfos addObject:infoCopy];
  }
}

- (void)incrementDecodedLengthBy:(unint64_t)by
{
  v4 = [(TSPCryptoInfoInternal *)self decodedLength]+ by;

  [(TSPCryptoInfoInternal *)self setDecodedLength:v4];
}

@end