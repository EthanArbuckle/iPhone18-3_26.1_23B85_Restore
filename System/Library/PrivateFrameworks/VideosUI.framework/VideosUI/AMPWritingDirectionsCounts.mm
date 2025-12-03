@interface AMPWritingDirectionsCounts
+ (AMPWritingDirectionsCounts)zero;
+ (id)add:(id)add to:(id)to;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
@end

@implementation AMPWritingDirectionsCounts

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = WritingDirectionsCounts.isEqual(_:)(v8);

  sub_1E329505C(v8);
  return v6;
}

+ (id)add:(id)add to:(id)to
{
  addCopy = add;
  toCopy = to;
  v7 = static WritingDirectionsCounts.add(_:_:)(addCopy, toCopy);

  return v7;
}

+ (AMPWritingDirectionsCounts)zero
{
  v2 = static WritingDirectionsCounts.zero.getter();

  return v2;
}

- (NSString)description
{
  selfCopy = self;
  WritingDirectionsCounts.description.getter();

  v3 = sub_1E4205ED4();

  return v3;
}

@end