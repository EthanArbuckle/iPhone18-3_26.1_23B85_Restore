@interface VUICollisionSafeIdentifier
- (BOOL)isEqual:(id)equal;
- (VUICollisionSafeIdentifier)initWithRootIdentifier:(id)identifier collisionCount:(unint64_t)count;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation VUICollisionSafeIdentifier

- (VUICollisionSafeIdentifier)initWithRootIdentifier:(id)identifier collisionCount:(unint64_t)count
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = VUICollisionSafeIdentifier;
  v7 = [(VUICollisionSafeIdentifier *)&v11 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    rootIdentifier = v7->_rootIdentifier;
    v7->_rootIdentifier = v8;

    v7->_collisionCount = count;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(VUICollisionSafeIdentifier);
  v5 = [(NSCopying *)self->_rootIdentifier copy];
  rootIdentifier = v4->_rootIdentifier;
  v4->_rootIdentifier = v5;

  v4->_collisionCount = self->_collisionCount;
  return v4;
}

- (unint64_t)hash
{
  collisionCount = [(VUICollisionSafeIdentifier *)self collisionCount];
  rootIdentifier = [(VUICollisionSafeIdentifier *)self rootIdentifier];
  v5 = [rootIdentifier hash];

  return v5 ^ collisionCount;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        rootIdentifier = [(VUICollisionSafeIdentifier *)self rootIdentifier];
        rootIdentifier2 = [(VUICollisionSafeIdentifier *)v6 rootIdentifier];
        v9 = rootIdentifier;
        v10 = rootIdentifier2;
        v11 = v10;
        if (v9 == v10)
        {
        }

        else
        {
          if (!v9 || !v10)
          {

LABEL_14:
            v13 = 0;
            goto LABEL_15;
          }

          v12 = [v9 isEqual:v10];

          if ((v12 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        collisionCount = [(VUICollisionSafeIdentifier *)self collisionCount];
        v13 = collisionCount == [(VUICollisionSafeIdentifier *)v6 collisionCount];
LABEL_15:

        goto LABEL_16;
      }
    }

    v13 = 0;
  }

LABEL_16:

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  rootIdentifier = [(VUICollisionSafeIdentifier *)self rootIdentifier];
  v5 = [v3 stringWithFormat:@"%@_%lu", rootIdentifier, -[VUICollisionSafeIdentifier collisionCount](self, "collisionCount")];

  return v5;
}

@end