@interface VUICollisionSafeIdentifier
- (BOOL)isEqual:(id)a3;
- (VUICollisionSafeIdentifier)initWithRootIdentifier:(id)a3 collisionCount:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation VUICollisionSafeIdentifier

- (VUICollisionSafeIdentifier)initWithRootIdentifier:(id)a3 collisionCount:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = VUICollisionSafeIdentifier;
  v7 = [(VUICollisionSafeIdentifier *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    rootIdentifier = v7->_rootIdentifier;
    v7->_rootIdentifier = v8;

    v7->_collisionCount = a4;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
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
  v3 = [(VUICollisionSafeIdentifier *)self collisionCount];
  v4 = [(VUICollisionSafeIdentifier *)self rootIdentifier];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = [(VUICollisionSafeIdentifier *)self rootIdentifier];
        v8 = [(VUICollisionSafeIdentifier *)v6 rootIdentifier];
        v9 = v7;
        v10 = v8;
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

        v14 = [(VUICollisionSafeIdentifier *)self collisionCount];
        v13 = v14 == [(VUICollisionSafeIdentifier *)v6 collisionCount];
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
  v4 = [(VUICollisionSafeIdentifier *)self rootIdentifier];
  v5 = [v3 stringWithFormat:@"%@_%lu", v4, -[VUICollisionSafeIdentifier collisionCount](self, "collisionCount")];

  return v5;
}

@end