@interface SiriContactsActionItem
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (int64_t)hash;
@end

@implementation SiriContactsActionItem

- (NSString)description
{
  selfCopy = self;
  v3 = SiriContactsActionItem.description.getter();
  v5 = v4;

  v6 = MEMORY[0x26D5DE450](v3, v5);

  return v6;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = SiriContactsActionItem.hash.getter();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = SiriContactsActionItem.isEqual(_:)(v8);

  outlined destroy of URL?(v8, &_sypSgMd, ":I");
  return v6 & 1;
}

@end