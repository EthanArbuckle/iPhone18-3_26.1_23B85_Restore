@interface RBSHandshakeRequest
- (BOOL)isEqual:(id)a3;
- (NSArray)savedEndowments;
- (NSSet)assertionDescriptors;
- (RBSHandshakeRequest)initWithRBSXPCCoder:(id)a3;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSHandshakeRequest

- (NSSet)assertionDescriptors
{
  assertionDescriptors = self->_assertionDescriptors;
  if (assertionDescriptors)
  {
    v3 = assertionDescriptors;
  }

  else
  {
    v3 = [MEMORY[0x1E695DFD8] set];
  }

  return v3;
}

- (NSArray)savedEndowments
{
  savedEndowments = self->_savedEndowments;
  if (savedEndowments)
  {
    v3 = savedEndowments;
  }

  else
  {
    v3 = [MEMORY[0x1E695DEC8] array];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_10;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class() || (assertionDescriptors = self->_assertionDescriptors, assertionDescriptors != v4->_assertionDescriptors) && ![(NSSet *)assertionDescriptors isEqualToSet:?])
  {
    v6 = 0;
    goto LABEL_11;
  }

  savedEndowments = self->_savedEndowments;
  v9 = v4->_savedEndowments;
  if (savedEndowments == v9)
  {
LABEL_10:
    v6 = 1;
    goto LABEL_11;
  }

  v6 = 0;
  if (savedEndowments && v9)
  {
    v6 = [(NSArray *)savedEndowments isEqual:?];
  }

LABEL_11:

  return v6;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  assertionDescriptors = self->_assertionDescriptors;
  v5 = a3;
  [v5 encodeObject:assertionDescriptors forKey:@"_assertionDescriptors"];
  [v5 encodeObject:self->_savedEndowments forKey:@"_savedEndowments"];
}

- (RBSHandshakeRequest)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = RBSHandshakeRequest;
  v5 = [(RBSHandshakeRequest *)&v13 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v4 decodeCollectionOfClass:v6 containingClass:objc_opt_class() forKey:@"_assertionDescriptors"];
    assertionDescriptors = v5->_assertionDescriptors;
    v5->_assertionDescriptors = v7;

    v9 = objc_opt_class();
    v10 = [v4 decodeCollectionOfClass:v9 containingClass:objc_opt_class() forKey:@"_savedEndowments"];
    savedEndowments = v5->_savedEndowments;
    v5->_savedEndowments = v10;
  }

  return v5;
}

@end