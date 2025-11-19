@interface PLCompoundPredicateBuilder
- (PLCompoundPredicateBuilder)init;
- (id)_joinSubpredicatesWithNilOnEmpty:(BOOL)a3 block:(id)a4;
- (id)buildAndPredicate;
- (id)buildAndPredicateOrNil;
- (id)buildOrPredicate;
- (id)buildOrPredicateOrNil;
- (void)addPredicate:(id)a3;
@end

@implementation PLCompoundPredicateBuilder

- (PLCompoundPredicateBuilder)init
{
  v7.receiver = self;
  v7.super_class = PLCompoundPredicateBuilder;
  v2 = [(PLCompoundPredicateBuilder *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    subpredicates = v2->_subpredicates;
    v2->_subpredicates = v3;

    v5 = v2;
  }

  return v2;
}

- (id)buildAndPredicate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__PLCompoundPredicateBuilder_buildAndPredicate__block_invoke;
  v4[3] = &unk_1E7932450;
  v4[4] = self;
  v2 = [(PLCompoundPredicateBuilder *)self _joinSubpredicatesWithNilOnEmpty:0 block:v4];

  return v2;
}

- (id)_joinSubpredicatesWithNilOnEmpty:(BOOL)a3 block:(id)a4
{
  v6 = a4;
  if ([(NSMutableArray *)self->_subpredicates count])
  {
    if ([(NSMutableArray *)self->_subpredicates count]== 1)
    {
      [(NSMutableArray *)self->_subpredicates firstObject];
    }

    else
    {
      v6[2](v6);
    }
    v7 = ;
  }

  else
  {
    if (a3)
    {
      v8 = 0;
      goto LABEL_10;
    }

    v7 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  }

  v8 = v7;
LABEL_10:

  return v8;
}

- (id)buildOrPredicateOrNil
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__PLCompoundPredicateBuilder_buildOrPredicateOrNil__block_invoke;
  v4[3] = &unk_1E7932450;
  v4[4] = self;
  v2 = [(PLCompoundPredicateBuilder *)self _joinSubpredicatesWithNilOnEmpty:1 block:v4];

  return v2;
}

- (id)buildOrPredicate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__PLCompoundPredicateBuilder_buildOrPredicate__block_invoke;
  v4[3] = &unk_1E7932450;
  v4[4] = self;
  v2 = [(PLCompoundPredicateBuilder *)self _joinSubpredicatesWithNilOnEmpty:0 block:v4];

  return v2;
}

- (id)buildAndPredicateOrNil
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__PLCompoundPredicateBuilder_buildAndPredicateOrNil__block_invoke;
  v4[3] = &unk_1E7932450;
  v4[4] = self;
  v2 = [(PLCompoundPredicateBuilder *)self _joinSubpredicatesWithNilOnEmpty:1 block:v4];

  return v2;
}

- (void)addPredicate:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self->_subpredicates addObject:?];
  }
}

@end