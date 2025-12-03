@interface PSSpecifierUpdateOperation
+ (id)_removeOneSpecifierOnlyOperationWithSpecifier:(id)specifier atIndex:(unint64_t)index;
+ (id)insertOperationWithSpecifier:(id)specifier atIndex:(unint64_t)index;
+ (id)moveOperationWithSpecifier:(id)specifier fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
+ (id)reloadOperationWithSpecifier:(id)specifier atIndex:(unint64_t)index;
+ (id)removeOperationWithSpecifier:(id)specifier atIndex:(unint64_t)index;
- (BOOL)applyToArray:(id)array;
- (PSSpecifierUpdateOperation)initWithOperation:(int64_t)operation specifier:(id)specifier fromIndex:(id)index toIndex:(id)toIndex removingGroupSpecifierRemovesEntireGroup:(BOOL)group;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation PSSpecifierUpdateOperation

+ (id)insertOperationWithSpecifier:(id)specifier atIndex:(unint64_t)index
{
  specifierCopy = specifier;
  v7 = [self alloc];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  v9 = [v7 initWithOperation:1 specifier:specifierCopy index:v8];

  return v9;
}

+ (id)reloadOperationWithSpecifier:(id)specifier atIndex:(unint64_t)index
{
  specifierCopy = specifier;
  v7 = [self alloc];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  v9 = [v7 initWithOperation:3 specifier:specifierCopy index:v8];

  return v9;
}

+ (id)removeOperationWithSpecifier:(id)specifier atIndex:(unint64_t)index
{
  specifierCopy = specifier;
  v7 = [self alloc];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  v9 = [v7 initWithOperation:4 specifier:specifierCopy index:v8];

  return v9;
}

+ (id)_removeOneSpecifierOnlyOperationWithSpecifier:(id)specifier atIndex:(unint64_t)index
{
  specifierCopy = specifier;
  v7 = [self alloc];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  v9 = [v7 initWithOperation:4 specifier:specifierCopy fromIndex:v8 toIndex:0 removingGroupSpecifierRemovesEntireGroup:0];

  return v9;
}

+ (id)moveOperationWithSpecifier:(id)specifier fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  specifierCopy = specifier;
  v9 = [self alloc];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:toIndex];
  v12 = [v9 initWithOperation:2 specifier:specifierCopy fromIndex:v10 toIndex:v11];

  return v12;
}

- (PSSpecifierUpdateOperation)initWithOperation:(int64_t)operation specifier:(id)specifier fromIndex:(id)index toIndex:(id)toIndex removingGroupSpecifierRemovesEntireGroup:(BOOL)group
{
  groupCopy = group;
  specifierCopy = specifier;
  indexCopy = index;
  toIndexCopy = toIndex;
  v19.receiver = self;
  v19.super_class = PSSpecifierUpdateOperation;
  v16 = [(PSSpecifierUpdateOperation *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_operation = operation;
    objc_storeStrong(&v16->_specifier, specifier);
    objc_storeStrong(&v17->_index, index);
    objc_storeStrong(&v17->_toIndex, toIndex);
    [(PSSpecifierUpdateOperation *)v17 setRemovingGroupSpecifierRemovesEntireGroup:groupCopy];
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  operation = self->_operation;
  specifier = self->_specifier;
  index = self->_index;
  toIndex = self->_toIndex;

  return [v4 initWithOperation:operation specifier:specifier fromIndex:index toIndex:toIndex];
}

- (id)description
{
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __41__PSSpecifierUpdateOperation_description__block_invoke;
  v17 = &unk_1E71DDFC0;
  selfCopy = self;
  operation = self->_operation;
  if (operation > 4)
  {
    v4 = @"***Unknown Operation***";
  }

  else
  {
    v4 = *(&off_1E71DDFE0 + operation);
  }

  v5 = MEMORY[0x1E696AEC0];
  v13.receiver = self;
  v13.super_class = PSSpecifierUpdateOperation;
  v6 = [(PSSpecifierUpdateOperation *)&v13 description];
  identifier = [(PSSpecifier *)self->_specifier identifier];
  index = self->_index;
  toIndex = self->_toIndex;
  if (toIndex)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@" -> %@", self->_toIndex];
  }

  else
  {
    v10 = &stru_1EFE45030;
  }

  v11 = [v5 stringWithFormat:@"%@: %@ ID: %@, index: %@%@, specifier: %@", v6, v4, identifier, index, v10, self->_specifier];
  if (toIndex)
  {
  }

  return v11;
}

__CFString *__41__PSSpecifierUpdateOperation_description__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  if (v1 > 4)
  {
    return @"***Unknown Operation***";
  }

  else
  {
    return *(&off_1E71DDFE0 + v1);
  }
}

- (BOOL)applyToArray:(id)array
{
  arrayCopy = array;
  operation = self->_operation;
  switch(operation)
  {
    case 4:
      removingGroupSpecifierRemovesEntireGroup = [(PSSpecifierUpdateOperation *)self removingGroupSpecifierRemovesEntireGroup];
      index = self->_index;
      if (removingGroupSpecifierRemovesEntireGroup)
      {
        if (index)
        {
          unsignedIntegerValue = [(NSNumber *)index unsignedIntegerValue];
          v12 = [arrayCopy objectAtIndex:unsignedIntegerValue];
        }

        else
        {
          if (!self->_specifier)
          {
            goto LABEL_28;
          }

          unsignedIntegerValue = [arrayCopy indexOfObject:?];
          v12 = self->_specifier;
        }

        v13 = v12;
        [arrayCopy removeObjectAtIndex:unsignedIntegerValue];
        if (![(PSSpecifier *)v13 cellType])
        {
          while ([arrayCopy count] > unsignedIntegerValue)
          {
            v14 = [arrayCopy objectAtIndex:unsignedIntegerValue];
            cellType = [v14 cellType];

            if (!cellType)
            {
              break;
            }

            [arrayCopy removeObjectAtIndex:unsignedIntegerValue];
          }
        }

        break;
      }

      if (index)
      {
        [arrayCopy removeObjectAtIndex:{-[NSNumber unsignedIntegerValue](index, "unsignedIntegerValue")}];
        break;
      }

      if (self->_specifier)
      {
        [arrayCopy removeObject:?];
        break;
      }

LABEL_28:
      v16 = 0;
      goto LABEL_29;
    case 2:
      if (self->_index && self->_toIndex)
      {
        v8 = self->_specifier;
        if (!v8)
        {
          v8 = [arrayCopy objectAtIndexedSubscript:{-[NSNumber unsignedIntegerValue](self->_index, "unsignedIntegerValue")}];
        }

        [arrayCopy removeObjectAtIndex:{-[NSNumber unsignedIntegerValue](self->_index, "unsignedIntegerValue")}];
        [arrayCopy insertObject:v8 atIndex:{-[NSNumber unsignedIntegerValue](self->_toIndex, "unsignedIntegerValue")}];

        break;
      }

      goto LABEL_28;
    case 1:
      specifier = self->_specifier;
      if (specifier)
      {
        v7 = self->_index;
        if (v7)
        {
          [arrayCopy insertObject:specifier atIndex:{-[NSNumber unsignedIntegerValue](v7, "unsignedIntegerValue")}];
          break;
        }
      }

      goto LABEL_28;
  }

  v16 = 1;
LABEL_29:

  return v16;
}

@end