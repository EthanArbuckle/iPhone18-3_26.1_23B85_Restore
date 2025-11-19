@interface _UIBarItemAppearanceStorage
- (id)textAttributeForKey:(id)a3 state:(unint64_t)a4;
- (id)textAttributesForState:(unint64_t)a3;
- (void)enumerateTextAttributesWithBlock:(id)a3;
- (void)setTextAttribute:(id)a3 forKey:(id)a4 state:(unint64_t)a5;
- (void)setTextAttributes:(id)a3 forState:(unint64_t)a4;
@end

@implementation _UIBarItemAppearanceStorage

- (void)setTextAttributes:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  v16 = v6;
  if (v6 || (v7 = self->textAttributesForState, [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4], v8 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKeyedSubscript:](v7, "objectForKeyedSubscript:", v8), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v6 = 0, v9))
  {
    if (self->textAttributesForState)
    {
      if (v6)
      {
LABEL_5:
        v10 = [v6 mutableCopy];
        textAttributesForState = self->textAttributesForState;
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
        [(NSMutableDictionary *)textAttributesForState setObject:v10 forKeyedSubscript:v12];

LABEL_8:
        v6 = v16;
        goto LABEL_9;
      }
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
      v14 = self->textAttributesForState;
      self->textAttributesForState = v13;

      v6 = v16;
      if (v16)
      {
        goto LABEL_5;
      }
    }

    v15 = self->textAttributesForState;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    [(NSMutableDictionary *)v15 removeObjectForKey:v10];
    goto LABEL_8;
  }

LABEL_9:
}

- (id)textAttributesForState:(unint64_t)a3
{
  textAttributesForState = self->textAttributesForState;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [(NSMutableDictionary *)textAttributesForState objectForKeyedSubscript:v4];
  v6 = [v5 copy];

  return v6;
}

- (void)setTextAttribute:(id)a3 forKey:(id)a4 state:(unint64_t)a5
{
  v14 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  v10 = [(NSMutableDictionary *)self->textAttributesForState objectForKeyedSubscript:v9];
  if (v14 || ([v10 objectForKeyedSubscript:v8], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    if (self->textAttributesForState)
    {
      if (v10)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
      textAttributesForState = self->textAttributesForState;
      self->textAttributesForState = v12;

      if (v10)
      {
        goto LABEL_5;
      }
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(NSMutableDictionary *)self->textAttributesForState setObject:v10 forKeyedSubscript:v9];
LABEL_5:
    if (v14)
    {
      [v10 setObject:v14 forKeyedSubscript:v8];
    }

    else
    {
      [v10 removeObjectForKey:v8];
    }
  }
}

- (id)textAttributeForKey:(id)a3 state:(unint64_t)a4
{
  v6 = a3;
  textAttributesForState = self->textAttributesForState;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v9 = [(NSMutableDictionary *)textAttributesForState objectForKeyedSubscript:v8];
  v10 = [v9 objectForKeyedSubscript:v6];

  if (a4 && !v10)
  {
    v11 = [(NSMutableDictionary *)self->textAttributesForState objectForKeyedSubscript:&unk_1EFE2FBA8];
    v10 = [v11 objectForKeyedSubscript:v6];
  }

  return v10;
}

- (void)enumerateTextAttributesWithBlock:(id)a3
{
  v4 = a3;
  textAttributesForState = self->textAttributesForState;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64___UIBarItemAppearanceStorage_enumerateTextAttributesWithBlock___block_invoke;
  v7[3] = &unk_1E70F7948;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)textAttributesForState enumerateKeysAndObjectsUsingBlock:v7];
}

@end