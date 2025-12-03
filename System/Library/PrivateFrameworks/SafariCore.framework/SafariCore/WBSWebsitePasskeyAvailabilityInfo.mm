@interface WBSWebsitePasskeyAvailabilityInfo
- (_TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo)init;
- (_TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo)initWithSupportsPasskeys:(BOOL)passkeys enrollURL:(id)l manageURL:(id)rL;
@end

@implementation WBSWebsitePasskeyAvailabilityInfo

- (_TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo)initWithSupportsPasskeys:(BOOL)passkeys enrollURL:(id)l manageURL:(id)rL
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A550, &qword_1B8574120);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;
  if (l)
  {
    sub_1B8565908();
    v16 = sub_1B8565938();
    (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  }

  else
  {
    v17 = sub_1B8565938();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  }

  if (rL)
  {
    sub_1B8565908();
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = sub_1B8565938();
  v20 = *(*(v19 - 8) + 56);
  v20(v13, v18, 1, v19);
  v21 = OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_enrollURL;
  v20(self + OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_enrollURL, 1, 1, v19);
  v22 = OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_manageURL;
  v20(self + OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_manageURL, 1, 1, v19);
  *(&self->super.isa + OBJC_IVAR____TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo_supportsPasskeys) = passkeys;
  swift_beginAccess();
  sub_1B854167C(v15, self + v21);
  swift_endAccess();
  swift_beginAccess();
  sub_1B854167C(v13, self + v22);
  swift_endAccess();
  v23 = type metadata accessor for WBSWebsitePasskeyAvailabilityInfo();
  v27.receiver = self;
  v27.super_class = v23;
  v24 = [(WBSWebsitePasskeyAvailabilityInfo *)&v27 init];
  sub_1B85416EC(v13);
  sub_1B85416EC(v15);
  return v24;
}

- (_TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end