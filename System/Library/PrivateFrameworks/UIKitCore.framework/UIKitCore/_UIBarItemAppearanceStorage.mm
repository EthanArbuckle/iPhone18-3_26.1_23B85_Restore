@interface _UIBarItemAppearanceStorage
- (id)textAttributeForKey:(id)key state:(unint64_t)state;
- (id)textAttributesForState:(unint64_t)state;
- (void)enumerateTextAttributesWithBlock:(id)block;
- (void)setTextAttribute:(id)attribute forKey:(id)key state:(unint64_t)state;
- (void)setTextAttributes:(id)attributes forState:(unint64_t)state;
@end

@implementation _UIBarItemAppearanceStorage

- (void)setTextAttributes:(id)attributes forState:(unint64_t)state
{
  attributesCopy = attributes;
  v16 = attributesCopy;
  if (attributesCopy || (v7 = self->textAttributesForState, [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state], v8 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKeyedSubscript:](v7, "objectForKeyedSubscript:", v8), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, attributesCopy = 0, v9))
  {
    if (self->textAttributesForState)
    {
      if (attributesCopy)
      {
LABEL_5:
        v10 = [attributesCopy mutableCopy];
        textAttributesForState = self->textAttributesForState;
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state];
        [(NSMutableDictionary *)textAttributesForState setObject:v10 forKeyedSubscript:v12];

LABEL_8:
        attributesCopy = v16;
        goto LABEL_9;
      }
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
      v14 = self->textAttributesForState;
      self->textAttributesForState = v13;

      attributesCopy = v16;
      if (v16)
      {
        goto LABEL_5;
      }
    }

    v15 = self->textAttributesForState;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state];
    [(NSMutableDictionary *)v15 removeObjectForKey:v10];
    goto LABEL_8;
  }

LABEL_9:
}

- (id)textAttributesForState:(unint64_t)state
{
  textAttributesForState = self->textAttributesForState;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state];
  v5 = [(NSMutableDictionary *)textAttributesForState objectForKeyedSubscript:v4];
  v6 = [v5 copy];

  return v6;
}

- (void)setTextAttribute:(id)attribute forKey:(id)key state:(unint64_t)state
{
  attributeCopy = attribute;
  keyCopy = key;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state];
  v10 = [(NSMutableDictionary *)self->textAttributesForState objectForKeyedSubscript:v9];
  if (attributeCopy || ([v10 objectForKeyedSubscript:keyCopy], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
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
    if (attributeCopy)
    {
      [v10 setObject:attributeCopy forKeyedSubscript:keyCopy];
    }

    else
    {
      [v10 removeObjectForKey:keyCopy];
    }
  }
}

- (id)textAttributeForKey:(id)key state:(unint64_t)state
{
  keyCopy = key;
  textAttributesForState = self->textAttributesForState;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state];
  v9 = [(NSMutableDictionary *)textAttributesForState objectForKeyedSubscript:v8];
  v10 = [v9 objectForKeyedSubscript:keyCopy];

  if (state && !v10)
  {
    v11 = [(NSMutableDictionary *)self->textAttributesForState objectForKeyedSubscript:&unk_1EFE2FBA8];
    v10 = [v11 objectForKeyedSubscript:keyCopy];
  }

  return v10;
}

- (void)enumerateTextAttributesWithBlock:(id)block
{
  blockCopy = block;
  textAttributesForState = self->textAttributesForState;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64___UIBarItemAppearanceStorage_enumerateTextAttributesWithBlock___block_invoke;
  v7[3] = &unk_1E70F7948;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSMutableDictionary *)textAttributesForState enumerateKeysAndObjectsUsingBlock:v7];
}

@end