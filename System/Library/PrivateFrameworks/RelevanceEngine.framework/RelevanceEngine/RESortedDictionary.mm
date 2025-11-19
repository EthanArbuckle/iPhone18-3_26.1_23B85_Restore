@interface RESortedDictionary
- (BOOL)isEqual:(id)a3;
- (RESortedDictionary)init;
- (RESortedDictionary)initWithCapacity:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)enumerateObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation RESortedDictionary

- (RESortedDictionary)init
{
  v8.receiver = self;
  v8.super_class = RESortedDictionary;
  v2 = [(RESortedDictionary *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    order = v2->_order;
    v2->_order = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    values = v2->_values;
    v2->_values = v5;
  }

  return v2;
}

- (RESortedDictionary)initWithCapacity:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = RESortedDictionary;
  v4 = [(RESortedDictionary *)&v10 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:a3];
    order = v4->_order;
    v4->_order = v5;

    v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:a3];
    values = v4->_values;
    v4->_values = v7;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      values = v5->_values;
      v7 = self->_values;
      v8 = v7;
      if (v7 == values)
      {
      }

      else
      {
        v9 = [(NSMutableDictionary *)v7 isEqual:values];

        if (!v9)
        {
          v10 = 0;
LABEL_13:

          goto LABEL_14;
        }
      }

      order = self->_order;
      v12 = v5->_order;
      v13 = order;
      v14 = v13;
      if (v13 == v12)
      {
        v10 = 1;
      }

      else
      {
        v10 = [(NSMutableArray *)v13 isEqual:v12];
      }

      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_14:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSMutableArray *)self->_order copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSMutableDictionary *)self->_values mutableCopy];
  v8 = v4[1];
  v4[1] = v7;

  return v4;
}

- (void)removeObjectForKey:(id)a3
{
  values = self->_values;
  v5 = a3;
  [(NSMutableDictionary *)values removeObjectForKey:v5];
  v6 = [(NSMutableArray *)self->_order indexOfObject:v5 inSortedRange:0 options:[(NSMutableArray *)self->_order count] usingComparator:256, &__block_literal_global_21];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(NSMutableArray *)self->_order objectAtIndex:v6];
  }
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(RESortedDictionary *)self objectForKey:v6];

  if (!v7)
  {
    [(NSMutableArray *)self->_order insertObject:v6 atIndex:[(NSMutableArray *)self->_order indexOfObject:v6 inSortedRange:0 options:[(NSMutableArray *)self->_order count] usingComparator:1280, &__block_literal_global_4_0]];
  }

  [(NSMutableDictionary *)self->_values setObject:v8 forKeyedSubscript:v6];
}

- (void)removeAllObjects
{
  [(NSMutableDictionary *)self->_values removeAllObjects];
  order = self->_order;

  [(NSMutableArray *)order removeAllObjects];
}

- (void)enumerateObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    order = self->_order;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__RESortedDictionary_enumerateObjectsWithOptions_usingBlock___block_invoke;
    v9[3] = &unk_2785FB510;
    v9[4] = self;
    v10 = v6;
    [(NSMutableArray *)order enumerateObjectsWithOptions:a3 usingBlock:v9];
  }
}

void __61__RESortedDictionary_enumerateObjectsWithOptions_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  (*(*(a1 + 40) + 16))();
}

@end