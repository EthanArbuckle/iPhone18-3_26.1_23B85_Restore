@interface PLPhotoAnalysisAssetAttributes
+ (id)fetchRequest;
@end

@implementation PLPhotoAnalysisAssetAttributes

+ (id)fetchRequest
{
  v3 = objc_alloc(MEMORY[0x1E695D5E0]);
  v4 = [a1 entityName];
  v5 = [v3 initWithEntityName:v4];

  return v5;
}

@end