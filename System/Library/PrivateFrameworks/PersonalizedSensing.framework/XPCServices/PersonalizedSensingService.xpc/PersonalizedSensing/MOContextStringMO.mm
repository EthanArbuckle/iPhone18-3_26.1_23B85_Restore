@interface MOContextStringMO
+ (id)managedObjectWithContextString:(id)a3 inManagedObjectContext:(id)a4;
+ (void)updateManagedObject:(id)a3 withContextString:(id)a4 inManagedObjectContext:(id)a5;
@end

@implementation MOContextStringMO

+ (id)managedObjectWithContextString:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MOContextStringMO alloc] initWithContext:v5];
  [MOContextStringMO updateManagedObject:v7 withContextString:v6 inManagedObjectContext:v5];

  return v7;
}

+ (void)updateManagedObject:(id)a3 withContextString:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 stringIdentifier];
  [v7 setStringIdentifier:v10];

  v11 = [v8 textString];
  [v7 setTextString:v11];

  [v7 setSource:{objc_msgSend(v8, "source")}];
  [v7 setContentType:{objc_msgSend(v8, "contentType")}];
  [v7 setPromptIndex:{objc_msgSend(v8, "promptIndex")}];
  [v8 totalScore];
  [v7 setTotalScore:?];
  [v7 setContextDimensions:0];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = [v8 contextDimensions];
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

        v17 = [MOContextDimensionMO managedObjectWithContextDimension:*(*(&v18 + 1) + 8 * v16) inManagedObjectContext:v9];
        [v7 addContextDimensionsObject:v17];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }
}

@end