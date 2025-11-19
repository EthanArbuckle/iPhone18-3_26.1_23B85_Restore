@interface SceneMetricsRequest
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_TtC15SiriInteractive23SceneItemMetricsRequest)lockScreenMetrics;
- (id)copyWithZone:(void *)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
- (void)setLockScreenMetrics:(id)a3;
@end

@implementation SceneMetricsRequest

- (_TtC15SiriInteractive23SceneItemMetricsRequest)lockScreenMetrics
{
  v2 = sub_26750CC2C();

  return v2;
}

- (void)setLockScreenMetrics:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_26750CC98(v4);
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_26750CF24();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_267533C74();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_26750CF70(v8);

  sub_26750AAA4(v8);
  return v6 & 1;
}

- (NSString)description
{
  v2 = self;
  sub_26750D164();

  v3 = sub_2675339C4();

  return v3;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_26750D370(a3);
  swift_unknownObjectRelease();
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_26750D3FC(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_267533E24();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_26750D4E0(v4);
}

@end