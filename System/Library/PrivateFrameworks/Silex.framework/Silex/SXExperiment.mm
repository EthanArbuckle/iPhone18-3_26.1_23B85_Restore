@interface SXExperiment
+ (id)jsonPropertyNameForObjCPropertyName:(id)name;
@end

@implementation SXExperiment

+ (id)jsonPropertyNameForObjCPropertyName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"expirationDate"])
  {
    v5 = @"expiresAt";
  }

  else if ([nameCopy isEqualToString:@"identifier"])
  {
    v5 = @"id";
  }

  else if ([nameCopy isEqualToString:@"treatmentGroups"])
  {
    v5 = @"variants";
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SXExperiment;
    v5 = objc_msgSendSuper2(&v7, sel_jsonPropertyNameForObjCPropertyName_, nameCopy);
  }

  return v5;
}

@end