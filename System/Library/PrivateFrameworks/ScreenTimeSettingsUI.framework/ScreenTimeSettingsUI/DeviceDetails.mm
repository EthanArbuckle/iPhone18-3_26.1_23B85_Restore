@interface DeviceDetails
+ (id)detailsForUserWithAltDSID:(id)d error:(id *)error;
- (NSDate)lastUpdatedDate;
- (_TtC20ScreenTimeSettingsUI13DeviceDetails)init;
- (_TtC20ScreenTimeSettingsUI13DeviceDetails)initWithCoreDuetIdentifier:(id)identifier identifier:(id)a4 name:(id)name platform:(signed __int16)platform isLocalDevice:(BOOL)device lastUpdatedDate:(id)date;
@end

@implementation DeviceDetails

- (NSDate)lastUpdatedDate
{
  v3 = sub_264CC2FCC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_lastUpdatedDate, v3);
  v7 = sub_264CC2F7C();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (_TtC20ScreenTimeSettingsUI13DeviceDetails)initWithCoreDuetIdentifier:(id)identifier identifier:(id)a4 name:(id)name platform:(signed __int16)platform isLocalDevice:(BOOL)device lastUpdatedDate:(id)date
{
  dateCopy = date;
  platformCopy = platform;
  deviceCopy = device;
  v9 = sub_264CC2FCC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &dateCopy - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_264CC45DC();
  v15 = v14;
  v16 = sub_264CC45DC();
  v18 = v17;
  v19 = sub_264CC45DC();
  v21 = v20;
  sub_264CC2FAC();
  v22 = (self + OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_coreDuetIdentifier);
  *v22 = v13;
  v22[1] = v15;
  v23 = (self + OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_identifier);
  *v23 = v16;
  v23[1] = v18;
  v24 = (self + OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_name);
  *v24 = v19;
  v24[1] = v21;
  v25 = deviceCopy;
  *(self + OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_platform) = platformCopy;
  *(self + OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_isLocalDevice) = v25;
  (*(v10 + 16))(self + OBJC_IVAR____TtC20ScreenTimeSettingsUI13DeviceDetails_lastUpdatedDate, v12, v9);
  v26 = type metadata accessor for DeviceDetails();
  v32.receiver = self;
  v32.super_class = v26;
  v27 = [(DeviceDetails *)&v32 init];
  (*(v10 + 8))(v12, v9);
  return v27;
}

+ (id)detailsForUserWithAltDSID:(id)d error:(id *)error
{
  if (d)
  {
    sub_264CC45DC();
  }

  sub_264C6F474();

  type metadata accessor for DeviceDetails();
  v4 = sub_264CC468C();

  return v4;
}

- (_TtC20ScreenTimeSettingsUI13DeviceDetails)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end