@interface VUINowPlayingObservation
- (BOOL)isEqual:(id)equal;
- (VUINowPlayingObservation)initWithBundleIdentifier:(id)identifier isPlaying:(BOOL)playing;
- (id)description;
- (unint64_t)hash;
@end

@implementation VUINowPlayingObservation

- (VUINowPlayingObservation)initWithBundleIdentifier:(id)identifier isPlaying:(BOOL)playing
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = VUINowPlayingObservation;
  v7 = [(VUINowPlayingObservation *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_playing = playing;
    v9 = [identifierCopy copy];
    nowPlayingAppBundleIdentifier = v8->_nowPlayingAppBundleIdentifier;
    v8->_nowPlayingAppBundleIdentifier = v9;
  }

  return v8;
}

- (unint64_t)hash
{
  isPlaying = [(VUINowPlayingObservation *)self isPlaying];
  nowPlayingAppBundleIdentifier = [(VUINowPlayingObservation *)self nowPlayingAppBundleIdentifier];
  v5 = [nowPlayingAppBundleIdentifier hash];

  return v5 ^ isPlaying;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        nowPlayingAppBundleIdentifier = [(VUINowPlayingObservation *)self nowPlayingAppBundleIdentifier];
        nowPlayingAppBundleIdentifier2 = [(VUINowPlayingObservation *)v6 nowPlayingAppBundleIdentifier];
        v9 = nowPlayingAppBundleIdentifier;
        v10 = nowPlayingAppBundleIdentifier2;
        v11 = v10;
        if (v9 == v10)
        {
        }

        else
        {
          if (!v9 || !v10)
          {

LABEL_14:
            LOBYTE(v13) = 0;
            goto LABEL_15;
          }

          v12 = [v9 isEqual:v10];

          if ((v12 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        isPlaying = [(VUINowPlayingObservation *)self isPlaying];
        v13 = isPlaying ^ [(VUINowPlayingObservation *)v6 isPlaying]^ 1;
LABEL_15:

        goto LABEL_16;
      }
    }

    LOBYTE(v13) = 0;
  }

LABEL_16:

  return v13;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15.receiver = self;
  v15.super_class = VUINowPlayingObservation;
  v4 = [(VUINowPlayingObservation *)&v15 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  nowPlayingAppBundleIdentifier = [(VUINowPlayingObservation *)self nowPlayingAppBundleIdentifier];
  v7 = [v5 stringWithFormat:@"%@=%@", @"nowPlayingAppBundleIdentifier", nowPlayingAppBundleIdentifier];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  [(VUINowPlayingObservation *)self isPlaying];
  v9 = VUIBoolLogString();
  v10 = [v8 stringWithFormat:@"%@=%@", @"isPlaying", v9];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [v3 componentsJoinedByString:{@", "}];
  v13 = [v11 stringWithFormat:@"<%@>", v12];

  return v13;
}

@end