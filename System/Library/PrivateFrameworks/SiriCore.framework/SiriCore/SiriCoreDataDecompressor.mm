@interface SiriCoreDataDecompressor
- (id)decompressedDataForBytes:(const void *)bytes length:(unint64_t)length error:(id *)error;
@end

@implementation SiriCoreDataDecompressor

- (id)decompressedDataForBytes:(const void *)bytes length:(unint64_t)length error:(id *)error
{
  if (bytes)
  {
    v5 = dispatch_data_create(bytes, length, 0, 0);
  }

  else
  {
    v5 = MEMORY[0x277D85CC8];
    v6 = MEMORY[0x277D85CC8];
  }

  return v5;
}

@end