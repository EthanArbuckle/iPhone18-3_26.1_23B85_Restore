@interface PTParameterRecordLeaf
- (BOOL)isEqual:(id)equal;
- (PTParameterRecordLeaf)initWithCoder:(id)coder;
- (PTParameterRecordLeaf)initWithRecordClassName:(id)name value:(id)value;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PTParameterRecordLeaf

- (PTParameterRecordLeaf)initWithRecordClassName:(id)name value:(id)value
{
  nameCopy = name;
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = PTParameterRecordLeaf;
  v8 = [(PTParameterRecordLeaf *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PTParameterRecordLeaf *)v8 setRecordClassName:nameCopy];
    [(PTParameterRecordLeaf *)v9 setChangedValue:valueCopy];
  }

  return v9;
}

- (PTParameterRecordLeaf)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recordClassName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"changedValue"];

  v7 = [(PTParameterRecordLeaf *)self initWithRecordClassName:v5 value:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  recordClassName = [(PTParameterRecordLeaf *)self recordClassName];
  [coderCopy encodeObject:recordClassName forKey:@"recordClassName"];

  changedValue = [(PTParameterRecordLeaf *)self changedValue];
  [coderCopy encodeObject:changedValue forKey:@"changedValue"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  recordClassName = [(PTParameterRecordLeaf *)self recordClassName];
  changedValue = [(PTParameterRecordLeaf *)self changedValue];
  v7 = [v4 initWithRecordClassName:recordClassName value:changedValue];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  recordClassName = [(PTParameterRecordLeaf *)self recordClassName];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __33__PTParameterRecordLeaf_isEqual___block_invoke;
  v16[3] = &unk_27835EEF0;
  v7 = equalCopy;
  v17 = v7;
  v8 = [v5 appendString:recordClassName counterpart:v16];
  changedValue = [(PTParameterRecordLeaf *)self changedValue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __33__PTParameterRecordLeaf_isEqual___block_invoke_2;
  v14[3] = &unk_27835EF18;
  v15 = v7;
  v10 = v7;
  v11 = [v8 appendObject:changedValue counterpart:v14];
  v12 = v11 != 0;

  return v12;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  recordClassName = [(PTParameterRecordLeaf *)self recordClassName];
  v5 = [builder appendString:recordClassName];
  changedValue = [(PTParameterRecordLeaf *)self changedValue];
  v7 = [v5 appendObject:changedValue];
  v8 = [v7 hash];

  return v8;
}

@end