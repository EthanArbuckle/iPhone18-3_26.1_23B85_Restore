@interface MOContextStringMO
+ (id)managedObjectWithContextString:(id)string inManagedObjectContext:(id)context;
+ (void)updateManagedObject:(id)object withContextString:(id)string inManagedObjectContext:(id)context;
@end

@implementation MOContextStringMO

+ (id)managedObjectWithContextString:(id)string inManagedObjectContext:(id)context
{
  contextCopy = context;
  stringCopy = string;
  v7 = [[MOContextStringMO alloc] initWithContext:contextCopy];
  [MOContextStringMO updateManagedObject:v7 withContextString:stringCopy inManagedObjectContext:contextCopy];

  return v7;
}

+ (void)updateManagedObject:(id)object withContextString:(id)string inManagedObjectContext:(id)context
{
  objectCopy = object;
  stringCopy = string;
  contextCopy = context;
  stringIdentifier = [stringCopy stringIdentifier];
  [objectCopy setStringIdentifier:stringIdentifier];

  textString = [stringCopy textString];
  [objectCopy setTextString:textString];

  [objectCopy setSource:{objc_msgSend(stringCopy, "source")}];
  [objectCopy setContentType:{objc_msgSend(stringCopy, "contentType")}];
  [objectCopy setPromptIndex:{objc_msgSend(stringCopy, "promptIndex")}];
  [stringCopy totalScore];
  [objectCopy setTotalScore:?];
  [objectCopy setContextDimensions:0];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  contextDimensions = [stringCopy contextDimensions];
  v13 = [contextDimensions countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(contextDimensions);
        }

        v17 = [MOContextDimensionMO managedObjectWithContextDimension:*(*(&v18 + 1) + 8 * v16) inManagedObjectContext:contextCopy];
        [objectCopy addContextDimensionsObject:v17];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [contextDimensions countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }
}

@end