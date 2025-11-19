@interface NSFileProviderItemVersion(BRItemAdditions)
- (BRFieldContentSignature)br_contentSignature;
- (BRFieldStructureSignature)br_structureSignature;
- (id)br_contentEtag;
- (id)br_prettyDescription;
- (id)br_structureEtag;
- (uint64_t)br_isValidContentVersion;
- (uint64_t)br_isValidStructureVersion;
@end

@implementation NSFileProviderItemVersion(BRItemAdditions)

- (BRFieldContentSignature)br_contentSignature
{
  v2 = [a1 contentVersion];
  if ([v2 length])
  {
    v3 = [BRFieldContentSignature alloc];
    v4 = [a1 contentVersion];
    v5 = [(BRFieldContentSignature *)v3 initWithData:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BRFieldStructureSignature)br_structureSignature
{
  v2 = [a1 metadataVersion];
  if ([v2 length])
  {
    v3 = [BRFieldStructureSignature alloc];
    v4 = [a1 metadataVersion];
    v5 = [(BRFieldStructureSignature *)v3 initWithData:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)br_prettyDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 br_structureSignature];
  v4 = [a1 br_contentSignature];
  v5 = [v2 stringWithFormat:@"[%@, %@]", v3, v4];

  return v5;
}

- (id)br_structureEtag
{
  v1 = [a1 br_structureSignature];
  v2 = [v1 etag];

  return v2;
}

- (id)br_contentEtag
{
  v1 = [a1 br_contentSignature];
  v2 = [v1 etag];

  return v2;
}

- (uint64_t)br_isValidContentVersion
{
  v2 = [a1 contentVersion];
  if ([v2 length])
  {
    v3 = [MEMORY[0x277CC64A0] beforeFirstSyncComponent];
    v4 = [a1 contentVersion];
    v5 = [v3 isEqual:v4] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)br_isValidStructureVersion
{
  v2 = [a1 metadataVersion];
  if ([v2 length])
  {
    v3 = [MEMORY[0x277CC64A0] beforeFirstSyncComponent];
    v4 = [a1 metadataVersion];
    v5 = [v3 isEqual:v4] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end