@interface VUINowPlayingConfig
- (VUINowPlayingConfig)init;
- (double)stillWatchingAlertDuration;
@end

@implementation VUINowPlayingConfig

- (VUINowPlayingConfig)init
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = VUINowPlayingConfig;
  v2 = [(VUINowPlayingConfig *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2[19] = 0;
    *(v2 + 2) = 16843009;
    v2[12] = 1;
    *(v2 + 24) = xmmword_1E42972B0;
    v4 = *MEMORY[0x1E69D5ED8];
    v12[0] = *MEMORY[0x1E69D5EC0];
    v12[1] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v6 = *(v3 + 5);
    *(v3 + 5) = v5;

    *(v3 + 13) = 257;
    v7 = *(v3 + 6);
    *(v3 + 6) = &unk_1F5E5EA18;

    v8 = *(v3 + 8);
    *(v3 + 8) = &unk_1F5E5EE80;

    v9 = *(v3 + 7);
    *(v3 + 7) = &unk_1F5E5EA30;

    *(v3 + 72) = xmmword_1E42972C0;
    *(v3 + 88) = xmmword_1E42972D0;
    *(v3 + 104) = xmmword_1E42972E0;
    *(v3 + 15) = 16843009;
    *(v3 + 120) = xmmword_1E42972F0;
  }

  return v3;
}

- (double)stillWatchingAlertDuration
{
  v3 = [VUIFeaturesConfiguration defaultsNumberValueForKey:@"stillWatchingAlertDuration"];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    stillWatchingAlertDuration = v5;
  }

  else
  {
    stillWatchingAlertDuration = self->_stillWatchingAlertDuration;
  }

  return stillWatchingAlertDuration;
}

@end