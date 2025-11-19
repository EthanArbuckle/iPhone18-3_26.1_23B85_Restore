@interface TSUZipEntry
- (id)description;
@end

@implementation TSUZipEntry

- (id)description
{
  v3 = TSUObjectReferenceDescription(self);
  v4 = [(TSUZipEntry *)self name];
  v5 = [(TSUZipEntry *)self collapsedName];
  v6 = [NSString stringWithFormat:@"<%@> %@ (%@) size=%qu compressedSize=%qu CRC=0x%X offset=%qu extraFieldLength=%hu", v3, v4, v5, [(TSUZipEntry *)self size], [(TSUZipEntry *)self compressedSize], [(TSUZipEntry *)self CRC], [(TSUZipEntry *)self offset], [(TSUZipEntry *)self extraFieldsLength]];

  return v6;
}

@end