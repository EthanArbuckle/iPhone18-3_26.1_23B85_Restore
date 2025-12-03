@interface MCContainer
- (MCAudioPlaylist)audioPlaylistCreateIfNeeded;
- (MCContainer)init;
- (MCContainer)initWithImprint:(id)imprint andMontage:(id)montage;
- (id)imprint;
- (id)specialRetain;
- (void)dealloc;
- (void)demolish;
- (void)specialRelease;
- (void)unreferenceByPlug:(id)plug;
@end

@implementation MCContainer

- (MCContainer)init
{
  v3.receiver = self;
  v3.super_class = MCContainer;
  return [(MCContainer *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MCContainer;
  [(MCObject *)&v2 dealloc];
}

- (MCContainer)initWithImprint:(id)imprint andMontage:(id)montage
{
  v9.receiver = self;
  v9.super_class = MCContainer;
  v6 = [MCObject initWithImprint:"initWithImprint:andMontage:" andMontage:?];
  if (v6)
  {
    v7 = +[MCObject objectWithImprint:andMontage:](MCObject, "objectWithImprint:andMontage:", [imprint objectForKey:@"audioPlaylist"], montage);
    v6->mAudioPlaylist = v7;
    [(MCObject *)v7 setContainer:v6];
    v6->mInitialState = [[NSMutableDictionary alloc] initWithDictionary:{objc_msgSend(imprint, "objectForKey:", @"initialState"}];
  }

  return v6;
}

- (void)demolish
{
  mAudioPlaylist = self->mAudioPlaylist;
  [(MCContainer *)self willChangeValueForKey:@"audioPlaylist"];
  self->mAudioPlaylist = 0;
  [(MCContainer *)self didChangeValueForKey:@"audioPlaylist"];
  [(MCAudioPlaylist *)mAudioPlaylist demolish];

  self->mReferencingPlug = 0;
  self->mInitialState = 0;
  v4.receiver = self;
  v4.super_class = MCContainer;
  [(MCObject *)&v4 demolish];
}

- (id)imprint
{
  v7.receiver = self;
  v7.super_class = MCContainer;
  imprint = [(MCObject *)&v7 imprint];
  mAudioPlaylist = self->mAudioPlaylist;
  if (mAudioPlaylist)
  {
    [imprint setObject:-[MCAudioPlaylist imprint](mAudioPlaylist forKey:{"imprint"), @"audioPlaylist"}];
  }

  mInitialState = self->mInitialState;
  if (mInitialState)
  {
    [imprint setObject:mInitialState forKey:@"initialState"];
  }

  return imprint;
}

- (MCAudioPlaylist)audioPlaylistCreateIfNeeded
{
  result = self->mAudioPlaylist;
  if (!result)
  {
    objc_sync_enter(self);
    if (!self->mAudioPlaylist)
    {
      v4 = [(MCObject *)[MCAudioPlaylist alloc] initFromScratchWithMontage:self->super.mMontage];
      [(MCAudioPlaylist *)v4 setContainer:self];
      [(MCContainer *)self willChangeValueForKey:@"audioPlaylist"];
      self->mAudioPlaylist = v4;
      [(MCContainer *)self didChangeValueForKey:@"audioPlaylist"];
    }

    objc_sync_exit(self);
    return self->mAudioPlaylist;
  }

  return result;
}

- (void)unreferenceByPlug:(id)plug
{
  self->mReferencingPlug = 0;
  if (!self->mSpecialRetainCount)
  {
    [(MCMontage *)self->super.mMontage forgetAboutContainer:self];

    [(MCContainer *)self demolish];
  }
}

- (id)specialRetain
{
  objc_sync_enter(self);
  selfCopy = self;
  ++self->mSpecialRetainCount;
  objc_sync_exit(self);
  return selfCopy;
}

- (void)specialRelease
{
  --self->mSpecialRetainCount;

  if (!self->mReferencingPlug && !self->mSpecialRetainCount)
  {
    [(MCMontage *)self->super.mMontage forgetAboutContainer:self];

    [(MCContainer *)self demolish];
  }
}

@end