@interface RPDeviceKeyValueStore_Internal
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)getKeyValuePairsWithDomain:(id)a3;
@end

@implementation RPDeviceKeyValueStore_Internal

- (NSString)description
{
  v2 = self;
  sub_261FA1600();

  v3 = sub_26203A18C();

  return v3;
}

- (id)getKeyValuePairsWithDomain:(id)a3
{
  if (a3)
  {
    v4 = sub_26203A1BC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8 = sub_261FA1E90(v4, v6);

  if (v8)
  {
    v9 = sub_26203A0BC();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_26203A73C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v5 = self;
  }

  sub_261FA33DC(v9);
  v7 = v6;

  sub_261F66E60(v9, &qword_27FEF9870, &qword_26203C960);
  return v7 & 1;
}

@end