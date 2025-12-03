@interface CSDCarPlayManager
- (BOOL)isCarPlayConnected;
- (id)carPlayScreenConnectionChanged;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
- (void)setCarPlayScreenConnectionChanged:(id)changed;
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

- (void)setCarPlayScreenConnectionChanged:(id)changed
{
  v4 = _Block_copy(changed);
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

  selfCopy = self;
  sub_1002A80CC(v4, v5);
}

- (BOOL)isCarPlayConnected
{
  selfCopy = self;
  v3 = sub_1002A8120();

  return v3;
}

- (void)sessionDidConnect:(id)connect
{
  connectCopy = connect;
  selfCopy = self;
  sub_1002A8834(selfCopy, 1);
}

- (void)sessionDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_1002A8834(selfCopy, 0);
}

@end