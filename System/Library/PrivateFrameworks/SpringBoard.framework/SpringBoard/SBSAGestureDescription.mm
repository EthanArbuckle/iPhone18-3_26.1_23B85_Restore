@interface SBSAGestureDescription
+ (id)instanceWithBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SBSAGestureDescription)initWithGestureDescription:(id)description;
- (id)copyWithBlock:(id)block;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation SBSAGestureDescription

- (SBSAGestureDescription)initWithGestureDescription:(id)description
{
  descriptionCopy = description;
  v11.receiver = self;
  v11.super_class = SBSAGestureDescription;
  v5 = [(SBSAGestureDescription *)&v11 init];
  if (v5)
  {
    gestureIdentifier = [descriptionCopy gestureIdentifier];
    gestureIdentifier = v5->_gestureIdentifier;
    v5->_gestureIdentifier = gestureIdentifier;

    associatedInterfaceElementIdentifier = [descriptionCopy associatedInterfaceElementIdentifier];
    associatedInterfaceElementIdentifier = v5->_associatedInterfaceElementIdentifier;
    v5->_associatedInterfaceElementIdentifier = associatedInterfaceElementIdentifier;

    v5->_gestureRecognizerState = [descriptionCopy gestureRecognizerState];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  gestureIdentifier = self->_gestureIdentifier;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __34__SBSAGestureDescription_isEqual___block_invoke;
  v21[3] = &unk_2783ACDB8;
  v7 = equalCopy;
  v22 = v7;
  v8 = [v5 appendObject:gestureIdentifier counterpart:v21];
  associatedInterfaceElementIdentifier = self->_associatedInterfaceElementIdentifier;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __34__SBSAGestureDescription_isEqual___block_invoke_2;
  v19[3] = &unk_2783ACDB8;
  v10 = v7;
  v20 = v10;
  v11 = [v8 appendObject:associatedInterfaceElementIdentifier counterpart:v19];
  gestureRecognizerState = self->_gestureRecognizerState;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __34__SBSAGestureDescription_isEqual___block_invoke_3;
  v17[3] = &unk_2783ACDE0;
  v18 = v10;
  v13 = v10;
  v14 = [v11 appendInteger:gestureRecognizerState counterpart:v17];
  v15 = [v14 isEqual];

  return v15;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_gestureIdentifier];
  v5 = [v4 appendObject:self->_associatedInterfaceElementIdentifier];
  v6 = [v5 appendInteger:self->_gestureRecognizerState];
  v7 = [v6 hash];

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  gestureRecognizerState = self->_gestureRecognizerState;
  if (gestureRecognizerState > 5)
  {
    v6 = @"[Invalid]";
  }

  else
  {
    v6 = off_2783BA1D8[gestureRecognizerState];
  }

  return [v3 stringWithFormat:@"<%@: %p; gestureIdentifier: %@; associatedInterfaceElementIdentifier: %@; gestureRecognizerState: %@>", v4, self, self->_gestureIdentifier, self->_associatedInterfaceElementIdentifier, v6];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithGestureDescription:self];
}

+ (id)instanceWithBlock:(id)block
{
  blockCopy = block;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [v4 copyWithBlock:blockCopy];

  return v5;
}

- (id)copyWithBlock:(id)block
{
  blockCopy = block;
  v5 = [(SBSAGestureDescription *)self copy];
  if (blockCopy)
  {
    v6 = [objc_alloc(objc_msgSend(objc_opt_class() "mutatorClass"))];
    blockCopy[2](blockCopy, v6);
  }

  return v5;
}

@end