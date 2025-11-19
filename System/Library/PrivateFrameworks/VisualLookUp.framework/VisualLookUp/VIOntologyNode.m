@interface VIOntologyNode
- (BOOL)isEqual:(id)a3;
- (VIOntologyNode)initWithCoder:(id)a3;
- (VIOntologyNode)initWithKnowledgeGraphID:(id)a3 labelDebugDescription:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VIOntologyNode

- (VIOntologyNode)initWithKnowledgeGraphID:(id)a3 labelDebugDescription:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = VIOntologyNode;
  v8 = [(VIOntologyNode *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    knowledgeGraphID = v8->_knowledgeGraphID;
    v8->_knowledgeGraphID = v9;

    v11 = [v7 copy];
    labelDebugDescription = v8->_labelDebugDescription;
    v8->_labelDebugDescription = v11;
  }

  return v8;
}

- (VIOntologyNode)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(VIOntologyNode *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"knowledgeGraphID"];
    knowledgeGraphID = v5->_knowledgeGraphID;
    v5->_knowledgeGraphID = v6;

    v8 = [v4 decodeObjectForKey:@"labelDebugDescription"];
    labelDebugDescription = v5->_labelDebugDescription;
    v5->_labelDebugDescription = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  knowledgeGraphID = self->_knowledgeGraphID;
  v5 = a3;
  [v5 encodeObject:knowledgeGraphID forKey:@"knowledgeGraphID"];
  [v5 encodeObject:self->_labelDebugDescription forKey:@"labelDebugDescription"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    IsEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    knowledgeGraphID = self->_knowledgeGraphID;
    v8 = [(VIOntologyNode *)v6 knowledgeGraphID];
    if (VIObjectIsEqual(knowledgeGraphID, v8))
    {
      labelDebugDescription = self->_labelDebugDescription;
      v10 = [(VIOntologyNode *)v6 labelDebugDescription];
      IsEqual = VIObjectIsEqual(labelDebugDescription, v10);
    }

    else
    {
      IsEqual = 0;
    }
  }

  return IsEqual;
}

@end