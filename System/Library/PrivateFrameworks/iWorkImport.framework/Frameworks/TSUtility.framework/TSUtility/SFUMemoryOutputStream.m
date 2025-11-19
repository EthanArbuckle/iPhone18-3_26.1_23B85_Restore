@interface SFUMemoryOutputStream
- (SFUMemoryOutputStream)initWithData:(id)a3;
- (void)dealloc;
- (void)seekToOffset:(int64_t)a3 whence:(int)a4;
@end

@implementation SFUMemoryOutputStream

- (SFUMemoryOutputStream)initWithData:(id)a3
{
  v4 = [(SFUMemoryOutputStream *)self init];
  if (v4)
  {
    v4->mData = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SFUMemoryOutputStream;
  [(SFUMemoryOutputStream *)&v3 dealloc];
}

- (void)seekToOffset:(int64_t)a3 whence:(int)a4
{
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[SFUMemoryOutputStream seekToOffset:whence:]", *&a4}];
  +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUMemoryOutputStream.m"], 42, 0, "Not implemented");

  +[TSUAssertionHandler logBacktraceThrottled];
}

@end