@interface RBSAssertionDescriptor
+ (RBSAssertionDescriptor)descriptorWithIdentifier:(id)identifier target:(id)target explanation:(id)explanation attributes:(id)attributes;
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (NSString)description;
- (RBSAssertionDescriptor)init;
- (RBSAssertionDescriptor)initWithRBSXPCCoder:(id)coder;
- (unint64_t)hash;
- (void)_initWithIdentifier:(void *)identifier target:(void *)target explanation:(void *)explanation attributes:;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSAssertionDescriptor

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  explanation = self->_explanation;
  identifier = self->_identifier;
  shortDescription = [(RBSTarget *)self->_target shortDescription];
  v8 = [(NSArray *)self->_attributes componentsJoinedByString:@", \n\t"];
  v9 = [v3 initWithFormat:@"<%@| %@ ID:%@ target:%@ attributes:[\n\t%@\n\t]>", v4, explanation, identifier, shortDescription, v8];

  return v9;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  explanation = self->_explanation;
  identifier = self->_identifier;
  shortDescription = [(RBSTarget *)self->_target shortDescription];
  v8 = [v3 initWithFormat:@"<%@| %@ ID:%@ target:%@>", v4, explanation, identifier, shortDescription];

  return v8;
}

+ (RBSAssertionDescriptor)descriptorWithIdentifier:(id)identifier target:(id)target explanation:(id)explanation attributes:(id)attributes
{
  attributesCopy = attributes;
  explanationCopy = explanation;
  targetCopy = target;
  identifierCopy = identifier;
  v13 = [[RBSAssertionDescriptor alloc] _initWithIdentifier:identifierCopy target:targetCopy explanation:explanationCopy attributes:attributesCopy];

  return v13;
}

- (RBSAssertionDescriptor)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"RBSAssertionDescriptor.m" lineNumber:39 description:@"-init is not allowed on RBSAssertionDescriptor"];

  return 0;
}

- (unint64_t)hash
{
  v3 = [(RBSAssertionIdentifier *)self->_identifier hash];
  v4 = [(RBSTarget *)self->_target hash]^ v3;
  v5 = [(NSString *)self->_explanation hash];
  return v4 ^ v5 ^ [(NSArray *)self->_attributes hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = 1;
  if (self != equalCopy)
  {
    if ((v5 = objc_opt_class(), v5 != objc_opt_class()) || (identifier = self->_identifier, identifier != equalCopy->_identifier) && ![(RBSAssertionIdentifier *)identifier isEqual:?]|| (target = self->_target, target != equalCopy->_target) && ![(RBSTarget *)target isEqual:?]|| (explanation = self->_explanation, explanation != equalCopy->_explanation) && ![(NSString *)explanation isEqualToString:?]|| (attributes = self->_attributes, attributes != equalCopy->_attributes) && ![(NSArray *)attributes isEqualToArray:?])
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(RBSAssertionDescriptor *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  target = [(RBSAssertionDescriptor *)self target];
  [coderCopy encodeObject:target forKey:@"target"];

  explanation = [(RBSAssertionDescriptor *)self explanation];
  [coderCopy encodeObject:explanation forKey:@"explanation"];

  attributes = [(RBSAssertionDescriptor *)self attributes];
  [coderCopy encodeObject:attributes forKey:@"attributes"];
}

- (void)_initWithIdentifier:(void *)identifier target:(void *)target explanation:(void *)explanation attributes:
{
  v9 = a2;
  identifierCopy = identifier;
  targetCopy = target;
  explanationCopy = explanation;
  if (self)
  {
    v22.receiver = self;
    v22.super_class = RBSAssertionDescriptor;
    self = objc_msgSendSuper2(&v22, sel_init);
    if (self)
    {
      v13 = [v9 copy];
      v14 = self[1];
      self[1] = v13;

      v15 = [identifierCopy copy];
      v16 = self[2];
      self[2] = v15;

      v17 = [targetCopy copy];
      v18 = self[3];
      self[3] = v17;

      v19 = [explanationCopy copy];
      v20 = self[4];
      self[4] = v19;
    }
  }

  return self;
}

- (RBSAssertionDescriptor)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"explanation"];
  v6 = objc_opt_class();
  v7 = [coderCopy decodeCollectionOfClass:v6 containingClass:objc_opt_class() forKey:@"attributes"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"target"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  v10 = [(RBSAssertionDescriptor *)self _initWithIdentifier:v9 target:v8 explanation:v5 attributes:v7];
  return v10;
}

@end