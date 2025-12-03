@interface SiriDevice
- (BOOL)isEqual:(id)equal;
- (SiriDevice)initWithCoder:(id)coder;
- (SiriDevice)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint;
@end

@implementation SiriDevice

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2693B3AB0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = SiriDevice.isEqual(_:)(v8);

  sub_269373308(v8);
  return v6;
}

- (SiriDevice)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint
{
  if (identifier)
  {
    v6 = sub_2693B3750();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = sub_2693B3750();
  v11 = v10;
  if (hint)
  {
    v12 = sub_2693B3750();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  return SiriDevice.init(identifier:display:pronunciationHint:)(v6, v8, v9, v11, v12, v14);
}

- (SiriDevice)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SiriDevice();
  coderCopy = coder;
  v5 = [(SiriDevice *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end