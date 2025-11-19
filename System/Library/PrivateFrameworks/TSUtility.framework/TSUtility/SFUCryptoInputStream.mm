@interface SFUCryptoInputStream
- (id)initForDecryptionWithInputStream:(id)a3 key:(id)a4;
- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4;
- (void)dealloc;
- (void)seekToOffset:(int64_t)a3;
@end

@implementation SFUCryptoInputStream

- (id)initForDecryptionWithInputStream:(id)a3 key:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = [(SFUCryptoInputStream *)self init];
  if (v6)
  {
    v6->mBaseStream = a3;
    v7 = [SFUCryptoUtils ivLengthForKey:a4];
    v8 = v11 - ((v7 + 15) & 0x1FFFFFFF0);
    if ([(SFUInputStream *)v6->mBaseStream readToBuffer:v8 size:v7]!= v7)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"Failed to read IV"];
    }

    v9 = [[SFUCryptor alloc] initWithKey:a4 operation:1 iv:v8 ivLength:v7];
    v6->mCryptor = v9;
    if (!v9)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"Failed to create SFUCryptor"];
    }

    if (v7)
    {
      if ([(SFUCryptoInputStream *)v6 readToBuffer:v8 size:v7]!= v7)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"Failed to read initial ciphertext"];
      }

      v6->mOffset = 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SFUCryptoInputStream;
  [(SFUCryptoInputStream *)&v3 dealloc];
}

- (unint64_t)readToBuffer:(char *)a3 size:(unint64_t)a4
{
  v9 = 0;
  v10 = 0;
  if (![(SFUCryptor *)self->mCryptor cryptDataFromStream:self->mBaseStream toBuffer:a3 length:a4 bytesRead:&v9 error:&v10])
  {
    v5 = MEMORY[0x277CBEAD8];
    v6 = *MEMORY[0x277CBE648];
    v7 = [v10 localizedDescription];
    [v5 raise:v6 format:{@"SFUCryptor failed. %@: %@", v7, objc_msgSend(v10, "localizedFailureReason")}];
  }

  result = v9;
  self->mOffset += v9;
  return result;
}

- (void)seekToOffset:(int64_t)a3
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUCryptoInputStream seekToOffset:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/sf/SFUCryptoInputStream.mm"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:96 description:@"SFUCryptoInputStream cannot seek."];
}

@end