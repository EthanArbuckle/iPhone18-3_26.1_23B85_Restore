@interface PSSpecifierUpdateOperation
+ (id)_removeOneSpecifierOnlyOperationWithSpecifier:(id)a3 atIndex:(unint64_t)a4;
+ (id)insertOperationWithSpecifier:(id)a3 atIndex:(unint64_t)a4;
+ (id)moveOperationWithSpecifier:(id)a3 fromIndex:(unint64_t)a4 toIndex:(unint64_t)a5;
+ (id)reloadOperationWithSpecifier:(id)a3 atIndex:(unint64_t)a4;
+ (id)removeOperationWithSpecifier:(id)a3 atIndex:(unint64_t)a4;
- (BOOL)applyToArray:(id)a3;
- (PSSpecifierUpdateOperation)initWithOperation:(int64_t)a3 specifier:(id)a4 fromIndex:(id)a5 toIndex:(id)a6 removingGroupSpecifierRemovesEntireGroup:(BOOL)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation PSSpecifierUpdateOperation

+ (id)insertOperationWithSpecifier:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [a1 alloc];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v9 = [v7 initWithOperation:1 specifier:v6 index:v8];

  return v9;
}

+ (id)reloadOperationWithSpecifier:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [a1 alloc];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v9 = [v7 initWithOperation:3 specifier:v6 index:v8];

  return v9;
}

+ (id)removeOperationWithSpecifier:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [a1 alloc];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v9 = [v7 initWithOperation:4 specifier:v6 index:v8];

  return v9;
}

+ (id)_removeOneSpecifierOnlyOperationWithSpecifier:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [a1 alloc];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v9 = [v7 initWithOperation:4 specifier:v6 fromIndex:v8 toIndex:0 removingGroupSpecifierRemovesEntireGroup:0];

  return v9;
}

+ (id)moveOperationWithSpecifier:(id)a3 fromIndex:(unint64_t)a4 toIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = [a1 alloc];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  v12 = [v9 initWithOperation:2 specifier:v8 fromIndex:v10 toIndex:v11];

  return v12;
}

- (PSSpecifierUpdateOperation)initWithOperation:(int64_t)a3 specifier:(id)a4 fromIndex:(id)a5 toIndex:(id)a6 removingGroupSpecifierRemovesEntireGroup:(BOOL)a7
{
  v7 = a7;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = PSSpecifierUpdateOperation;
  v16 = [(PSSpecifierUpdateOperation *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_operation = a3;
    objc_storeStrong(&v16->_specifier, a4);
    objc_storeStrong(&v17->_index, a5);
    objc_storeStrong(&v17->_toIndex, a6);
    [(PSSpecifierUpdateOperation *)v17 setRemovingGroupSpecifierRemovesEntireGroup:v7];
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
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
  v18 = self;
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
  v7 = [(PSSpecifier *)self->_specifier identifier];
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

  v11 = [v5 stringWithFormat:@"%@: %@ ID: %@, index: %@%@, specifier: %@", v6, v4, v7, index, v10, self->_specifier];
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

- (BOOL)applyToArray:(id)a3
{
  v4 = a3;
  operation = self->_operation;
  switch(operation)
  {
    case 4:
      v9 = [(PSSpecifierUpdateOperation *)self removingGroupSpecifierRemovesEntireGroup];
      index = self->_index;
      if (v9)
      {
        if (index)
        {
          v11 = [(NSNumber *)index unsignedIntegerValue];
          v12 = [v4 objectAtIndex:v11];
        }

        else
        {
          if (!self->_specifier)
          {
            goto LABEL_28;
          }

          v11 = [v4 indexOfObject:?];
          v12 = self->_specifier;
        }

        v13 = v12;
        [v4 removeObjectAtIndex:v11];
        if (![(PSSpecifier *)v13 cellType])
        {
          while ([v4 count] > v11)
          {
            v14 = [v4 objectAtIndex:v11];
            v15 = [v14 cellType];

            if (!v15)
            {
              break;
            }

            [v4 removeObjectAtIndex:v11];
          }
        }

        break;
      }

      if (index)
      {
        [v4 removeObjectAtIndex:{-[NSNumber unsignedIntegerValue](index, "unsignedIntegerValue")}];
        break;
      }

      if (self->_specifier)
      {
        [v4 removeObject:?];
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
          v8 = [v4 objectAtIndexedSubscript:{-[NSNumber unsignedIntegerValue](self->_index, "unsignedIntegerValue")}];
        }

        [v4 removeObjectAtIndex:{-[NSNumber unsignedIntegerValue](self->_index, "unsignedIntegerValue")}];
        [v4 insertObject:v8 atIndex:{-[NSNumber unsignedIntegerValue](self->_toIndex, "unsignedIntegerValue")}];

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
          [v4 insertObject:specifier atIndex:{-[NSNumber unsignedIntegerValue](v7, "unsignedIntegerValue")}];
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