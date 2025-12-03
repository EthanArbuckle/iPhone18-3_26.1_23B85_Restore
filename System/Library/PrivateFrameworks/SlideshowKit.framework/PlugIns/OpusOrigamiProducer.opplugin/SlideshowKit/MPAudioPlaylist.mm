@interface MPAudioPlaylist
+ (id)audioPlaylist;
- (MPAudioPlaylist)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)parentDocument;
- (void)addSong:(id)song;
- (void)addSongs:(id)songs;
- (void)copySongs:(id)songs;
- (void)copyStruct:(id)struct;
- (void)dealloc;
- (void)insertObject:(id)object inSongsAtIndex:(int64_t)index;
- (void)insertSongs:(id)songs atIndex:(int64_t)index;
- (void)moveSongsFromIndices:(id)indices toIndex:(int64_t)index;
- (void)removeAllSongs;
- (void)removeObjectFromSongsAtIndex:(int64_t)index;
- (void)removeSongsAtIndices:(id)indices;
- (void)replaceObjectInSongsAtIndex:(int64_t)index withObject:(id)object;
- (void)setAudioPlaylist:(id)playlist;
- (void)setDuckInDuration:(double)duration;
- (void)setDuckLevel:(double)level;
- (void)setDuckOutDuration:(double)duration;
- (void)setDuration:(double)duration;
- (void)setFadeInDuration:(double)duration;
- (void)setFadeOutDuration:(double)duration;
- (void)setParentObject:(id)object;
- (void)setPlug:(id)plug;
@end

@implementation MPAudioPlaylist

+ (id)audioPlaylist
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (MPAudioPlaylist)init
{
  v4.receiver = self;
  v4.super_class = MPAudioPlaylist;
  v2 = [(MPAudioPlaylist *)&v4 init];
  if (v2)
  {
    v2->_internal = objc_alloc_init(MPPlaylistInternal);
    v2->_songs = objc_alloc_init(NSMutableArray);
    v2->_attributes = objc_alloc_init(NSMutableDictionary);
    *&v2->_audioPlaylist = 0u;
    *&v2->_parentObject = 0u;
    [(MPPlaylistInternal *)v2->_internal setDuration:0.0];
    [(MPPlaylistInternal *)v2->_internal setFadeInDuration:0.0];
    [(MPPlaylistInternal *)v2->_internal setFadeOutDuration:0.0];
    [(MPPlaylistInternal *)v2->_internal setDuckInDuration:0.0];
    [(MPPlaylistInternal *)v2->_internal setDuckOutDuration:0.0];
    [(MPPlaylistInternal *)v2->_internal setDuckLevel:1.0];
  }

  return v2;
}

- (void)dealloc
{
  [(MPAudioPlaylist *)self cleanup];
  plug = self->_plug;
  if (plug)
  {

    self->_plug = 0;
  }

  audioPlaylist = self->_audioPlaylist;
  if (audioPlaylist)
  {

    self->_audioPlaylist = 0;
  }

  self->_internal = 0;
  v5.receiver = self;
  v5.super_class = MPAudioPlaylist;
  [(MPAudioPlaylist *)&v5 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 copySongs:self->_songs];
  [v4 copyStruct:self->_internal];
  return v4;
}

