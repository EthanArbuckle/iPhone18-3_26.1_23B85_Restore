@interface NSData(TRAdditions)
- (id)TR_compressedGzipData;
- (id)TR_decompressedGzipData;
@end

@implementation NSData(TRAdditions)

- (id)TR_compressedGzipData
{
  v1 = TRCopyGzippedDataForData(a1);

  return v1;
}

- (id)TR_decompressedGzipData
{
  v0 = TRCopyDecompressedGZipDataForData();

  return v0;
}

@end