@interface TSUZipEntry
- (id)description;
@end

@implementation TSUZipEntry

- (id)description
{
  v3 = TSUObjectReferenceDescription(self);
  name = [(TSUZipEntry *)self name];
  collapsedName = [(TSUZipEntry *)self collapsedName];
  v6 = [NSString stringWithFormat:@"<%@> %@ (%@) size=%qu compressedSize=%qu CRC=0x%X offset=%qu extraFieldLength=%hu", v3, name, collapsedName, [(TSUZipEntry *)self size], [(TSUZipEntry *)self compressedSize], [(TSUZipEntry *)self CRC], [(TSUZipEntry *)self offset], [(TSUZipEntry *)self extraFieldsLength]];

  return v6;
}

@end