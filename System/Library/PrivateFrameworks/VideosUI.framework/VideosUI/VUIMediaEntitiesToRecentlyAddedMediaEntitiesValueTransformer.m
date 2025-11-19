@interface VUIMediaEntitiesToRecentlyAddedMediaEntitiesValueTransformer
- (id)transformedValue:(id)a3;
@end

@implementation VUIMediaEntitiesToRecentlyAddedMediaEntitiesValueTransformer

- (id)transformedValue:(id)a3
{
  v3 = MEMORY[0x1E69DF6F8];
  v4 = a3;
  v5 = [[v3 alloc] initWithDateForEntityBlock:&__block_literal_global_54];
  [v5 setMaxEntities:20];
  v6 = [v5 transformedValue:v4];

  return v6;
}

@end