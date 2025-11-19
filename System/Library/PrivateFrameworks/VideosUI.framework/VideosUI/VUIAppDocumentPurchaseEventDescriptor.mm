@interface VUIAppDocumentPurchaseEventDescriptor
- (BOOL)isEqual:(id)a3;
- (VUIAppDocumentPurchaseEventDescriptor)initWithCanonicalID:(id)a3;
- (VUIAppDocumentPurchaseEventDescriptor)initWithEventType:(unint64_t)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation VUIAppDocumentPurchaseEventDescriptor

- (VUIAppDocumentPurchaseEventDescriptor)initWithEventType:(unint64_t)a3
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The %@ initializer is not available.", v6}];

  return 0;
}

- (VUIAppDocumentPurchaseEventDescriptor)initWithCanonicalID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VUIAppDocumentPurchaseEventDescriptor;
  v5 = [(VUIAppDocumentUpdateEventDescriptor *)&v9 initWithEventType:4];
  if (v5)
  {
    v6 = [v4 copy];
    canonicalID = v5->_canonicalID;
    v5->_canonicalID = v6;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(VUIAppDocumentUpdateEventDescriptor *)self type];
  v4 = [(VUIAppDocumentPurchaseEventDescriptor *)self canonicalID];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v13 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(VUIAppDocumentUpdateEventDescriptor *)self type];
    if (v7 == [(VUIAppDocumentUpdateEventDescriptor *)v6 type])
    {
      v8 = [(VUIAppDocumentPurchaseEventDescriptor *)self canonicalID];
      v9 = [(VUIAppDocumentPurchaseEventDescriptor *)v6 canonicalID];
      v10 = v8;
      v11 = v9;
      v12 = v11;
      if (v10 == v11)
      {
        v13 = 1;
      }

      else
      {
        v13 = 0;
        if (v10 && v11)
        {
          v13 = [v10 isEqual:v11];
        }
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12.receiver = self;
  v12.super_class = VUIAppDocumentPurchaseEventDescriptor;
  v4 = [(VUIAppDocumentUpdateEventDescriptor *)&v12 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(VUIAppDocumentPurchaseEventDescriptor *)self canonicalID];
  v7 = [v5 stringWithFormat:@"%@=%@", @"canonicalID", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [v3 componentsJoinedByString:{@", "}];
  v10 = [v8 stringWithFormat:@"<%@>", v9];

  return v10;
}

@end