- (id)description
{
  v3 = [NSString stringWithFormat:@"================================ Audio Playlist ================================\n"];
  [(MPAudioPlaylist *)self duration];
  v5 = [[(NSString *)v3 stringByAppendingFormat:@"\t                   Duration: %f\n" stringByAppendingFormat:"stringByAppendingFormat:", @"\t             Count of Songs: %d\n", [(NSMutableArray *)self->_songs count]];
  if (self->_audioPlaylist)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  return [(NSString *)v5 stringByAppendingFormat:@"\t               Has Playlist: %@\n", v6];
}

- (void)addSong:(id)song
{
  v4 = [NSArray arrayWithObject:song];
  v5 = [(NSMutableArray *)self->_songs count];

  [(MPAudioPlaylist *)self insertSongs:v4 atIndex:v5];
}

- (void)addSongs:(id)songs
{
  v5 = [(NSMutableArray *)self->_songs count];

  [(MPAudioPlaylist *)self insertSongs:songs atIndex:v5];
}

- (void)insertSongs:(id)songs atIndex:(int64_t)index
{
  v7 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", index, [songs count]);
  [(MPAudioPlaylist *)self willChange:2 valuesAtIndexes:v7 forKey:@"songs"];
  [(NSMutableArray *)self->_songs insertObjects:songs atIndexes:v7];
  [(MPAudioPlaylist *)self duration];
  v9 = v8;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = [songs countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(songs);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        [v14 setParentPlaylist:self];
        [v14 duration];
        v9 = v9 + v15;
      }

      v11 = [songs countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v11);
  }

  [(MPAudioPlaylist *)self setDuration:v9];
  if (self->_audioPlaylist)
  {
    v16 = +[NSMutableArray array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v17 = [songs countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v31;
      do
      {
        for (j = 0; j != v18; j = j + 1)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(songs);
          }

          [v16 addObject:{-[MCMontage audioAssetForFileAtPath:](self->_montage, "audioAssetForFileAtPath:", objc_msgSend(*(*(&v30 + 1) + 8 * j), "path"))}];
        }

        v18 = [songs countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v18);
    }

    v21 = [-[MCAudioPlaylist insertSongsForAssets:atIndex:](self->_audioPlaylist insertSongsForAssets:v16 atIndex:{index), "objectEnumerator"}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v22 = [songs countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v27;
      do
      {
        for (k = 0; k != v23; k = k + 1)
        {
          if (*v27 != v24)
          {
            objc_enumerationMutation(songs);
          }

          [*(*(&v26 + 1) + 8 * k) setSong:{objc_msgSend(v21, "nextObject")}];
        }

        v23 = [songs countByEnumeratingWithState:&v26 objects:v38 count:16];
      }

      while (v23);
    }
  }

  [(MPAudioPlaylist *)self didChange:2 valuesAtIndexes:v7 forKey:@"songs"];
}

- (void)removeSongsAtIndices:(id)indices
{
  if ([(NSMutableArray *)self->_songs count])
  {
    [(MPAudioPlaylist *)self willChange:3 valuesAtIndexes:indices forKey:@"songs"];
    audioPlaylist = self->_audioPlaylist;
    if (audioPlaylist)
    {
      [(MCAudioPlaylist *)audioPlaylist removeSongsAtIndices:indices];
    }

    v6 = [-[MPAudioPlaylist parentDocument](self "parentDocument")];
    [(MPAudioPlaylist *)self duration];
    v8 = v7;
    lastIndex = [indices lastIndex];
    if (lastIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = lastIndex; i != 0x7FFFFFFFFFFFFFFFLL; i = [indices indexLessThanIndex:i])
      {
        v11 = [(NSMutableArray *)self->_songs objectAtIndex:i];
        [v11 duration];
        v13 = v12;
        [v11 setParentPlaylist:0];
        [v11 setSong:0];
        if (v6)
        {
          [objc_msgSend(v6 prepareWithInvocationTarget:{self), "insertSongs:atIndex:", +[NSArray arrayWithObject:](NSArray, "arrayWithObject:", v11), i}];
        }

        v8 = v8 - v13;
      }
    }

    v14 = 0.0;
    if (v8 >= 0.0)
    {
      v14 = v8;
    }

    [(MPAudioPlaylist *)self setDuration:v14];
    [(NSMutableArray *)self->_songs removeObjectsAtIndexes:indices];

    [(MPAudioPlaylist *)self didChange:3 valuesAtIndexes:indices forKey:@"songs"];
  }
}

- (void)removeAllSongs
{
  v3 = [NSIndexSet indexSetWithIndexesInRange:0, [(NSMutableArray *)self->_songs count]];

  [(MPAudioPlaylist *)self removeSongsAtIndices:v3];
}

