@interface GPBDescriptor
+ (id)allocDescriptorForClass:(Class)a3 rootClass:(Class)a4 file:(id)a5 fields:(void *)a6 fieldCount:(unsigned int)a7 storageSize:(unsigned int)a8 flags:(unsigned int)a9;
- (GPBDescriptor)containingType;
- (GPBDescriptor)initWithClass:(Class)a3 file:(id)a4 fields:(id)a5 storageSize:(unsigned int)a6 wireFormat:(BOOL)a7;
- (NSString)fullName;
- (id)fieldWithName:(id)a3;
- (id)fieldWithNumber:(unsigned int)a3;
- (id)oneofWithName:(id)a3;
- (void)dealloc;
- (void)setupContainingMessageClassName:(const char *)a3;
- (void)setupExtraTextInfo:(const char *)a3;
- (void)setupMessageClassNameSuffix:(id)a3;
@end

@implementation GPBDescriptor

+ (id)allocDescriptorForClass:(Class)a3 rootClass:(Class)a4 file:(id)a5 fields:(void *)a6 fieldCount:(unsigned int)a7 storageSize:(unsigned int)a8 flags:(unsigned int)a9
{
  LODWORD(v9) = a7;
  v11 = [a5 syntax];
  if (v9)
  {
    v12 = v11;
    v13 = 0;
    v9 = v9;
    v23 = v9;
    v14 = a6;
    do
    {
      if (!v13)
      {
        v13 = [[NSMutableArray alloc] initWithCapacity:v23];
      }

      if (a9)
      {
        v15 = v14;
      }

      else
      {
        v15 = a6;
      }

      v16 = [[GPBFieldDescriptor alloc] initWithFieldDescription:v15 includesDefault:a9 & 1 usesClassRefs:(a9 >> 2) & 1 proto3OptionalKnown:(a9 >> 3) & 1 syntax:v12];
      [v13 addObject:v16];

      v14 += 40;
      a6 = a6 + 32;
      --v9;
    }

    while (v9);
  }

  else
  {
    v13 = 0;
  }

  v17 = [[a1 alloc] initWithClass:a3 file:a5 fields:v13 storageSize:a8 wireFormat:(a9 >> 1) & 1];

  return v17;
}

- (GPBDescriptor)initWithClass:(Class)a3 file:(id)a4 fields:(id)a5 storageSize:(unsigned int)a6 wireFormat:(BOOL)a7
{
  v15.receiver = self;
  v15.super_class = GPBDescriptor;
  v12 = [(GPBDescriptor *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->messageClass_ = a3;
    v12->file_ = a4;
    v12->fields_ = a5;
    v13->storageSize_ = a6;
    v13->wireFormat_ = a7;
  }

  return v13;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GPBDescriptor;
  [(GPBDescriptor *)&v3 dealloc];
}

- (void)setupExtraTextInfo:(const char *)a3
{
  if (a3)
  {
    v4 = [NSValue valueWithPointer:?];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    fields = self->fields_;
    v6 = [(NSArray *)fields countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(fields);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if ((*(v10[1] + 28) & 0x40) != 0)
          {
            objc_setAssociatedObject(v10, &unk_1003BFFA5, v4, 1);
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(NSArray *)fields countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)setupContainingMessageClassName:(const char *)a3
{
  Class = objc_getClass(a3);
  if (!Class)
  {
    sub_10030DDBC();
  }

  [(GPBDescriptor *)self setupContainingMessageClass:Class];
}

- (void)setupMessageClassNameSuffix:(id)a3
{
  if ([a3 length])
  {

    objc_setAssociatedObject(self, &unk_1003BFFA7, a3, 1);
  }
}

- (GPBDescriptor)containingType
{
  AssociatedObject = objc_getAssociatedObject(self, &unk_1003BFFA6);

  return [AssociatedObject descriptor];
}

- (NSString)fullName
{
  v4 = NSStringFromClass([(GPBDescriptor *)self messageClass]);
  v5 = [(GPBDescriptor *)self file];
  v6 = [(GPBFileDescriptor *)v5 objcPrefix];
  if (v6 && ![(NSString *)v4 hasPrefix:v6])
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"GPBDescriptor.m" description:265, @"Class didn't have correct prefix? (%@ - %@)", v4, v6];
    return 0;
  }

  v7 = [(GPBDescriptor *)self containingType];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_8;
  }

  v9 = NSStringFromClass([(GPBDescriptor *)v7 messageClass]);
  AssociatedObject = objc_getAssociatedObject(v8, &unk_1003BFFA7);
  if (AssociatedObject)
  {
    v11 = AssociatedObject;
    if (![(NSString *)v9 hasSuffix:AssociatedObject])
    {
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"GPBDescriptor.m" description:279, @"ParentMessage class didn't have correct suffix? (%@ - %@)", v4, v11];
      return 0;
    }

    v9 = -[NSString substringToIndex:](v9, "substringToIndex:", -[NSString length](v9, "length") - [v11 length]);
  }

  v6 = [(NSString *)v9 stringByAppendingString:@"_"];
  if (![(NSString *)v4 hasPrefix:v6])
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"GPBDescriptor.m" description:289, @"Class didn't have the correct parent name prefix? (%@ - %@)", v6, v4];
    return 0;
  }

LABEL_8:
  v12 = [(NSString *)v4 substringFromIndex:[(NSString *)v6 length]];
  v13 = objc_getAssociatedObject(self, &unk_1003BFFA7);
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = v13;
  if (![(NSString *)v12 hasSuffix:v13])
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"GPBDescriptor.m" description:303, @"Message class didn't have correct suffix? (%@ - %@)", v12, v14];
    return 0;
  }

  v12 = -[NSString substringToIndex:](v12, "substringToIndex:", -[NSString length](v12, "length") - [v14 length]);
LABEL_11:
  if (v8)
  {
    v15 = [(GPBDescriptor *)v8 fullName];
  }

  else
  {
    v15 = [(GPBFileDescriptor *)v5 package];
  }

  v17 = v15;
  if (![(NSString *)v15 length])
  {
    return v12;
  }

  return [NSString stringWithFormat:@"%@.%@", v17, v12];
}

- (id)fieldWithNumber:(unsigned int)a3
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
      if (*(*(result + 1) + 16) == a3)
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

- (id)fieldWithName:(id)a3
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

- (id)oneofWithName:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  oneofs = self->oneofs_;
  v5 = [(NSArray *)oneofs countByEnumeratingWithState:&v11 objects:v15 count:16];
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
      objc_enumerationMutation(oneofs);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "name")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)oneofs countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

@end