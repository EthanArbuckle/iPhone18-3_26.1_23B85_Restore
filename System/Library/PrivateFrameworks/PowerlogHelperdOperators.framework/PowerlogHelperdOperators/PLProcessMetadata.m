@interface PLProcessMetadata
- (id)description;
@end

@implementation PLProcessMetadata

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PLProcessMetadata *)self name];
  v5 = [(PLProcessMetadata *)self pid];
  v6 = [(PLProcessMetadata *)self bundleId];
  v7 = [v3 stringWithFormat:@"%@ (%d) bundle=%@ cid=<%llu>", v4, v5, v6, -[PLProcessMetadata coalitionID](self, "coalitionID")];

  return v7;
}

@end