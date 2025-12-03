@interface WBMutableTab
- (NSString)localTitle;
- (NSString)syncableTitle;
- (NSURL)localURL;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setPropertiesFromTabGroup:(id)group;
- (void)adoptAttributesFromTab:(id)tab;
- (void)didInsertIntoTabGroup:(id)group;
- (void)didRemoveFromTabGroup;
- (void)markAsRead;
- (void)markClean;
- (void)mergeWithTab:(id)tab;
- (void)setLocalAttributes:(id)attributes;
- (void)setLocalTitle:(id)title;
- (void)setSyncPosition:(id)position;
- (void)setSyncableTitle:(id)title;
- (void)setTabGroupUUID:(id)d;
- (void)setTitle:(id)title;
- (void)setUrl:(id)url;
@end

@implementation WBMutableTab

- (void)markClean
{
  self->super._added = 0;
  self->super._moved = 0;
  self->super._modified = 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = WBMutableTab;
  v4 = [(WBTab *)&v8 copyWithZone:zone];
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

- (void)setUrl:(id)url
{
  urlCopy = url;
  [(WBMutableTab *)self setLocalURL:urlCopy];
  [(WBMutableTab *)self setSyncableURL:urlCopy];
}

- (NSURL)localURL
{
  value = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
  extraAttributes = [value extraAttributes];
  v4 = [extraAttributes objectForKeyedSubscript:@"LocalURL"];

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

- (void)setTitle:(id)title
{
  titleCopy = title;
  [(WBMutableTab *)self setLocalTitle:titleCopy];
  [(WBMutableTab *)self setSyncableTitle:titleCopy];
}

- (NSString)localTitle
{
  value = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
  extraAttributes = [value extraAttributes];
  v4 = [extraAttributes objectForKeyedSubscript:@"LocalTitle"];

  return v4;
}

- (void)setLocalTitle:(id)title
{
  titleCopy = title;
  localTitle = [(WBMutableTab *)self localTitle];
  v5 = [titleCopy isEqualToString:localTitle];

  if ((v5 & 1) == 0)
  {
    self->super._modified = 1;
    [(WBSCopyOnWriteValue *)self->super._bookmarkStorage willModify];
    value = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
    [value setExtraAttributesValue:titleCopy forKey:@"LocalTitle"];
  }
}

- (NSString)syncableTitle
{
  value = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
  title = [value title];

  return title;
}

- (void)setSyncableTitle:(id)title
{
  titleCopy = title;
  syncableTitle = [(WBMutableTab *)self syncableTitle];
  v5 = [titleCopy isEqualToString:syncableTitle];

  if ((v5 & 1) == 0)
  {
    self->super._modified = 1;
    [(WBSCopyOnWriteValue *)self->super._bookmarkStorage willModify];
    value = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
    [value setTitle:titleCopy];
  }
}

- (void)setTabGroupUUID:(id)d
{
  dCopy = d;
  tabGroupUUID = self->super._tabGroupUUID;
  v8 = dCopy;
  if ((WBSIsEqual() & 1) == 0)
  {
    v6 = [v8 copy];
    v7 = self->super._tabGroupUUID;
    self->super._tabGroupUUID = v6;
  }
}

- (void)setLocalAttributes:(id)attributes
{
  attributesCopy = attributes;
  dictionaryRepresentation = [attributesCopy dictionaryRepresentation];
  value = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
  localAttributes = [value localAttributes];
  value4 = WBSIsEqual();

  if ((value4 & 1) == 0)
  {
    self->super._modified = 1;
    [(WBSCopyOnWriteValue *)self->super._bookmarkStorage willModify];
    dictionaryRepresentation2 = [attributesCopy dictionaryRepresentation];
    value2 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
    [value2 setLocalAttributes:dictionaryRepresentation2];

    lastVisitTime = [attributesCopy lastVisitTime];

    if (lastVisitTime)
    {
      value3 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
      dateLastViewed = [value3 dateLastViewed];
      lastVisitTime2 = [attributesCopy lastVisitTime];
      v15 = lastVisitTime2;
      if (dateLastViewed)
      {
        value4 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
        dateLastViewed2 = [value4 dateLastViewed];
        v16 = [v15 laterDate:dateLastViewed2];
      }

      else
      {
        v16 = lastVisitTime2;
      }

      value5 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
      [value5 setTabDateLastViewed:v16];

      if (dateLastViewed)
      {
      }
    }
  }
}

- (void)setSyncPosition:(id)position
{
  bookmarkStorage = self->super._bookmarkStorage;
  positionCopy = position;
  [(WBSCopyOnWriteValue *)bookmarkStorage willModify];
  value = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
  [value setSyncPosition:positionCopy];
}

- (void)adoptAttributesFromTab:(id)tab
{
  tabCopy = tab;
  localAttributes = [tabCopy localAttributes];
  [(WBMutableTab *)self setLocalAttributes:localAttributes];

  title = [tabCopy title];
  [(WBMutableTab *)self setTitle:title];

  v7 = [tabCopy url];
  [(WBMutableTab *)self setUrl:v7];

  isPinned = [tabCopy isPinned];
  pinnedTitle = [tabCopy pinnedTitle];
  pinnedURL = [tabCopy pinnedURL];

  [(WBMutableTab *)self setPinned:isPinned title:pinnedTitle url:pinnedURL];
}

- (void)didInsertIntoTabGroup:(id)group
{
  groupCopy = group;
  [(WBMutableTab *)self setAdded:1];
  -[WBMutableTab setSyncable:](self, "setSyncable:", [groupCopy isSyncable]);
  [(WBMutableTab *)self _setPropertiesFromTabGroup:groupCopy];
}

- (void)_setPropertiesFromTabGroup:(id)group
{
  groupCopy = group;
  uuid = [groupCopy uuid];
  tabGroupUUID = self->super._tabGroupUUID;
  self->super._tabGroupUUID = uuid;

  self->super._privateBrowsing = [groupCopy isPrivateBrowsing];
  if ([groupCopy isLocal])
  {
    isUnnamed = 1;
  }

  else
  {
    isUnnamed = [groupCopy isUnnamed];
  }

  self->super._inUnnamedTabGroup = isUnnamed;
  self->super._shared = [groupCopy isShared];
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
  value = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
  [value markAsRead];
}

- (void)mergeWithTab:(id)tab
{
  tabCopy = tab;
  bookmark = [(WBTab *)tabCopy bookmark];
  labelField = [bookmark labelField];
  generation = [labelField generation];

  if (generation)
  {
    value = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
    labelField2 = [value labelField];
    generation2 = [labelField2 generation];
    v11 = [generation2 compare:generation];

    v12 = WBS_LOG_CHANNEL_PREFIXTabGroup();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v11 == -1)
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&dword_272C20000, v12, OS_LOG_TYPE_INFO, "Adopting other tab's local title and URL", buf, 2u);
      }

      localTitle = [(WBMutableTab *)tabCopy localTitle];
      [(WBMutableTab *)self setLocalTitle:localTitle];

      localURL = [(WBMutableTab *)tabCopy localURL];
      selfCopy = self;
    }

    else
    {
      if (v13)
      {
        *v20 = 0;
        _os_log_impl(&dword_272C20000, v12, OS_LOG_TYPE_INFO, "Using tab's local title and URL", v20, 2u);
      }

      localTitle2 = [(WBMutableTab *)self localTitle];
      [(WBMutableTab *)tabCopy setLocalTitle:localTitle2];

      localURL = [(WBMutableTab *)self localURL];
      selfCopy = tabCopy;
    }

    [(WBMutableTab *)selfCopy setLocalURL:localURL];
  }

  [(WBSCopyOnWriteValue *)self->super._bookmarkStorage willModify];
  value2 = [(WBSCopyOnWriteValue *)self->super._bookmarkStorage value];
  bookmark2 = [(WBTab *)tabCopy bookmark];
  [value2 mergeWithBookmark:bookmark2];
}

@end