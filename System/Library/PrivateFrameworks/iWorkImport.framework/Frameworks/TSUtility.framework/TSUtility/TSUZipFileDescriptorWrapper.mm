@interface TSUZipFileDescriptorWrapper
- (TSUZipFileDescriptorWrapper)init;
- (TSUZipFileDescriptorWrapper)initWithFileDescriptor:(int)descriptor;
- (void)dealloc;
@end

@implementation TSUZipFileDescriptorWrapper

- (TSUZipFileDescriptorWrapper)init
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipFileDescriptorWrapper init]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipFileArchive.m"];
  [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:474 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[TSUZipFileDescriptorWrapper init]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSUZipFileDescriptorWrapper)initWithFileDescriptor:(int)descriptor
{
  selfCopy = self;
  if ((descriptor & 0x80000000) == 0)
  {
    v4 = *&descriptor;
    v15.receiver = self;
    v15.super_class = TSUZipFileDescriptorWrapper;
    v5 = [(TSUZipFileDescriptorWrapper *)&v15 init];
    selfCopy = v5;
    if (!v5)
    {
      close(v4);
      goto LABEL_7;
    }

    v5->_fileDescriptor = v4;
    v6 = [TSUFileIOChannel alloc];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2770D5574;
    v13[3] = &unk_27A703048;
    v14 = v4;
    v7 = [(TSUFileIOChannel *)v6 initForReadingDescriptor:v4 cleanupHandler:v13];
    readChannel = selfCopy->_readChannel;
    selfCopy->_readChannel = v7;

    if (selfCopy->_readChannel)
    {
      v9 = dispatch_group_create();
      accessGroup = selfCopy->_accessGroup;
      selfCopy->_accessGroup = v9;

LABEL_7:
      selfCopy = selfCopy;
      v11 = selfCopy;
      goto LABEL_8;
    }
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (void)dealloc
{
  [(TSUReadChannel *)self->_readChannel close];
  v3.receiver = self;
  v3.super_class = TSUZipFileDescriptorWrapper;
  [(TSUZipFileDescriptorWrapper *)&v3 dealloc];
}

@end