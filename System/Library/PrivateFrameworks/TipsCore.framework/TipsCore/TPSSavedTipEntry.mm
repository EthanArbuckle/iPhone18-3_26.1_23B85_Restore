@interface TPSSavedTipEntry
- (NSDate)savedDate;
- (TPSSavedTipEntry)init;
- (TPSSavedTipEntry)initWithTipIdentifier:(id)identifier savedDate:(id)date lastUsedVersion:(id)version;
- (void)encodeWithCoder:(id)coder;
- (void)setSavedDate:(id)date;
@end

@implementation TPSSavedTipEntry

- (NSDate)savedDate
{
  v3 = sub_1C014BD40();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
  swift_beginAccess();
  (*(v4 + 16))(v7, self + v8, v3);
  v9 = sub_1C014BCE0();
  (*(v4 + 8))(v7, v3);

  return v9;
}

- (void)setSavedDate:(id)date
{
  v4 = sub_1C014BD40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C014BD00();
  v9 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
  swift_beginAccess();
  v10 = *(v5 + 40);
  selfCopy = self;
  v10(self + v9, v8, v4);
  swift_endAccess();
}

- (TPSSavedTipEntry)initWithTipIdentifier:(id)identifier savedDate:(id)date lastUsedVersion:(id)version
{
  ObjectType = swift_getObjectType();
  v7 = sub_1C014BD40();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C014C230();
  v14 = v13;
  sub_1C014BD00();
  v15 = sub_1C014C230();
  v17 = v16;
  v18 = (self + OBJC_IVAR___TPSSavedTipEntry_tipIdentifier);
  *v18 = v12;
  v18[1] = v14;
  (*(v8 + 16))(self + OBJC_IVAR___TPSSavedTipEntry_savedDate, v11, v7);
  v19 = (self + OBJC_IVAR___TPSSavedTipEntry_lastUsedVersion);
  *v19 = v15;
  v19[1] = v17;
  v22.receiver = self;
  v22.super_class = ObjectType;
  v20 = [(TPSSavedTipEntry *)&v22 init];
  (*(v8 + 8))(v11, v7);
  return v20;
}

- (TPSSavedTipEntry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  TPSSavedTipEntry.encode(with:)(coderCopy);
}

@end