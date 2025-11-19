@interface PUIStylePickerComponents
- (PUIStylePickerComponents)init;
- (PUIStylePickerComponents)initWithComponent:(unint64_t)a3;
- (PUIStylePickerComponents)initWithComponents:(unint64_t)a3;
- (PUIStylePickerComponents)initWithIndexSet:(id)a3;
- (id)componentsByAddingComponent:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)enumerateComponents:(id)a3;
@end

@implementation PUIStylePickerComponents

- (PUIStylePickerComponents)initWithIndexSet:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PUIStylePickerComponents;
  v5 = [(PUIStylePickerComponents *)&v11 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = objc_opt_new();
    }

    indexSet = v5->_indexSet;
    v5->_indexSet = v8;
  }

  return v5;
}

- (PUIStylePickerComponents)initWithComponents:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = PUIStylePickerComponents;
  v3 = [(PUIStylePickerComponents *)&v7 init];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AD50]);
    indexSet = v3->_indexSet;
    v3->_indexSet = v4;
  }

  return v3;
}

- (PUIStylePickerComponents)init
{
  v3 = objc_opt_new();
  [v3 addIndex:1];
  [v3 addIndex:16];
  [v3 addIndex:8];
  [v3 addIndex:2];
  [v3 addIndex:4];
  v4 = [(PUIStylePickerComponents *)self initWithIndexSet:v3];

  return v4;
}

- (PUIStylePickerComponents)initWithComponent:(unint64_t)a3
{
  v5 = objc_opt_new();
  [v5 addIndex:a3];
  v6 = [(PUIStylePickerComponents *)self initWithIndexSet:v5];

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = objc_opt_new();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__PUIStylePickerComponents_description__block_invoke;
  v8[3] = &unk_1E78558B0;
  v9 = v4;
  v5 = v4;
  [(PUIStylePickerComponents *)self enumerateComponents:v8];
  [v3 appendArraySection:v5 withName:@"components" skipIfEmpty:1];
  v6 = [v3 build];

  return v6;
}

uint64_t __39__PUIStylePickerComponents_description__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      v3 = @"PUIStylePickerComponentFont";
      return [v2 addObject:v3];
    }

    if (a2 == 2)
    {
      v3 = @"PUIStylePickerComponentNumberingSystem";
      return [v2 addObject:v3];
    }

LABEL_13:
    v3 = @"(unknown PUIStylePickerComponent)";
    return [v2 addObject:v3];
  }

  if (a2 == 4)
  {
    v3 = @"PUIStylePickerComponentStyle";
    return [v2 addObject:v3];
  }

  if (a2 == 8)
  {
    v3 = @"PUIStylePickerComponentTextLayout";
    return [v2 addObject:v3];
  }

  if (a2 != 16)
  {
    goto LABEL_13;
  }

  v3 = @"PUIStylePickerComponentTextAlignment";
  return [v2 addObject:v3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  indexSet = self->_indexSet;

  return [v4 initWithIndexSet:indexSet];
}

- (id)componentsByAddingComponent:(unint64_t)a3
{
  v4 = [(NSMutableIndexSet *)self->_indexSet mutableCopy];
  [v4 addIndex:a3];
  v5 = [objc_alloc(objc_opt_class()) initWithIndexSet:v4];

  return v5;
}

- (void)enumerateComponents:(id)a3
{
  v4 = a3;
  indexSet = self->_indexSet;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__PUIStylePickerComponents_enumerateComponents___block_invoke;
  v7[3] = &unk_1E78558D8;
  v8 = v4;
  v6 = v4;
  [(NSMutableIndexSet *)indexSet enumerateIndexesUsingBlock:v7];
}

@end