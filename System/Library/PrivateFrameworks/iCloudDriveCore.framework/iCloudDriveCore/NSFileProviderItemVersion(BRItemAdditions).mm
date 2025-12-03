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
  contentVersion = [self contentVersion];
  if ([contentVersion length])
  {
    v3 = [BRFieldContentSignature alloc];
    contentVersion2 = [self contentVersion];
    v5 = [(BRFieldContentSignature *)v3 initWithData:contentVersion2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BRFieldStructureSignature)br_structureSignature
{
  metadataVersion = [self metadataVersion];
  if ([metadataVersion length])
  {
    v3 = [BRFieldStructureSignature alloc];
    metadataVersion2 = [self metadataVersion];
    v5 = [(BRFieldStructureSignature *)v3 initWithData:metadataVersion2];
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
  br_structureSignature = [self br_structureSignature];
  br_contentSignature = [self br_contentSignature];
  v5 = [v2 stringWithFormat:@"[%@, %@]", br_structureSignature, br_contentSignature];

  return v5;
}

- (id)br_structureEtag
{
  br_structureSignature = [self br_structureSignature];
  etag = [br_structureSignature etag];

  return etag;
}

- (id)br_contentEtag
{
  br_contentSignature = [self br_contentSignature];
  etag = [br_contentSignature etag];

  return etag;
}

- (uint64_t)br_isValidContentVersion
{
  contentVersion = [self contentVersion];
  if ([contentVersion length])
  {
    beforeFirstSyncComponent = [MEMORY[0x277CC64A0] beforeFirstSyncComponent];
    contentVersion2 = [self contentVersion];
    v5 = [beforeFirstSyncComponent isEqual:contentVersion2] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)br_isValidStructureVersion
{
  metadataVersion = [self metadataVersion];
  if ([metadataVersion length])
  {
    beforeFirstSyncComponent = [MEMORY[0x277CC64A0] beforeFirstSyncComponent];
    metadataVersion2 = [self metadataVersion];
    v5 = [beforeFirstSyncComponent isEqual:metadataVersion2] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end