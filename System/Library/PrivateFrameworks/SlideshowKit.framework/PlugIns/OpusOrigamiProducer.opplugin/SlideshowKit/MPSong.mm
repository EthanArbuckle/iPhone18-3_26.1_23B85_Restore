@interface MPSong
+ (id)song;
+ (id)songWithPath:(id)path;
- (MPSong)init;
- (MPSong)initWithPath:(id)path;
- (NSURL)URL;
- (double)audioVolume;
- (double)duration;
- (double)maxDuration;
- (double)startTime;
- (double)stopTime;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)parentDocument;
- (void)copyStruct:(id)struct;
- (void)dealloc;
- (void)setAudioVolume:(double)volume;
- (void)setDuration:(double)duration;
- (void)setFadeInDuration:(double)duration;
- (void)setFadeOutDuration:(double)duration;
- (void)setInternalDuration;
- (void)setInternalStartTime;
- (void)setParentPlaylist:(id)playlist;
- (void)setPath:(id)path;
- (void)setSong:(id)song;
- (void)setStartTime:(double)time;
- (void)setURL:(id)l;
@end

@implementation MPSong

+ (id)song
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)songWithPath:(id)path
{
  v3 = [[self alloc] initWithPath:path];

  return v3;
}

- (MPSong)init
{
  v5.receiver = self;
  v5.super_class = MPSong;
  v2 = [(MPSong *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MPSongInternal);
    v2->_internal = v3;
    v2->_path = 0;
    [(MPSongInternal *)v3 setDuration:-1.0];
    [(MPSongInternal *)v2->_internal setStartTime:-1.0];
    [(MPSongInternal *)v2->_internal setAudioVolume:-1.0];
    [(MPSongInternal *)v2->_internal setFadeInDuration:0.0];
    [(MPSongInternal *)v2->_internal setFadeOutDuration:0.0];
    -[MPSongInternal setAssetLogging:](v2->_internal, "setAssetLogging:", [+[NSUserDefaults standardUserDefaults](NSUserDefaults BOOLForKey:"BOOLForKey:", @"marimbaAssetLogging"]);
  }

  return v2;
}

- (MPSong)initWithPath:(id)path
{
  v4 = [(MPSong *)self init];
  if (v4)
  {
    v4->_path = path;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setPath:{-[NSString copy](self->_path, "copy")}];
  [v4 copyStruct:self->_internal];
  return v4;
}

- (void)dealloc
{
  path = self->_path;
  if (path)
  {
  }

  song = self->_song;
  if (song)
  {

    self->_song = 0;
  }

  v5.receiver = self;
  v5.super_class = MPSong;
  [(MPSong *)&v5 dealloc];
}

- (id)description
{
  v3 = [NSString stringWithFormat:@"==================================== Song %d ===================================\n", [(MPSong *)self index]];
  [(MPSong *)self duration];
  v5 = [(NSString *)v3 stringByAppendingFormat:@"\t                   Duration: %f\n", v4];
  if (self->_song)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  return [(NSString *)v5 stringByAppendingFormat:@"\t                   Has Song: %@\n", v6];
}

- (void)setPath:(id)path
{
  path = self->_path;
  if (path)
  {
  }

  self->_path = path;
  [(MPSongInternal *)self->_internal duration];
  v6 = -1.0;
  v8 = v7 == -1.0;
  v9 = -1.0;
  if (!v8)
  {
    [(MPSong *)self duration];
  }

  [(MPSong *)self setDuration:v9];
  [(MPSongInternal *)self->_internal startTime];
  if (v10 != -1.0)
  {
    [(MPSong *)self startTime];
    v6 = v11;
  }

  [(MPSong *)self setStartTime:v6];
  if (self->_song)
  {
    v12 = [-[MPAudioPlaylist montage](self->_parentPlaylist "montage")];
    song = self->_song;

    [(MCSong *)song setAsset:v12];
  }
}

- (NSURL)URL
{
  if (self->_path)
  {
    return [NSURL fileURLWithPath:?];
  }

  else
  {
    return 0;
  }
}

- (void)setURL:(id)l
{
  path = [l path];

  [(MPSong *)self setPath:path];
}

- (double)startTime
{
  [(MPSongInternal *)self->_internal startTime];
  if (result == -1.0)
  {
    v4 = [-[MPSong parentPlaylist](self "parentPlaylist")];
    if (v4)
    {
      v5 = v4;
      path = [(MPSong *)self path];

      [v5 startTimeForPath:path];
    }

    else
    {
      v7 = +[MPAssetManager sharedManager];
      path2 = [(MPSong *)self path];

      [v7 startTimeForAssetAtPath:path2];
    }
  }

  return result;
}

- (void)setStartTime:(double)time
{
  parentDocument = [(MPSong *)self parentDocument];
  v6 = parentDocument;
  v7 = 0.0;
  if (parentDocument)
  {
    if ([objc_msgSend(parentDocument documentAttributeForKey:{kMPDocumentEnforceSafeTiming), "BOOLValue"}])
    {
      [v6 durationForPath:{-[MPSong path](self, "path")}];
      v7 = v8;
      if (v8 < time)
      {
        time = v8;
      }
    }
  }

  [(MPSong *)self duration];
  v10 = v9;
  if ([(MPSongInternal *)self->_internal assetLogging])
  {
    NSLog(@"Setting startTime: %f on MPSong with path: %@", *&time, self->_path);
  }

  [(MPSongInternal *)self->_internal setStartTime:time];
  if (v6 && [objc_msgSend(v6 documentAttributeForKey:{kMPDocumentEnforceSafeTiming), "BOOLValue"}])
  {
    [(MPSongInternal *)self->_internal duration];
    if (v11 == -1.0)
    {
      [(MPSong *)self willChangeValueForKey:@"duration"];
      parentPlaylist = self->_parentPlaylist;
      if (parentPlaylist)
      {
        [(MPAudioPlaylist *)self->_parentPlaylist duration];
        v15 = v14;
        [(MPSong *)self duration];
        [(MPAudioPlaylist *)parentPlaylist setDuration:v15 + v16 - v10];
      }

      [(MPSong *)self didChangeValueForKey:@"duration"];
    }

    else
    {
      [(MPSong *)self duration];
      if (v7 != 0.0 && time + v12 > v7)
      {
        [(MPSong *)self setDuration:v7 - time];
      }
    }
  }

  song = self->_song;
  if (time == -1.0 || !song)
  {
    if (time == -1.0 && song)
    {

      [(MCSong *)song undefineStartTime];
    }
  }

  else
  {

    [(MCSong *)song setStartTime:time];
  }
}

- (double)duration
{
  [(MPSongInternal *)self->_internal duration];
  if (result == -1.0)
  {
    [(MPSong *)self stopTime];
    v5 = v4;
    [(MPSong *)self startTime];
    return v5 - v6;
  }

  return result;
}

- (void)setDuration:(double)duration
{
  parentDocument = [(MPSong *)self parentDocument];
  if (parentDocument)
  {
    v6 = parentDocument;
    if ([objc_msgSend(parentDocument documentAttributeForKey:{kMPDocumentEnforceSafeTiming), "BOOLValue"}])
    {
      [v6 durationForPath:{-[MPSong path](self, "path")}];
      v8 = v7;
      [(MPSong *)self startTime];
      if (v8 != 0.0 && v9 + duration > v8)
      {
        [(MPSong *)self startTime];
        duration = v8 - v10;
      }
    }
  }

  [(MPSong *)self duration];
  v12 = v11;
  if ([(MPSongInternal *)self->_internal assetLogging])
  {
    NSLog(@"Setting duration: %f on MPSong with path: %@", *&duration, self->_path);
  }

  [(MPSongInternal *)self->_internal setDuration:duration];
  parentPlaylist = self->_parentPlaylist;
  if (parentPlaylist)
  {
    [(MPAudioPlaylist *)self->_parentPlaylist duration];
    v15 = v14;
    [(MPSong *)self duration];
    [(MPAudioPlaylist *)parentPlaylist setDuration:v15 + v16 - v12];
  }

  song = self->_song;
  if (!song || duration == -1.0)
  {
    if (song && duration == -1.0)
    {

      [(MCSong *)song undefineDuration];
    }
  }

  else
  {

    [(MCSong *)song setDuration:duration];
  }
}

- (void)setFadeInDuration:(double)duration
{
  [(MPSongInternal *)self->_internal setFadeInDuration:?];
  song = self->_song;
  if (song)
  {

    [(MCSong *)song setFadeInDuration:duration];
  }
}

- (void)setFadeOutDuration:(double)duration
{
  [(MPSongInternal *)self->_internal setFadeOutDuration:?];
  song = self->_song;
  if (song)
  {

    [(MCSong *)song setFadeOutDuration:duration];
  }
}

- (double)audioVolume
{
  [(MPSongInternal *)self->_internal audioVolume];
  if (v3 == -1.0)
  {
    return 1.0;
  }

  internal = self->_internal;

  [(MPSongInternal *)internal audioVolume];
  return result;
}

- (void)setAudioVolume:(double)volume
{
  [(MPSongInternal *)self->_internal setAudioVolume:?];
  song = self->_song;
  if (song)
  {

    *&v5 = volume;
    [(MCSong *)song setVolume:v5];
  }
}

- (double)maxDuration
{
  v3 = [-[MPSong parentPlaylist](self "parentPlaylist")];
  if (v3)
  {
    v4 = v3;
    path = [(MPSong *)self path];

    [v4 durationForPath:path];
  }

  else
  {
    v7 = +[MPAssetManager sharedManager];
    path2 = [(MPSong *)self path];

    [v7 durationForAssetAtPath:path2];
  }

  return result;
}

- (double)stopTime
{
  v3 = [-[MPSong parentPlaylist](self "parentPlaylist")];
  if (v3)
  {
    v4 = v3;
    path = [(MPSong *)self path];

    [v4 stopTimeForPath:path];
  }

  else
  {
    v7 = +[MPAssetManager sharedManager];
    path2 = [(MPSong *)self path];

    [v7 stopTimeForAssetAtPath:path2];
  }

  return result;
}

- (id)parentDocument
{
  parentPlaylist = [(MPSong *)self parentPlaylist];

  return [parentPlaylist parentDocument];
}

- (void)copyStruct:(id)struct
{
  [struct duration];
  [(MPSongInternal *)self->_internal setDuration:?];
  [struct startTime];
  [(MPSongInternal *)self->_internal setStartTime:?];
  [struct audioVolume];
  [(MPSongInternal *)self->_internal setAudioVolume:?];
  [struct fadeInDuration];
  [(MPSongInternal *)self->_internal setFadeInDuration:?];
  [struct fadeOutDuration];
  internal = self->_internal;

  [(MPSongInternal *)internal setFadeOutDuration:?];
}

- (void)setSong:(id)song
{
  song = self->_song;
  if (song)
  {

    self->_song = 0;
  }

  songCopy = song;
  self->_song = songCopy;
  if (songCopy)
  {
    [(MPSongInternal *)self->_internal audioVolume];
    if (v7 != -1.0)
    {
      [(MPSongInternal *)self->_internal audioVolume];
      *&v8 = v8;
      [(MCSong *)self->_song setVolume:v8];
    }

    [(MPSongInternal *)self->_internal startTime];
    if (v9 != -1.0)
    {
      [(MPSongInternal *)self->_internal startTime];
      [(MCSong *)self->_song setStartTime:?];
    }

    [(MPSongInternal *)self->_internal duration];
    if (v10 != -1.0)
    {
      [(MPSongInternal *)self->_internal duration];
      [(MCSong *)self->_song setDuration:?];
    }

    [(MPSongInternal *)self->_internal fadeInDuration];
    [(MCSong *)self->_song setFadeInDuration:?];
    [(MPSongInternal *)self->_internal fadeOutDuration];
    v11 = self->_song;

    [(MCSong *)v11 setFadeOutDuration:?];
  }
}

- (void)setParentPlaylist:(id)playlist
{
  if (playlist && self->_parentPlaylist)
  {
    objc_exception_throw([NSException exceptionWithName:@"ManyToOneException" reason:@"A song may one have one parent.  Please remove it first.  This is unsupported." userInfo:0, v3, v4]);
  }

  self->_parentPlaylist = playlist;
}

- (void)setInternalDuration
{
  [(MPSong *)self duration];
  internal = self->_internal;

  [(MPSongInternal *)internal setDuration:?];
}

- (void)setInternalStartTime
{
  [(MPSong *)self startTime];
  internal = self->_internal;

  [(MPSongInternal *)internal setStartTime:?];
}

@end