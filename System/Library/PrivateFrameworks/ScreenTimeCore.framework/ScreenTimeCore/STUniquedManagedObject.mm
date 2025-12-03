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
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [(STUniquedManagedObject *)self setPrimitiveValue:uUID forKey:@"sortKey"];
}

- (void)updateUniqueIdentifier
{
  computeUniqueIdentifier = [(STUniquedManagedObject *)self computeUniqueIdentifier];
  [(STUniquedManagedObject *)self setValue:computeUniqueIdentifier forKey:@"uniqueIdentifier"];
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = objc_opt_class();
  if ([v4 conformsToProtocol:&unk_1F305E1D8])
  {
    serializableClassName = [v4 serializableClassName];
    [v3 setObject:serializableClassName forKeyedSubscript:@"class"];
  }

  uniqueIdentifier = [(STUniquedManagedObject *)self uniqueIdentifier];
  [v3 setObject:uniqueIdentifier forKeyedSubscript:@"uniqueIdentifier"];

  return v3;
}

- (id)computeUniqueIdentifier
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return &stru_1F3040980;
}

@end