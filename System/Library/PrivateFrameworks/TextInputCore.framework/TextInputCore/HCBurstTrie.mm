@interface HCBurstTrie
+ (id)burstTrieFromFile:(id)file;
- (BOOL)writeToFile:(id)file;
- (HCBurstTrie)init;
- (id)payloadForKey:(id)key;
- (unint64_t)count;
- (void)dealloc;
@end

@implementation HCBurstTrie

- (BOOL)writeToFile:(id)file
{
  path = [file path];
  v5 = fopen([path UTF8String], "wb+");

  fileno(v5);
  burstTrie = self->_burstTrie;
  LOBYTE(self) = CFBurstTrieSerializeWithFileDescriptor() != 0;
  fclose(v5);
  return self;
}

- (unint64_t)count
{
  result = self->_burstTrie;
  if (result)
  {
    return MEMORY[0x28210F2C8](result, a2);
  }

  return result;
}

- (id)payloadForKey:(id)key
{
  if (self->_burstTrie && (v3 = key, [v3 length], v4 = CFBurstTrieContains(), v3, v4))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInt:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)dealloc
{
  if (self->_burstTrie)
  {
    CFBurstTrieRelease();
  }

  v3.receiver = self;
  v3.super_class = HCBurstTrie;
  [(HCBurstTrie *)&v3 dealloc];
}

- (HCBurstTrie)init
{
  v5.receiver = self;
  v5.super_class = HCBurstTrie;
  v2 = [(HCBurstTrie *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HCBurstTrie *)v2 _createUnderlyingBurstTrie];
    v3->_keysAdded = 0;
  }

  return v3;
}

+ (id)burstTrieFromFile:(id)file
{
  v3 = MEMORY[0x277CBEA90];
  path = [file path];
  v11 = 0;
  v5 = [v3 dataWithContentsOfFile:path options:8 error:&v11];
  v6 = v11;

  [v5 bytes];
  v7 = CFBurstTrieCreateFromMapBytes();
  if (v7)
  {
    v8 = v7;
    v9 = objc_alloc_init(HCBurstTrie);
    if (v9->_burstTrie)
    {
      CFBurstTrieRelease();
    }

    v9->_burstTrie = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end