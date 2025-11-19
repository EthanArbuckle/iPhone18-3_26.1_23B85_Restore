@interface ActionOutput
- (NSString)variableName;
- (WFIcon)icon;
- (id)variableWithProvider:(id)a3;
@end

@implementation ActionOutput

- (WFIcon)icon
{

  v2 = sub_1CA364BE0();

  return v2;
}

- (NSString)variableName
{

  sub_1CA364E70();
  v3 = v2;

  if (v3)
  {
    v4 = sub_1CA94C368();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)variableWithProvider:(id)a3
{
  swift_unknownObjectRetain();

  v4 = sub_1CA36501C(a3);
  swift_unknownObjectRelease();

  return v4;
}

@end