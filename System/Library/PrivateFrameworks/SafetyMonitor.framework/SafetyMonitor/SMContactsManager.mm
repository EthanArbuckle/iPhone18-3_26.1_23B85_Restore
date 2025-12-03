@interface SMContactsManager
- (id)activeSessionRecipientContactsFor:(id)for;
- (id)contactWith:(id)with;
- (id)fetchAdditionalInfoFor:(id)for keysToFetch:(id)fetch;
- (id)fetchSelfContact;
@end

@implementation SMContactsManager

- (id)activeSessionRecipientContactsFor:(id)for
{
  forCopy = for;
  v4 = +[SMContactsManager shared];
  v5 = [v4 activeSessionRecipientContactsFor:forCopy];

  return v5;
}

- (id)contactWith:(id)with
{
  withCopy = with;
  v4 = +[SMContactsManager shared];
  v5 = [v4 contactWith:withCopy];

  return v5;
}

- (id)fetchAdditionalInfoFor:(id)for keysToFetch:(id)fetch
{
  fetchCopy = fetch;
  forCopy = for;
  v7 = +[SMContactsManager shared];
  v8 = [v7 fetchAdditionalInfoFor:forCopy keysToFetch:fetchCopy];

  return v8;
}

- (id)fetchSelfContact
{
  v2 = +[SMContactsManager shared];
  fetchSelfContact = [v2 fetchSelfContact];

  return fetchSelfContact;
}

@end