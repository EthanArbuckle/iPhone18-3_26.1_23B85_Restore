@interface BRCServerItemBuilder
- (BRCServerItemBuilder)initWithZoneAppRetriever:(id)a3;
- (id)newServerItemFromPQLResultSet:(id)a3 error:(id *)a4;
@end

@implementation BRCServerItemBuilder

- (BRCServerItemBuilder)initWithZoneAppRetriever:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BRCServerItemBuilder;
  v6 = [(BRCServerItemBuilder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_zoneAppRetriever, a3);
  }

  return v7;
}

- (id)newServerItemFromPQLResultSet:(id)a3 error:(id *)a4
{
  zoneAppRetriever = self->_zoneAppRetriever;
  v6 = a3;
  v7 = [v6 numberAtIndex:0];
  v8 = [(BRCZoneAppRetriever *)zoneAppRetriever serverZoneByRowID:v7];

  v9 = [v8 isSharedZone];
  v10 = off_2784FDCC0;
  if (!v9)
  {
    v10 = off_2784FDC88;
  }

  v11 = [objc_alloc(*v10) initFromPQLResultSet:v6 serverZone:v8 error:a4];

  return v11;
}

@end