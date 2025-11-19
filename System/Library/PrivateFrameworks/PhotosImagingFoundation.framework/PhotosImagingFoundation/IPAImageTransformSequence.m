@interface IPAImageTransformSequence
- (BOOL)canAlignToPixelsExactly;
- (CGPoint)mapPoint:(CGPoint)a3;
- (IPAImageTransformSequence)initWithTransforms:(id)a3;
- (id)description;
- (id)inputGeometry;
- (id)intrinsicGeometry;
- (id)inverseTransform;
@end

@implementation IPAImageTransformSequence

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@.%p elements:%@>", v5, self, self->_transforms];

  return v6;
}

- (id)inverseTransform
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSArray *)self->_transforms reverseObjectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) inverseTransform];
        [v3 addObject:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [[IPAImageTransformSequence alloc] initWithTransforms:v3];

  return v9;
}

- (CGPoint)mapPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_transforms;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v13 + 1) + 8 * v8) mapPoint:{x, y, v13}];
        x = v9;
        y = v10;
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = x;
  v12 = y;
  result.y = v12;
  result.x = v11;
  return result;
}

- (id)intrinsicGeometry
{
  v2 = [(NSArray *)self->_transforms lastObject];
  v3 = [v2 intrinsicGeometry];

  return v3;
}

- (id)inputGeometry
{
  v2 = [(NSArray *)self->_transforms firstObject];
  v3 = [v2 inputGeometry];

  return v3;
}

- (BOOL)canAlignToPixelsExactly
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_transforms;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if (([*(*(&v8 + 1) + 8 * i) canAlignToPixelsExactly] & 1) == 0)
        {
          v6 = 0;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v6 = 1;
LABEL_11:

  return v6;
}

- (IPAImageTransformSequence)initWithTransforms:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v9.receiver = self;
    v9.super_class = IPAImageTransformSequence;
    v5 = [(IPAImageTransformSequence *)&v9 init];
    if (v5)
    {
      v6 = [v4 copy];
      transforms = v5->_transforms;
      v5->_transforms = v6;
    }

    return v5;
  }

  else
  {
    result = _PFAssertFailHandler();
    __break(1u);
  }

  return result;
}

@end