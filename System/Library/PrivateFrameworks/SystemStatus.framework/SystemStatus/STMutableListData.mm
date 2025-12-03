@interface STMutableListData
- (BOOL)applyDiff:(id)diff;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setObjects:(id)objects;
@end

@implementation STMutableListData

- (void)setObjects:(id)objects
{
  objectsCopy = objects;
  v4 = [(NSMutableArray *)self->super._objects isEqual:objectsCopy];
  v5 = objectsCopy;
  if ((v4 & 1) == 0)
  {
    v6 = [objectsCopy mutableCopy];
    v7 = v6;
    if (v6)
    {
      array = v6;
    }

    else
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    objects = self->super._objects;
    self->super._objects = array;

    v5 = objectsCopy;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [STListData allocWithZone:zone];

  return [(STListData *)v4 initWithListData:?];
}

- (BOOL)applyDiff:(id)diff
{
  diffCopy = diff;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [diffCopy applyToMutableListData:self];
  }

  return isKindOfClass & 1;
}

@end