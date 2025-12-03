@interface SKGEdge
+ (MAEdgeFilter)filter;
+ (id)edgeFromNode:(id)node toNode:(id)toNode;
+ (id)edgeWithElementIdentifier:(unint64_t)identifier inGraph:(id)graph;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEdge:(id)edge;
- (SKGEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties;
- (SKGEdge)initWithSourceNode:(id)node targetNode:(id)targetNode;
- (id)label;
- (id)propertyDictionary;
@end

@implementation SKGEdge

+ (MAEdgeFilter)filter
{
  v2 = objc_alloc(MEMORY[0x277D22C20]);
  name = [objc_opt_class() name];
  v4 = [v2 initWithLabel:name domain:100];

  return v4;
}

+ (id)edgeWithElementIdentifier:(unint64_t)identifier inGraph:(id)graph
{
  graphCopy = graph;
  graph = [graphCopy graph];
  v7 = [graph edgeForIdentifier:identifier];

  if (!v7)
  {
    v12 = 0;
    goto LABEL_36;
  }

  sourceNode = [v7 sourceNode];
  v9 = +[SKGNode nodeWithElementIdentifier:inGraph:](SKGNode, "nodeWithElementIdentifier:inGraph:", [sourceNode identifier], graphCopy);

  targetNode = [v7 targetNode];
  v11 = +[SKGNode nodeWithElementIdentifier:inGraph:](SKGNode, "nodeWithElementIdentifier:inGraph:", [targetNode identifier], graphCopy);

  v12 = 0;
  if (v9 && v11)
  {
    label = [v7 label];
    v14 = [label isEqualToString:SKGPeoplePersonUser];

    if (v14)
    {
      v15 = off_27893BDE8;
LABEL_34:
      v12 = [objc_alloc(*v15) initWithSourceNode:v9 targetNode:v11];
      goto LABEL_35;
    }

    label2 = [v7 label];
    v17 = [label2 isEqualToString:SKGPeoplePersonIdentifier];

    if (v17)
    {
      v15 = off_27893BD00;
      goto LABEL_34;
    }

    label3 = [v7 label];
    v19 = [label3 isEqualToString:SKGPeopleContactIdentifier];

    if (v19)
    {
      v15 = off_27893BB60;
      goto LABEL_34;
    }

    label4 = [v7 label];
    v21 = [label4 isEqualToString:SKGPeoplePhotoPersonIdentifier];

    if (v21)
    {
      v15 = off_27893BD58;
      goto LABEL_34;
    }

    label5 = [v7 label];
    v23 = [label5 isEqualToString:SKGPeopleEntityIdentifier];

    if (v23)
    {
      v15 = off_27893BC10;
      goto LABEL_34;
    }

    label6 = [v7 label];
    v25 = [label6 isEqualToString:SKGPeopleDisplayName];

    if (v25)
    {
      v15 = off_27893BB98;
      goto LABEL_34;
    }

    label7 = [v7 label];
    v27 = [label7 isEqualToString:SKGPeopleName];

    if (v27)
    {
      v15 = off_27893BCB0;
      goto LABEL_34;
    }

    label8 = [v7 label];
    v29 = [label8 isEqualToString:SKGPeopleNameKey];

    if (v29)
    {
      v15 = off_27893BCB8;
      goto LABEL_34;
    }

    label9 = [v7 label];
    v31 = [label9 isEqualToString:SKGPeopleEmailAddress];

    if (v31)
    {
      v15 = off_27893BBE0;
      goto LABEL_34;
    }

    label10 = [v7 label];
    v33 = [label10 isEqualToString:SKGPeoplePhoneNumber];

    if (v33)
    {
      v15 = off_27893BD38;
      goto LABEL_34;
    }

    label11 = [v7 label];
    v35 = [label11 isEqualToString:SKGContentReferenceIdentifier];

    if (v35)
    {
      v15 = off_27893BD98;
      goto LABEL_34;
    }

    label12 = [v7 label];
    v37 = [label12 isEqualToString:SKGContentPersonaIdentifier];

    if (v37)
    {
      v15 = off_27893BD10;
      goto LABEL_34;
    }

    label13 = [v7 label];
    v39 = [label13 isEqualToString:SKGContentDomainIdentifier];

    if (v39)
    {
      v15 = off_27893BBB0;
      goto LABEL_34;
    }

    label14 = [v7 label];
    v41 = +[(SKGEdge *)SKGInteractionEdge];
    v42 = [label14 isEqualToString:v41];

    if (!v42)
    {
      v15 = off_27893BBC8;
      goto LABEL_34;
    }

    v43 = v7;
    v44 = [SKGInteractionEdge alloc];
    domainIdentifier = [v43 domainIdentifier];
    relationship = [v43 relationship];
    score = [v43 score];
    v12 = [(SKGInteractionEdge *)v44 initWithSourceNode:v9 targetNode:v11 domainIdentifier:domainIdentifier relationship:relationship score:score];
  }

LABEL_35:

LABEL_36:

  return v12;
}

+ (id)edgeFromNode:(id)node toNode:(id)toNode
{
  nodeCopy = node;
  toNodeCopy = toNode;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [SKGUserEdge edgeFromUser:nodeCopy toNode:toNodeCopy];
LABEL_27:
    v8 = v7;
    goto LABEL_28;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [SKGPersonEdge edgeFromPerson:nodeCopy toNode:toNodeCopy];
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [SKGContactEdge edgeFromContact:nodeCopy toNode:toNodeCopy];
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [SKGPhotoEdge edgeFromPhoto:nodeCopy toNode:toNodeCopy];
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [SKGEntityEdge edgeFromEntity:nodeCopy toNode:toNodeCopy];
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [SKGDisplayNameEdge edgeFromDisplayName:nodeCopy toNode:toNodeCopy];
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [SKGNameEdge edgeFromName:nodeCopy toNode:toNodeCopy];
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [SKGNameKeyEdge edgeFromNameKey:nodeCopy toNode:toNodeCopy];
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [SKGEmailEdge edgeFromEmail:nodeCopy toNode:toNodeCopy];
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [SKGPhoneEdge edgeFromPhone:nodeCopy toNode:toNodeCopy];
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [SKGReferenceEdge edgeFromReference:nodeCopy toNode:toNodeCopy];
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [SKGPersonaEdge edgeFromPersona:nodeCopy toNode:toNodeCopy];
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [SKGDomainEdge edgeFromDomain:nodeCopy toNode:toNodeCopy];
    goto LABEL_27;
  }

  v8 = 0;
LABEL_28:

  return v8;
}

