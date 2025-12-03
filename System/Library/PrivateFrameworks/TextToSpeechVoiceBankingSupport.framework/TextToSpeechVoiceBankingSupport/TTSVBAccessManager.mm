@interface TTSVBAccessManager
- (void)accountCredentialChanged:(id)changed;
- (void)accountWasAdded:(id)added;
- (void)accountWasModified:(id)modified;
- (void)accountWasRemoved:(id)removed;
- (void)dealloc;
@end

@implementation TTSVBAccessManager

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_tccNotifyToken;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  selfCopy = self;
  if (v4)
  {
    notify_cancel(v4);
    *(&self->super.isa + v3) = 0;
  }

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for TTSVBAccessManager();
  [(TTSVBAccessManager *)&v6 dealloc];
}

- (void)accountWasAdded:(id)added
{
  addedCopy = added;
  selfCopy = self;
  TTSVBAccessManager.accountWasAdded(_:)(addedCopy);
}

- (void)accountWasModified:(id)modified
{
  modifiedCopy = modified;
  selfCopy = self;
  TTSVBAccessManager.accountWasModified(_:)(modifiedCopy);
}

- (void)accountWasRemoved:(id)removed
{
  removedCopy = removed;
  selfCopy = self;
  TTSVBAccessManager.accountWasRemoved(_:)(removedCopy);
}

- (void)accountCredentialChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  TTSVBAccessManager.accountCredentialChanged(_:)(changedCopy);
}

@end