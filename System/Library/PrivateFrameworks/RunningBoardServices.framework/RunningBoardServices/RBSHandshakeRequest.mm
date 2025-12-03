@interface RBSHandshakeRequest
- (BOOL)isEqual:(id)equal;
- (NSArray)savedEndowments;
- (NSSet)assertionDescriptors;
- (RBSHandshakeRequest)initWithRBSXPCCoder:(id)coder;
- (void)encodeWithRBSXPCCoder:(id)coder;
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
    array = savedEndowments;
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  return array;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_10;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class() || (assertionDescriptors = self->_assertionDescriptors, assertionDescriptors != equalCopy->_assertionDescriptors) && ![(NSSet *)assertionDescriptors isEqualToSet:?])
  {
    v6 = 0;
    goto LABEL_11;
  }

  savedEndowments = self->_savedEndowments;
  v9 = equalCopy->_savedEndowments;
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

- (void)encodeWithRBSXPCCoder:(id)coder
{
  assertionDescriptors = self->_assertionDescriptors;
  coderCopy = coder;
  [coderCopy encodeObject:assertionDescriptors forKey:@"_assertionDescriptors"];
  [coderCopy encodeObject:self->_savedEndowments forKey:@"_savedEndowments"];
}

- (RBSHandshakeRequest)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = RBSHandshakeRequest;
  v5 = [(RBSHandshakeRequest *)&v13 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [coderCopy decodeCollectionOfClass:v6 containingClass:objc_opt_class() forKey:@"_assertionDescriptors"];
    assertionDescriptors = v5->_assertionDescriptors;
    v5->_assertionDescriptors = v7;

    v9 = objc_opt_class();
    v10 = [coderCopy decodeCollectionOfClass:v9 containingClass:objc_opt_class() forKey:@"_savedEndowments"];
    savedEndowments = v5->_savedEndowments;
    v5->_savedEndowments = v10;
  }

  return v5;
}

@end