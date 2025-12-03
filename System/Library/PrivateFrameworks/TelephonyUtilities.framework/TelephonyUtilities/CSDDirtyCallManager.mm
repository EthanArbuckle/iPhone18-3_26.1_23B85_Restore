@interface CSDDirtyCallManager
- (id)callChanged;
- (void)add:(id)add;
- (void)setCallChanged:(id)changed;
@end

@implementation CSDDirtyCallManager

- (void)add:(id)add
{
  addCopy = add;
  selfCopy = self;
  sub_100022780(addCopy);
}

- (id)callChanged
{
  v2 = sub_10031763C();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_100024F0C;
    v6[3] = &unk_100626AB8;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCallChanged:(id)changed
{
  v4 = _Block_copy(changed);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1000174A0;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  sub_100317724(v4, v5);
}

@end