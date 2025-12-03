@interface PXPeopleSwiftUtilities
+ (id)fetchAddPeopleCandidatesIn:(id)in;
+ (id)fetchAllSocialGroupDetailedDebugDescriptionFor:(id)for;
+ (id)untaggingViewControllerForFace:(id)face;
+ (int64_t)currentSortOrderFor:(id)for;
+ (void)setWithSortOrder:(int64_t)order to:(id)to;
@end

@implementation PXPeopleSwiftUtilities

+ (id)fetchAllSocialGroupDetailedDebugDescriptionFor:(id)for
{
  forCopy = for;
  sub_1A3D792E4(forCopy);

  v4 = sub_1A524C634();

  return v4;
}

+ (int64_t)currentSortOrderFor:(id)for
{
  forCopy = for;
  px_localDefaults = [forCopy px_localDefaults];
  numberForKey_ = [px_localDefaults numberForKey_];
  if (numberForKey_)
  {
    v6 = numberForKey_;
    v7 = sub_1A3D79860([numberForKey_ integerValue]);

    forCopy = px_localDefaults;
    px_localDefaults = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)setWithSortOrder:(int64_t)order to:(id)to
{
  toCopy = to;
  sub_1A3D79C1C(order, toCopy);
}

+ (id)fetchAddPeopleCandidatesIn:(id)in
{
  inCopy = in;
  v4 = sub_1A3D79D6C(inCopy, 0, 0);
  v6 = v5;
  v8 = v7;

  return v4;
}

+ (id)untaggingViewControllerForFace:(id)face
{
  faceCopy = face;
  v4 = sub_1A3D7A428(faceCopy);

  return v4;
}

@end