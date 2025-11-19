@interface STUniquedManagedObject
- (id)computeUniqueIdentifier;
- (id)dictionaryRepresentation;
- (void)awakeFromInsert;
- (void)updateUniqueIdentifier;
@end

@implementation STUniquedManagedObject

- (void)awakeFromInsert
{
  v4.receiver = self;
  v4.super_class = STUniquedManagedObject;
  [(STUniquedManagedObject *)&v4 awakeFromInsert];
  v3 = [MEMORY[0x1E696AFB0] UUID];
  [(STUniquedManagedObject *)self setPrimitiveValue:v3 forKey:@"sortKey"];
}

- (void)updateUniqueIdentifier
{
  v3 = [(STUniquedManagedObject *)self computeUniqueIdentifier];
  [(STUniquedManagedObject *)self setValue:v3 forKey:@"uniqueIdentifier"];
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = objc_opt_class();
  if ([v4 conformsToProtocol:&unk_1F305E1D8])
  {
    v5 = [v4 serializableClassName];
    [v3 setObject:v5 forKeyedSubscript:@"class"];
  }

  v6 = [(STUniquedManagedObject *)self uniqueIdentifier];
  [v3 setObject:v6 forKeyedSubscript:@"uniqueIdentifier"];

  return v3;
}

- (id)computeUniqueIdentifier
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return &stru_1F3040980;
}

@end