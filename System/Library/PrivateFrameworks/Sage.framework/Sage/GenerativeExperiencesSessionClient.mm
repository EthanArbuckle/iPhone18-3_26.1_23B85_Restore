@interface GenerativeExperiencesSessionClient
- (void)sessionDidEncounterRegistrationErrorFor:(id)a3 documentID:(int64_t)a4 generativeError:(id)a5;
- (void)sessionDidProduceCompletionResponseFor:(id)a3 element:(id)a4 isComplete:(BOOL)a5;
- (void)sessionDidProduceDocumentRegistrationStatusFor:(id)a3 documentID:(int64_t)a4 registrationStatus:(id)a5 isComplete:(BOOL)a6;
- (void)sessionDidProduceOneShotCompletionFor:(id)a3 completion:(id)a4;
@end

@implementation GenerativeExperiencesSessionClient

- (void)sessionDidProduceCompletionResponseFor:(id)a3 element:(id)a4 isComplete:(BOOL)a5
{
  v7 = sub_1B5EA4340();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B5EA4320();
  v12 = a4;
  v13 = self;
  sub_1B5E59744();

  (*(v8 + 8))(v11, v7);
}

- (void)sessionDidProduceDocumentRegistrationStatusFor:(id)a3 documentID:(int64_t)a4 registrationStatus:(id)a5 isComplete:(BOOL)a6
{
  v8 = sub_1B5EA4340();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B5EA4320();
  v13 = a5;
  v14 = self;
  sub_1B5E59B3C();

  (*(v9 + 8))(v12, v8);
}

- (void)sessionDidEncounterRegistrationErrorFor:(id)a3 documentID:(int64_t)a4 generativeError:(id)a5
{
  v7 = sub_1B5EA4340();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B5EA4320();
  v12 = a5;
  v13 = self;
  sub_1B5E5A15C();

  (*(v8 + 8))(v11, v7);
}

- (void)sessionDidProduceOneShotCompletionFor:(id)a3 completion:(id)a4
{
  v6 = sub_1B5EA4340();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B5EA4320();
  v11 = a4;
  v12 = self;
  sub_1B5E5A46C();

  (*(v7 + 8))(v10, v6);
}

@end