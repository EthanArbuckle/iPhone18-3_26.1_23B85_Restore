@interface RPIRKRatchet
+ (id)ratchetedIRKDataForIdentity:(id)a3 error:(id *)a4;
- (_TtC7Rapport12RPIRKRatchet)init;
- (_TtC7Rapport12RPIRKRatchet)initWithStarting:(id)a3 locallyPermanentSeed:(id)a4 sameAccountDevicesRevision:(int64_t)a5 managedAccountsRevision:(int64_t)a6 contactsRevision:(int64_t)a7;
@end

@implementation RPIRKRatchet

- (_TtC7Rapport12RPIRKRatchet)initWithStarting:(id)a3 locallyPermanentSeed:(id)a4 sameAccountDevicesRevision:(int64_t)a5 managedAccountsRevision:(int64_t)a6 contactsRevision:(int64_t)a7
{
  v11 = *(*(sub_1B6F22848() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6F22818();
  v14 = a4;
  v15 = sub_1B6F227E8();
  v17 = v16;

  v18 = sub_1B6F10890(v13, v15, v17, a5, a6, a7);
  sub_1B6F01FA0(v15, v17);
  return v18;
}

+ (id)ratchetedIRKDataForIdentity:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = sub_1B6F10F58(v4);

  return v5;
}

- (_TtC7Rapport12RPIRKRatchet)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end