- (SKGEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties
{
  nodeCopy = node;
  targetNodeCopy = targetNode;
  v13 = [properties objectForKey:@"relationship"];
  if (v13)
  {
    v16.receiver = self;
    v16.super_class = SKGEdge;
    self = [(MAEdge *)&v16 initWithSourceNode:nodeCopy targetNode:targetNodeCopy];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SKGEdge)initWithSourceNode:(id)node targetNode:(id)targetNode
{
  v5.receiver = self;
  v5.super_class = SKGEdge;
  return [(MAEdge *)&v5 initWithSourceNode:node targetNode:targetNode];
}

- (BOOL)isEqualToEdge:(id)edge
{
  edgeCopy = edge;
  v5 = edgeCopy;
  if (!edgeCopy)
  {
    goto LABEL_8;
  }

  label = [edgeCopy label];
  label2 = [(SKGEdge *)self label];
  if (([label isEqualToString:label2] & 1) == 0)
  {
    goto LABEL_7;
  }

  propertyDictionary = [v5 propertyDictionary];
  propertyDictionary2 = [(SKGEdge *)self propertyDictionary];
  v10 = [propertyDictionary isEqualToDictionary:propertyDictionary2];

  if ((v10 & 1) == 0)
  {
LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

  label = [v5 sourceNode];
  label2 = [(MAEdge *)self sourceNode];
  if (([label isEqualToNode:label2] & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  targetNode = [v5 targetNode];
  targetNode2 = [(MAEdge *)self targetNode];
  v13 = [targetNode isEqualToNode:targetNode2];

  if ((v13 & 1) == 0)
  {
    goto LABEL_8;
  }

  v14 = 1;
LABEL_9:

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SKGEdge *)self isEqualToEdge:equalCopy];
  }

  return v5;
}

- (id)propertyDictionary
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"relationship";
  label = [(SKGEdge *)self label];
  v8[1] = @"score";
  v9[0] = label;
  score = [(SKGEdge *)self score];
  v9[1] = score;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)label
{
  v2 = objc_opt_class();

  return [v2 name];
}

@end