@interface HVSearchableItemSerializedAttributes
+ (id)serializedAttributesWithAttributeSetData:(id)data attributeSetCoder:(id)coder htmlContentData:(id)contentData;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSerializedAttributes:(id)attributes;
- (HVSearchableItemSerializedAttributes)initWithAttributeSetData:(id)data attributeSetCoder:(id)coder htmlContentData:(id)contentData;
- (unint64_t)hash;
@end

@implementation HVSearchableItemSerializedAttributes

- (unint64_t)hash
{
  v3 = [(NSData *)self->_attributeSetData hash];
  v4 = [(CSCoder *)self->_attributeSetCoder hash]- v3 + 32 * v3;
  return [(NSData *)self->_htmlContentData hash]- v4 + 32 * v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(HVSearchableItemSerializedAttributes *)self isEqualToSerializedAttributes:v5];
  }

  return v6;
}

- (BOOL)isEqualToSerializedAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = attributesCopy;
  if (!attributesCopy)
  {
    goto LABEL_11;
  }

  v6 = self->_attributeSetData == 0;
  attributeSetData = [attributesCopy attributeSetData];
  v8 = attributeSetData != 0;

  if (v6 == v8)
  {
    goto LABEL_11;
  }

  attributeSetData = self->_attributeSetData;
  if (attributeSetData)
  {
    attributeSetData2 = [v5 attributeSetData];
    v11 = [(NSData *)attributeSetData isEqual:attributeSetData2];

    if (!v11)
    {
      goto LABEL_11;
    }
  }

  v12 = self->_attributeSetCoder == 0;
  attributeSetCoder = [v5 attributeSetCoder];
  v14 = attributeSetCoder != 0;

  if (v12 == v14)
  {
    goto LABEL_11;
  }

  attributeSetCoder = self->_attributeSetCoder;
  if (attributeSetCoder)
  {
    attributeSetCoder2 = [v5 attributeSetCoder];
    v17 = [(CSCoder *)attributeSetCoder isEqual:attributeSetCoder2];

    if (!v17)
    {
      goto LABEL_11;
    }
  }

  v18 = self->_htmlContentData == 0;
  htmlContentData = [v5 htmlContentData];
  v20 = htmlContentData != 0;

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
      htmlContentData2 = [v5 htmlContentData];
      v23 = [(NSData *)htmlContentData isEqual:htmlContentData2];
    }

    else
    {
      v23 = 1;
    }
  }

  return v23 & 1;
}

- (HVSearchableItemSerializedAttributes)initWithAttributeSetData:(id)data attributeSetCoder:(id)coder htmlContentData:(id)contentData
{
  dataCopy = data;
  coderCopy = coder;
  contentDataCopy = contentData;
  if (dataCopy)
  {
    if (coderCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HVSearchableItemSerializedAttributes.m" lineNumber:12 description:{@"Invalid parameter not satisfying: %@", @"attributeSetData"}];

    if (coderCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HVSearchableItemSerializedAttributes.m" lineNumber:13 description:{@"Invalid parameter not satisfying: %@", @"attributeSetCoder"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = HVSearchableItemSerializedAttributes;
  v13 = [(HVSearchableItemSerializedAttributes *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_attributeSetData, data);
    objc_storeStrong(&v14->_attributeSetCoder, coder);
    objc_storeStrong(&v14->_htmlContentData, contentData);
  }

  return v14;
}

+ (id)serializedAttributesWithAttributeSetData:(id)data attributeSetCoder:(id)coder htmlContentData:(id)contentData
{
  contentDataCopy = contentData;
  coderCopy = coder;
  dataCopy = data;
  v11 = [[self alloc] initWithAttributeSetData:dataCopy attributeSetCoder:coderCopy htmlContentData:contentDataCopy];

  return v11;
}

@end