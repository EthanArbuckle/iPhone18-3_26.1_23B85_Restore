@interface STMutableListData
- (BOOL)applyDiff:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setObjects:(id)a3;
@end

@implementation STMutableListData

- (void)setObjects:(id)a3
{
  v10 = a3;
  v4 = [(NSMutableArray *)self->super._objects isEqual:v10];
  v5 = v10;
  if ((v4 & 1) == 0)
  {
    v6 = [v10 mutableCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x1E695DF70] array];
    }

    objects = self->super._objects;
    self->super._objects = v8;

    v5 = v10;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [STListData allocWithZone:a3];

  return [(STListData *)v4 initWithListData:?];
}

- (BOOL)applyDiff:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [v4 applyToMutableListData:self];
  }

  return isKindOfClass & 1;
}

@end