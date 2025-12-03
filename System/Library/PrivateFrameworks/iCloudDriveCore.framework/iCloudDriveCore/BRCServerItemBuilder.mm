@interface BRCServerItemBuilder
- (BRCServerItemBuilder)initWithZoneAppRetriever:(id)retriever;
- (id)newServerItemFromPQLResultSet:(id)set error:(id *)error;
@end

@implementation BRCServerItemBuilder

- (BRCServerItemBuilder)initWithZoneAppRetriever:(id)retriever
{
  retrieverCopy = retriever;
  v9.receiver = self;
  v9.super_class = BRCServerItemBuilder;
  v6 = [(BRCServerItemBuilder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_zoneAppRetriever, retriever);
  }

  return v7;
}

- (id)newServerItemFromPQLResultSet:(id)set error:(id *)error
{
  zoneAppRetriever = self->_zoneAppRetriever;
  setCopy = set;
  v7 = [setCopy numberAtIndex:0];
  v8 = [(BRCZoneAppRetriever *)zoneAppRetriever serverZoneByRowID:v7];

  isSharedZone = [v8 isSharedZone];
  v10 = off_2784FDCC0;
  if (!isSharedZone)
  {
    v10 = off_2784FDC88;
  }

  v11 = [objc_alloc(*v10) initFromPQLResultSet:setCopy serverZone:v8 error:error];

  return v11;
}

@end