- (void)moveSongsFromIndices:(id)indices toIndex:(int64_t)index
{
  [(MPAudioPlaylist *)self willChangeValueForKey:@"songs"];
  audioPlaylist = self->_audioPlaylist;
  if (audioPlaylist)
  {
    [(MCAudioPlaylist *)audioPlaylist moveSongsAtIndices:indices toIndex:index];
  }

  v8 = [(NSMutableArray *)self->_songs objectsAtIndexes:indices];
  [(NSMutableArray *)self->_songs removeObjectsAtIndexes:indices];
  -[NSMutableArray insertObjects:atIndexes:](self->_songs, "insertObjects:atIndexes:", v8, +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", index, [v8 count]));

  [(MPAudioPlaylist *)self didChangeValueForKey:@"songs"];
}

- (void)setFadeInDuration:(double)duration
{
  [(MPPlaylistInternal *)self->_internal setFadeInDuration:?];
  audioPlaylist = self->_audioPlaylist;
  if (audioPlaylist)
  {

    [(MCAudioPlaylist *)audioPlaylist setFadeInDuration:duration];
  }
}

- (void)setFadeOutDuration:(double)duration
{
  [(MPPlaylistInternal *)self->_internal setFadeOutDuration:?];
  plug = self->_plug;
  if (plug && [-[MCPlug idInSupercontainer](plug "idInSupercontainer")])
  {
    [-[MPAudioPlaylist parentDocument](self "parentDocument")];
  }

  audioPlaylist = self->_audioPlaylist;
  if (audioPlaylist)
  {

    [(MCAudioPlaylist *)audioPlaylist setFadeOutDuration:duration];
  }
}

- (void)setDuckInDuration:(double)duration
{
  [(MPPlaylistInternal *)self->_internal setDuckInDuration:?];
  audioPlaylist = self->_audioPlaylist;
  if (audioPlaylist)
  {

    [(MCAudioPlaylist *)audioPlaylist setDuckInDuration:duration];
  }
}

- (void)setDuckOutDuration:(double)duration
{
  [(MPPlaylistInternal *)self->_internal setDuckOutDuration:?];
  audioPlaylist = self->_audioPlaylist;
  if (audioPlaylist)
  {

    [(MCAudioPlaylist *)audioPlaylist setDuckOutDuration:duration];
  }
}

- (void)setDuckLevel:(double)level
{
  [(MPPlaylistInternal *)self->_internal setDuckLevel:?];
  audioPlaylist = self->_audioPlaylist;
  if (audioPlaylist)
  {

    *&v5 = level;
    [(MCAudioPlaylist *)audioPlaylist setDuckLevel:v5];
  }
}

- (void)copyStruct:(id)struct
{
  [struct duration];
  [(MPPlaylistInternal *)self->_internal setDuration:?];
  [struct fadeInDuration];
  [(MPPlaylistInternal *)self->_internal setFadeInDuration:?];
  [struct fadeOutDuration];
  [(MPPlaylistInternal *)self->_internal setFadeOutDuration:?];
  [struct duckInDuration];
  [(MPPlaylistInternal *)self->_internal setDuckInDuration:?];
  [struct duckOutDuration];
  [(MPPlaylistInternal *)self->_internal setDuckOutDuration:?];
  [struct duckLevel];
  internal = self->_internal;

  [(MPPlaylistInternal *)internal setDuckLevel:?];
}

- (void)copySongs:(id)songs
{
  v5 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [songs countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(songs);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) copy];
        [v5 addObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [songs countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(MPAudioPlaylist *)self addSongs:v5];
}

- (void)setAudioPlaylist:(id)playlist
{
  audioPlaylist = self->_audioPlaylist;
  if (audioPlaylist)
  {

    self->_audioPlaylist = 0;
  }

  playlistCopy = playlist;
  self->_audioPlaylist = playlistCopy;
  if (playlistCopy && self->_montage)
  {
    if ([(MCAudioPlaylist *)playlistCopy countOfSongs])
    {
      [(MCAudioPlaylist *)self->_audioPlaylist removeAllSongs];
    }

    v7 = +[NSMutableArray array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    songs = self->_songs;
    v9 = [(NSMutableArray *)songs countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v34;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(songs);
          }

          [v7 addObject:{-[MCMontage audioAssetForFileAtPath:](self->_montage, "audioAssetForFileAtPath:", objc_msgSend(*(*(&v33 + 1) + 8 * i), "path"))}];
        }

        v10 = [(NSMutableArray *)songs countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v10);
    }

    v13 = [-[MCAudioPlaylist addSongsForAssets:](self->_audioPlaylist addSongsForAssets:{v7), "objectEnumerator"}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = self->_songs;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v29 + 1) + 8 * j) setSong:{objc_msgSend(v13, "nextObject")}];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v16);
    }

    [(MPAudioPlaylist *)self fadeInDuration];
    [(MCAudioPlaylist *)self->_audioPlaylist setFadeInDuration:?];
    [(MPAudioPlaylist *)self fadeOutDuration];
    [(MCAudioPlaylist *)self->_audioPlaylist setFadeOutDuration:?];
    [(MPAudioPlaylist *)self duckInDuration];
    [(MCAudioPlaylist *)self->_audioPlaylist setDuckInDuration:?];
    [(MPAudioPlaylist *)self duckOutDuration];
    [(MCAudioPlaylist *)self->_audioPlaylist setDuckOutDuration:?];
    [(MPAudioPlaylist *)self duckLevel];
    *&v19 = v19;
    [(MCAudioPlaylist *)self->_audioPlaylist setDuckLevel:v19];
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v20 = self->_songs;
    v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v25 objects:v37 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v26;
      do
      {
        for (k = 0; k != v22; k = k + 1)
        {
          if (*v26 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [*(*(&v25 + 1) + 8 * k) setSong:0];
        }

        v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v25 objects:v37 count:16];
      }

      while (v22);
    }
  }
}

