@interface TSWPObfuscatedFontDataProvider
- (TSWPObfuscatedFontDataProvider)initWithPath:(id)path groupUID:(id)d;
- (int64_t)p_currentOffset;
- (int64_t)skipForwardBy:(int64_t)by;
- (unint64_t)readBytes:(char *)bytes count:(unint64_t)count;
- (void)dealloc;
- (void)rewind;
@end

@implementation TSWPObfuscatedFontDataProvider

- (TSWPObfuscatedFontDataProvider)initWithPath:(id)path groupUID:(id)d
{
  v11.receiver = self;
  v11.super_class = TSWPObfuscatedFontDataProvider;
  v6 = [(TSWPObfuscatedFontDataProvider *)&v11 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEAE0]) initWithFileAtPath:path];
    v6->_stream = v7;
    [(NSInputStream *)v7 open];
    uTF8String = [d UTF8String];
    v9 = strlen(uTF8String);
    CC_SHA1(uTF8String, v9, v6->_xorMask);
  }

  return v6;
}

- (void)dealloc
{
  [(NSInputStream *)self->_stream close];

  v3.receiver = self;
  v3.super_class = TSWPObfuscatedFontDataProvider;
  [(TSWPObfuscatedFontDataProvider *)&v3 dealloc];
}

- (int64_t)p_currentOffset
{
  v2 = [(NSInputStream *)self->_stream propertyForKey:*MEMORY[0x277CBE748]];

  return [v2 longLongValue];
}

- (unint64_t)readBytes:(char *)bytes count:(unint64_t)count
{
  p_currentOffset = [(TSWPObfuscatedFontDataProvider *)self p_currentOffset];
  result = [(NSInputStream *)self->_stream read:bytes maxLength:count];
  v9 = result + p_currentOffset;
  if (result + p_currentOffset >= 0x410)
  {
    v9 = 1040;
  }

  if (p_currentOffset < v9)
  {
    do
    {
      *bytes++ ^= self->_xorMask[p_currentOffset % 20];
      ++p_currentOffset;
    }

    while (v9 != p_currentOffset);
  }

  return result;
}

- (int64_t)skipForwardBy:(int64_t)by
{
  p_currentOffset = [(TSWPObfuscatedFontDataProvider *)self p_currentOffset];
  stream = self->_stream;
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:p_currentOffset + by];
  [(NSInputStream *)stream setProperty:v7 forKey:*MEMORY[0x277CBE748]];
  return [(TSWPObfuscatedFontDataProvider *)self p_currentOffset]- p_currentOffset;
}

- (void)rewind
{
  stream = self->_stream;
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:0];
  v4 = *MEMORY[0x277CBE748];

  [(NSInputStream *)stream setProperty:v3 forKey:v4];
}

@end