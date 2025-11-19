@interface SILogicalTimestampInternal
- (BOOL)isEqual:(id)a3;
- (NSUUID)clockIdentifier;
- (SILogicalTimestampInternal)initWithClockIdentifier:(id)a3 nanosecondsSinceBoot:(unint64_t)a4;
@end

@implementation SILogicalTimestampInternal

- (NSUUID)clockIdentifier
{
  v2 = sub_1AA651944();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LogicalTimestamp.clockIdentifier.getter(v5);
  v6 = sub_1AA6518F4();
  (*(v3 + 8))(v5, v2);

  return v6;
}

- (SILogicalTimestampInternal)initWithClockIdentifier:(id)a3 nanosecondsSinceBoot:(unint64_t)a4
{
  v5 = sub_1AA651944();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AA651914();
  return LogicalTimestamp.init(clockIdentifier:nanosecondsSinceBoot:)(v7, a4);
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1AA651CA4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = LogicalTimestamp.isEqual(_:)(v8);

  sub_1A9C6DFD8(v8, &qword_1EB400510);
  return v6;
}

@end