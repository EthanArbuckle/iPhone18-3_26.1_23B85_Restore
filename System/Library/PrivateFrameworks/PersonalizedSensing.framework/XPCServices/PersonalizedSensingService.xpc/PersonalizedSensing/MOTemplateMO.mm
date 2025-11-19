@interface MOTemplateMO
+ (id)managedObjectWithTemplate:(id)a3 inManagedObjectContext:(id)a4;
+ (void)updateManagedObject:(id)a3 withTemplate:(id)a4 inManagedObjectContext:(id)a5;
@end

@implementation MOTemplateMO

+ (id)managedObjectWithTemplate:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MOTemplateMO alloc] initWithContext:v5];
  [MOTemplateMO updateManagedObject:v7 withTemplate:v6 inManagedObjectContext:v5];

  return v7;
}

+ (void)updateManagedObject:(id)a3 withTemplate:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 templateIdentifier];
  [v7 setTemplateIdentifier:v10];

  v11 = [v8 templateString];
  [v7 setTemplateString:v11];

  [v7 setPatternType:{objc_msgSend(v8, "patternType")}];
  [v7 setActivityType:{objc_msgSend(v8, "activityType")}];
  [v7 setPlaceType:{objc_msgSend(v8, "placeType")}];
  [v7 setTime:{objc_msgSend(v8, "time")}];
  [v7 setBundleType:{objc_msgSend(v8, "bundleType")}];
  [v7 setPeopleClassification:{objc_msgSend(v8, "peopleClassification")}];
  [v7 setHasPersonName:{objc_msgSend(v8, "hasPersonName")}];
  [v7 setHasPlaceName:{objc_msgSend(v8, "hasPlaceName")}];
  [v7 setHasCityName:{objc_msgSend(v8, "hasCityName")}];
  [v7 setHasTimeReference:{objc_msgSend(v8, "hasTimeReference")}];
  [v7 setPhotoTrait:{objc_msgSend(v8, "photoTrait")}];
  [v8 utility];
  [v7 setUtility:?];
  [v8 accuracy];
  [v7 setAccuracy:?];
  [v8 satisfaction];
  [v7 setSatisfaction:?];
  [v8 generalizability];
  [v7 setGeneralizability:?];
  [v7 setPromptIndex:{objc_msgSend(v8, "promptIndex")}];
  [v8 totalScore];
  [v7 setTotalScore:?];
  [v7 setGlobalTraits:0];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = [v8 globalTraits];
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [MOGlobalTraitMO managedObjectWithGlobalTrait:*(*(&v18 + 1) + 8 * v16) inManagedObjectContext:v9];
        [v7 addGlobalTraitsObject:v17];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }
}

@end