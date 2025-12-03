@interface PXEnumerator
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
@end

@implementation PXEnumerator

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  if (state->var0 == -1)
  {
    return 0;
  }

  if (!state->var0)
  {
    recursiveEnumerationValue = self->recursiveEnumerationValue;
    self->recursiveEnumerationValue = recursiveEnumerationValue + 1;
    state->var2 = &self->recursiveEnumerationValue;
    if (recursiveEnumerationValue)
    {
      [(PXEnumerator *)self reset];
    }
  }

  nextObject = [(PXEnumerator *)self nextObject];
  [(PXEnumerator *)self setEnumeratedObject:nextObject];
  if (nextObject)
  {
    state->var1 = objects;
    *objects = nextObject;
    v10 = state->var0 + 1;
    v11 = 1;
  }

  else
  {
    v11 = 0;
    v10 = -1;
  }

  state->var0 = v10;

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXEnumerator.m" lineNumber:40 description:{@"Method %s is a responsibility of subclass %@", "-[PXEnumerator copyWithZone:]", v7}];

  abort();
}

@end