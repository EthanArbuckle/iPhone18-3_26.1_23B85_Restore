@interface _UICanvasFeedbackGeneratorConfiguration
+ (id)defaultConfiguration;
- (id)_alternateFeedback:(id)feedback forDevice:(int64_t)device senderID:(unint64_t)d;
@end

@implementation _UICanvasFeedbackGeneratorConfiguration

+ (id)defaultConfiguration
{
  swift_getObjCClassMetadata();
  v2 = sub_188CDEE84();

  return v2;
}

- (id)_alternateFeedback:(id)feedback forDevice:(int64_t)device senderID:(unint64_t)d
{
  feedbackCopy = feedback;
  selfCopy = self;
  v10 = sub_189079250(feedbackCopy, device, d);

  return v10;
}

@end