@interface CHCSVOrderedDictionary
- (BOOL)isEqual:(id)a3;
- (CHCSVOrderedDictionary)initWithCoder:(id)a3;
- (CHCSVOrderedDictionary)initWithObjects:(const void *)a3 forKeys:(const void *)a4 count:(unint64_t)a5;
- (CHCSVOrderedDictionary)initWithObjects:(id)a3 forKeys:(id)a4;
- (id)objectAtIndex:(unint64_t)a3;
@end

@implementation CHCSVOrderedDictionary

- (CHCSVOrderedDictionary)initWithObjects:(id)a3 forKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = CHCSVOrderedDictionary;
  v8 = [(CHCSVOrderedDictionary *)&v16 init];
  if (v8)
  {
    v9 = [v7 copy];
    keys = v8->_keys;
    v8->_keys = v9;

    v11 = [v6 copy];
    values = v8->_values;
    v8->_values = v11;

    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8->_values forKeys:v8->_keys];
    dictionary = v8->_dictionary;
    v8->_dictionary = v13;
  }

  return v8;
}

- (CHCSVOrderedDictionary)initWithObjects:(const void *)a3 forKeys:(const void *)a4 count:(unint64_t)a5
{
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:a3 count:a5];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:a4 count:a5];
  v10 = [(CHCSVOrderedDictionary *)self initWithObjects:v8 forKeys:v9];

  return v10;
}

- (CHCSVOrderedDictionary)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = CHCSVOrderedDictionary;
  return [(CHCSVOrderedDictionary *)&v4 initWithCoder:a3];
}

- (id)objectAtIndex:(unint64_t)a3
{
  v4 = [(NSArray *)self->_keys objectAtIndex:a3];
  v5 = [(CHCSVOrderedDictionary *)self objectForKey:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CHCSVOrderedDictionary;
  if ([(CHCSVOrderedDictionary *)&v7 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 isEqual:self->_keys];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end