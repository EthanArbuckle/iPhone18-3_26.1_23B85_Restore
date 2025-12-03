@interface SceneMetricsRequest
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_TtC15SiriInteractive23SceneItemMetricsRequest)lockScreenMetrics;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
- (void)setLockScreenMetrics:(id)metrics;
@end

@implementation SceneMetricsRequest

- (_TtC15SiriInteractive23SceneItemMetricsRequest)lockScreenMetrics
{
  v2 = sub_26750CC2C();

  return v2;
}

- (void)setLockScreenMetrics:(id)metrics
{
  metricsCopy = metrics;
  selfCopy = self;
  sub_26750CC98(metricsCopy);
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_26750CF24();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_267533C74();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_26750CF70(v8);

  sub_26750AAA4(v8);
  return v6 & 1;
}

- (NSString)description
{
  selfCopy = self;
  sub_26750D164();

  v3 = sub_2675339C4();

  return v3;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_26750D370(dictionary);
  swift_unknownObjectRelease();
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_26750D3FC(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_267533E24();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_26750D4E0(coderCopy);
}

@end