@interface APPCPromotedContentUIModule
+ (void)start;
+ (void)startWithStartupType:(int64_t)a3;
- (APPCPromotedContentUIModule)init;
@end

@implementation APPCPromotedContentUIModule

+ (void)start
{
  if (qword_1EDE63FF8 != -1)
  {
    swift_once();
  }
}

+ (void)startWithStartupType:(int64_t)a3
{
  qword_1EDE63E80 = a3;
  if (qword_1EDE63FF8 != -1)
  {
    swift_once();
  }
}

- (APPCPromotedContentUIModule)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PromotedContentUIModule();
  return [(APPCPromotedContentUIModule *)&v3 init];
}

@end