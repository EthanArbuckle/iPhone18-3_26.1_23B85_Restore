@interface TSPMutableCryptoInfoInternal
- (TSPMutableCryptoInfoInternal)initWithCryptoKey:(id)a3 preferredBlockSize:(unint64_t)a4 blockInfos:(id)a5 decodedLength:(unint64_t)a6;
- (void)addBlockInfo:(id)a3;
- (void)incrementDecodedLengthBy:(unint64_t)a3;
- (void)reset;
@end

@implementation TSPMutableCryptoInfoInternal

- (TSPMutableCryptoInfoInternal)initWithCryptoKey:(id)a3 preferredBlockSize:(unint64_t)a4 blockInfos:(id)a5 decodedLength:(unint64_t)a6
{
  v10 = a3;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TSPMutableCryptoInfoInternal;
  v12 = [(TSPCryptoInfoInternal *)&v15 initWithCryptoKey:v10 preferredBlockSize:a4 blockInfos:0 decodedLength:a6];
  if (v12)
  {
    v13 = [v11 mutableCopy];
    [(TSPCryptoInfoInternal *)v12 setBlockInfos:v13];
  }

  return v12;
}

- (void)reset
{
  [(TSPCryptoInfoInternal *)self setBlockInfos:0];

  [(TSPCryptoInfoInternal *)self setDecodedLength:0];
}

- (void)addBlockInfo:(id)a3
{
  v4 = a3;
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
    v5 = [(TSPCryptoInfoInternal *)self blockInfos];
    if (!v5)
    {
      v5 = objc_alloc_init(NSMutableArray);
      [(TSPCryptoInfoInternal *)self setBlockInfos:v5];
    }

    [v5 addObject:v4];
  }
}

- (void)incrementDecodedLengthBy:(unint64_t)a3
{
  v4 = [(TSPCryptoInfoInternal *)self decodedLength]+ a3;

  [(TSPCryptoInfoInternal *)self setDecodedLength:v4];
}

@end