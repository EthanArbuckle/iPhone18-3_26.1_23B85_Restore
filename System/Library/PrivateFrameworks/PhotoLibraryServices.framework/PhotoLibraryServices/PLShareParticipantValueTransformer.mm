@interface PLShareParticipantValueTransformer
+ (NSArray)allowedTopLevelClasses;
@end

@implementation PLShareParticipantValueTransformer

+ (NSArray)allowedTopLevelClasses
{
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___PLShareParticipantValueTransformer;
  v4 = objc_msgSendSuper2(&v7, sel_allowedTopLevelClasses);
  v5 = [v3 initWithArray:v4];

  [v5 addObject:objc_opt_class()];

  return v5;
}

@end