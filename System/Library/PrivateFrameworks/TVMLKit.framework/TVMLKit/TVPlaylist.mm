@interface TVPlaylist
- (void)addObject:(id)object;
- (void)insertObjects:(id)objects atIndexes:(id)indexes;
- (void)removeObjectsAtIndexes:(id)indexes;
@end

@implementation TVPlaylist

- (void)addObject:(id)object
{
  objectCopy = object;
  mediaItems = [(TVPlaylist *)self mediaItems];
  v6 = [mediaItems mutableCopy];
  v7 = v6;
  if (v6)
  {
    array = v6;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  v11 = array;

  [v11 addObject:objectCopy];
  [(TVPlaylist *)self willChangeValueForKey:@"mediaItems"];
  v9 = [v11 copy];
  mediaItems = self->_mediaItems;
  self->_mediaItems = v9;

  [(TVPlaylist *)self didChangeValueForKey:@"mediaItems"];
}

- (void)removeObjectsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  mediaItems = [(TVPlaylist *)self mediaItems];
  v8 = [mediaItems mutableCopy];

  [v8 removeObjectsAtIndexes:indexesCopy];
  [(TVPlaylist *)self willChangeValueForKey:@"mediaItems"];
  v6 = [v8 copy];
  mediaItems = self->_mediaItems;
  self->_mediaItems = v6;

  [(TVPlaylist *)self didChangeValueForKey:@"mediaItems"];
}

- (void)insertObjects:(id)objects atIndexes:(id)indexes
{
  objectsCopy = objects;
  indexesCopy = indexes;
  mediaItems = [(TVPlaylist *)self mediaItems];
  v8 = [mediaItems mutableCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objectsCopy, "count")}];
  }

  v11 = v10;

  [v11 insertObjects:objectsCopy atIndexes:indexesCopy];
  [(TVPlaylist *)self willChangeValueForKey:@"mediaItems"];
  v12 = [v11 copy];
  mediaItems = self->_mediaItems;
  self->_mediaItems = v12;

  [(TVPlaylist *)self didChangeValueForKey:@"mediaItems"];
}

@end