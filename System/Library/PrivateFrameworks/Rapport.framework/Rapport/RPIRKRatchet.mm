@interface RPIRKRatchet
+ (id)ratchetedIRKDataForIdentity:(id)identity error:(id *)error;
- (_TtC7Rapport12RPIRKRatchet)init;
- (_TtC7Rapport12RPIRKRatchet)initWithStarting:(id)starting locallyPermanentSeed:(id)seed sameAccountDevicesRevision:(int64_t)revision managedAccountsRevision:(int64_t)accountsRevision contactsRevision:(int64_t)contactsRevision;
@end

@implementation RPIRKRatchet

- (_TtC7Rapport12RPIRKRatchet)initWithStarting:(id)starting locallyPermanentSeed:(id)seed sameAccountDevicesRevision:(int64_t)revision managedAccountsRevision:(int64_t)accountsRevision contactsRevision:(int64_t)contactsRevision
{
  v11 = *(*(sub_1B6F22848() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6F22818();
  seedCopy = seed;
  v15 = sub_1B6F227E8();
  v17 = v16;

  v18 = sub_1B6F10890(v13, v15, v17, revision, accountsRevision, contactsRevision);
  sub_1B6F01FA0(v15, v17);
  return v18;
}

+ (id)ratchetedIRKDataForIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  v5 = sub_1B6F10F58(identityCopy);

  return v5;
}

- (_TtC7Rapport12RPIRKRatchet)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end