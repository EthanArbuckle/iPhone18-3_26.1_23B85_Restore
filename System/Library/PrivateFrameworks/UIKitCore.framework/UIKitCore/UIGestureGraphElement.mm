@interface UIGestureGraphElement
- (BOOL)hasProperties:(id)properties;
- (UIGestureGraphElement)initWithLabel:(id)label;
- (id)description;
- (void)setProperties:(id)properties;
- (void)setProperty:(id)property forKey:(id)key;
@end

@implementation UIGestureGraphElement

- (UIGestureGraphElement)initWithLabel:(id)label
{
  if (!label)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIGestureGraphElement.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"label"}];
  }

  v11.receiver = self;
  v11.super_class = UIGestureGraphElement;
  v5 = [(UIGestureGraphElement *)&v11 init];
  if (v5)
  {
    v6 = [label copy];
    label = v5->_label;
    v5->_label = v6;
  }

  return v5;
}

- (BOOL)hasProperties:(id)properties
{
  v5 = [properties count];
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
    [properties enumerateKeysAndObjectsUsingBlock:v8];
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

- (void)setProperty:(id)property forKey:(id)key
{
  properties = self->_properties;
  if (!properties)
  {
    v8 = objc_opt_new();
    v9 = self->_properties;
    self->_properties = v8;

    properties = self->_properties;
  }

  [(NSMutableDictionary *)properties setObject:property forKey:key];
}

- (void)setProperties:(id)properties
{
  properties = self->_properties;
  if (!properties)
  {
    v6 = objc_opt_new();
    v7 = self->_properties;
    self->_properties = v6;

    properties = self->_properties;
  }

  [(NSMutableDictionary *)properties setDictionary:properties];
}

- (id)description
{
  v23 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  [string appendString:@"{"];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  keyEnumerator = [(NSMutableDictionary *)self->_properties keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  v6 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(allObjects);
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
          [string appendFormat:@"%@:'%@'; ", v10, v12];
        }
      }

      v7 = [allObjects countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  if ([string length] >= 2)
  {
    [string deleteCharactersInRange:{objc_msgSend(string, "length") - 2, 2}];
  }

  [string appendString:@"}"];
  v14 = MEMORY[0x1E696AEC0];
  label = [(UIGestureGraphElement *)self label];
  v16 = [v14 stringWithFormat:@"(%@ %@)", label, string];

  return v16;
}

@end