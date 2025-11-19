@interface CSDEmergencyCallbackCapabilities
- (BOOL)emergencyCallbackPossible;
- (id)emergencyCallbackCapabilitiesDidChange;
- (void)setEmergencyCallbackCapabilitiesDidChange:(id)a3;
@end

@implementation CSDEmergencyCallbackCapabilities

- (BOOL)emergencyCallbackPossible
{
  v2 = self;
  v3 = sub_1002A6034();

  return v3 & 1;
}

- (id)emergencyCallbackCapabilitiesDidChange
{
  v2 = sub_1002A61F8();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_100004CEC;
    v6[3] = &unk_100623100;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setEmergencyCallbackCapabilitiesDidChange:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_10001755C;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_1002A62E0(v4, v5);
}

@end