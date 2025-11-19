@interface PXPeopleSwiftUtilities
+ (id)fetchAddPeopleCandidatesIn:(id)a3;
+ (id)fetchAllSocialGroupDetailedDebugDescriptionFor:(id)a3;
+ (id)untaggingViewControllerForFace:(id)a3;
+ (int64_t)currentSortOrderFor:(id)a3;
+ (void)setWithSortOrder:(int64_t)a3 to:(id)a4;
@end

@implementation PXPeopleSwiftUtilities

+ (id)fetchAllSocialGroupDetailedDebugDescriptionFor:(id)a3
{
  v3 = a3;
  sub_1A3D792E4(v3);

  v4 = sub_1A524C634();

  return v4;
}

+ (int64_t)currentSortOrderFor:(id)a3
{
  v3 = a3;
  v4 = [v3 px_localDefaults];
  v5 = [v4 numberForKey_];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1A3D79860([v5 integerValue]);

    v3 = v4;
    v4 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)setWithSortOrder:(int64_t)a3 to:(id)a4
{
  v5 = a4;
  sub_1A3D79C1C(a3, v5);
}

+ (id)fetchAddPeopleCandidatesIn:(id)a3
{
  v3 = a3;
  v4 = sub_1A3D79D6C(v3, 0, 0);
  v6 = v5;
  v8 = v7;

  return v4;
}

+ (id)untaggingViewControllerForFace:(id)a3
{
  v3 = a3;
  v4 = sub_1A3D7A428(v3);

  return v4;
}

@end