@interface ContactSlotResolutionHelper
- (ContactSlotResolutionHelper)initWithUnresolvedPerson:(id)a3 availableContacts:(id)a4;
- (id)_lookup:(id)a3;
- (id)buildConfirmationResultForContact:(id)a3 withReason:(int64_t)a4;
- (id)buildDisambiguationResultForContacts:(id)a3;
@end

@implementation ContactSlotResolutionHelper

- (ContactSlotResolutionHelper)initWithUnresolvedPerson:(id)a3 availableContacts:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ContactSlotResolutionHelper;
  v9 = [(ContactSlotResolutionHelper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_unresolvedPerson, a3);
    objc_storeStrong(&v10->_availableContacts, a4);
  }

  return v10;
}

- (id)buildConfirmationResultForContact:(id)a3 withReason:(int64_t)a4
{
  v6 = [(ContactSlotResolutionHelper *)self _lookup:a3];
  v7 = [(ContactSlotResolutionHelper *)self unresolvedPerson];
  v8 = [v7 personHandle];

  v9 = [v8 value];
  v10 = [v8 type];
  v11 = [v8 label];
  v12 = [StartCallIntentHandlerUtilities inPersonFromContact:v6 handleValue:v9 handleType:v10 handleLabel:v11];

  v13 = [INStartCallContactResolutionResult confirmationRequiredWithPersonToConfirm:v12 forReason:a4];

  return v13;
}

- (id)buildDisambiguationResultForContacts:(id)a3
{
  v4 = a3;
  v20 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v5 = self;
  v6 = [(ContactSlotResolutionHelper *)self unresolvedPerson];
  v7 = [v6 personHandle];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v4;
  v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [(ContactSlotResolutionHelper *)v5 _lookup:*(*(&v21 + 1) + 8 * i)];
        v13 = [v7 value];
        v14 = [v7 type];
        v15 = [v7 label];
        v16 = [StartCallIntentHandlerUtilities inPersonFromContact:v12 handleValue:v13 handleType:v14 handleLabel:v15];

        [v20 addObject:v16];
      }

      v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v17 = [INStartCallContactResolutionResult disambiguationWithPeopleToDisambiguate:v20];

  return v17;
}

- (id)_lookup:(id)a3
{
  v4 = a3;
  v5 = [(ContactSlotResolutionHelper *)self availableContacts];
  v6 = [v5 contactWithId:v4];

  if (!v6)
  {
    v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"Contacts map did not contain UUID of recommended contact." userInfo:0];
    [v7 raise];
  }

  return v6;
}

@end