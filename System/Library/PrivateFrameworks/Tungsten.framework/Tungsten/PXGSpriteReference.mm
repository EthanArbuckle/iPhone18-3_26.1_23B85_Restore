@interface PXGSpriteReference
- (BOOL)hasObjectReference;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (NSString)description;
- (PXGLayout)layout;
- (PXGSpriteReference)init;
- (id)_init;
- (unint64_t)hash;
- (void)adjustReferencedSpriteIndexesWithChangeDetails:(id)a3 appliedToLayout:(id)a4;
@end

@implementation PXGSpriteReference

- (PXGLayout)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_layout);

  return WeakRetained;
}

- (void)adjustReferencedSpriteIndexesWithChangeDetails:(id)a3 appliedToLayout:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(PXGSpriteReference *)self spriteIndex];
  if (v7 != -1)
  {
    v8 = v7;
    v9 = [(PXGSpriteReference *)self layout];

    if (v9 == v6)
    {
      if (-[PXGSpriteReference isDynamic](self, "isDynamic") || (v10 = [v12 indexAfterApplyingChangesToIndex:v8], v10 == 0x7FFFFFFFFFFFFFFFLL))
      {
        [(PXGSpriteReference *)self setSpriteIndex:0xFFFFFFFFLL];
      }

      else
      {
        [(PXGSpriteReference *)self setSpriteIndex:v10];
        v11 = [(PXGSpriteReference *)self layout];
        -[PXGSpriteReference setLayoutVersion:](self, "setLayoutVersion:", [v11 version]);
      }
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXGSpriteReference *)self isDynamic];
      if (v6 == [(PXGSpriteReference *)v5 isDynamic]&& (v7 = [(PXGSpriteReference *)self layoutVersion], v7 == [(PXGSpriteReference *)v5 layoutVersion]) && (v8 = [(PXGSpriteReference *)self spriteIndex], v8 == [(PXGSpriteReference *)v5 spriteIndex]) && (v9 = [(PXGSpriteReference *)self hasObjectReference], v9 == [(PXGSpriteReference *)v5 hasObjectReference]))
      {
        if ([(PXGSpriteReference *)self hasObjectReference])
        {
          v12 = [(PXGSpriteReference *)self objectReference];
          v13 = [(PXGSpriteReference *)v5 objectReference];
          v10 = [v12 isEqual:v13];
        }

        else
        {
          v10 = 1;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10 & 1;
}

- (unint64_t)hash
{
  v3 = [(PXGSpriteReference *)self layoutVersion];
  v4 = v3 ^ [(PXGSpriteReference *)self spriteIndex];
  if ([(PXGSpriteReference *)self hasObjectReference])
  {
    v5 = [(PXGSpriteReference *)self objectReference];
    v4 ^= [v5 hash];
  }

  return [(PXGSpriteReference *)self isDynamic]| (2 * v4);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXGSpriteReference *)self spriteIndex];
  v7 = [(PXGSpriteReference *)self objectReference];
  v8 = [(PXGSpriteReference *)self layout];
  v9 = [v3 stringWithFormat:@"<%@: %p, spriteIndex=%li, objRef=%@, layout=%@, version=%li>", v5, self, v6, v7, v8, -[PXGSpriteReference layoutVersion](self, "layoutVersion")];

  return v9;
}

- (BOOL)hasObjectReference
{
  v2 = [(PXGSpriteReference *)self objectReference];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isValid
{
  v4 = [(PXGSpriteReference *)self spriteIndex];
  if (v4 == -1)
  {
    v2 = [(PXGSpriteReference *)self objectReference];
    if (!v2)
    {
      v6 = 0;
LABEL_6:

      return v6;
    }
  }

  v5 = [(PXGSpriteReference *)self layout];
  v6 = v5 != 0;

  if (v4 == -1)
  {
    goto LABEL_6;
  }

  return v6;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PXGSpriteReference;
  result = [(PXGSpriteReference *)&v3 init];
  if (result)
  {
    *(result + 3) = -1;
  }

  return result;
}

- (PXGSpriteReference)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGSpriteReference.m" lineNumber:26 description:{@"%s is not available as initializer", "-[PXGSpriteReference init]"}];

  abort();
}

@end