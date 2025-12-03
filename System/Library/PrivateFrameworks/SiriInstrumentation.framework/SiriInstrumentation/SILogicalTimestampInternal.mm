@interface SILogicalTimestampInternal
- (BOOL)isEqual:(id)equal;
- (NSUUID)clockIdentifier;
- (SILogicalTimestampInternal)initWithClockIdentifier:(id)identifier nanosecondsSinceBoot:(unint64_t)boot;
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

- (SILogicalTimestampInternal)initWithClockIdentifier:(id)identifier nanosecondsSinceBoot:(unint64_t)boot
{
  v5 = sub_1AA651944();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AA651914();
  return LogicalTimestamp.init(clockIdentifier:nanosecondsSinceBoot:)(v7, boot);
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1AA651CA4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = LogicalTimestamp.isEqual(_:)(v8);

  sub_1A9C6DFD8(v8, &qword_1EB400510);
  return v6;
}

@end