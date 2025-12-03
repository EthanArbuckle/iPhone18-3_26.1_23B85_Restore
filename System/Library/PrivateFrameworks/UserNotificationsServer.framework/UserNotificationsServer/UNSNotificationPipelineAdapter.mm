@interface UNSNotificationPipelineAdapter
+ (void)addInitialBulletins:(id)bulletins categories:(id)categories sourceDescription:(id)description settings:(id)settings;
+ (void)createBulletin:(id)bulletin category:(id)category destinations:(unint64_t)destinations sourceDescription:(id)description settings:(id)settings completion:(id)completion;
+ (void)deleteBulletin:(id)bulletin sourceDescription:(id)description completion:(id)completion;
+ (void)updateBulletin:(id)bulletin category:(id)category destinations:(unint64_t)destinations sourceDescription:(id)description settings:(id)settings completion:(id)completion;
- (UNSNotificationPipelineAdapter)init;
@end

@implementation UNSNotificationPipelineAdapter

+ (void)createBulletin:(id)bulletin category:(id)category destinations:(unint64_t)destinations sourceDescription:(id)description settings:(id)settings completion:(id)completion
{
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  swift_getObjCClassMetadata();
  bulletinCopy = bulletin;
  categoryCopy = category;
  descriptionCopy = description;
  settingsCopy = settings;
  sub_270ADBD34(bulletinCopy, category, destinations, descriptionCopy, settingsCopy, sub_270ADF234, v14, &unk_2880956E0, sub_270ADF178, MEMORY[0x277D77C40]);
}

+ (void)updateBulletin:(id)bulletin category:(id)category destinations:(unint64_t)destinations sourceDescription:(id)description settings:(id)settings completion:(id)completion
{
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  swift_getObjCClassMetadata();
  bulletinCopy = bulletin;
  categoryCopy = category;
  descriptionCopy = description;
  settingsCopy = settings;
  sub_270ADBD34(bulletinCopy, category, destinations, descriptionCopy, settingsCopy, sub_270ADE14C, v14, &unk_288095690, sub_270ADF238, MEMORY[0x277D77C48]);
}

+ (void)deleteBulletin:(id)bulletin sourceDescription:(id)description completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  swift_getObjCClassMetadata();
  bulletinCopy = bulletin;
  descriptionCopy = description;
  sub_270ADC540(bulletinCopy, descriptionCopy, sub_270ADE090, v8);
}

+ (void)addInitialBulletins:(id)bulletins categories:(id)categories sourceDescription:(id)description settings:(id)settings
{
  sub_270ADB120(0, &qword_281257BA0, 0x277CF3518);
  v8 = sub_270AE3D5C();
  sub_270ADB120(0, &qword_281257B80, 0x277CE1F98);
  v9 = sub_270AE3CBC();
  descriptionCopy = description;
  settingsCopy = settings;
  sub_270ADD5A8(v8, v9, descriptionCopy, settingsCopy);
}

- (UNSNotificationPipelineAdapter)init
{
  v3.receiver = self;
  v3.super_class = UNSNotificationPipelineAdapter;
  return [(UNSNotificationPipelineAdapter *)&v3 init];
}

@end