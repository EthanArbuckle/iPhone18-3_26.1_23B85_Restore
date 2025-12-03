@interface TSUZipEntry
- (id)description;
@end

@implementation TSUZipEntry

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = TSUObjectReferenceDescription(self);
  name = [(TSUZipEntry *)self name];
  v6 = [v3 stringWithFormat:@"<%@> %@ size=%qu compressedSize=%qu CRC=0x%X offset=%qu extraFieldLength=%hu", v4, name, -[TSUZipEntry size](self, "size"), -[TSUZipEntry compressedSize](self, "compressedSize"), -[TSUZipEntry CRC](self, "CRC"), -[TSUZipEntry offset](self, "offset"), -[TSUZipEntry extraFieldLength](self, "extraFieldLength")];

  return v6;
}

@end