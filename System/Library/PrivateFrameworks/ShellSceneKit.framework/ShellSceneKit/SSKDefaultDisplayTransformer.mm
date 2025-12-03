@interface SSKDefaultDisplayTransformer
- (SSKDefaultDisplayTransformer)init;
- (id)transformDisplayConfiguration:(id)configuration;
@end

@implementation SSKDefaultDisplayTransformer

- (SSKDefaultDisplayTransformer)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SSKDefaultDisplayTransformer *)&v3 init];
}

- (id)transformDisplayConfiguration:(id)configuration
{
  v3 = qword_28156BE28;
  configurationCopy = configuration;
  if (v3 != -1)
  {
    swift_once();
  }

  type metadata accessor for DefaultDisplayTransformerRegistry();
  swift_dynamicCastClassUnconditional();
  sub_265FD75EC(configurationCopy);

  sub_265FCF0EC(0, &qword_28156BE10, 0x277D0ACE0);
  sub_265FD8364();
  v5 = sub_265FEC2D0();

  return v5;
}

@end