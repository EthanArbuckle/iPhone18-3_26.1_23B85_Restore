@interface PSCStrideConfig
- (PSCStrideConfig)init;
- (PSCStrideConfig)initWithGraphName:(id)a3 sessionName:(id)a4 stride:(id)a5;
@end

@implementation PSCStrideConfig

- (PSCStrideConfig)initWithGraphName:(id)a3 sessionName:(id)a4 stride:(id)a5
{
  v7 = sub_25EB6E268();
  v9 = v8;
  v10 = sub_25EB6E268();
  v11 = (self + OBJC_IVAR___PSCStrideConfig_graphName);
  *v11 = v7;
  v11[1] = v9;
  v12 = (self + OBJC_IVAR___PSCStrideConfig_sessionName);
  *v12 = v10;
  v12[1] = v13;
  *(self + OBJC_IVAR___PSCStrideConfig_stride) = a5;
  v16.receiver = self;
  v16.super_class = PSCStrideConfig;
  v14 = a5;
  return [(PSCStrideConfig *)&v16 init];
}

- (PSCStrideConfig)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end