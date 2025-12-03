@interface GPBDescriptor
+ (id)allocDescriptorForClass:(Class)class rootClass:(Class)rootClass file:(id)file fields:(void *)fields fieldCount:(unsigned int)count storageSize:(unsigned int)size flags:(unsigned int)flags;
- (GPBDescriptor)containingType;
- (GPBDescriptor)initWithClass:(Class)class file:(id)file fields:(id)fields storageSize:(unsigned int)size wireFormat:(BOOL)format;
- (NSString)fullName;
- (id)fieldWithName:(id)name;
- (id)fieldWithNumber:(unsigned int)number;
- (id)oneofWithName:(id)name;
- (void)dealloc;
- (void)setupContainingMessageClassName:(const char *)name;
- (void)setupExtraTextInfo:(const char *)info;
- (void)setupMessageClassNameSuffix:(id)suffix;
@end

@implementation GPBDescriptor

+ (id)allocDescriptorForClass:(Class)class rootClass:(Class)rootClass file:(id)file fields:(void *)fields fieldCount:(unsigned int)count storageSize:(unsigned int)size flags:(unsigned int)flags
{
  LODWORD(v9) = count;
  syntax = [file syntax];
  if (v9)
  {
    v12 = syntax;
    v13 = 0;
    v9 = v9;
    v23 = v9;
    fieldsCopy = fields;
    do
    {
      if (!v13)
      {
        v13 = [[NSMutableArray alloc] initWithCapacity:v23];
      }

      if (flags)
      {
        fieldsCopy2 = fieldsCopy;
      }

      else
      {
        fieldsCopy2 = fields;
      }

      v16 = [[GPBFieldDescriptor alloc] initWithFieldDescription:fieldsCopy2 includesDefault:flags & 1 usesClassRefs:(flags >> 2) & 1 proto3OptionalKnown:(flags >> 3) & 1 syntax:v12];
      [v13 addObject:v16];

      fieldsCopy += 40;
      fields = fields + 32;
      --v9;
    }

    while (v9);
  }

  else
  {
    v13 = 0;
  }

  v17 = [[self alloc] initWithClass:class file:file fields:v13 storageSize:size wireFormat:(flags >> 1) & 1];

  return v17;
}

- (GPBDescriptor)initWithClass:(Class)class file:(id)file fields:(id)fields storageSize:(unsigned int)size wireFormat:(BOOL)format
{
  v15.receiver = self;
  v15.super_class = GPBDescriptor;
  v12 = [(GPBDescriptor *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->messageClass_ = class;
    v12->file_ = file;
    v12->fields_ = fields;
    v13->storageSize_ = size;
    v13->wireFormat_ = format;
  }

  return v13;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GPBDescriptor;
  [(GPBDescriptor *)&v3 dealloc];
}

- (void)setupExtraTextInfo:(const char *)info
{
  if (info)
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

- (void)setupContainingMessageClassName:(const char *)name
{
  Class = objc_getClass(name);
  if (!Class)
  {
    sub_10030DDBC();
  }

  [(GPBDescriptor *)self setupContainingMessageClass:Class];
}

- (void)setupMessageClassNameSuffix:(id)suffix
{
  if ([suffix length])
  {

    objc_setAssociatedObject(self, &unk_1003BFFA7, suffix, 1);
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
  file = [(GPBDescriptor *)self file];
  objcPrefix = [(GPBFileDescriptor *)file objcPrefix];
  if (objcPrefix && ![(NSString *)v4 hasPrefix:objcPrefix])
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"GPBDescriptor.m" description:265, @"Class didn't have correct prefix? (%@ - %@)", v4, objcPrefix];
    return 0;
  }

  containingType = [(GPBDescriptor *)self containingType];
  v8 = containingType;
  if (!containingType)
  {
    goto LABEL_8;
  }

  v9 = NSStringFromClass([(GPBDescriptor *)containingType messageClass]);
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

  objcPrefix = [(NSString *)v9 stringByAppendingString:@"_"];
  if (![(NSString *)v4 hasPrefix:objcPrefix])
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"GPBDescriptor.m" description:289, @"Class didn't have the correct parent name prefix? (%@ - %@)", objcPrefix, v4];
    return 0;
  }

LABEL_8:
  v12 = [(NSString *)v4 substringFromIndex:[(NSString *)objcPrefix length]];
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
    fullName = [(GPBDescriptor *)v8 fullName];
  }

  else
  {
    fullName = [(GPBFileDescriptor *)file package];
  }

  v17 = fullName;
  if (![(NSString *)fullName length])
  {
    return v12;
  }

  return [NSString stringWithFormat:@"%@.%@", v17, v12];
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

- (id)oneofWithName:(id)name
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