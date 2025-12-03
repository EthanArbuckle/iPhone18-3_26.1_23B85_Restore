@interface GPBOneofDescriptor
- (GPBOneofDescriptor)initWithName:(const char *)name fields:(id)fields;
- (id)fieldWithName:(id)name;
- (id)fieldWithNumber:(unsigned int)number;
- (void)dealloc;
@end

@implementation GPBOneofDescriptor

- (GPBOneofDescriptor)initWithName:(const char *)name fields:(id)fields
{
  v19.receiver = self;
  v19.super_class = GPBOneofDescriptor;
  v6 = [(GPBOneofDescriptor *)&v19 init];
  v7 = v6;
  if (v6)
  {
    v6->name_ = name;
    v6->fields_ = fields;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [fields countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(fields);
          }

          *(*(*(&v15 + 1) + 8 * i) + 16) = v7;
        }

        v9 = [fields countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v9);
    }

    v12 = sub_10030C5FC(0, name, "OneOfCase", 0);
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v7->caseSel_ = v13;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GPBOneofDescriptor;
  [(GPBOneofDescriptor *)&v3 dealloc];
}

- (id)fieldWithNumber:(unsigned int)number
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  fields = self->fields_;
  result = [(NSArray *)fields countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v10;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v10 != v7)
      {
        objc_enumerationMutation(fields);
      }

      result = *(*(&v9 + 1) + 8 * v8);
      if (*(*(result + 1) + 16) == number)
      {
        break;
      }

      if (v6 == ++v8)
      {
        result = [(NSArray *)fields countByEnumeratingWithState:&v9 objects:v13 count:16];
        v6 = result;
        if (result)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

- (id)fieldWithName:(id)name
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  fields = self->fields_;
  v5 = [(NSArray *)fields countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(fields);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "name")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)fields countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

@end