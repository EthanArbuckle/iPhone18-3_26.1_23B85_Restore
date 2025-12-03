@interface PLPhotoAnalysisAssetAttributes
+ (id)fetchRequest;
@end

@implementation PLPhotoAnalysisAssetAttributes

+ (id)fetchRequest
{
  v3 = objc_alloc(MEMORY[0x1E695D5E0]);
  entityName = [self entityName];
  v5 = [v3 initWithEntityName:entityName];

  return v5;
}

@end