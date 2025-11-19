@interface ICValueHistory
- (BOOL)isEqual:(id)a3;
- (ICValueHistory)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)firstValueAfterOrEqualToTimestamp:(unint64_t)a3;
- (id)firstValueBeforeOrEqualToTimestamp:(unint64_t)a3;
- (id)firstValueBeforeTimestamp:(unint64_t)a3;
- (id)lastValue;
- (id)lastValueAndTimestamp:(unint64_t *)a3;
- (void)addValue:(id)a3 timestamp:(unint64_t)a4;
- (void)addValuesFromHistory:(id)a3;
- (void)enumerateValuesUsingBlock:(id)a3;
- (void)removeValuesBeforeTimestamp:(unint64_t)a3;
@end

@implementation ICValueHistory

- (ICValueHistory)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ICValueHistory;
  v5 = [(ICValueHistory *)&v12 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"items"];
    items = v5->_items;
    v5->_items = v9;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    items = self->_items;
    v6 = v4[1];
    if (items == v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = 0;
      if (items && v6)
      {
        v7 = [(NSMutableArray *)items isEqual:?];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSMutableArray *)self->_items mutableCopyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)removeValuesBeforeTimestamp:(unint64_t)a3
{
  v5 = [(NSMutableArray *)self->_items count];
  if (v5 >= 1)
  {
    v6 = v5 + 1;
    do
    {
      v7 = [(NSMutableArray *)self->_items objectAtIndex:v6 - 2];
      v8 = [v7 timestamp];

      if (v8 < a3)
      {
        [(NSMutableArray *)self->_items removeObjectAtIndex:v6 - 2];
      }

      --v6;
    }

    while (v6 > 1);
  }
}

- (id)lastValueAndTimestamp:(unint64_t *)a3
{
  v4 = [(NSMutableArray *)self->_items lastObject];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 value];
    if (a3)
    {
      *a3 = [v5 timestamp];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)lastValue
{
  v2 = [(NSMutableArray *)self->_items lastObject];
  v3 = [v2 value];

  return v3;
}

- (id)firstValueBeforeOrEqualToTimestamp:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__17120;
  v11 = __Block_byref_object_dispose__17121;
  v12 = 0;
  items = self->_items;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__ICValueHistory_firstValueBeforeOrEqualToTimestamp___block_invoke;
  v6[3] = &unk_1E7BF5E90;
  v6[4] = &v7;
  v6[5] = a3;
  [(NSMutableArray *)items enumerateObjectsWithOptions:2 usingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __53__ICValueHistory_firstValueBeforeOrEqualToTimestamp___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([v9 timestamp] <= *(a1 + 40))
  {
    v6 = [v9 value];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *a4 = 1;
  }
}

- (id)firstValueBeforeTimestamp:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__17120;
  v11 = __Block_byref_object_dispose__17121;
  v12 = 0;
  items = self->_items;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__ICValueHistory_firstValueBeforeTimestamp___block_invoke;
  v6[3] = &unk_1E7BF5E90;
  v6[4] = &v7;
  v6[5] = a3;
  [(NSMutableArray *)items enumerateObjectsWithOptions:2 usingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __44__ICValueHistory_firstValueBeforeTimestamp___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([v9 timestamp] < *(a1 + 40))
  {
    v6 = [v9 value];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *a4 = 1;
  }
}

- (id)firstValueAfterOrEqualToTimestamp:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__17120;
  v11 = __Block_byref_object_dispose__17121;
  v12 = 0;
  items = self->_items;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__ICValueHistory_firstValueAfterOrEqualToTimestamp___block_invoke;
  v6[3] = &unk_1E7BF5E90;
  v6[4] = &v7;
  v6[5] = a3;
  [(NSMutableArray *)items enumerateObjectsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __52__ICValueHistory_firstValueAfterOrEqualToTimestamp___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([v9 timestamp] >= *(a1 + 40))
  {
    v6 = [v9 value];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *a4 = 1;
  }
}

- (void)enumerateValuesUsingBlock:(id)a3
{
  v4 = a3;
  items = self->_items;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__ICValueHistory_enumerateValuesUsingBlock___block_invoke;
  v7[3] = &unk_1E7BF5E68;
  v8 = v4;
  v6 = v4;
  [(NSMutableArray *)items enumerateObjectsUsingBlock:v7];
}

void __44__ICValueHistory_enumerateValuesUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v9 = [v7 value];
  v8 = [v7 timestamp];

  (*(v6 + 16))(v6, v9, v8, a3, a4);
}

- (void)addValuesFromHistory:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__ICValueHistory_addValuesFromHistory___block_invoke;
  v3[3] = &unk_1E7BF5E40;
  v3[4] = self;
  [a3 enumerateValuesUsingBlock:v3];
}

- (void)addValue:(id)a3 timestamp:(unint64_t)a4
{
  v18 = a3;
  v6 = [[_ICValueHistoryItem alloc] initWithValue:v18 timestamp:a4];
  v7 = [(NSMutableArray *)self->_items count];
  if (!v7)
  {
    items = self->_items;
    if (!items)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v14 = self->_items;
      self->_items = v13;

      items = self->_items;
    }

    [(NSMutableArray *)items addObject:v6];
    goto LABEL_15;
  }

  v8 = v7 - 1;
  if (v7 < 1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v9 = [(NSMutableArray *)self->_items objectAtIndex:v8];
    v10 = [v9 timestamp];

    if (v10 == a4)
    {
      [(NSMutableArray *)self->_items replaceObjectAtIndex:v8 withObject:v6];
      goto LABEL_8;
    }

    if (v10 < a4)
    {
      v15 = self->_items;
      v16 = v8 + 1;
      v17 = v6;
      goto LABEL_14;
    }

    if (!v8)
    {
      break;
    }

LABEL_8:
    v11 = v8-- + 1;
    if (v11 <= 1)
    {
      goto LABEL_15;
    }
  }

  v15 = self->_items;
  v17 = v6;
  v16 = 0;
LABEL_14:
  [(NSMutableArray *)v15 insertObject:v17 atIndex:v16];
LABEL_15:
}

@end