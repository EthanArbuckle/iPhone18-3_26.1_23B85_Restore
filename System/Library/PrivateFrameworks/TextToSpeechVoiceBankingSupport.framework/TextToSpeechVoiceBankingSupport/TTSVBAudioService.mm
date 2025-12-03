@interface TTSVBAudioService
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation TTSVBAudioService

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v9 = sub_23328D98C();
    v11 = v10;
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v16, 0, sizeof(v16));
    changeCopy = change;
    selfCopy = self;
    if (!change)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  v9 = 0;
  v11 = 0;
  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  sub_23328E0DC();
  swift_unknownObjectRelease();
  if (change)
  {
LABEL_4:
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_23321CD30(&qword_27DDE3240, type metadata accessor for NSKeyValueChangeKey);
    sub_23328D89C();
  }

LABEL_7:
  _s31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceC12observeValue10forKeyPath2of6change7contextySSSg_ypSgSDySo05NSKeyj6ChangeL0aypGSgSvSgtF_0(v9, v11);

  sub_233121E04(v16, &qword_27DDE2660, &qword_233298100);
}

@end