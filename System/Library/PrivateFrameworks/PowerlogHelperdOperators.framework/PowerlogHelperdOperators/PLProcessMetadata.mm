@interface PLProcessMetadata
- (id)description;
@end

@implementation PLProcessMetadata

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  name = [(PLProcessMetadata *)self name];
  v5 = [(PLProcessMetadata *)self pid];
  bundleId = [(PLProcessMetadata *)self bundleId];
  v7 = [v3 stringWithFormat:@"%@ (%d) bundle=%@ cid=<%llu>", name, v5, bundleId, -[PLProcessMetadata coalitionID](self, "coalitionID")];

  return v7;
}

@end