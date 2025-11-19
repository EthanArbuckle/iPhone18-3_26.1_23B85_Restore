@interface PaceFormatter
- (id)stringForObjectValue:(id)a3;
@end

@implementation PaceFormatter

- (id)stringForObjectValue:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_20C13DA64();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v5 = self;
  }

  sub_20B68DC60(v10);
  v7 = v6;

  sub_20B520158(v10, &unk_27C768A00);
  if (v7)
  {
    v8 = sub_20C13C914();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end