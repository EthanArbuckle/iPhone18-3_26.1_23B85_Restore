@interface VUINowPlayingObservation
- (BOOL)isEqual:(id)a3;
- (VUINowPlayingObservation)initWithBundleIdentifier:(id)a3 isPlaying:(BOOL)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation VUINowPlayingObservation

- (VUINowPlayingObservation)initWithBundleIdentifier:(id)a3 isPlaying:(BOOL)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = VUINowPlayingObservation;
  v7 = [(VUINowPlayingObservation *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_playing = a4;
    v9 = [v6 copy];
    nowPlayingAppBundleIdentifier = v8->_nowPlayingAppBundleIdentifier;
    v8->_nowPlayingAppBundleIdentifier = v9;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(VUINowPlayingObservation *)self isPlaying];
  v4 = [(VUINowPlayingObservation *)self nowPlayingAppBundleIdentifier];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = [(VUINowPlayingObservation *)self nowPlayingAppBundleIdentifier];
        v8 = [(VUINowPlayingObservation *)v6 nowPlayingAppBundleIdentifier];
        v9 = v7;
        v10 = v8;
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

        v14 = [(VUINowPlayingObservation *)self isPlaying];
        v13 = v14 ^ [(VUINowPlayingObservation *)v6 isPlaying]^ 1;
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
  v6 = [(VUINowPlayingObservation *)self nowPlayingAppBundleIdentifier];
  v7 = [v5 stringWithFormat:@"%@=%@", @"nowPlayingAppBundleIdentifier", v6];
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