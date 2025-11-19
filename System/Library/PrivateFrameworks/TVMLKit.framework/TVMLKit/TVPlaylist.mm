@interface TVPlaylist
- (void)addObject:(id)a3;
- (void)insertObjects:(id)a3 atIndexes:(id)a4;
- (void)removeObjectsAtIndexes:(id)a3;
@end

@implementation TVPlaylist

- (void)addObject:(id)a3
{
  v4 = a3;
  v5 = [(TVPlaylist *)self mediaItems];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x277CBEB18] array];
  }

  v11 = v8;

  [v11 addObject:v4];
  [(TVPlaylist *)self willChangeValueForKey:@"mediaItems"];
  v9 = [v11 copy];
  mediaItems = self->_mediaItems;
  self->_mediaItems = v9;

  [(TVPlaylist *)self didChangeValueForKey:@"mediaItems"];
}

- (void)removeObjectsAtIndexes:(id)a3
{
  v4 = a3;
  v5 = [(TVPlaylist *)self mediaItems];
  v8 = [v5 mutableCopy];

  [v8 removeObjectsAtIndexes:v4];
  [(TVPlaylist *)self willChangeValueForKey:@"mediaItems"];
  v6 = [v8 copy];
  mediaItems = self->_mediaItems;
  self->_mediaItems = v6;

  [(TVPlaylist *)self didChangeValueForKey:@"mediaItems"];
}

- (void)insertObjects:(id)a3 atIndexes:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(TVPlaylist *)self mediaItems];
  v8 = [v7 mutableCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v14, "count")}];
  }

  v11 = v10;

  [v11 insertObjects:v14 atIndexes:v6];
  [(TVPlaylist *)self willChangeValueForKey:@"mediaItems"];
  v12 = [v11 copy];
  mediaItems = self->_mediaItems;
  self->_mediaItems = v12;

  [(TVPlaylist *)self didChangeValueForKey:@"mediaItems"];
}

@end