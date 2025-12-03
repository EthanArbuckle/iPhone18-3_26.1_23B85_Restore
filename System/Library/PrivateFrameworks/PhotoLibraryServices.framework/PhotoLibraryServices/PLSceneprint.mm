@interface PLSceneprint
+ (id)insertInCurrentManagedObjectContext:(id)context withAdditionalAssetAttributes:(id)attributes;
- (void)setDuplicateMatchingData:(id)data duplicateMatchingAlternateData:(id)alternateData;
- (void)willSave;
@end

@implementation PLSceneprint

- (void)willSave
{
  v10.receiver = self;
  v10.super_class = PLSceneprint;
  [(PLManagedObject *)&v10 willSave];
  changedValues = [(PLSceneprint *)self changedValues];
  if (([(PLSceneprint *)self isDeleted]& 1) == 0 && (MEMORY[0x19EAEE520]() & 1) == 0)
  {
    v4 = [changedValues objectForKeyedSubscript:@"duplicateMatchingData"];
    if (v4)
    {

LABEL_6:
      additionalAssetAttributes = [(PLSceneprint *)self additionalAssetAttributes];
      asset = [additionalAssetAttributes asset];
      uuid = [asset uuid];

      photoLibrary = [(PLManagedObject *)self photoLibrary];
      [PLDuplicateProcessor signalDuplicateBackgroundJobItemForAssetUUID:uuid requiresMetadataProcessing:1 library:photoLibrary];

      goto LABEL_7;
    }

    v5 = [changedValues objectForKeyedSubscript:@"duplicateMatchingAlternateData"];

    if (v5)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
}

- (void)setDuplicateMatchingData:(id)data duplicateMatchingAlternateData:(id)alternateData
{
  dataCopy = data;
  alternateDataCopy = alternateData;
  if (!(dataCopy | alternateDataCopy))
  {
    [(PLSceneprint *)self setDuplicateMatchingData:0];
    selfCopy2 = self;
    v8 = 0;
LABEL_7:
    [(PLSceneprint *)selfCopy2 setDuplicateMatchingAlternateData:v8];
    goto LABEL_8;
  }

  if (dataCopy)
  {
    [(PLSceneprint *)self setDuplicateMatchingData:dataCopy];
  }

  if (alternateDataCopy)
  {
    selfCopy2 = self;
    v8 = alternateDataCopy;
    goto LABEL_7;
  }

LABEL_8:
}

+ (id)insertInCurrentManagedObjectContext:(id)context withAdditionalAssetAttributes:(id)attributes
{
  attributesCopy = attributes;
  v6 = [(PLManagedObject *)PLSceneprint insertInManagedObjectContext:context];
  v7 = v6;
  if (v6)
  {
    [v6 setAdditionalAssetAttributes:attributesCopy];
  }

  return v7;
}

@end