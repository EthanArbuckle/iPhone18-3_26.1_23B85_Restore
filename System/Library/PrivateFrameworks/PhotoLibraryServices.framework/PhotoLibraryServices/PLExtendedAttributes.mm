@interface PLExtendedAttributes
+ (id)distinctValuesForKeyPath:(id)path inManagedObjectContext:(id)context;
- (id)formattedCameraModel;
- (id)payloadForChangedKeys:(id)keys;
- (id)payloadID;
- (void)correctOrientationIfRequired;
- (void)setGenerativeAIType:(id)type;
- (void)willSave;
@end

@implementation PLExtendedAttributes

- (void)correctOrientationIfRequired
{
  orientation = [(PLExtendedAttributes *)self orientation];
  shortValue = [orientation shortValue];

  v5 = [PLManagedAsset correctedOrientation:shortValue];
  if (v5 != shortValue)
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
  managedObjectContext = [(PLExtendedAttributes *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || MEMORY[0x19EAEE520]())
  {
    asset = [(PLExtendedAttributes *)self asset];
    isDeleted = [asset isDeleted];

    if ((isDeleted & 1) == 0)
    {
      changedValues = [(PLExtendedAttributes *)self changedValues];
      v7 = [changedValues objectForKeyedSubscript:@"orientation"];

      if (v7)
      {
        [(PLExtendedAttributes *)self correctOrientationIfRequired];
        orientation = [(PLExtendedAttributes *)self orientation];
        shortValue = [orientation shortValue];

        asset2 = [(PLExtendedAttributes *)self asset];
        originalOrientation = [asset2 originalOrientation];

        if (originalOrientation != shortValue)
        {
          asset3 = [(PLExtendedAttributes *)self asset];
          [asset3 setOriginalOrientation:shortValue];
        }
      }
    }
  }
}

- (void)setGenerativeAIType:(id)type
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__PLExtendedAttributes_setGenerativeAIType___block_invoke;
  v3[3] = &unk_1E75732D0;
  v3[4] = self;
  [(PLManagedObject *)self pl_safeSetValue:type forKey:@"generativeAIType" valueDidChangeHandler:v3];
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
  cameraModel = [(PLExtendedAttributes *)self cameraModel];
  cameraMake = [(PLExtendedAttributes *)self cameraMake];
  v6 = [v3 formattedCameraModelFromCameraModel:cameraModel cameraMake:cameraMake];

  return v6;
}

+ (id)distinctValuesForKeyPath:(id)path inManagedObjectContext:(id)context
{
  v28[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  contextCopy = context;
  array = [MEMORY[0x1E695DF70] array];
  context = objc_autoreleasePoolPush();
  v8 = MEMORY[0x1E695D5E0];
  v9 = +[PLExtendedAttributes entityName];
  v10 = [v8 fetchRequestWithEntityName:v9];

  v28[0] = pathCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  [v10 setPropertiesToFetch:v11];

  [v10 setReturnsDistinctResults:1];
  [v10 setResultType:2];
  v26 = 0;
  v12 = [contextCopy executeFetchRequest:v10 error:&v26];
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

        v19 = [*(*(&v22 + 1) + 8 * i) objectForKey:pathCopy];
        if (v19)
        {
          [array addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v16);
  }

  objc_autoreleasePoolPop(context);

  return array;
}

- (id)payloadForChangedKeys:(id)keys
{
  keysCopy = keys;
  asset = [(PLExtendedAttributes *)self asset];
  if ([asset isValidForJournalPersistence])
  {
    v6 = [[PLAssetJournalEntryPayload alloc] initWithExtendedAttributes:self changedKeys:keysCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)payloadID
{
  asset = [(PLExtendedAttributes *)self asset];
  uuid = [asset uuid];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:uuid];

  return v4;
}

@end