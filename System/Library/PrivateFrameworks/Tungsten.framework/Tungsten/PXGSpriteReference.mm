@interface PXGSpriteReference
- (BOOL)hasObjectReference;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (NSString)description;
- (PXGLayout)layout;
- (PXGSpriteReference)init;
- (id)_init;
- (unint64_t)hash;
- (void)adjustReferencedSpriteIndexesWithChangeDetails:(id)details appliedToLayout:(id)layout;
@end

@implementation PXGSpriteReference

- (PXGLayout)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_layout);

  return WeakRetained;
}

- (void)adjustReferencedSpriteIndexesWithChangeDetails:(id)details appliedToLayout:(id)layout
{
  detailsCopy = details;
  layoutCopy = layout;
  spriteIndex = [(PXGSpriteReference *)self spriteIndex];
  if (spriteIndex != -1)
  {
    v8 = spriteIndex;
    layout = [(PXGSpriteReference *)self layout];

    if (layout == layoutCopy)
    {
      if (-[PXGSpriteReference isDynamic](self, "isDynamic") || (v10 = [detailsCopy indexAfterApplyingChangesToIndex:v8], v10 == 0x7FFFFFFFFFFFFFFFLL))
      {
        [(PXGSpriteReference *)self setSpriteIndex:0xFFFFFFFFLL];
      }

      else
      {
        [(PXGSpriteReference *)self setSpriteIndex:v10];
        layout2 = [(PXGSpriteReference *)self layout];
        -[PXGSpriteReference setLayoutVersion:](self, "setLayoutVersion:", [layout2 version]);
      }
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      isDynamic = [(PXGSpriteReference *)self isDynamic];
      if (isDynamic == [(PXGSpriteReference *)v5 isDynamic]&& (v7 = [(PXGSpriteReference *)self layoutVersion], v7 == [(PXGSpriteReference *)v5 layoutVersion]) && (v8 = [(PXGSpriteReference *)self spriteIndex], v8 == [(PXGSpriteReference *)v5 spriteIndex]) && (v9 = [(PXGSpriteReference *)self hasObjectReference], v9 == [(PXGSpriteReference *)v5 hasObjectReference]))
      {
        if ([(PXGSpriteReference *)self hasObjectReference])
        {
          objectReference = [(PXGSpriteReference *)self objectReference];
          objectReference2 = [(PXGSpriteReference *)v5 objectReference];
          v10 = [objectReference isEqual:objectReference2];
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
  layoutVersion = [(PXGSpriteReference *)self layoutVersion];
  v4 = layoutVersion ^ [(PXGSpriteReference *)self spriteIndex];
  if ([(PXGSpriteReference *)self hasObjectReference])
  {
    objectReference = [(PXGSpriteReference *)self objectReference];
    v4 ^= [objectReference hash];
  }

  return [(PXGSpriteReference *)self isDynamic]| (2 * v4);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  spriteIndex = [(PXGSpriteReference *)self spriteIndex];
  objectReference = [(PXGSpriteReference *)self objectReference];
  layout = [(PXGSpriteReference *)self layout];
  v9 = [v3 stringWithFormat:@"<%@: %p, spriteIndex=%li, objRef=%@, layout=%@, version=%li>", v5, self, spriteIndex, objectReference, layout, -[PXGSpriteReference layoutVersion](self, "layoutVersion")];

  return v9;
}

- (BOOL)hasObjectReference
{
  objectReference = [(PXGSpriteReference *)self objectReference];
  v3 = objectReference != 0;

  return v3;
}

- (BOOL)isValid
{
  spriteIndex = [(PXGSpriteReference *)self spriteIndex];
  if (spriteIndex == -1)
  {
    objectReference = [(PXGSpriteReference *)self objectReference];
    if (!objectReference)
    {
      v6 = 0;
LABEL_6:

      return v6;
    }
  }

  layout = [(PXGSpriteReference *)self layout];
  v6 = layout != 0;

  if (spriteIndex == -1)
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGSpriteReference.m" lineNumber:26 description:{@"%s is not available as initializer", "-[PXGSpriteReference init]"}];

  abort();
}

@end