@interface _UICanvasFeedbackGeneratorConfiguration
+ (id)defaultConfiguration;
- (id)_alternateFeedback:(id)a3 forDevice:(int64_t)a4 senderID:(unint64_t)a5;
@end

@implementation _UICanvasFeedbackGeneratorConfiguration

+ (id)defaultConfiguration
{
  swift_getObjCClassMetadata();
  v2 = sub_188CDEE84();

  return v2;
}

- (id)_alternateFeedback:(id)a3 forDevice:(int64_t)a4 senderID:(unint64_t)a5
{
  v8 = a3;
  v9 = self;
  v10 = sub_189079250(v8, a4, a5);

  return v10;
}

@end