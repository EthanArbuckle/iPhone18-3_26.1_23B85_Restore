@interface SFUZipDeflateOutputStream
- (SFUZipDeflateOutputStream)initWithOutputStream:(id)stream;
- (id)closeLocalStream;
- (void)close;
- (void)dealloc;
- (void)seekToOffset:(int64_t)offset whence:(int)whence;
- (void)writeBuffer:(const char *)buffer size:(unint64_t)size;
@end

@implementation SFUZipDeflateOutputStream

- (SFUZipDeflateOutputStream)initWithOutputStream:(id)stream
{
  v4 = [(SFUZipDeflateOutputStream *)self init];
  if (v4)
  {
    v4->mOutputStream = stream;
    mOutBuffer = malloc_type_malloc(0x40000uLL, 0x100004077774924uLL);
    v4->mOutBuffer = mOutBuffer;
    if (!mOutBuffer)
    {
      [SFUZipException raise:@"SFUZipDeflateError" format:@"Could not create deflate buffer"];
      mOutBuffer = v4->mOutBuffer;
    }

    v4->mDeflateStream.next_in = 0;
    v4->mDeflateStream.avail_in = 0;
    v4->mDeflateStream.zfree = 0;
    v4->mDeflateStream.opaque = 0;
    v4->mDeflateStream.zalloc = 0;
    v4->mDeflateStream.avail_out = 0x40000;
    v4->mDeflateStream.next_out = mOutBuffer;
    if (deflateInit2_(&v4->mDeflateStream, 8, 8, -15, 9, 0, "1.2.12", 112))
    {
      [SFUZipException raise:@"SFUZipDeflateError" format:@"deflateInit2() failed: %s", v4->mDeflateStream.msg];
    }
  }

  return v4;
}

- (void)dealloc
{
  if (deflateEnd(&self->mDeflateStream) && TSUErrorCat_init_token != -1)
  {
    sub_277114070();
  }

  free(self->mOutBuffer);
  v3.receiver = self;
  v3.super_class = SFUZipDeflateOutputStream;
  [(SFUZipDeflateOutputStream *)&v3 dealloc];
}

- (id)closeLocalStream
{
  if (self->mDeflateStream.next_out)
  {
    do
    {
      v3 = deflate(&self->mDeflateStream, 4);
      if (self->mDeflateStream.next_out <= self->mOutBuffer)
      {
        v4 = -5;
      }

      else
      {
        v4 = 0;
      }

      if (v3 == -5)
      {
        v5 = v4;
      }

      else
      {
        v5 = v3;
      }

      [SFUOutputStream writeBuffer:"writeBuffer:size:" size:?];
      self->mDeflateStream.avail_out = 0x40000;
      self->mDeflateStream.next_out = self->mOutBuffer;
    }

    while (!v5);
    self->mDeflateStream.avail_out = 0;
    self->mDeflateStream.next_out = 0;
    if (v5 != -5 && v5 != 1)
    {
      [SFUZipException raise:@"SFUZipDeflateError" format:@"deflate() failed: %s", self->mDeflateStream.msg];
    }
  }

  return self->mOutputStream;
}

- (void)close
{
  closeLocalStream = [(SFUZipDeflateOutputStream *)self closeLocalStream];

  [closeLocalStream close];
}

- (void)writeBuffer:(const char *)buffer size:(unint64_t)size
{
  if (!self->mDeflateStream.next_out)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipDeflateOutputStream writeBuffer:size:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v7, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUZipDeflateOutputStream.m"], 114, 0, "Stream is already closed.");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (size >= 0xFFFFFFFF)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUZipDeflateOutputStream writeBuffer:size:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v8, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUZipDeflateOutputStream.m"], 117, 0, "overflow in writeBuffer:size:");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  self->mDeflateStream.avail_in = size;
  self->mDeflateStream.next_in = buffer;
  if (size)
  {
    while (1)
    {
      if (!self->mDeflateStream.avail_out)
      {
        [(SFUOutputStream *)self->mOutputStream writeBuffer:self->mOutBuffer size:0x40000];
        self->mDeflateStream.avail_out = 0x40000;
        self->mDeflateStream.next_out = self->mOutBuffer;
      }

      if (deflate(&self->mDeflateStream, 0))
      {
        break;
      }

      if (!self->mDeflateStream.avail_in)
      {
        return;
      }
    }

    [SFUZipException raise:@"SFUZipDeflateError" format:@"deflate() failed: %s", self->mDeflateStream.msg];
  }
}

- (void)seekToOffset:(int64_t)offset whence:(int)whence
{
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[SFUZipDeflateOutputStream seekToOffset:whence:]", *&whence}];
  +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUZipDeflateOutputStream.m"], 145, 0, "Not implemented.");

  +[TSUAssertionHandler logBacktraceThrottled];
}

@end