@interface PLSceneprint
+ (id)insertInCurrentManagedObjectContext:(id)a3 withAdditionalAssetAttributes:(id)a4;
- (void)setDuplicateMatchingData:(id)a3 duplicateMatchingAlternateData:(id)a4;
- (void)willSave;
@end

@implementation PLSceneprint

- (void)willSave
{
  v10.receiver = self;
  v10.super_class = PLSceneprint;
  [(PLManagedObject *)&v10 willSave];
  v3 = [(PLSceneprint *)self changedValues];
  if (([(PLSceneprint *)self isDeleted]& 1) == 0 && (MEMORY[0x19EAEE520]() & 1) == 0)
  {
    v4 = [v3 objectForKeyedSubscript:@"duplicateMatchingData"];
    if (v4)
    {

LABEL_6:
      v6 = [(PLSceneprint *)self additionalAssetAttributes];
      v7 = [v6 asset];
      v8 = [v7 uuid];

      v9 = [(PLManagedObject *)self photoLibrary];
      [PLDuplicateProcessor signalDuplicateBackgroundJobItemForAssetUUID:v8 requiresMetadataProcessing:1 library:v9];

      goto LABEL_7;
    }

    v5 = [v3 objectForKeyedSubscript:@"duplicateMatchingAlternateData"];

    if (v5)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
}

- (void)setDuplicateMatchingData:(id)a3 duplicateMatchingAlternateData:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (!(v9 | v6))
  {
    [(PLSceneprint *)self setDuplicateMatchingData:0];
    v7 = self;
    v8 = 0;
LABEL_7:
    [(PLSceneprint *)v7 setDuplicateMatchingAlternateData:v8];
    goto LABEL_8;
  }

  if (v9)
  {
    [(PLSceneprint *)self setDuplicateMatchingData:v9];
  }

  if (v6)
  {
    v7 = self;
    v8 = v6;
    goto LABEL_7;
  }

LABEL_8:
}

+ (id)insertInCurrentManagedObjectContext:(id)a3 withAdditionalAssetAttributes:(id)a4
{
  v5 = a4;
  v6 = [(PLManagedObject *)PLSceneprint insertInManagedObjectContext:a3];
  v7 = v6;
  if (v6)
  {
    [v6 setAdditionalAssetAttributes:v5];
  }

  return v7;
}

@end