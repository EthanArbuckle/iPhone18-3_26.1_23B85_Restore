@interface PXSharedLibraryRulePerson
+ (id)rulePersonWithParticipant:(id)participant;
+ (id)rulePersonWithPerson:(id)person;
- (BOOL)isEqual:(id)equal;
- (NSString)displayName;
- (PHPerson)person;
- (unint64_t)hash;
- (void)fetchStatusWithCompletion:(id)completion;
@end

@implementation PXSharedLibraryRulePerson

- (unint64_t)hash
{
  participant = [(PXSharedLibraryRulePerson *)self participant];
  v4 = [participant hash];

  person = [(PXSharedLibraryRulePerson *)self person];
  v6 = [person hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      participant = [(PXSharedLibraryRulePerson *)v5 participant];
      participant2 = [(PXSharedLibraryRulePerson *)self participant];
      v8 = participant2;
      if (participant == participant2)
      {
      }

      else
      {
        v9 = [participant isEqual:participant2];

        if ((v9 & 1) == 0)
        {
          v10 = 0;
LABEL_13:

          goto LABEL_14;
        }
      }

      person = [(PXSharedLibraryRulePerson *)v5 person];
      person2 = [(PXSharedLibraryRulePerson *)self person];
      if (person == person2)
      {
        v10 = 1;
      }

      else
      {
        v10 = [person isEqual:person2];
      }

      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_14:

  return v10;
}

- (void)fetchStatusWithCompletion:(id)completion
{
  v22[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryRulePerson.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  person = [(PXSharedLibraryRulePerson *)self person];
  v7 = person;
  if (person)
  {
    photoLibrary = [person photoLibrary];
    v9 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:photoLibrary];

    sharedLibrary = [v9 sharedLibrary];
    sourceLibraryInfo = [sharedLibrary sourceLibraryInfo];
    rule = [sharedLibrary rule];
    startDate = [rule startDate];
    uuid = [v7 uuid];
    v22[0] = uuid;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __55__PXSharedLibraryRulePerson_fetchStatusWithCompletion___block_invoke;
    v20[3] = &unk_1E773F3B8;
    v21 = completionCopy;
    v16 = completionCopy;
    [sourceLibraryInfo fetchEstimatedAssetsCountsForStartDate:startDate personUUIDs:v15 completion:v20];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__PXSharedLibraryRulePerson_fetchStatusWithCompletion___block_invoke_2;
    block[3] = &unk_1E774C250;
    v19 = completionCopy;
    v9 = completionCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    sharedLibrary = v19;
  }
}

void __55__PXSharedLibraryRulePerson_fetchStatusWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  v3 = PXSharedLibraryTitleForCounts(&v4);
  (*(*(a1 + 32) + 16))();
}

- (PHPerson)person
{
  person = [(PXSharedLibraryParticipant *)self->_participant person];
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_6:
    v4 = 0;
    person = self->_person;
    goto LABEL_7;
  }

  v4 = person;

  person = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_7:
  v6 = person;

  return person;
}

- (NSString)displayName
{
  if ([(PXSharedLibraryParticipant *)self->_participant isCurrentUser])
  {
    px_localizedName = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_Rules_You");
  }

  else
  {
    participant = self->_participant;
    if (participant)
    {
      px_localizedName = PXSharedLibraryShortNameForParticipant(participant);
    }

    else
    {
      person = self->_person;
      if (person)
      {
        px_localizedName = [(PHPerson *)person px_localizedName];
      }

      else
      {
        px_localizedName = &stru_1F1741150;
      }
    }
  }

  return px_localizedName;
}

+ (id)rulePersonWithPerson:(id)person
{
  personCopy = person;
  v5 = objc_alloc_init(self);
  v6 = v5[2];
  v5[2] = personCopy;

  return v5;
}

+ (id)rulePersonWithParticipant:(id)participant
{
  participantCopy = participant;
  v5 = objc_alloc_init(self);
  v6 = v5[1];
  v5[1] = participantCopy;

  return v5;
}

@end