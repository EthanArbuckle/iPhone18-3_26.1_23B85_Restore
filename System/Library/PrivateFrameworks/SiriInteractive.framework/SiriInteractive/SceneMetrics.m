@interface SceneMetrics
- (CGSize)size;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation SceneMetrics

- (CGSize)size
{
  v2 = sub_267515538();
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_267515880(a3);
  swift_unknownObjectRelease();
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_267515A10(v4);
}

@end