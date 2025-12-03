@interface WBChangeRecord
- (WBChangeRecord)initWithBookmarkCollection:(id)collection bookmark:(id)bookmark changeType:(int)type localRecordGeneration:(int64_t)generation;
- (id)_changeTypeDescription;
- (id)_changedAttributeDescription;
- (id)description;
@end

@implementation WBChangeRecord

- (WBChangeRecord)initWithBookmarkCollection:(id)collection bookmark:(id)bookmark changeType:(int)type localRecordGeneration:(int64_t)generation
{
  collectionCopy = collection;
  bookmarkCopy = bookmark;
  v17.receiver = self;
  v17.super_class = WBChangeRecord;
  v13 = [(WBChangeRecord *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_collection, collection);
    objc_storeStrong(&v14->_bookmark, bookmark);
    v14->_changeType = type;
    v14->_localRecordGeneration = generation;
    v15 = v14;
  }

  return v14;
}

- (id)_changeTypeDescription
{
  changeType = self->_changeType;
  if (changeType == 2)
  {
    return @"Delete";
  }

  if (changeType == 1)
  {
    v3 = @"Modify (isMove: YES)";
    if (![(WebBookmark *)self->_bookmark attributesMarkedAsModified:64]&& ![(WebBookmark *)self->_bookmark attributesMarkedAsModified:4])
    {
      return @"Modify (isMove: NO)";
    }
  }

  else if (changeType)
  {
    return 0;
  }

  else
  {
    return @"Add";
  }

  return v3;
}

- (id)_changedAttributeDescription
{
  array = [MEMORY[0x277CBEB18] array];
  if ([(WebBookmark *)self->_bookmark attributesMarkedAsModified:1])
  {
    [array addObject:@"Title"];
  }

  if ([(WebBookmark *)self->_bookmark attributesMarkedAsModified:32])
  {
    [array addObject:@"IsSelectedFavoritesFolder"];
  }

  if ([(WebBookmark *)self->_bookmark attributesMarkedAsModified:16])
  {
    [array addObject:@"DateAdded"];
  }

  if ([(WebBookmark *)self->_bookmark attributesMarkedAsModified:8])
  {
    [array addObject:@"DateLastViewed"];
  }

  if ([(WebBookmark *)self->_bookmark attributesMarkedAsModified:128])
  {
    [array addObject:@"ImageURL"];
  }

  if ([(WebBookmark *)self->_bookmark attributesMarkedAsModified:256])
  {
    [array addObject:@"PreviewText"];
  }

  if ([(WebBookmark *)self->_bookmark attributesMarkedAsModified:2])
  {
    [array addObject:@"URL"];
  }

  if ([(WebBookmark *)self->_bookmark attributesMarkedAsModified:512])
  {
    [array addObject:@"LastSelectedTab"];
  }

  if ([(WebBookmark *)self->_bookmark attributesMarkedAsModified:4096])
  {
    [array addObject:@"SymbolImageName"];
  }

  if ([(WebBookmark *)self->_bookmark attributesMarkedAsModified:0x40000])
  {
    [array addObject:@"CustomFavoritesFolderServerID"];
  }

  if ([(WebBookmark *)self->_bookmark attributesMarkedAsModified:0x2000])
  {
    [array addObject:@"BackgroundImage"];
  }

  if ([(WebBookmark *)self->_bookmark attributesMarkedAsModified:0x10000])
  {
    [array addObject:@"IsPinned"];
  }

  if ([(WebBookmark *)self->_bookmark attributesMarkedAsModified:0x200000])
  {
    [array addObject:@"ShowIconOnly"];
  }

  if ([array count])
  {
    v4 = [array componentsJoinedByString:{@", "}];
  }

  else
  {
    v4 = &stru_288259858;
  }

  return v4;
}

- (id)description
{
  isFolder = [(WebBookmark *)self->_bookmark isFolder];
  v4 = @"Leaf";
  if (isFolder)
  {
    v4 = @"Folder";
  }

  v5 = v4;
  _changedAttributeDescription = [(WBChangeRecord *)self _changedAttributeDescription];
  if ([_changedAttributeDescription length])
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@", Changed Attributes: %@", _changedAttributeDescription];

    _changedAttributeDescription = v7;
  }

  v8 = MEMORY[0x277CCACA8];
  _changeTypeDescription = [(WBChangeRecord *)self _changeTypeDescription];
  identifier = [(WebBookmark *)self->_bookmark identifier];
  serverID = [(WebBookmark *)self->_bookmark serverID];
  wb_stringByRedactingBookmarkDAVServerID = [serverID wb_stringByRedactingBookmarkDAVServerID];
  v13 = [v8 stringWithFormat:@"<BAChangeRecord: %p, Type: %@, Bookmark Type: %@, Bookmark ID: %d, Bookmark Sync Server ID: %@%@>", self, _changeTypeDescription, v5, identifier, wb_stringByRedactingBookmarkDAVServerID, _changedAttributeDescription];

  return v13;
}

@end