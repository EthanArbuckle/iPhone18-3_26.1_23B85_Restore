@interface PXSharedLibraryRulePerson
+ (id)rulePersonWithParticipant:(id)a3;
+ (id)rulePersonWithPerson:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)displayName;
- (PHPerson)person;
- (unint64_t)hash;
- (void)fetchStatusWithCompletion:(id)a3;
@end

@implementation PXSharedLibraryRulePerson

- (unint64_t)hash
{
  v3 = [(PXSharedLibraryRulePerson *)self participant];
  v4 = [v3 hash];

  v5 = [(PXSharedLibraryRulePerson *)self person];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXSharedLibraryRulePerson *)v5 participant];
      v7 = [(PXSharedLibraryRulePerson *)self participant];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [v6 isEqual:v7];

        if ((v9 & 1) == 0)
        {
          v10 = 0;
LABEL_13:

          goto LABEL_14;
        }
      }

      v11 = [(PXSharedLibraryRulePerson *)v5 person];
      v12 = [(PXSharedLibraryRulePerson *)self person];
      if (v11 == v12)
      {
        v10 = 1;
      }

      else
      {
        v10 = [v11 isEqual:v12];
      }

      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_14:

  return v10;
}

- (void)fetchStatusWithCompletion:(id)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryRulePerson.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  v6 = [(PXSharedLibraryRulePerson *)self person];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 photoLibrary];
    v9 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v8];

    v10 = [v9 sharedLibrary];
    v11 = [v10 sourceLibraryInfo];
    v12 = [v10 rule];
    v13 = [v12 startDate];
    v14 = [v7 uuid];
    v22[0] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __55__PXSharedLibraryRulePerson_fetchStatusWithCompletion___block_invoke;
    v20[3] = &unk_1E773F3B8;
    v21 = v5;
    v16 = v5;
    [v11 fetchEstimatedAssetsCountsForStartDate:v13 personUUIDs:v15 completion:v20];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__PXSharedLibraryRulePerson_fetchStatusWithCompletion___block_invoke_2;
    block[3] = &unk_1E774C250;
    v19 = v5;
    v9 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v10 = v19;
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
  v3 = [(PXSharedLibraryParticipant *)self->_participant person];
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_6:
    v4 = 0;
    person = self->_person;
    goto LABEL_7;
  }

  v4 = v3;

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
    v3 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_Rules_You");
  }

  else
  {
    participant = self->_participant;
    if (participant)
    {
      v3 = PXSharedLibraryShortNameForParticipant(participant);
    }

    else
    {
      person = self->_person;
      if (person)
      {
        v3 = [(PHPerson *)person px_localizedName];
      }

      else
      {
        v3 = &stru_1F1741150;
      }
    }
  }

  return v3;
}

+ (id)rulePersonWithPerson:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = v5[2];
  v5[2] = v4;

  return v5;
}

+ (id)rulePersonWithParticipant:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = v5[1];
  v5[1] = v4;

  return v5;
}

@end