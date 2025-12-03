@interface MOTemplateMO
+ (id)managedObjectWithTemplate:(id)template inManagedObjectContext:(id)context;
+ (void)updateManagedObject:(id)object withTemplate:(id)template inManagedObjectContext:(id)context;
@end

@implementation MOTemplateMO

+ (id)managedObjectWithTemplate:(id)template inManagedObjectContext:(id)context
{
  contextCopy = context;
  templateCopy = template;
  v7 = [[MOTemplateMO alloc] initWithContext:contextCopy];
  [MOTemplateMO updateManagedObject:v7 withTemplate:templateCopy inManagedObjectContext:contextCopy];

  return v7;
}

+ (void)updateManagedObject:(id)object withTemplate:(id)template inManagedObjectContext:(id)context
{
  objectCopy = object;
  templateCopy = template;
  contextCopy = context;
  templateIdentifier = [templateCopy templateIdentifier];
  [objectCopy setTemplateIdentifier:templateIdentifier];

  templateString = [templateCopy templateString];
  [objectCopy setTemplateString:templateString];

  [objectCopy setPatternType:{objc_msgSend(templateCopy, "patternType")}];
  [objectCopy setActivityType:{objc_msgSend(templateCopy, "activityType")}];
  [objectCopy setPlaceType:{objc_msgSend(templateCopy, "placeType")}];
  [objectCopy setTime:{objc_msgSend(templateCopy, "time")}];
  [objectCopy setBundleType:{objc_msgSend(templateCopy, "bundleType")}];
  [objectCopy setPeopleClassification:{objc_msgSend(templateCopy, "peopleClassification")}];
  [objectCopy setHasPersonName:{objc_msgSend(templateCopy, "hasPersonName")}];
  [objectCopy setHasPlaceName:{objc_msgSend(templateCopy, "hasPlaceName")}];
  [objectCopy setHasCityName:{objc_msgSend(templateCopy, "hasCityName")}];
  [objectCopy setHasTimeReference:{objc_msgSend(templateCopy, "hasTimeReference")}];
  [objectCopy setPhotoTrait:{objc_msgSend(templateCopy, "photoTrait")}];
  [templateCopy utility];
  [objectCopy setUtility:?];
  [templateCopy accuracy];
  [objectCopy setAccuracy:?];
  [templateCopy satisfaction];
  [objectCopy setSatisfaction:?];
  [templateCopy generalizability];
  [objectCopy setGeneralizability:?];
  [objectCopy setPromptIndex:{objc_msgSend(templateCopy, "promptIndex")}];
  [templateCopy totalScore];
  [objectCopy setTotalScore:?];
  [objectCopy setGlobalTraits:0];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  globalTraits = [templateCopy globalTraits];
  v13 = [globalTraits countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(globalTraits);
        }

        v17 = [MOGlobalTraitMO managedObjectWithGlobalTrait:*(*(&v18 + 1) + 8 * v16) inManagedObjectContext:contextCopy];
        [objectCopy addGlobalTraitsObject:v17];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [globalTraits countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }
}

@end