@interface SKGNode
+ (MANodeFilter)filter;
+ (id)inRelation;
+ (id)nodeWithElementIdentifier:(unint64_t)identifier inGraph:(id)graph;
+ (id)outRelation;
+ (id)relation;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToNode:(id)node;
- (SKGNode)initWithValue:(id)value;
- (id)filter;
- (id)label;
- (id)propertyDictionary;
@end

@implementation SKGNode

+ (MANodeFilter)filter
{
  v3 = objc_alloc(MEMORY[0x277D22C78]);
  label = [self label];
  v5 = [v3 initWithLabel:label domain:*MEMORY[0x277D22CB0]];

  return v5;
}

+ (id)relation
{
  v2 = [objc_msgSend(objc_opt_class() "edgeClass")];
  anyDirectionRelation = [v2 anyDirectionRelation];

  return anyDirectionRelation;
}

+ (id)inRelation
{
  v2 = [objc_msgSend(objc_opt_class() "edgeClass")];
  inRelation = [v2 inRelation];

  return inRelation;
}

+ (id)outRelation
{
  v2 = [objc_msgSend(objc_opt_class() "edgeClass")];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (id)nodeWithElementIdentifier:(unint64_t)identifier inGraph:(id)graph
{
  graphCopy = graph;
  graph = [graphCopy graph];
  v7 = [graph nodeForIdentifier:identifier];

  label = [v7 label];
  v9 = [label isEqualToString:SKGPeoplePersonUser];

  if (v9)
  {
    v10 = +[SKGUserNode user];
  }

  else
  {
    label2 = [v7 label];
    v12 = [label2 isEqualToString:SKGPeoplePersonIdentifier];

    if (v12)
    {
      v10 = [SKGPersonNode personWithElementIdentifier:identifier inGraph:graphCopy];
    }

    else
    {
      label3 = [v7 label];
      v14 = [label3 isEqualToString:SKGPeopleContactIdentifier];

      if (v14)
      {
        v10 = [SKGContactNode contactWithElementIdentifier:identifier inGraph:graphCopy];
      }

      else
      {
        label4 = [v7 label];
        v16 = [label4 isEqualToString:SKGPeoplePhotoPersonIdentifier];

        if (v16)
        {
          v10 = [SKGPhotoNode photoWithElementIdentifier:identifier inGraph:graphCopy];
        }

        else
        {
          label5 = [v7 label];
          v18 = [label5 isEqualToString:SKGPeopleEntityIdentifier];

          if (v18)
          {
            v10 = [SKGEntityNode entityWithElementIdentifier:identifier inGraph:graphCopy];
          }

          else
          {
            label6 = [v7 label];
            v20 = [label6 isEqualToString:SKGPeopleDisplayName];

            if (v20)
            {
              v10 = [SKGDisplayNameNode displayNameWithElementIdentifier:identifier inGraph:graphCopy];
            }

            else
            {
              label7 = [v7 label];
              v22 = [label7 isEqualToString:SKGPeopleName];

              if (v22)
              {
                v10 = [SKGNameNode nameWithElementIdentifier:identifier inGraph:graphCopy];
              }

              else
              {
                label8 = [v7 label];
                v24 = [label8 isEqualToString:SKGPeopleNameKey];

                if (v24)
                {
                  v10 = [SKGNameKeyNode nameKeyWithElementIdentifier:identifier inGraph:graphCopy];
                }

                else
                {
                  label9 = [v7 label];
                  v26 = [label9 isEqualToString:SKGPeopleEmailAddress];

                  if (v26)
                  {
                    v10 = [SKGEmailNode emailWithElementIdentifier:identifier inGraph:graphCopy];
                  }

                  else
                  {
                    label10 = [v7 label];
                    v28 = [label10 isEqualToString:SKGPeoplePhoneNumber];

                    if (v28)
                    {
                      v10 = [SKGPhoneNode phoneWithElementIdentifier:identifier inGraph:graphCopy];
                    }

                    else
                    {
                      label11 = [v7 label];
                      v30 = [label11 isEqualToString:SKGContentReferenceIdentifier];

                      if (v30)
                      {
                        v10 = [SKGReferenceNode referenceWithElementIdentifier:identifier inGraph:graphCopy];
                      }

                      else
                      {
                        label12 = [v7 label];
                        v32 = [label12 isEqualToString:SKGContentPersonaIdentifier];

                        if (v32)
                        {
                          v10 = [SKGPersonaNode personaWithElementIdentifier:identifier inGraph:graphCopy];
                        }

                        else
                        {
                          label13 = [v7 label];
                          v34 = [label13 isEqualToString:SKGContentDomainIdentifier];

                          if (v34)
                          {
                            v10 = [SKGDomainNode domainWithElementIdentifier:identifier inGraph:graphCopy];
                          }

                          else
                          {
                            v10 = v7;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v35 = v10;

  return v35;
}

- (SKGNode)initWithValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = SKGNode;
  v5 = [(MANode *)&v9 init];
  if (v5)
  {
    valueCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", valueCopy];
    value = v5->_value;
    v5->_value = valueCopy;
  }

  return v5;
}

- (BOOL)isEqualToNode:(id)node
{
  nodeCopy = node;
  v5 = nodeCopy;
  if (nodeCopy)
  {
    label = [nodeCopy label];
    label2 = [(SKGNode *)self label];
    if ([label isEqualToString:label2])
    {
      propertyDictionary = [v5 propertyDictionary];
      propertyDictionary2 = [(SKGNode *)self propertyDictionary];
      v10 = [propertyDictionary isEqualToDictionary:propertyDictionary2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SKGNode *)self isEqualToNode:equalCopy];
  }

  return v5;
}

- (id)filter
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (self->_value)
  {
    value = self->_value;
  }

  else
  {
    value = &stru_2846CE8D8;
  }

  v10 = @"value";
  v11[0] = value;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v5 = objc_alloc(MEMORY[0x277D22C78]);
  label = [(SKGNode *)self label];
  v7 = [v5 initWithLabel:label domain:-[SKGNode domain](self properties:{"domain"), v4}];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)propertyDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  value = self->_value;
  if (value)
  {
    v6 = @"value";
    v7[0] = value;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    v3 = &unk_2846E85D8;
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)label
{
  v2 = objc_opt_class();

  return [v2 label];
}

@end