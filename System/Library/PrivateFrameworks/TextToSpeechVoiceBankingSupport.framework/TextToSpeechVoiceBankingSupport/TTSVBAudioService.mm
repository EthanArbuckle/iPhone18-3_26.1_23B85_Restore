@interface TTSVBAudioService
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation TTSVBAudioService

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    v9 = sub_23328D98C();
    v11 = v10;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v16, 0, sizeof(v16));
    v14 = a5;
    v15 = self;
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  v9 = 0;
  v11 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v12 = a5;
  v13 = self;
  sub_23328E0DC();
  swift_unknownObjectRelease();
  if (a5)
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