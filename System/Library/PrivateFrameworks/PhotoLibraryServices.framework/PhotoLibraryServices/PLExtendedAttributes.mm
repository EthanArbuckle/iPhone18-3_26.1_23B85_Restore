@interface PLExtendedAttributes
+ (id)distinctValuesForKeyPath:(id)a3 inManagedObjectContext:(id)a4;
- (id)formattedCameraModel;
- (id)payloadForChangedKeys:(id)a3;
- (id)payloadID;
- (void)correctOrientationIfRequired;
- (void)setGenerativeAIType:(id)a3;
- (void)willSave;
@end

@implementation PLExtendedAttributes

- (void)correctOrientationIfRequired
{
  v3 = [(PLExtendedAttributes *)self orientation];
  v4 = [v3 shortValue];

  v5 = [PLManagedAsset correctedOrientation:v4];
  if (v5 != v4)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithShort:v5];
    [(PLExtendedAttributes *)self setOrientation:v6];
  }
}

- (void)willSave
{
  v13.receiver = self;
  v13.super_class = PLExtendedAttributes;
  [(PLManagedObject *)&v13 willSave];
  v3 = [(PLExtendedAttributes *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || MEMORY[0x19EAEE520]())
  {
    v4 = [(PLExtendedAttributes *)self asset];
    v5 = [v4 isDeleted];

    if ((v5 & 1) == 0)
    {
      v6 = [(PLExtendedAttributes *)self changedValues];
      v7 = [v6 objectForKeyedSubscript:@"orientation"];

      if (v7)
      {
        [(PLExtendedAttributes *)self correctOrientationIfRequired];
        v8 = [(PLExtendedAttributes *)self orientation];
        v9 = [v8 shortValue];

        v10 = [(PLExtendedAttributes *)self asset];
        v11 = [v10 originalOrientation];

        if (v11 != v9)
        {
          v12 = [(PLExtendedAttributes *)self asset];
          [v12 setOriginalOrientation:v9];
        }
      }
    }
  }
}

- (void)setGenerativeAIType:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__PLExtendedAttributes_setGenerativeAIType___block_invoke;
  v3[3] = &unk_1E75732D0;
  v3[4] = self;
  [(PLManagedObject *)self pl_safeSetValue:a3 forKey:@"generativeAIType" valueDidChangeHandler:v3];
}

void __44__PLExtendedAttributes_setGenerativeAIType___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) asset];
  v2 = [v1 additionalAttributes];

  [v2 updateAllowedForAnalysis];
}

- (id)formattedCameraModel
{
  v3 = MEMORY[0x1E69C0708];
  v4 = [(PLExtendedAttributes *)self cameraModel];
  v5 = [(PLExtendedAttributes *)self cameraMake];
  v6 = [v3 formattedCameraModelFromCameraModel:v4 cameraMake:v5];

  return v6;
}

+ (id)distinctValuesForKeyPath:(id)a3 inManagedObjectContext:(id)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  context = objc_autoreleasePoolPush();
  v8 = MEMORY[0x1E695D5E0];
  v9 = +[PLExtendedAttributes entityName];
  v10 = [v8 fetchRequestWithEntityName:v9];

  v28[0] = v5;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  [v10 setPropertiesToFetch:v11];

  [v10 setReturnsDistinctResults:1];
  [v10 setResultType:2];
  v26 = 0;
  v12 = [v6 executeFetchRequest:v10 error:&v26];
  v13 = v26;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v22 + 1) + 8 * i) objectForKey:v5];
        if (v19)
        {
          [v7 addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v16);
  }

  objc_autoreleasePoolPop(context);

  return v7;
}

- (id)payloadForChangedKeys:(id)a3
{
  v4 = a3;
  v5 = [(PLExtendedAttributes *)self asset];
  if ([v5 isValidForJournalPersistence])
  {
    v6 = [[PLAssetJournalEntryPayload alloc] initWithExtendedAttributes:self changedKeys:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)payloadID
{
  v2 = [(PLExtendedAttributes *)self asset];
  v3 = [v2 uuid];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v3];

  return v4;
}

@end