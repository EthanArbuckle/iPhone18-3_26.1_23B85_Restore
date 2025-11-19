@interface UIGestureGraphElement
- (BOOL)hasProperties:(id)a3;
- (UIGestureGraphElement)initWithLabel:(id)a3;
- (id)description;
- (void)setProperties:(id)a3;
- (void)setProperty:(id)a3 forKey:(id)a4;
@end

@implementation UIGestureGraphElement

- (UIGestureGraphElement)initWithLabel:(id)a3
{
  if (!a3)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"UIGestureGraphElement.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"label"}];
  }

  v11.receiver = self;
  v11.super_class = UIGestureGraphElement;
  v5 = [(UIGestureGraphElement *)&v11 init];
  if (v5)
  {
    v6 = [a3 copy];
    label = v5->_label;
    v5->_label = v6;
  }

  return v5;
}

- (BOOL)hasProperties:(id)a3
{
  v5 = [a3 count];
  if (v5 <= [(NSMutableDictionary *)self->_properties count])
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 1;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __39__UIGestureGraphElement_hasProperties___block_invoke;
    v8[3] = &unk_1E70FEC78;
    v8[4] = self;
    v8[5] = &v9;
    [a3 enumerateKeysAndObjectsUsingBlock:v8];
    v6 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void __39__UIGestureGraphElement_hasProperties___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:a2];
  LOBYTE(a3) = [v7 isEqual:a3];

  if ((a3 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (void)setProperty:(id)a3 forKey:(id)a4
{
  properties = self->_properties;
  if (!properties)
  {
    v8 = objc_opt_new();
    v9 = self->_properties;
    self->_properties = v8;

    properties = self->_properties;
  }

  [(NSMutableDictionary *)properties setObject:a3 forKey:a4];
}

- (void)setProperties:(id)a3
{
  properties = self->_properties;
  if (!properties)
  {
    v6 = objc_opt_new();
    v7 = self->_properties;
    self->_properties = v6;

    properties = self->_properties;
  }

  [(NSMutableDictionary *)properties setDictionary:a3];
}

- (id)description
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] string];
  [v3 appendString:@"{"];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(NSMutableDictionary *)self->_properties keyEnumerator];
  v5 = [v4 allObjects];

  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [(UIGestureGraphElement *)self propertyForKey:v10];
        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
          }

          else
          {
            if (objc_opt_respondsToSelector())
            {
              [v11 stringValue];
            }

            else
            {
              [v11 description];
            }
            v12 = ;
          }

          v13 = v12;
          [v3 appendFormat:@"%@:'%@'; ", v10, v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  if ([v3 length] >= 2)
  {
    [v3 deleteCharactersInRange:{objc_msgSend(v3, "length") - 2, 2}];
  }

  [v3 appendString:@"}"];
  v14 = MEMORY[0x1E696AEC0];
  v15 = [(UIGestureGraphElement *)self label];
  v16 = [v14 stringWithFormat:@"(%@ %@)", v15, v3];

  return v16;
}

@end