@interface ContactSlotResolutionHelper
- (ContactSlotResolutionHelper)initWithUnresolvedPerson:(id)person availableContacts:(id)contacts;
- (id)_lookup:(id)_lookup;
- (id)buildConfirmationResultForContact:(id)contact withReason:(int64_t)reason;
- (id)buildDisambiguationResultForContacts:(id)contacts;
@end

@implementation ContactSlotResolutionHelper

- (ContactSlotResolutionHelper)initWithUnresolvedPerson:(id)person availableContacts:(id)contacts
{
  personCopy = person;
  contactsCopy = contacts;
  v12.receiver = self;
  v12.super_class = ContactSlotResolutionHelper;
  v9 = [(ContactSlotResolutionHelper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_unresolvedPerson, person);
    objc_storeStrong(&v10->_availableContacts, contacts);
  }

  return v10;
}

- (id)buildConfirmationResultForContact:(id)contact withReason:(int64_t)reason
{
  v6 = [(ContactSlotResolutionHelper *)self _lookup:contact];
  unresolvedPerson = [(ContactSlotResolutionHelper *)self unresolvedPerson];
  personHandle = [unresolvedPerson personHandle];

  value = [personHandle value];
  type = [personHandle type];
  label = [personHandle label];
  v12 = [StartCallIntentHandlerUtilities inPersonFromContact:v6 handleValue:value handleType:type handleLabel:label];

  v13 = [INStartCallContactResolutionResult confirmationRequiredWithPersonToConfirm:v12 forReason:reason];

  return v13;
}

- (id)buildDisambiguationResultForContacts:(id)contacts
{
  contactsCopy = contacts;
  v20 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(contactsCopy, "count")}];
  selfCopy = self;
  unresolvedPerson = [(ContactSlotResolutionHelper *)self unresolvedPerson];
  personHandle = [unresolvedPerson personHandle];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = contactsCopy;
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

        v12 = [(ContactSlotResolutionHelper *)selfCopy _lookup:*(*(&v21 + 1) + 8 * i)];
        value = [personHandle value];
        type = [personHandle type];
        label = [personHandle label];
        v16 = [StartCallIntentHandlerUtilities inPersonFromContact:v12 handleValue:value handleType:type handleLabel:label];

        [v20 addObject:v16];
      }

      v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v17 = [INStartCallContactResolutionResult disambiguationWithPeopleToDisambiguate:v20];

  return v17;
}

- (id)_lookup:(id)_lookup
{
  _lookupCopy = _lookup;
  availableContacts = [(ContactSlotResolutionHelper *)self availableContacts];
  v6 = [availableContacts contactWithId:_lookupCopy];

  if (!v6)
  {
    v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"Contacts map did not contain UUID of recommended contact." userInfo:0];
    [v7 raise];
  }

  return v6;
}

@end