@interface VUIMediaEntitiesToRecentlyAddedMediaEntitiesValueTransformer
- (id)transformedValue:(id)value;
@end

@implementation VUIMediaEntitiesToRecentlyAddedMediaEntitiesValueTransformer

- (id)transformedValue:(id)value
{
  v3 = MEMORY[0x1E69DF6F8];
  valueCopy = value;
  v5 = [[v3 alloc] initWithDateForEntityBlock:&__block_literal_global_54];
  [v5 setMaxEntities:20];
  v6 = [v5 transformedValue:valueCopy];

  return v6;
}

@end