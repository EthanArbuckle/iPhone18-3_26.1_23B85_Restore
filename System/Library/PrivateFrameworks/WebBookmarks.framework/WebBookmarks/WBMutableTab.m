@interface WBMutableTab
- (NSString)localTitle;
- (NSString)syncableTitle;
- (NSURL)localURL;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_setPropertiesFromTabGroup:(id)a3;
- (void)adoptAttributesFromTab:(id)a3;
- (void)didInsertIntoTabGroup:(id)a3;
- (void)didRemoveFromTabGroup;
- (void)markAsRead;
- (void)markClean;
- (void)mergeWithTab:(id)a3;
- (void)setLocalAttributes:(id)a3;
- (void)setLocalTitle:(id)a3;
- (void)setSyncPosition:(id)a3;
- (void)setSyncableTitle:(id)a3;
- (void)setTabGroupUUID:(id)a3;
- (void)setTitle:(id)a3;
- (void)setUrl:(id)a3;
@end

@implementation WBMutableTab

- (void)markClean
{
  self->super._added = 0;
  self->super._moved = 0;
  self->super._modified = 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = WBMutableTab;
  v4 = [(WBTab *)&v8 copyWithZone:a3];
  v5 = [(NSString *)self->super._tabGroupUUID copy];
  v6 = v4[2];
  v4[2] = v5;

  *(v4 + 24) = self->super._added;
  *(v4 + 26) = self->super._moved;
  *(v4 + 25) = self->super._modified;
  *(v4 + 27) = self->super._inUnnamedTabGroup;
  *(v4 + 28) = self->super._privateBrowsing;
  *(v4 + 29) = self->super._shared;
  return v4;
}

- (void)setUrl:(id)a3
{
  v4 = a3;
  [(WBMutableTab *)self setLocalURL:v4];
  [(WBMutableTab *)self setSyncableURL:v4];
}

- (NSURL)localURL
{
  v2 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
  v3 = [v2 extraAttributes];
  v4 = [v3 objectForKeyedSubscript:@"LocalURL"];

  if ([v4 length])
  {
    v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  [(WBMutableTab *)self setLocalTitle:v4];
  [(WBMutableTab *)self setSyncableTitle:v4];
}

- (NSString)localTitle
{
  v2 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
  v3 = [v2 extraAttributes];
  v4 = [v3 objectForKeyedSubscript:@"LocalTitle"];

  return v4;
}

- (void)setLocalTitle:(id)a3
{
  v7 = a3;
  v4 = [(WBMutableTab *)self localTitle];
  v5 = [v7 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    self->super._modified = 1;
    [(WBSCopyOnWriteValue *)self->super._bookmarkStorage willModify];
    v6 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
    [v6 setExtraAttributesValue:v7 forKey:@"LocalTitle"];
  }
}

- (NSString)syncableTitle
{
  v2 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
  v3 = [v2 title];

  return v3;
}

- (void)setSyncableTitle:(id)a3
{
  v7 = a3;
  v4 = [(WBMutableTab *)self syncableTitle];
  v5 = [v7 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    self->super._modified = 1;
    [(WBSCopyOnWriteValue *)self->super._bookmarkStorage willModify];
    v6 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
    [v6 setTitle:v7];
  }
}

- (void)setTabGroupUUID:(id)a3
{
  v4 = a3;
  tabGroupUUID = self->super._tabGroupUUID;
  v8 = v4;
  if ((WBSIsEqual() & 1) == 0)
  {
    v6 = [v8 copy];
    v7 = self->super._tabGroupUUID;
    self->super._tabGroupUUID = v6;
  }
}

- (void)setLocalAttributes:(id)a3
{
  v18 = a3;
  v5 = [v18 dictionaryRepresentation];
  v6 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
  v7 = [v6 localAttributes];
  v8 = WBSIsEqual();

  if ((v8 & 1) == 0)
  {
    self->super._modified = 1;
    [(WBSCopyOnWriteValue *)self->super._bookmarkStorage willModify];
    v9 = [v18 dictionaryRepresentation];
    v10 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
    [v10 setLocalAttributes:v9];

    v11 = [v18 lastVisitTime];

    if (v11)
    {
      v12 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
      v13 = [v12 dateLastViewed];
      v14 = [v18 lastVisitTime];
      v15 = v14;
      if (v13)
      {
        v8 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
        v3 = [v8 dateLastViewed];
        v16 = [v15 laterDate:v3];
      }

      else
      {
        v16 = v14;
      }

      v17 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
      [v17 setTabDateLastViewed:v16];

      if (v13)
      {
      }
    }
  }
}

- (void)setSyncPosition:(id)a3
{
  bookmarkStorage = self->super._bookmarkStorage;
  v5 = a3;
  [(WBSCopyOnWriteValue *)bookmarkStorage willModify];
  v6 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
  [v6 setSyncPosition:v5];
}

- (void)adoptAttributesFromTab:(id)a3
{
  v4 = a3;
  v5 = [v4 localAttributes];
  [(WBMutableTab *)self setLocalAttributes:v5];

  v6 = [v4 title];
  [(WBMutableTab *)self setTitle:v6];

  v7 = [v4 url];
  [(WBMutableTab *)self setUrl:v7];

  v8 = [v4 isPinned];
  v10 = [v4 pinnedTitle];
  v9 = [v4 pinnedURL];

  [(WBMutableTab *)self setPinned:v8 title:v10 url:v9];
}

- (void)didInsertIntoTabGroup:(id)a3
{
  v4 = a3;
  [(WBMutableTab *)self setAdded:1];
  -[WBMutableTab setSyncable:](self, "setSyncable:", [v4 isSyncable]);
  [(WBMutableTab *)self _setPropertiesFromTabGroup:v4];
}

- (void)_setPropertiesFromTabGroup:(id)a3
{
  v7 = a3;
  v4 = [v7 uuid];
  tabGroupUUID = self->super._tabGroupUUID;
  self->super._tabGroupUUID = v4;

  self->super._privateBrowsing = [v7 isPrivateBrowsing];
  if ([v7 isLocal])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v7 isUnnamed];
  }

  self->super._inUnnamedTabGroup = v6;
  self->super._shared = [v7 isShared];
}

