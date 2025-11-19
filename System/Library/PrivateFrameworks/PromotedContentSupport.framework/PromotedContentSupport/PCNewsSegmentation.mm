@interface PCNewsSegmentation
+ (NSNumber)ageGroup;
+ (NSNumber)gender;
+ (id)_classProperties;
+ (void)_updateGenderAndAgeGroupValues;
@end

@implementation PCNewsSegmentation

+ (NSNumber)ageGroup
{
  [a1 _updateGenderAndAgeGroupValues];
  v3 = [a1 _classProperties];
  v4 = [v3 objectForKey:@"ageGroup"];

  return v4;
}

+ (void)_updateGenderAndAgeGroupValues
{
  v7 = objc_alloc_init(PCSupportRequester);
  v3 = [(PCSupportRequester *)v7 fetchGenderAndAgeGroupData];
  v4 = [v3 objectForKey:@"gender"];
  v5 = [v3 objectForKey:@"ageGroup"];
  v6 = [a1 _classProperties];
  [v6 setValue:v4 forKey:@"gender"];
  [v6 setValue:v5 forKey:@"ageGroup"];
}

+ (id)_classProperties
{
  if (qword_280C4F9C0 != -1)
  {
    sub_260F1E36C();
  }

  v3 = qword_280C4F9C8;

  return v3;
}

+ (NSNumber)gender
{
  [a1 _updateGenderAndAgeGroupValues];
  v3 = [a1 _classProperties];
  v4 = [v3 objectForKey:@"gender"];

  return v4;
}

@end