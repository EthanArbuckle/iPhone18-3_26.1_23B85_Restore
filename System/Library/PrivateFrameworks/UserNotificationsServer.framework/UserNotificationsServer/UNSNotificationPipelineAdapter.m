@interface UNSNotificationPipelineAdapter
+ (void)addInitialBulletins:(id)a3 categories:(id)a4 sourceDescription:(id)a5 settings:(id)a6;
+ (void)createBulletin:(id)a3 category:(id)a4 destinations:(unint64_t)a5 sourceDescription:(id)a6 settings:(id)a7 completion:(id)a8;
+ (void)deleteBulletin:(id)a3 sourceDescription:(id)a4 completion:(id)a5;
+ (void)updateBulletin:(id)a3 category:(id)a4 destinations:(unint64_t)a5 sourceDescription:(id)a6 settings:(id)a7 completion:(id)a8;
- (UNSNotificationPipelineAdapter)init;
@end

@implementation UNSNotificationPipelineAdapter

+ (void)createBulletin:(id)a3 category:(id)a4 destinations:(unint64_t)a5 sourceDescription:(id)a6 settings:(id)a7 completion:(id)a8
{
  v13 = _Block_copy(a8);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  swift_getObjCClassMetadata();
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  sub_270ADBD34(v15, a4, a5, v17, v18, sub_270ADF234, v14, &unk_2880956E0, sub_270ADF178, MEMORY[0x277D77C40]);
}

+ (void)updateBulletin:(id)a3 category:(id)a4 destinations:(unint64_t)a5 sourceDescription:(id)a6 settings:(id)a7 completion:(id)a8
{
  v13 = _Block_copy(a8);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  swift_getObjCClassMetadata();
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  sub_270ADBD34(v15, a4, a5, v17, v18, sub_270ADE14C, v14, &unk_288095690, sub_270ADF238, MEMORY[0x277D77C48]);
}

+ (void)deleteBulletin:(id)a3 sourceDescription:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  swift_getObjCClassMetadata();
  v9 = a3;
  v10 = a4;
  sub_270ADC540(v9, v10, sub_270ADE090, v8);
}

+ (void)addInitialBulletins:(id)a3 categories:(id)a4 sourceDescription:(id)a5 settings:(id)a6
{
  sub_270ADB120(0, &qword_281257BA0, 0x277CF3518);
  v8 = sub_270AE3D5C();
  sub_270ADB120(0, &qword_281257B80, 0x277CE1F98);
  v9 = sub_270AE3CBC();
  v10 = a5;
  v11 = a6;
  sub_270ADD5A8(v8, v9, v10, v11);
}

- (UNSNotificationPipelineAdapter)init
{
  v3.receiver = self;
  v3.super_class = UNSNotificationPipelineAdapter;
  return [(UNSNotificationPipelineAdapter *)&v3 init];
}

@end