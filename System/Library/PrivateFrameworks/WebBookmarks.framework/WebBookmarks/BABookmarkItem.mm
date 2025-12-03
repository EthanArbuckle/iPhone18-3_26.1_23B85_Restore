@interface BABookmarkItem
- (BABookmarkItem)initWithBookmarkCollection:(id)collection bookmark:(id)bookmark;
- (id)description;
@end

@implementation BABookmarkItem

- (BABookmarkItem)initWithBookmarkCollection:(id)collection bookmark:(id)bookmark
{
  collectionCopy = collection;
  bookmarkCopy = bookmark;
  v13.receiver = self;
  v13.super_class = BABookmarkItem;
  v9 = [(BABookmarkItem *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_collection, collection);
    objc_storeStrong(&v10->_bookmark, bookmark);
    v11 = v10;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  if ([(WebBookmark *)self->_bookmark isFolder])
  {
    v4 = "BAFolder";
  }

  else
  {
    v4 = "BABookmark";
  }

  identifier = [(WebBookmark *)self->_bookmark identifier];
  serverID = [(WebBookmark *)self->_bookmark serverID];
  wb_stringByRedactingBookmarkDAVServerID = [serverID wb_stringByRedactingBookmarkDAVServerID];
  v8 = [v3 stringWithFormat:@"<%s %p localID: %d; serverID: %@; item: %p>", v4, self, identifier, wb_stringByRedactingBookmarkDAVServerID, self->_bookmark];;

  return v8;
}

@end