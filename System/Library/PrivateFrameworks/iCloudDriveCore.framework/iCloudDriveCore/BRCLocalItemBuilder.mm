@interface BRCLocalItemBuilder
- (BRCLocalItemBuilder)initWithSession:(id)session;
- (id)newLocalItemFromPQLResultSet:(id)set error:(id *)error;
- (id)newZoneRootWithItemID:(id)d;
@end

@implementation BRCLocalItemBuilder

- (BRCLocalItemBuilder)initWithSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = BRCLocalItemBuilder;
  v6 = [(BRCLocalItemBuilder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, session);
  }

  return v7;
}

- (id)newLocalItemFromPQLResultSet:(id)set error:(id *)error
{
  setCopy = set;
  v7 = [setCopy intAtIndex:15];
  v8 = [setCopy db];
  if (v7 > 4)
  {
    if (v7 <= 7)
    {
      if ((v7 - 6) < 2)
      {
        v9 = BRCFinderBookmarkItem;
LABEL_22:
        v10 = [[v9 alloc] initFromPQLResultSet:setCopy session:self->_session db:v8 error:error];
        goto LABEL_23;
      }

      if (v7 == 5)
      {
        v9 = BRCSymlinkItem;
        goto LABEL_22;
      }

      goto LABEL_24;
    }

    if (v7 == 8)
    {
      v9 = BRCShareAcceptationDocumentFault;
      goto LABEL_22;
    }

    if (v7 == 10)
    {
      v9 = BRCShareAcceptationDirectoryFault;
      goto LABEL_22;
    }

    if (v7 != 9)
    {
      goto LABEL_24;
    }

LABEL_16:
    v9 = BRCDirectoryItem;
    goto LABEL_22;
  }

  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v9 = BRCAliasItem;
      goto LABEL_22;
    }

    if (v7 != 4)
    {
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  if ((v7 - 1) < 2)
  {
    v9 = BRCDocumentItem;
    goto LABEL_22;
  }

  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_24:
  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    [(BRCLocalItemBuilder *)v12 newLocalItemFromPQLResultSet:v7 error:v13];
  }

  v10 = 0;
LABEL_23:

  return v10;
}

- (id)newZoneRootWithItemID:(id)d
{
  dCopy = d;
  v5 = [[BRCZoneRootItem alloc] initWithZoneRootItemID:dCopy session:self->_session];

  return v5;
}

@end