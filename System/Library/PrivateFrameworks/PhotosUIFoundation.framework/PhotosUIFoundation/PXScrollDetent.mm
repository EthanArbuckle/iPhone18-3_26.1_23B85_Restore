@interface PXScrollDetent
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (NSString)identifier;
@end

@implementation PXScrollDetent

- (NSString)identifier
{
  PXScrollDetent.identifier.getter();
  v2 = sub_1B405D414();

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1B405DAF4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = PXScrollDetent.isEqual(_:)(v8);

  sub_1B3F791B4(v8);
  return v6 & 1;
}

- (NSString)debugDescription
{
  selfCopy = self;
  PXScrollDetent.debugDescription.getter();

  v3 = sub_1B405D414();

  return v3;
}

@end