@interface TTKSimpleKeyboardPlane
+ (float)keyplaneHeightForKeys:(id)keys;
+ (float)keyplaneWidthForKeys:(id)keys;
- (TTKSimpleKeyboardPlane)initWithJsonDictionary:(id)dictionary;
- (TTKSimpleKeyboardPlane)initWithName:(id)name keys:(id)keys;
- (TTKSimpleKeyboardPlane)initWithTIKeyboardLayout:(id)layout;
- (float)keyboardWidth;
- (id)keyboardOrientation;
- (id)toJsonDictionary;
@end

@implementation TTKSimpleKeyboardPlane

- (id)keyboardOrientation
{
  v3 = objc_opt_class();
  keys = [(TTKSimpleKeyboardPlane *)self keys];
  [v3 keyplaneWidthForKeys:keys];
  v6 = v5;

  v7 = objc_opt_class();
  keys2 = [(TTKSimpleKeyboardPlane *)self keys];
  [v7 keyplaneHeightForKeys:keys2];
  v10 = v9;

  v11 = 0;
  result = @"Portrait";
  while (1)
  {
    v13 = flt_26D4EC064[v11];
    v14 = v13 + -2.0;
    v15 = v13 + 2.0;
    if (v14 < v6 && v6 < v15)
    {
      break;
    }

    if (++v11 == 7)
    {
      return result;
    }
  }

  v17 = v11 == 4;
  v19 = (v6 / v10) > 3.0 && v10 > 0.0;
  if (!v19 || !v17)
  {
    return @"Landscape";
  }

  return result;
}

- (float)keyboardWidth
{
  v3 = objc_opt_class();
  keys = [(TTKSimpleKeyboardPlane *)self keys];
  [v3 keyplaneWidthForKeys:keys];
  v6 = v5;

  if (v6 > 317.0 && v6 < 323.0)
  {
    return 320.0;
  }

  v8 = -1;
  v9 = &dword_26D4EC038;
  while (v8 != 10)
  {
    v10 = *v9++;
    result = v10;
    v11 = v10 + 3.0;
    ++v8;
    if ((v10 + -3.0) < v6 && v6 < v11)
    {
      if (v8 < 0xB)
      {
        return result;
      }

      return roundf(v6);
    }
  }

  return roundf(v6);
}

- (id)toJsonDictionary
{
  v17 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:self->_name forKeyedSubscript:@"name"];
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_keys;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        toJsonDictionary = [*(*(&v12 + 1) + 8 * i) toJsonDictionary];
        [array addObject:toJsonDictionary];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [dictionary setObject:array forKeyedSubscript:@"keys"];

  return dictionary;
}

- (TTKSimpleKeyboardPlane)initWithJsonDictionary:(id)dictionary
{
  v22 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = TTKSimpleKeyboardPlane;
  v5 = [(TTKSimpleKeyboardPlane *)&v20 init];
  array = [MEMORY[0x277CBEB18] array];
  if (v5)
  {
    v7 = [dictionaryCopy objectForKey:@"name"];
    name = v5->_name;
    v5->_name = v7;

    v9 = [dictionaryCopy objectForKey:@"keys"];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [[TTKSimpleKey alloc] initWithJsonDictionary:*(*(&v16 + 1) + 8 * v13)];
          [array addObject:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v11);
    }

    objc_storeStrong(&v5->_keys, array);
  }

  return v5;
}

- (TTKSimpleKeyboardPlane)initWithName:(id)name keys:(id)keys
{
  nameCopy = name;
  keysCopy = keys;
  v12.receiver = self;
  v12.super_class = TTKSimpleKeyboardPlane;
  v9 = [(TTKSimpleKeyboardPlane *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_keys, keys);
  }

  return v10;
}

- (TTKSimpleKeyboardPlane)initWithTIKeyboardLayout:(id)layout
{
  layoutCopy = layout;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__718;
  v23 = __Block_byref_object_dispose__719;
  array = [MEMORY[0x277CBEB18] array];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __51__TTKSimpleKeyboardPlane_initWithTIKeyboardLayout___block_invoke;
  v18[3] = &unk_279DA06B8;
  v18[4] = &v19;
  [layoutCopy enumerateKeysUsingBlock:v18];
  v17.receiver = self;
  v17.super_class = TTKSimpleKeyboardPlane;
  v5 = [(TTKSimpleKeyboardPlane *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_keys, v20[5]);
    v7 = MEMORY[0x277CCACA8];
    keyboardOrientation = [(TTKSimpleKeyboardPlane *)v6 keyboardOrientation];
    v9 = MEMORY[0x277CCABB0];
    [objc_opt_class() keyplaneWidthForKeys:v6->_keys];
    v10 = [v9 numberWithFloat:?];
    v11 = MEMORY[0x277CCABB0];
    [objc_opt_class() keyplaneHeightForKeys:v6->_keys];
    v12 = [v11 numberWithFloat:?];
    v13 = [v7 stringWithFormat:@"%@_%@_%@", keyboardOrientation, v10, v12];
    name = v6->_name;
    v6->_name = v13;
  }

  v15 = v6;
  _Block_object_dispose(&v19, 8);

  return v15;
}

void __51__TTKSimpleKeyboardPlane_initWithTIKeyboardLayout___block_invoke(uint64_t a1, uint64_t a2, __int16 a3, double a4, double a5, double a6, double a7)
{
  if (a2)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
    v13 = [[TTKSimpleKey alloc] initWithString:v14 frame:a3 keyCode:a4, a5, a6, a7];
    if (v13)
    {
      [*(*(*(a1 + 32) + 8) + 40) addObject:v13];
    }
  }
}

+ (float)keyplaneHeightForKeys:(id)keys
{
  v23 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  x = *MEMORY[0x277CBF3A0];
  y = *(MEMORY[0x277CBF3A0] + 8);
  width = *(MEMORY[0x277CBF3A0] + 16);
  height = *(MEMORY[0x277CBF3A0] + 24);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [keysCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(keysCopy);
        }

        [*(*(&v18 + 1) + 8 * v11) frame];
        v27.origin.x = v12;
        v27.origin.y = v13;
        v27.size.width = v14;
        v27.size.height = v15;
        v24.origin.x = x;
        v24.origin.y = y;
        v24.size.width = width;
        v24.size.height = height;
        v25 = CGRectUnion(v24, v27);
        x = v25.origin.x;
        y = v25.origin.y;
        width = v25.size.width;
        height = v25.size.height;
        ++v11;
      }

      while (v9 != v11);
      v9 = [keysCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v16 = CGRectGetHeight(v26);

  return v16;
}

+ (float)keyplaneWidthForKeys:(id)keys
{
  v23 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  x = *MEMORY[0x277CBF3A0];
  y = *(MEMORY[0x277CBF3A0] + 8);
  width = *(MEMORY[0x277CBF3A0] + 16);
  height = *(MEMORY[0x277CBF3A0] + 24);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [keysCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(keysCopy);
        }

        [*(*(&v18 + 1) + 8 * v11) frame];
        v27.origin.x = v12;
        v27.origin.y = v13;
        v27.size.width = v14;
        v27.size.height = v15;
        v24.origin.x = x;
        v24.origin.y = y;
        v24.size.width = width;
        v24.size.height = height;
        v25 = CGRectUnion(v24, v27);
        x = v25.origin.x;
        y = v25.origin.y;
        width = v25.size.width;
        height = v25.size.height;
        ++v11;
      }

      while (v9 != v11);
      v9 = [keysCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v16 = CGRectGetWidth(v26);

  return v16;
}

@end