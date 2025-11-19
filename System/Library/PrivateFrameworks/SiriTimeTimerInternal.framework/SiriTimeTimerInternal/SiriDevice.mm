@interface SiriDevice
- (BOOL)isEqual:(id)a3;
- (SiriDevice)initWithCoder:(id)a3;
- (SiriDevice)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5;
@end

@implementation SiriDevice

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_2693B3AB0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = SiriDevice.isEqual(_:)(v8);

  sub_269373308(v8);
  return v6;
}

- (SiriDevice)initWithIdentifier:(id)a3 displayString:(id)a4 pronunciationHint:(id)a5
{
  if (a3)
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
  if (a5)
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

- (SiriDevice)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SiriDevice();
  v4 = a3;
  v5 = [(SiriDevice *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end