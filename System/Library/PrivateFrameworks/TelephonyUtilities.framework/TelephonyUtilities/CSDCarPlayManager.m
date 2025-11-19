@interface CSDCarPlayManager
- (BOOL)isCarPlayConnected;
- (id)carPlayScreenConnectionChanged;
- (void)sessionDidConnect:(id)a3;
- (void)sessionDidDisconnect:(id)a3;
- (void)setCarPlayScreenConnectionChanged:(id)a3;
@end

@implementation CSDCarPlayManager

- (id)carPlayScreenConnectionChanged
{
  v2 = sub_1002A7FE4();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_100056350;
    v6[3] = &unk_100623280;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCarPlayScreenConnectionChanged:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1002A8960;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_1002A80CC(v4, v5);
}

- (BOOL)isCarPlayConnected
{
  v2 = self;
  v3 = sub_1002A8120();

  return v3;
}

- (void)sessionDidConnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002A8834(v5, 1);
}

- (void)sessionDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002A8834(v5, 0);
}

@end