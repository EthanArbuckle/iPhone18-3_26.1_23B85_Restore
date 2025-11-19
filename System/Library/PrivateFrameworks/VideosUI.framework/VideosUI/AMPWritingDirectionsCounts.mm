@interface AMPWritingDirectionsCounts
+ (AMPWritingDirectionsCounts)zero;
+ (id)add:(id)a3 to:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
@end

@implementation AMPWritingDirectionsCounts

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = WritingDirectionsCounts.isEqual(_:)(v8);

  sub_1E329505C(v8);
  return v6;
}

+ (id)add:(id)a3 to:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = static WritingDirectionsCounts.add(_:_:)(v5, v6);

  return v7;
}

+ (AMPWritingDirectionsCounts)zero
{
  v2 = static WritingDirectionsCounts.zero.getter();

  return v2;
}

- (NSString)description
{
  v2 = self;
  WritingDirectionsCounts.description.getter();

  v3 = sub_1E4205ED4();

  return v3;
}

@end