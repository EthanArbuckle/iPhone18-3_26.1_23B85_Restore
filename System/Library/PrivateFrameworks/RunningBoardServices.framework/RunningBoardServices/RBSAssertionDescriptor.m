@interface RBSAssertionDescriptor
+ (RBSAssertionDescriptor)descriptorWithIdentifier:(id)a3 target:(id)a4 explanation:(id)a5 attributes:(id)a6;
- (BOOL)isEqual:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
- (RBSAssertionDescriptor)init;
- (RBSAssertionDescriptor)initWithRBSXPCCoder:(id)a3;
- (unint64_t)hash;
- (void)_initWithIdentifier:(void *)a3 target:(void *)a4 explanation:(void *)a5 attributes:;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSAssertionDescriptor

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  explanation = self->_explanation;
  identifier = self->_identifier;
  v7 = [(RBSTarget *)self->_target shortDescription];
  v8 = [(NSArray *)self->_attributes componentsJoinedByString:@", \n\t"];
  v9 = [v3 initWithFormat:@"<%@| %@ ID:%@ target:%@ attributes:[\n\t%@\n\t]>", v4, explanation, identifier, v7, v8];

  return v9;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  explanation = self->_explanation;
  identifier = self->_identifier;
  v7 = [(RBSTarget *)self->_target shortDescription];
  v8 = [v3 initWithFormat:@"<%@| %@ ID:%@ target:%@>", v4, explanation, identifier, v7];

  return v8;
}

+ (RBSAssertionDescriptor)descriptorWithIdentifier:(id)a3 target:(id)a4 explanation:(id)a5 attributes:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[RBSAssertionDescriptor alloc] _initWithIdentifier:v12 target:v11 explanation:v10 attributes:v9];

  return v13;
}

- (RBSAssertionDescriptor)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"RBSAssertionDescriptor.m" lineNumber:39 description:@"-init is not allowed on RBSAssertionDescriptor"];

  return 0;
}

- (unint64_t)hash
{
  v3 = [(RBSAssertionIdentifier *)self->_identifier hash];
  v4 = [(RBSTarget *)self->_target hash]^ v3;
  v5 = [(NSString *)self->_explanation hash];
  return v4 ^ v5 ^ [(NSArray *)self->_attributes hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = 1;
  if (self != v4)
  {
    if ((v5 = objc_opt_class(), v5 != objc_opt_class()) || (identifier = self->_identifier, identifier != v4->_identifier) && ![(RBSAssertionIdentifier *)identifier isEqual:?]|| (target = self->_target, target != v4->_target) && ![(RBSTarget *)target isEqual:?]|| (explanation = self->_explanation, explanation != v4->_explanation) && ![(NSString *)explanation isEqualToString:?]|| (attributes = self->_attributes, attributes != v4->_attributes) && ![(NSArray *)attributes isEqualToArray:?])
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(RBSAssertionDescriptor *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(RBSAssertionDescriptor *)self target];
  [v4 encodeObject:v6 forKey:@"target"];

  v7 = [(RBSAssertionDescriptor *)self explanation];
  [v4 encodeObject:v7 forKey:@"explanation"];

  v8 = [(RBSAssertionDescriptor *)self attributes];
  [v4 encodeObject:v8 forKey:@"attributes"];
}

- (void)_initWithIdentifier:(void *)a3 target:(void *)a4 explanation:(void *)a5 attributes:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v22.receiver = a1;
    v22.super_class = RBSAssertionDescriptor;
    a1 = objc_msgSendSuper2(&v22, sel_init);
    if (a1)
    {
      v13 = [v9 copy];
      v14 = a1[1];
      a1[1] = v13;

      v15 = [v10 copy];
      v16 = a1[2];
      a1[2] = v15;

      v17 = [v11 copy];
      v18 = a1[3];
      a1[3] = v17;

      v19 = [v12 copy];
      v20 = a1[4];
      a1[4] = v19;
    }
  }

  return a1;
}

- (RBSAssertionDescriptor)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"explanation"];
  v6 = objc_opt_class();
  v7 = [v4 decodeCollectionOfClass:v6 containingClass:objc_opt_class() forKey:@"attributes"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"target"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  v10 = [(RBSAssertionDescriptor *)self _initWithIdentifier:v9 target:v8 explanation:v5 attributes:v7];
  return v10;
}

@end