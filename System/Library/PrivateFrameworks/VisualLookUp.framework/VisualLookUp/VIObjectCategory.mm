@interface VIObjectCategory
- (BOOL)isEqual:(id)equal;
- (VIObjectCategory)initWithCoder:(id)coder;
- (VIObjectCategory)initWithKnowledgeGraphID:(id)d labelDebugDescription:(id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VIObjectCategory

- (VIObjectCategory)initWithKnowledgeGraphID:(id)d labelDebugDescription:(id)description
{
  dCopy = d;
  descriptionCopy = description;
  v14.receiver = self;
  v14.super_class = VIObjectCategory;
  v8 = [(VIObjectCategory *)&v14 init];
  if (v8)
  {
    v9 = [dCopy copy];
    knowledgeGraphID = v8->_knowledgeGraphID;
    v8->_knowledgeGraphID = v9;

    v11 = [descriptionCopy copy];
    labelDebugDescription = v8->_labelDebugDescription;
    v8->_labelDebugDescription = v11;
  }

  return v8;
}

- (VIObjectCategory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(VIObjectCategory *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"knowledgeGraphID"];
    knowledgeGraphID = v5->_knowledgeGraphID;
    v5->_knowledgeGraphID = v6;

    v8 = [coderCopy decodeObjectForKey:@"labelDebugDescription"];
    labelDebugDescription = v5->_labelDebugDescription;
    v5->_labelDebugDescription = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  knowledgeGraphID = self->_knowledgeGraphID;
  coderCopy = coder;
  [coderCopy encodeObject:knowledgeGraphID forKey:@"knowledgeGraphID"];
  [coderCopy encodeObject:self->_labelDebugDescription forKey:@"labelDebugDescription"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    IsEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    knowledgeGraphID = self->_knowledgeGraphID;
    knowledgeGraphID = [(VIObjectCategory *)v6 knowledgeGraphID];
    if (VIObjectIsEqual(knowledgeGraphID, knowledgeGraphID))
    {
      labelDebugDescription = self->_labelDebugDescription;
      labelDebugDescription = [(VIObjectCategory *)v6 labelDebugDescription];
      IsEqual = VIObjectIsEqual(labelDebugDescription, labelDebugDescription);
    }

    else
    {
      IsEqual = 0;
    }
  }

  return IsEqual;
}

@end