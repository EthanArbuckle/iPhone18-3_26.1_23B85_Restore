@interface TLSystemTone
- (TLSystemSound)actualSound;
- (TLSystemSound)previewSound;
- (TLSystemTone)initWithSoundFileURL:(id)l actualSoundID:(unsigned int)d previewSoundID:(unsigned int)iD requiresLongFormPlayback:(BOOL)playback;
@end

@implementation TLSystemTone

- (TLSystemTone)initWithSoundFileURL:(id)l actualSoundID:(unsigned int)d previewSoundID:(unsigned int)iD requiresLongFormPlayback:(BOOL)playback
{
  lCopy = l;
  v15.receiver = self;
  v15.super_class = TLSystemTone;
  v11 = [(TLSystemTone *)&v15 init];
  if (v11)
  {
    v12 = [lCopy copy];
    soundFileURL = v11->_soundFileURL;
    v11->_soundFileURL = v12;

    v11->_actualSoundID = d;
    v11->_previewSoundID = iD;
    v11->_requiresLongFormPlayback = playback;
  }

  return v11;
}

- (TLSystemSound)actualSound
{
  actualSound = self->_actualSound;
  if (!actualSound)
  {
    v4 = [[TLSystemSound alloc] initWithSoundFileURL:self->_soundFileURL soundID:self->_actualSoundID requiresLongFormPlayback:self->_requiresLongFormPlayback];
    v5 = self->_actualSound;
    self->_actualSound = v4;

    actualSound = self->_actualSound;
  }

  return actualSound;
}

- (TLSystemSound)previewSound
{
  previewSound = self->_previewSound;
  if (!previewSound)
  {
    v4 = [[TLSystemSound alloc] initWithSoundFileURL:self->_soundFileURL soundID:self->_previewSoundID requiresLongFormPlayback:self->_requiresLongFormPlayback];
    v5 = self->_previewSound;
    self->_previewSound = v4;

    previewSound = self->_previewSound;
  }

  return previewSound;
}

@end