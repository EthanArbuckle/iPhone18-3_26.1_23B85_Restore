@interface HVSearchableItemSerializedAttributes
+ (id)serializedAttributesWithAttributeSetData:(id)a3 attributeSetCoder:(id)a4 htmlContentData:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSerializedAttributes:(id)a3;
- (HVSearchableItemSerializedAttributes)initWithAttributeSetData:(id)a3 attributeSetCoder:(id)a4 htmlContentData:(id)a5;
- (unint64_t)hash;
@end

@implementation HVSearchableItemSerializedAttributes

- (unint64_t)hash
{
  v3 = [(NSData *)self->_attributeSetData hash];
  v4 = [(CSCoder *)self->_attributeSetCoder hash]- v3 + 32 * v3;
  return [(NSData *)self->_htmlContentData hash]- v4 + 32 * v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(HVSearchableItemSerializedAttributes *)self isEqualToSerializedAttributes:v5];
  }

  return v6;
}

- (BOOL)isEqualToSerializedAttributes:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_11;
  }

  v6 = self->_attributeSetData == 0;
  v7 = [v4 attributeSetData];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_11;
  }

  attributeSetData = self->_attributeSetData;
  if (attributeSetData)
  {
    v10 = [v5 attributeSetData];
    v11 = [(NSData *)attributeSetData isEqual:v10];

    if (!v11)
    {
      goto LABEL_11;
    }
  }

  v12 = self->_attributeSetCoder == 0;
  v13 = [v5 attributeSetCoder];
  v14 = v13 != 0;

  if (v12 == v14)
  {
    goto LABEL_11;
  }

  attributeSetCoder = self->_attributeSetCoder;
  if (attributeSetCoder)
  {
    v16 = [v5 attributeSetCoder];
    v17 = [(CSCoder *)attributeSetCoder isEqual:v16];

    if (!v17)
    {
      goto LABEL_11;
    }
  }

  v18 = self->_htmlContentData == 0;
  v19 = [v5 htmlContentData];
  v20 = v19 != 0;

  if (v18 == v20)
  {
LABEL_11:
    v23 = 0;
  }

  else
  {
    htmlContentData = self->_htmlContentData;
    if (htmlContentData)
    {
      v22 = [v5 htmlContentData];
      v23 = [(NSData *)htmlContentData isEqual:v22];
    }

    else
    {
      v23 = 1;
    }
  }

  return v23 & 1;
}

- (HVSearchableItemSerializedAttributes)initWithAttributeSetData:(id)a3 attributeSetCoder:(id)a4 htmlContentData:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HVSearchableItemSerializedAttributes.m" lineNumber:12 description:{@"Invalid parameter not satisfying: %@", @"attributeSetData"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x277CCA890] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"HVSearchableItemSerializedAttributes.m" lineNumber:13 description:{@"Invalid parameter not satisfying: %@", @"attributeSetCoder"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = HVSearchableItemSerializedAttributes;
  v13 = [(HVSearchableItemSerializedAttributes *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_attributeSetData, a3);
    objc_storeStrong(&v14->_attributeSetCoder, a4);
    objc_storeStrong(&v14->_htmlContentData, a5);
  }

  return v14;
}

+ (id)serializedAttributesWithAttributeSetData:(id)a3 attributeSetCoder:(id)a4 htmlContentData:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithAttributeSetData:v10 attributeSetCoder:v9 htmlContentData:v8];

  return v11;
}

@end