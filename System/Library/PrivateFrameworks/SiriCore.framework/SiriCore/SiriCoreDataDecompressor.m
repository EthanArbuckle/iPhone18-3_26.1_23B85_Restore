@interface SiriCoreDataDecompressor
- (id)decompressedDataForBytes:(const void *)a3 length:(unint64_t)a4 error:(id *)a5;
@end

@implementation SiriCoreDataDecompressor

- (id)decompressedDataForBytes:(const void *)a3 length:(unint64_t)a4 error:(id *)a5
{
  if (a3)
  {
    v5 = dispatch_data_create(a3, a4, 0, 0);
  }

  else
  {
    v5 = MEMORY[0x277D85CC8];
    v6 = MEMORY[0x277D85CC8];
  }

  return v5;
}

@end