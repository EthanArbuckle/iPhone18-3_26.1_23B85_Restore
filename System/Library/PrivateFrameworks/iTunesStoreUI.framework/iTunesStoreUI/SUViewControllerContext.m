@interface SUViewControllerContext
- (SUViewControllerContext)initWithCoder:(id)a3;
- (id)_typeStringForType:(int64_t)a3;
- (id)copyViewController;
- (id)description;
- (int64_t)_typeForTypeString:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setValue:(id)a3 forMetadataKey:(id)a4;
@end

@implementation SUViewControllerContext

- (SUViewControllerContext)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [(SUViewControllerContext *)a2 initWithCoder:?];
  }

  v6 = [(SUViewControllerContext *)self init];
  if (v6)
  {
    v19 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v17 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v6->_metadata = [a3 decodeObjectOfClasses:objc_msgSend(v19 forKey:{"setWithObjects:", v18, v17, v7, v8, v9, v10, v11, v12, v13, v14, objc_opt_class(), 0), @"metadata"}];
    v6->_sectionIdentifier = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"section"];
    if ([a3 containsValueForKey:@"typeString"])
    {
      v15 = -[SUViewControllerContext _typeForTypeString:](v6, "_typeForTypeString:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"typeString"]);
    }

    else
    {
      v15 = [a3 decodeIntegerForKey:@"type"];
    }

    v6->_type = v15;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [(SUViewControllerContext *)a2 encodeWithCoder:?];
  }

  [a3 encodeObject:self->_metadata forKey:@"metadata"];
  [a3 encodeObject:self->_sectionIdentifier forKey:@"section"];
  [a3 encodeInteger:self->_type forKey:@"type"];
  v6 = [(SUViewControllerContext *)self _typeStringForType:self->_type];

  [a3 encodeObject:v6 forKey:@"typeString"];
}

- (void)dealloc
{
  self->_metadata = 0;

  self->_sectionIdentifier = 0;
  v3.receiver = self;
  v3.super_class = SUViewControllerContext;
  [(SUViewControllerContext *)&v3 dealloc];
}

- (id)copyViewController
{
  v3 = &off_1E8164B98;
  v4 = 6;
  while (*(v3 - 1) != self->_type)
  {
    v3 += 2;
    if (!--v4)
    {
      return 0;
    }
  }

  v5 = NSClassFromString(*v3);
  if (v5)
  {
    v6 = objc_alloc_init(v5);
    [v6 restoreArchivableContext:self];
    return v6;
  }

  return 0;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = SUViewControllerContext;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %ld, %@", -[SUViewControllerContext description](&v3, sel_description), -[SUViewControllerContext type](self, "type"), -[SUViewControllerContext sectionIdentifier](self, "sectionIdentifier")];
}

- (void)setValue:(id)a3 forMetadataKey:(id)a4
{
  metadata = self->_metadata;
  if (a3)
  {
    if (!metadata)
    {
      metadata = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_metadata = metadata;
    }

    [(NSMutableDictionary *)metadata setObject:a3 forKey:a4];
  }

  else
  {

    [(NSMutableDictionary *)metadata removeObjectForKey:a4];
  }
}

- (int64_t)_typeForTypeString:(id)a3
{
  if ([a3 isEqualToString:@"storepage"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"overlay"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"overlay-bg"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"split-view"])
  {
    return 5;
  }

  if ([a3 isEqualToString:@"navigation"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"searchpage"])
  {
    return 6;
  }

  return 0;
}

- (id)_typeStringForType:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1E8164BF0[a3 - 1];
  }
}

- (uint64_t)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"SUViewControllerContext.m" lineNumber:50 description:@"Must use keyed-coding"];
}

- (uint64_t)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"SUViewControllerContext.m" lineNumber:76 description:@"Must use keyed-coding"];
}

@end