- (void)didRemoveFromTabGroup
{
  [(WBMutableTab *)self setTabGroupUUID:0];
  [(WBMutableTab *)self setPrivateBrowsing:0];
  [(WBMutableTab *)self setInUnnamedTabGroup:0];

  [(WBMutableTab *)self setShared:0];
}

- (void)markAsRead
{
  [(WBSCopyOnWriteValue *)self->super._bookmarkStorage willModify];
  v3 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
  [v3 markAsRead];
}

- (void)mergeWithTab:(id)a3
{
  v4 = a3;
  v5 = [(WBTab *)v4 bookmark];
  v6 = [v5 labelField];
  v7 = [v6 generation];

  if (v7)
  {
    v8 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
    v9 = [v8 labelField];
    v10 = [v9 generation];
    v11 = [v10 compare:v7];

    v12 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v11 == -1)
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&dword_272C20000, v12, OS_LOG_TYPE_INFO, "Adopting other tab's local title and URL", buf, 2u);
      }

      v17 = [(WBMutableTab *)v4 localTitle];
      [(WBMutableTab *)self setLocalTitle:v17];

      v15 = [(WBMutableTab *)v4 localURL];
      v16 = self;
    }

    else
    {
      if (v13)
      {
        *v20 = 0;
        _os_log_impl(&dword_272C20000, v12, OS_LOG_TYPE_INFO, "Using tab's local title and URL", v20, 2u);
      }

      v14 = [(WBMutableTab *)self localTitle];
      [(WBMutableTab *)v4 setLocalTitle:v14];

      v15 = [(WBMutableTab *)self localURL];
      v16 = v4;
    }

    [(WBMutableTab *)v16 setLocalURL:v15];
  }

  [(WBSCopyOnWriteValue *)self->super._bookmarkStorage willModify];
  v18 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
  v19 = [(WBTab *)v4 bookmark];
  [v18 mergeWithBookmark:v19];
}

@end