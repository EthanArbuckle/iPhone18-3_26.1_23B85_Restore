@interface PKPassSemanticTileDescriptor
+ (id)createWithPass:(id)pass semantics:(id)semantics additionalTilesContentSupplier:(id)supplier;
- (NSString)identifier;
- (PKPassSemanticTileDescriptor)initWithPass:(id)pass semantics:(id)semantics additionalTilesContentSupplier:(id)supplier;
- (id)currencyAmountForSemanticKey:(id)key;
- (id)dateForSemanticKey:(id)key;
- (id)dictionariesForSemanticKey:(id)key;
- (id)eventDateInfoForSemanticKey:(id)key;
- (id)locationForSemanticKey:(id)key;
- (id)numberForSemanticKey:(id)key;
- (id)personNameComponentsForSemanticKey:(id)key;
- (id)stringForSemanticKey:(id)key;
- (id)stringsForSemanticKey:(id)key;
- (id)timeZoneForSemanticKey:(id)key;
@end

@implementation PKPassSemanticTileDescriptor

+ (id)createWithPass:(id)pass semantics:(id)semantics additionalTilesContentSupplier:(id)supplier
{
  passCopy = pass;
  semanticsCopy = semantics;
  supplierCopy = supplier;
  result = [supplierCopy conformsToProtocol:&unk_1F3D42598];
  if (result)
  {
    v11 = [[PKPassSemanticTileDescriptor alloc] initWithPass:passCopy semantics:semanticsCopy additionalTilesContentSupplier:supplierCopy];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (PKPassSemanticTileDescriptor)initWithPass:(id)pass semantics:(id)semantics additionalTilesContentSupplier:(id)supplier
{
  passCopy = pass;
  semanticsCopy = semantics;
  supplierCopy = supplier;
  v15.receiver = self;
  v15.super_class = PKPassSemanticTileDescriptor;
  v12 = [(PKPassSemanticTileDescriptor *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_pass, pass);
    objc_storeStrong(&v13->_semantics, semantics);
    objc_storeStrong(&v13->_additionalTilesContentSupplier, supplier);
  }

  return v13;
}

- (NSString)identifier
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  uniqueID = [(PKPass *)self->_pass uniqueID];
  [v3 addObject:uniqueID];

  identifier = [self->_additionalTilesContentSupplier identifier];
  [v3 addObject:identifier];

  v6 = [v3 componentsJoinedByString:@"."];

  return v6;
}

- (id)stringForSemanticKey:(id)key
{
  v3 = [(NSDictionary *)self->_semantics objectForKeyedSubscript:key];
  stringValue = [v3 stringValue];

  return stringValue;
}

- (id)dateForSemanticKey:(id)key
{
  v3 = [(NSDictionary *)self->_semantics objectForKeyedSubscript:key];
  dateValue = [v3 dateValue];

  return dateValue;
}

- (id)timeZoneForSemanticKey:(id)key
{
  v3 = [(NSDictionary *)self->_semantics objectForKeyedSubscript:key];
  timeZoneValue = [v3 timeZoneValue];

  return timeZoneValue;
}

- (id)eventDateInfoForSemanticKey:(id)key
{
  v3 = [(NSDictionary *)self->_semantics objectForKeyedSubscript:key];
  eventDateInfoValue = [v3 eventDateInfoValue];

  return eventDateInfoValue;
}

- (id)numberForSemanticKey:(id)key
{
  v3 = [(NSDictionary *)self->_semantics objectForKeyedSubscript:key];
  numberValue = [v3 numberValue];

  return numberValue;
}

- (id)locationForSemanticKey:(id)key
{
  v3 = [(NSDictionary *)self->_semantics objectForKeyedSubscript:key];
  locationValue = [v3 locationValue];

  return locationValue;
}

- (id)currencyAmountForSemanticKey:(id)key
{
  v3 = [(NSDictionary *)self->_semantics objectForKeyedSubscript:key];
  currencyAmountValue = [v3 currencyAmountValue];

  return currencyAmountValue;
}

- (id)personNameComponentsForSemanticKey:(id)key
{
  v3 = [(NSDictionary *)self->_semantics objectForKeyedSubscript:key];
  personNameComponentsValue = [v3 personNameComponentsValue];

  return personNameComponentsValue;
}

- (id)stringsForSemanticKey:(id)key
{
  v3 = [(NSDictionary *)self->_semantics objectForKeyedSubscript:key];
  stringsValue = [v3 stringsValue];

  return stringsValue;
}

- (id)dictionariesForSemanticKey:(id)key
{
  v3 = [(NSDictionary *)self->_semantics objectForKeyedSubscript:key];
  dictionariesValue = [v3 dictionariesValue];

  return dictionariesValue;
}

@end