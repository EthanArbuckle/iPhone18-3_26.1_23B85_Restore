@interface _UIStatusBarData
+ (NSSet)entryKeys;
+ (_UIStatusBarData)staticDisplayData;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (NSSet)existingEntryKeys;
- (_UIStatusBarData)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataByApplyingOverlay:(id)a3;
- (id)dataByApplyingUpdate:(id)a3 keys:(id)a4;
- (id)description;
- (id)updateFromData:(id)a3;
- (unint64_t)hash;
- (void)_applyUpdate:(id)a3 keys:(id)a4;
- (void)applyUpdate:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)makeUpdateFromData:(id)a3;
@end

@implementation _UIStatusBarData

+ (_UIStatusBarData)staticDisplayData
{
  if (qword_1ED499458 != -1)
  {
    dispatch_once(&qword_1ED499458, &__block_literal_global_531);
  }

  v3 = _MergedGlobals_1_25;

  return v3;
}

+ (NSSet)entryKeys
{
  if (qword_1ED499468 != -1)
  {
    dispatch_once(&qword_1ED499468, &__block_literal_global_547);
  }

  v3 = qword_1ED499460;

  return v3;
}

- (unint64_t)hash
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() hash];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [objc_opt_class() entryKeys];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(_UIStatusBarData *)self valueForKey:*(*(&v12 + 1) + 8 * v8)];
        v10 = v9;
        if (v9)
        {
          v3 ^= [v9 hash];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(objc_opt_class());
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [objc_opt_class() entryKeys];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [(_UIStatusBarData *)self valueForKey:v10];
        if (v11)
        {
          [v4 setValue:v11 forKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [objc_opt_class() entryKeys];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [(_UIStatusBarData *)self valueForKey:v10];
        if (v11)
        {
          [v4 encodeObject:v11 forKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (_UIStatusBarData)initWithCoder:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = _UIStatusBarData;
  v5 = [(_UIStatusBarData *)&v18 init];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [objc_opt_class() entryKeys];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:v11];
        if (v12)
        {
          [(_UIStatusBarData *)v5 setValue:v12 forKey:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = v4;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = [objc_opt_class() entryKeys];
    v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v21 = v4;
      v10 = *v24;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          v13 = [(_UIStatusBarData *)self valueForKey:v12, v21];
          v14 = [v7 valueForKey:v12];
          if (([v13 isEnabled] & 1) != 0 || objc_msgSend(v14, "isEnabled"))
          {
            v15 = v13;
            v16 = v14;
            v17 = v16;
            if (v15 == v16)
            {
            }

            else
            {
              if (v15)
              {
                v18 = v16 == 0;
              }

              else
              {
                v18 = 1;
              }

              if (v18)
              {

LABEL_23:
                v6 = 0;
                goto LABEL_24;
              }

              v19 = [v15 isEqual:v16];

              if (!v19)
              {
                goto LABEL_23;
              }
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      v6 = 1;
LABEL_24:
      v4 = v21;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEmpty
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [objc_opt_class() entryKeys];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(_UIStatusBarData *)self valueForKey:*(*(&v11 + 1) + 8 * i)];

        if (v8)
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

- (NSSet)existingEntryKeys
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [objc_opt_class() entryKeys];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(_UIStatusBarData *)self valueForKey:v9];
        if (v10)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)description
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [UIDescriptionBuilder descriptionBuilderWithObject:self];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [objc_opt_class() entryKeys];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(_UIStatusBarData *)self valueForKey:v9];
        if (v10)
        {
          v11 = [v3 appendObject:v10 withName:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [v3 string];

  return v12;
}

- (void)_applyUpdate:(id)a3 keys:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        v13 = [v6 valueForKey:v12];
        if (v13)
        {
          [(_UIStatusBarData *)self setValue:v13 forKey:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)applyUpdate:(id)a3
{
  v4 = a3;
  v5 = +[_UIStatusBarData entryKeys];
  [(_UIStatusBarData *)self _applyUpdate:v4 keys:v5];
}

- (id)dataByApplyingOverlay:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  v6 = v5;
  if (v4 && v4 != v5)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [(_UIStatusBarData *)v4 existingEntryKeys];
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      v11 = v6;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [(_UIStatusBarData *)v6 valueForKey:v13];

          if (v14)
          {
            if (v11 == v6)
            {
              v15 = [(_UIStatusBarData *)v6 copy];

              v11 = v15;
            }

            v16 = [(_UIStatusBarData *)v4 valueForKey:v13];
            [(_UIStatusBarData *)v11 setValue:v16 forKey:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = v6;
    }

    v6 = v11;
  }

  return v6;
}

- (id)dataByApplyingUpdate:(id)a3 keys:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(objc_opt_class());
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [v6 valueForKey:{v14, v18}];
        if (!v15)
        {
          v15 = [(_UIStatusBarData *)self valueForKey:v14];
          if (!v15)
          {
            continue;
          }
        }

        v16 = v15;
        [v8 setValue:v15 forKey:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)updateFromData:(id)a3
{
  v4 = a3;
  v5 = [(_UIStatusBarData *)self copy];
  [v5 makeUpdateFromData:v4];

  return v5;
}

- (void)makeUpdateFromData:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = +[_UIStatusBarData entryKeys];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [v4 valueForKey:v10];
          v12 = [(_UIStatusBarData *)self valueForKey:v10];
          v13 = v12;
          if (v11)
          {
            v14 = v12 == 0;
          }

          else
          {
            v14 = 1;
          }

          if (!v14 && [v12 isEqual:v11])
          {
            [(_UIStatusBarData *)self setValue:0 forKey:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }
}

@end