- (void)setPlug:(id)plug
{
  plug = self->_plug;
  if (plug)
  {

    self->_plug = 0;
  }

  plugCopy = plug;
  self->_plug = plugCopy;
  if (plugCopy)
  {
    if (self->_montage)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([-[MCPlug idInSupercontainer](self->_plug "idInSupercontainer")])
        {
          [(MPAudioPlaylist *)self fadeOutDuration];
          [(MCMontage *)self->_montage setAudioFadeOutDuration:?];
        }
      }
    }

    if ((objc_opt_respondsToSelector() & 1) == 0 || [(MPAudioSupport *)self->_parentObject autoAdjustDuration])
    {
      [(MPPlaylistInternal *)self->_internal duration];
      [(MCPlug *)self->_plug setLoopDuration:?];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      parentObject = self->_parentObject;

      [(MPAudioSupport *)parentObject resetDuration];
    }
  }
}

- (void)setParentObject:(id)object
{
  if (object && self->_parentObject)
  {
    objc_exception_throw([NSException exceptionWithName:@"ManyToOneException" reason:@"A playlist may one have one parent.  Please remove it first.  This is unsupported." userInfo:0, v3, v4]);
  }

  self->_parentObject = object;
}

- (void)setDuration:(double)duration
{
  parentObject = self->_parentObject;
  if (!parentObject)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    parentObject = 0;
    goto LABEL_8;
  }

  parentObject = self->_parentObject;
  if (!parentObject)
  {
LABEL_8:
    v6 = 0;
    v7 = 1;
    goto LABEL_9;
  }

  if (self->_plug && [(MPAudioSupport *)self->_parentObject loopingMode]== &dword_4)
  {
    v6 = [-[MCPlug idInSupercontainer](self->_plug "idInSupercontainer")];
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

LABEL_9:
  if (objc_opt_respondsToSelector())
  {
    v8 = [(MPAudioSupport *)self->_parentObject autoAdjustDuration]^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  plug = self->_plug;
  if (!((plug == 0) | v6 & 1) && (v8 & 1) == 0)
  {
    [(MCPlug *)plug setLoopDuration:duration];
  }

  [(MPPlaylistInternal *)self->_internal setDuration:duration];
  if ((v7 & 1) == 0)
  {

    [(MPAudioSupport *)parentObject resetDuration];
  }
}

- (id)parentDocument
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  parentObject = self->_parentObject;
  if (isKindOfClass)
  {
    return parentObject;
  }

  objc_opt_class();
  v6 = objc_opt_isKindOfClass();
  v7 = self->_parentObject;
  if ((v6 & 1) == 0)
  {
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();
    v7 = self->_parentObject;
    if ((v8 & 1) == 0)
    {
      objc_opt_class();
      v9 = objc_opt_isKindOfClass();
      v7 = self->_parentObject;
      if ((v9 & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }

        v7 = [-[MPAudioSupport parentContainer](self->_parentObject "parentContainer")];
      }
    }
  }

  return [(MPAudioSupport *)v7 parentDocument];
}

- (void)insertObject:(id)object inSongsAtIndex:(int64_t)index
{
  v6 = [NSArray arrayWithObject:object];

  [(MPAudioPlaylist *)self insertSongs:v6 atIndex:index];
}

- (void)removeObjectFromSongsAtIndex:(int64_t)index
{
  v4 = [NSIndexSet indexSetWithIndex:index];

  [(MPAudioPlaylist *)self removeSongsAtIndices:v4];
}

- (void)replaceObjectInSongsAtIndex:(int64_t)index withObject:(id)object
{
  [(MPAudioPlaylist *)self removeSongsAtIndices:[NSIndexSet indexSetWithIndex:?]];
  v7 = [NSArray arrayWithObject:object];

  [(MPAudioPlaylist *)self insertSongs:v7 atIndex:index];
}

@end