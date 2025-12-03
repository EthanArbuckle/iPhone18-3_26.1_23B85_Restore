@interface GenerativeExperiencesSessionClient
- (void)sessionDidEncounterRegistrationErrorFor:(id)for documentID:(int64_t)d generativeError:(id)error;
- (void)sessionDidProduceCompletionResponseFor:(id)for element:(id)element isComplete:(BOOL)complete;
- (void)sessionDidProduceDocumentRegistrationStatusFor:(id)for documentID:(int64_t)d registrationStatus:(id)status isComplete:(BOOL)complete;
- (void)sessionDidProduceOneShotCompletionFor:(id)for completion:(id)completion;
@end

@implementation GenerativeExperiencesSessionClient

- (void)sessionDidProduceCompletionResponseFor:(id)for element:(id)element isComplete:(BOOL)complete
{
  v7 = sub_1B5EA4340();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B5EA4320();
  elementCopy = element;
  selfCopy = self;
  sub_1B5E59744();

  (*(v8 + 8))(v11, v7);
}

- (void)sessionDidProduceDocumentRegistrationStatusFor:(id)for documentID:(int64_t)d registrationStatus:(id)status isComplete:(BOOL)complete
{
  v8 = sub_1B5EA4340();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B5EA4320();
  statusCopy = status;
  selfCopy = self;
  sub_1B5E59B3C();

  (*(v9 + 8))(v12, v8);
}

- (void)sessionDidEncounterRegistrationErrorFor:(id)for documentID:(int64_t)d generativeError:(id)error
{
  v7 = sub_1B5EA4340();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B5EA4320();
  errorCopy = error;
  selfCopy = self;
  sub_1B5E5A15C();

  (*(v8 + 8))(v11, v7);
}

- (void)sessionDidProduceOneShotCompletionFor:(id)for completion:(id)completion
{
  v6 = sub_1B5EA4340();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B5EA4320();
  completionCopy = completion;
  selfCopy = self;
  sub_1B5E5A46C();

  (*(v7 + 8))(v10, v6);
}

@end