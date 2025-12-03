@interface VUIAppDocumentPurchaseEventDescriptor
- (BOOL)isEqual:(id)equal;
- (VUIAppDocumentPurchaseEventDescriptor)initWithCanonicalID:(id)d;
- (VUIAppDocumentPurchaseEventDescriptor)initWithEventType:(unint64_t)type;
- (id)description;
- (unint64_t)hash;
@end

@implementation VUIAppDocumentPurchaseEventDescriptor

- (VUIAppDocumentPurchaseEventDescriptor)initWithEventType:(unint64_t)type
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The %@ initializer is not available.", v6}];

  return 0;
}

- (VUIAppDocumentPurchaseEventDescriptor)initWithCanonicalID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = VUIAppDocumentPurchaseEventDescriptor;
  v5 = [(VUIAppDocumentUpdateEventDescriptor *)&v9 initWithEventType:4];
  if (v5)
  {
    v6 = [dCopy copy];
    canonicalID = v5->_canonicalID;
    v5->_canonicalID = v6;
  }

  return v5;
}

- (unint64_t)hash
{
  type = [(VUIAppDocumentUpdateEventDescriptor *)self type];
  canonicalID = [(VUIAppDocumentPurchaseEventDescriptor *)self canonicalID];
  v5 = [canonicalID hash];

  return v5 ^ type;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    type = [(VUIAppDocumentUpdateEventDescriptor *)self type];
    if (type == [(VUIAppDocumentUpdateEventDescriptor *)v6 type])
    {
      canonicalID = [(VUIAppDocumentPurchaseEventDescriptor *)self canonicalID];
      canonicalID2 = [(VUIAppDocumentPurchaseEventDescriptor *)v6 canonicalID];
      v10 = canonicalID;
      v11 = canonicalID2;
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
  canonicalID = [(VUIAppDocumentPurchaseEventDescriptor *)self canonicalID];
  v7 = [v5 stringWithFormat:@"%@=%@", @"canonicalID", canonicalID];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [v3 componentsJoinedByString:{@", "}];
  v10 = [v8 stringWithFormat:@"<%@>", v9];

  return v10;
}

@end