@interface SCMLPeopleDetection
- (SCMLPeopleDetection)init;
@end

@implementation SCMLPeopleDetection

- (SCMLPeopleDetection)init
{
  v6.receiver = self;
  v6.super_class = SCMLPeopleDetection;
  v2 = [(SCMLPeopleDetection *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(SCMLPeopleDetection *)v2 setHasGenericPeople:0];
    [(SCMLPeopleDetection *)v3 setHasMultiplePeople:0];
    [(SCMLPeopleDetection *)v3 setHasGender:0];
    [(SCMLPeopleDetection *)v3 setHasEthnicity:0];
    [(SCMLPeopleDetection *)v3 setHasAge:0];
    [(SCMLPeopleDetection *)v3 setSpans:MEMORY[0x1E695E0F0]];
    v4 = objc_alloc_init(MEMORY[0x1E696AAB0]);
    [(SCMLPeopleDetection *)v3 setRewrittenText:v4];
  }

  return v3;
}

@end