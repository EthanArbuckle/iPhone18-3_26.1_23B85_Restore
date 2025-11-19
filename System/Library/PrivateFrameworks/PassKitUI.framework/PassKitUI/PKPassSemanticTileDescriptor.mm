@interface PKPassSemanticTileDescriptor
+ (id)createWithPass:(id)a3 semantics:(id)a4 additionalTilesContentSupplier:(id)a5;
- (NSString)identifier;
- (PKPassSemanticTileDescriptor)initWithPass:(id)a3 semantics:(id)a4 additionalTilesContentSupplier:(id)a5;
- (id)currencyAmountForSemanticKey:(id)a3;
- (id)dateForSemanticKey:(id)a3;
- (id)dictionariesForSemanticKey:(id)a3;
- (id)eventDateInfoForSemanticKey:(id)a3;
- (id)locationForSemanticKey:(id)a3;
- (id)numberForSemanticKey:(id)a3;
- (id)personNameComponentsForSemanticKey:(id)a3;
- (id)stringForSemanticKey:(id)a3;
- (id)stringsForSemanticKey:(id)a3;
- (id)timeZoneForSemanticKey:(id)a3;
@end

@implementation PKPassSemanticTileDescriptor

+ (id)createWithPass:(id)a3 semantics:(id)a4 additionalTilesContentSupplier:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  result = [v9 conformsToProtocol:&unk_1F3D42598];
  if (result)
  {
    v11 = [[PKPassSemanticTileDescriptor alloc] initWithPass:v7 semantics:v8 additionalTilesContentSupplier:v9];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (PKPassSemanticTileDescriptor)initWithPass:(id)a3 semantics:(id)a4 additionalTilesContentSupplier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PKPassSemanticTileDescriptor;
  v12 = [(PKPassSemanticTileDescriptor *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_pass, a3);
    objc_storeStrong(&v13->_semantics, a4);
    objc_storeStrong(&v13->_additionalTilesContentSupplier, a5);
  }

  return v13;
}

- (NSString)identifier
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PKPass *)self->_pass uniqueID];
  [v3 addObject:v4];

  v5 = [self->_additionalTilesContentSupplier identifier];
  [v3 addObject:v5];

  v6 = [v3 componentsJoinedByString:@"."];

  return v6;
}

- (id)stringForSemanticKey:(id)a3
{
  v3 = [(NSDictionary *)self->_semantics objectForKeyedSubscript:a3];
  v4 = [v3 stringValue];

  return v4;
}

- (id)dateForSemanticKey:(id)a3
{
  v3 = [(NSDictionary *)self->_semantics objectForKeyedSubscript:a3];
  v4 = [v3 dateValue];

  return v4;
}

- (id)timeZoneForSemanticKey:(id)a3
{
  v3 = [(NSDictionary *)self->_semantics objectForKeyedSubscript:a3];
  v4 = [v3 timeZoneValue];

  return v4;
}

- (id)eventDateInfoForSemanticKey:(id)a3
{
  v3 = [(NSDictionary *)self->_semantics objectForKeyedSubscript:a3];
  v4 = [v3 eventDateInfoValue];

  return v4;
}

- (id)numberForSemanticKey:(id)a3
{
  v3 = [(NSDictionary *)self->_semantics objectForKeyedSubscript:a3];
  v4 = [v3 numberValue];

  return v4;
}

- (id)locationForSemanticKey:(id)a3
{
  v3 = [(NSDictionary *)self->_semantics objectForKeyedSubscript:a3];
  v4 = [v3 locationValue];

  return v4;
}

- (id)currencyAmountForSemanticKey:(id)a3
{
  v3 = [(NSDictionary *)self->_semantics objectForKeyedSubscript:a3];
  v4 = [v3 currencyAmountValue];

  return v4;
}

- (id)personNameComponentsForSemanticKey:(id)a3
{
  v3 = [(NSDictionary *)self->_semantics objectForKeyedSubscript:a3];
  v4 = [v3 personNameComponentsValue];

  return v4;
}

- (id)stringsForSemanticKey:(id)a3
{
  v3 = [(NSDictionary *)self->_semantics objectForKeyedSubscript:a3];
  v4 = [v3 stringsValue];

  return v4;
}

- (id)dictionariesForSemanticKey:(id)a3
{
  v3 = [(NSDictionary *)self->_semantics objectForKeyedSubscript:a3];
  v4 = [v3 dictionariesValue];

  return v4;
}

@end