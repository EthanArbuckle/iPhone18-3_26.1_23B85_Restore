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
  v4 = [TSUAssertionHandler currentHandler:a3];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUMemoryOutputStream seekToOffset:whence:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUMemoryOutputStream.m"];

  [v4 handleFailureInFunction:v5 file:v6 lineNumber:45 description:@"Not implemented"];
}

@end