@interface HeadphoneAudioNotificationModel
+ (_TtC24SoundsAndHapticsSettings31HeadphoneAudioNotificationModel)shared;
- (_TtC24SoundsAndHapticsSettings31HeadphoneAudioNotificationModel)init;
- (void)setData:(id)a3;
@end

@implementation HeadphoneAudioNotificationModel

+ (_TtC24SoundsAndHapticsSettings31HeadphoneAudioNotificationModel)shared
{
  if (qword_280028508 != -1)
  {
    swift_once();
  }

  v3 = static HeadphoneAudioNotificationModel.shared;

  return v3;
}

- (_TtC24SoundsAndHapticsSettings31HeadphoneAudioNotificationModel)init
{
  swift_beginAccess();
  v5 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028518, &unk_2658B8FC0);
  sub_2658B6858();
  swift_endAccess();
  v4.receiver = self;
  v4.super_class = type metadata accessor for HeadphoneAudioNotificationModel();
  return [(HeadphoneAudioNotificationModel *)&v4 init];
}

- (void)setData:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028560, &qword_2658B90A0);
  v4 = sub_2658B6E78();
  v5 = self;
  HeadphoneAudioNotificationModel.setData(_:)(v4);
}

@end