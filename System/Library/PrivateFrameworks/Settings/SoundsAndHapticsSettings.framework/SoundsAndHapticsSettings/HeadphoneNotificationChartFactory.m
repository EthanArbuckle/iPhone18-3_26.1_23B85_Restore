@interface HeadphoneNotificationChartFactory
+ (id)create;
- (_TtC24SoundsAndHapticsSettings33HeadphoneNotificationChartFactory)init;
@end

@implementation HeadphoneNotificationChartFactory

+ (id)create
{
  if (qword_280028508 != -1)
  {
    swift_once();
  }

  v2 = static HeadphoneAudioNotificationModel.shared;
  type metadata accessor for HeadphoneAudioNotificationModel();
  sub_2658AF0E8(&qword_280028538, type metadata accessor for HeadphoneAudioNotificationModel);
  v3 = v2;
  sub_2658B68C8();
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280028578, &unk_2658B90D0));
  v5 = sub_2658B6A58();

  return v5;
}

- (_TtC24SoundsAndHapticsSettings33HeadphoneNotificationChartFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HeadphoneNotificationChartFactory();
  return [(HeadphoneNotificationChartFactory *)&v3 init];
}

@end