@interface SMContactsManager
- (id)activeSessionRecipientContactsFor:(id)a3;
- (id)contactWith:(id)a3;
- (id)fetchAdditionalInfoFor:(id)a3 keysToFetch:(id)a4;
- (id)fetchSelfContact;
@end

@implementation SMContactsManager

- (id)activeSessionRecipientContactsFor:(id)a3
{
  v3 = a3;
  v4 = +[SMContactsManager shared];
  v5 = [v4 activeSessionRecipientContactsFor:v3];

  return v5;
}

- (id)contactWith:(id)a3
{
  v3 = a3;
  v4 = +[SMContactsManager shared];
  v5 = [v4 contactWith:v3];

  return v5;
}

- (id)fetchAdditionalInfoFor:(id)a3 keysToFetch:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[SMContactsManager shared];
  v8 = [v7 fetchAdditionalInfoFor:v6 keysToFetch:v5];

  return v8;
}

- (id)fetchSelfContact
{
  v2 = +[SMContactsManager shared];
  v3 = [v2 fetchSelfContact];

  return v3;
}

@end