@interface VoicemailManager_ObjC
+ (_TtC12TelephonyRPC21VoicemailManager_ObjC)shared;
- (NSArray)allVoicemail;
- (void)setAllVoicemail:(id)a3;
@end

@implementation VoicemailManager_ObjC

+ (_TtC12TelephonyRPC21VoicemailManager_ObjC)shared
{
  if (qword_2804F6E18 != -1)
  {
    swift_once();
  }

  v3 = qword_2804F7988;

  return v3;
}

- (NSArray)allVoicemail
{
  if (*(self + OBJC_IVAR____TtC12TelephonyRPC21VoicemailManager_ObjC_allVoicemail))
  {
    sub_26D27CF40(0, &qword_2804F6E48, off_279D95C58);

    v2 = sub_26D2874E8();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setAllVoicemail:(id)a3
{
  if (a3)
  {
    sub_26D27CF40(0, &qword_2804F6E48, off_279D95C58);
    v4 = sub_26D2874F8();
  }

  else
  {
    v4 = 0;
  }

  v5 = *(self + OBJC_IVAR____TtC12TelephonyRPC21VoicemailManager_ObjC_allVoicemail);
  *(self + OBJC_IVAR____TtC12TelephonyRPC21VoicemailManager_ObjC_allVoicemail) = v4;
  v6 = self;

  sub_26D279FC0();
}

@end