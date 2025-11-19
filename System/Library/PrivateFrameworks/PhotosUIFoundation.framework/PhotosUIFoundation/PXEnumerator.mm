@interface PXEnumerator
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
@end

@implementation PXEnumerator

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  if (a3->var0 == -1)
  {
    return 0;
  }

  if (!a3->var0)
  {
    recursiveEnumerationValue = self->recursiveEnumerationValue;
    self->recursiveEnumerationValue = recursiveEnumerationValue + 1;
    a3->var2 = &self->recursiveEnumerationValue;
    if (recursiveEnumerationValue)
    {
      [(PXEnumerator *)self reset];
    }
  }

  v9 = [(PXEnumerator *)self nextObject];
  [(PXEnumerator *)self setEnumeratedObject:v9];
  if (v9)
  {
    a3->var1 = a4;
    *a4 = v9;
    v10 = a3->var0 + 1;
    v11 = 1;
  }

  else
  {
    v11 = 0;
    v10 = -1;
  }

  a3->var0 = v10;

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXEnumerator.m" lineNumber:40 description:{@"Method %s is a responsibility of subclass %@", "-[PXEnumerator copyWithZone:]", v7}];

  abort();
}

@end