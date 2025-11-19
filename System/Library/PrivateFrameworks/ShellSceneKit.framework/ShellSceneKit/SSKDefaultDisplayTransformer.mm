@interface SSKDefaultDisplayTransformer
- (SSKDefaultDisplayTransformer)init;
- (id)transformDisplayConfiguration:(id)a3;
@end

@implementation SSKDefaultDisplayTransformer

- (SSKDefaultDisplayTransformer)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SSKDefaultDisplayTransformer *)&v3 init];
}

- (id)transformDisplayConfiguration:(id)a3
{
  v3 = qword_28156BE28;
  v4 = a3;
  if (v3 != -1)
  {
    swift_once();
  }

  type metadata accessor for DefaultDisplayTransformerRegistry();
  swift_dynamicCastClassUnconditional();
  sub_265FD75EC(v4);

  sub_265FCF0EC(0, &qword_28156BE10, 0x277D0ACE0);
  sub_265FD8364();
  v5 = sub_265FEC2D0();

  return v5;
}

@end