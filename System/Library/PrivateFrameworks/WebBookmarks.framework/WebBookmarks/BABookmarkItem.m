@interface BABookmarkItem
- (BABookmarkItem)initWithBookmarkCollection:(id)a3 bookmark:(id)a4;
- (id)description;
@end

@implementation BABookmarkItem

- (BABookmarkItem)initWithBookmarkCollection:(id)a3 bookmark:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = BABookmarkItem;
  v9 = [(BABookmarkItem *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_collection, a3);
    objc_storeStrong(&v10->_bookmark, a4);
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

  v5 = [(WebBookmark *)self->_bookmark identifier];
  v6 = [(WebBookmark *)self->_bookmark serverID];
  v7 = [v6 wb_stringByRedactingBookmarkDAVServerID];
  v8 = [v3 stringWithFormat:@"<%s %p localID: %d; serverID: %@; item: %p>", v4, self, v5, v7, self->_bookmark];;

  return v8;
}

@end