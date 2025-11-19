@interface TTSVBAccessManager
- (void)accountCredentialChanged:(id)a3;
- (void)accountWasAdded:(id)a3;
- (void)accountWasModified:(id)a3;
- (void)accountWasRemoved:(id)a3;
- (void)dealloc;
@end

@implementation TTSVBAccessManager

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_tccNotifyToken;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  v5 = self;
  if (v4)
  {
    notify_cancel(v4);
    *(&self->super.isa + v3) = 0;
  }

  v6.receiver = v5;
  v6.super_class = type metadata accessor for TTSVBAccessManager();
  [(TTSVBAccessManager *)&v6 dealloc];
}

- (void)accountWasAdded:(id)a3
{
  v4 = a3;
  v5 = self;
  TTSVBAccessManager.accountWasAdded(_:)(v4);
}

- (void)accountWasModified:(id)a3
{
  v4 = a3;
  v5 = self;
  TTSVBAccessManager.accountWasModified(_:)(v4);
}

- (void)accountWasRemoved:(id)a3
{
  v4 = a3;
  v5 = self;
  TTSVBAccessManager.accountWasRemoved(_:)(v4);
}

- (void)accountCredentialChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  TTSVBAccessManager.accountCredentialChanged(_:)(v4);
}

@end