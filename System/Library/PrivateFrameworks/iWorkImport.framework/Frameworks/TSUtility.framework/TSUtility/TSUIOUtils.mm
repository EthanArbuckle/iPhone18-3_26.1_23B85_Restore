@interface TSUIOUtils
+ (CGDataProvider)newCGDataProviderForInputStream:(id)a3 outInfo:(void *)a4 outCallbacks:(const CGDataProviderSequentialCallbacks *)a5;
+ (CGDataProvider)newCGDataProviderForReadChannel:(id)a3 length:(unint64_t)a4 outInfo:(void *)a5 outCallbacks:(const CGDataProviderSequentialCallbacks *)a6;
+ (void)readAllFromChannel:(id)a3 completion:(id)a4;
+ (void)readAllFromChannel:(id)a3 offset:(int64_t)a4 length:(unint64_t)a5 completion:(id)a6;
+ (void)readFromOffsetAndWait:(id)a3 offset:(int64_t)a4 length:(unint64_t)a5 handler:(id)a6;
+ (void)readWithHandlerAndWait:(id)a3 handler:(id)a4;
@end

@implementation TSUIOUtils

+ (void)readAllFromChannel:(id)a3 offset:(int64_t)a4 length:(unint64_t)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = v10;
  if (!v9)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUIOUtils readAllFromChannel:offset:length:completion:]"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUIOUtils.m"];
    [TSUAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:78 isFatal:0 description:"invalid nil value for '%{public}s'", "readChannel"];

    +[TSUAssertionHandler logBacktraceThrottled];
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUIOUtils readAllFromChannel:offset:length:completion:]"];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUIOUtils.m"];
    [TSUAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:79 isFatal:0 description:"invalid nil value for '%{public}s'", "completion"];

    +[TSUAssertionHandler logBacktraceThrottled];
    goto LABEL_3;
  }

  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = sub_2770F9D18;
  v22[4] = sub_2770F9D28;
  v12 = MEMORY[0x277D85CC8];
  v13 = MEMORY[0x277D85CC8];
  v23 = v12;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2770F9D30;
  v19[3] = &unk_27A703A50;
  v21 = v22;
  v14 = v11;
  v20 = v14;
  [v9 readFromOffset:a4 length:a5 handler:v19];

  _Block_object_dispose(v22, 8);
}

+ (void)readAllFromChannel:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUIOUtils readAllFromChannel:completion:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUIOUtils.m"];
    [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:103 isFatal:0 description:"invalid nil value for '%{public}s'", "readChannel"];

    +[TSUAssertionHandler logBacktraceThrottled];
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUIOUtils readAllFromChannel:completion:]"];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUIOUtils.m"];
    [TSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:104 isFatal:0 description:"invalid nil value for '%{public}s'", "completion"];

    +[TSUAssertionHandler logBacktraceThrottled];
    goto LABEL_3;
  }

  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_2770F9D18;
  v18[4] = sub_2770F9D28;
  v8 = MEMORY[0x277D85CC8];
  v9 = MEMORY[0x277D85CC8];
  v19 = v8;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2770FA040;
  v15[3] = &unk_27A703A50;
  v17 = v18;
  v10 = v7;
  v16 = v10;
  [v5 readWithHandler:v15];

  _Block_object_dispose(v18, 8);
}

+ (CGDataProvider)newCGDataProviderForInputStream:(id)a3 outInfo:(void *)a4 outCallbacks:(const CGDataProviderSequentialCallbacks *)a5
{
  if (!a3)
  {
    return 0;
  }

  v7 = a3;
  CFRetain(v7);
  if (a4)
  {
    *a4 = v7;
  }

  if (a5)
  {
    *a5 = &stru_28862B840;
  }

  Sequential = CGDataProviderCreateSequential(v7, &stru_28862B840);

  return Sequential;
}

+ (CGDataProvider)newCGDataProviderForReadChannel:(id)a3 length:(unint64_t)a4 outInfo:(void *)a5 outCallbacks:(const CGDataProviderSequentialCallbacks *)a6
{
  if (!a3)
  {
    return 0;
  }

  v10 = a3;
  v11 = [[TSUReadChannelInputStreamAdapter alloc] initWithReadChannel:v10 length:a4];

  if ([(TSUReadChannelInputStreamAdapter *)v11 canSeek])
  {
    v12 = [a1 newCGDataProviderForInputStream:v11 outInfo:a5 outCallbacks:a6];
  }

  else
  {
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUIOUtils newCGDataProviderForReadChannel:length:outInfo:outCallbacks:]"];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUIOUtils.m"];
    [TSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:160 isFatal:0 description:"Need a seekable input stream for CGDataProvider"];

    +[TSUAssertionHandler logBacktraceThrottled];
    v12 = 0;
  }

  return v12;
}

+ (void)readWithHandlerAndWait:(id)a3 handler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = dispatch_semaphore_create(0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2770FA39C;
  v10[3] = &unk_27A703A78;
  v12 = v5;
  v8 = v7;
  v11 = v8;
  v9 = v5;
  [v6 readWithHandler:v10];

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
}

+ (void)readFromOffsetAndWait:(id)a3 offset:(int64_t)a4 length:(unint64_t)a5 handler:(id)a6
{
  v9 = a6;
  v10 = a3;
  v11 = dispatch_semaphore_create(0);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2770FA4E4;
  v14[3] = &unk_27A703A78;
  v16 = v9;
  v12 = v11;
  v15 = v12;
  v13 = v9;
  [v10 readFromOffset:a4 length:a5 handler:v14];

  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
}

@end