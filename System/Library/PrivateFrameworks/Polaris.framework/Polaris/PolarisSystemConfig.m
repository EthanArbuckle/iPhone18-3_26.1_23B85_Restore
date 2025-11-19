@interface PolarisSystemConfig
- (PolarisSystemConfig)init;
- (id)initFromPlistAtPath:(id)a3;
- (id)strideConfigsForMode:(int64_t)a3;
@end

@implementation PolarisSystemConfig

- (id)initFromPlistAtPath:(id)a3
{
  if (a3)
  {
    v3 = sub_25EB6E268();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  PolarisSystemConfig.init(fromPlistAtPath:)(v3, v4);
  return result;
}

- (id)strideConfigsForMode:(int64_t)a3
{
  v4 = self;
  v5 = PolarisSystemConfig.strideConfigs(for:)(a3);

  if (v5)
  {
    type metadata accessor for PSCStrideConfig(v6);
    v7 = sub_25EB6E3C8();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PolarisSystemConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end