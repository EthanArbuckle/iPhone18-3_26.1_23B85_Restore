@interface SMContactsManagerInternal
+ (SMContactsManagerInternal)shared;
- (id)activeSessionRecipientContactsFor:(id)for;
- (id)contactWith:(id)with;
- (id)fetchAdditionalInfoFor:(id)for keysToFetch:(id)fetch;
- (id)fetchSelfContact;
- (void)dealloc;
@end

@implementation SMContactsManagerInternal

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy name:*MEMORY[0x277CBD140] object:0];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for ContactsManager();
  [(SMContactsManagerInternal *)&v6 dealloc];
}

+ (SMContactsManagerInternal)shared
{
  if (qword_27FF72748 != -1)
  {
    swift_once();
  }

  v3 = qword_27FF72D50;

  return v3;
}

- (id)contactWith:(id)with
{
  if (with)
  {
    v4 = sub_2645D398C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = sub_264572718(v4, v6);

  return v8;
}

- (id)activeSessionRecipientContactsFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_26457325C(for);

  sub_264569FD8(0, &unk_27FF72DA0, 0x277CBDA58);
  v7 = sub_2645D3A3C();

  return v7;
}

- (id)fetchAdditionalInfoFor:(id)for keysToFetch:(id)fetch
{
  forCopy = for;
  if (for)
  {
    sub_264569FD8(0, &unk_27FF72DA0, 0x277CBDA58);
    forCopy = sub_2645D3A4C();
  }

  if (fetch)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF72D90, &qword_2645D9C58);
    v7 = sub_2645D3A4C();
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  v9 = sub_26457392C(forCopy, v7);

  if (v9)
  {
    sub_264569FD8(0, &unk_27FF72DA0, 0x277CBDA58);
    v10 = sub_2645D3A3C();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)fetchSelfContact
{
  selfCopy = self;
  v3 = sub_2645740DC();

  return v3;
}

@end