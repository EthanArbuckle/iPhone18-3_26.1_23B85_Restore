@interface SceneMetrics
- (CGSize)size;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation SceneMetrics

- (CGSize)size
{
  v2 = sub_267515538();
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_267515880(dictionary);
  swift_unknownObjectRelease();
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_267515A10(coderCopy);
}

@end