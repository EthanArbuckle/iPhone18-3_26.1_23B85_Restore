@interface SceneItemMetricsRequest
- (BOOL)isEqual:(id)equal;
- (CGSize)initialSize;
- (CGSize)maximumSize;
- (NSString)description;
- (_TtC15SiriInteractive20SizeDimensionRequest)heightRequest;
- (_TtC15SiriInteractive20SizeDimensionRequest)widthRequest;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
- (void)setHeightRequest:(id)request;
- (void)setWidthRequest:(id)request;
@end

@implementation SceneItemMetricsRequest

- (_TtC15SiriInteractive20SizeDimensionRequest)widthRequest
{
  v2 = sub_267513B54();

  return v2;
}

- (void)setWidthRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  sub_267513BBC(requestCopy);
}

- (_TtC15SiriInteractive20SizeDimensionRequest)heightRequest
{
  v2 = sub_267513C94();

  return v2;
}

- (void)setHeightRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  sub_267513CFC(requestCopy);
}

- (CGSize)initialSize
{
  v2 = sub_267514000();
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)maximumSize
{
  v2 = sub_267514084();
  result.height = v3;
  result.width = v2;
  return result;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_2675143C0();

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

  v6 = sub_2675144D4(v8);

  sub_26750AAA4(v8);
  return v6;
}

- (NSString)description
{
  selfCopy = self;
  sub_267514708();

  v3 = sub_2675339C4();

  return v3;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2675147E4(dictionary);
  swift_unknownObjectRelease();
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_267514AD0(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_267533E24();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_267514BDC(coderCopy);
}

@end