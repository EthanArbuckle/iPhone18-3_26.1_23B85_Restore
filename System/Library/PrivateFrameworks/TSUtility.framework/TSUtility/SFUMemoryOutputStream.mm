@interface SFUMemoryOutputStream
- (SFUMemoryOutputStream)initWithData:(id)data;
- (void)dealloc;
- (void)seekToOffset:(int64_t)offset whence:(int)whence;
@end

@implementation SFUMemoryOutputStream

- (SFUMemoryOutputStream)initWithData:(id)data
{
  v4 = [(SFUMemoryOutputStream *)self init];
  if (v4)
  {
    v4->mData = data;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SFUMemoryOutputStream;
  [(SFUMemoryOutputStream *)&v3 dealloc];
}

- (void)seekToOffset:(int64_t)offset whence:(int)whence
{
  v4 = [TSUAssertionHandler currentHandler:offset];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUMemoryOutputStream seekToOffset:whence:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUMemoryOutputStream.m"];

  [v4 handleFailureInFunction:v5 file:v6 lineNumber:45 description:@"Not implemented"];
}

@end