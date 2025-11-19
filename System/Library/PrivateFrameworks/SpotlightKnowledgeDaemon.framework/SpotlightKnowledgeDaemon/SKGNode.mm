@interface SKGNode
+ (MANodeFilter)filter;
+ (id)inRelation;
+ (id)nodeWithElementIdentifier:(unint64_t)a3 inGraph:(id)a4;
+ (id)outRelation;
+ (id)relation;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToNode:(id)a3;
- (SKGNode)initWithValue:(id)a3;
- (id)filter;
- (id)label;
- (id)propertyDictionary;
@end

@implementation SKGNode

+ (MANodeFilter)filter
{
  v3 = objc_alloc(MEMORY[0x277D22C78]);
  v4 = [a1 label];
  v5 = [v3 initWithLabel:v4 domain:*MEMORY[0x277D22CB0]];

  return v5;
}

+ (id)relation
{
  v2 = [objc_msgSend(objc_opt_class() "edgeClass")];
  v3 = [v2 anyDirectionRelation];

  return v3;
}

+ (id)inRelation
{
  v2 = [objc_msgSend(objc_opt_class() "edgeClass")];
  v3 = [v2 inRelation];

  return v3;
}

+ (id)outRelation
{
  v2 = [objc_msgSend(objc_opt_class() "edgeClass")];
  v3 = [v2 outRelation];

  return v3;
}

+ (id)nodeWithElementIdentifier:(unint64_t)a3 inGraph:(id)a4
{
  v5 = a4;
  v6 = [v5 graph];
  v7 = [v6 nodeForIdentifier:a3];

  v8 = [v7 label];
  v9 = [v8 isEqualToString:SKGPeoplePersonUser];

  if (v9)
  {
    v10 = +[SKGUserNode user];
  }

  else
  {
    v11 = [v7 label];
    v12 = [v11 isEqualToString:SKGPeoplePersonIdentifier];

    if (v12)
    {
      v10 = [SKGPersonNode personWithElementIdentifier:a3 inGraph:v5];
    }

    else
    {
      v13 = [v7 label];
      v14 = [v13 isEqualToString:SKGPeopleContactIdentifier];

      if (v14)
      {
        v10 = [SKGContactNode contactWithElementIdentifier:a3 inGraph:v5];
      }

      else
      {
        v15 = [v7 label];
        v16 = [v15 isEqualToString:SKGPeoplePhotoPersonIdentifier];

        if (v16)
        {
          v10 = [SKGPhotoNode photoWithElementIdentifier:a3 inGraph:v5];
        }

        else
        {
          v17 = [v7 label];
          v18 = [v17 isEqualToString:SKGPeopleEntityIdentifier];

          if (v18)
          {
            v10 = [SKGEntityNode entityWithElementIdentifier:a3 inGraph:v5];
          }

          else
          {
            v19 = [v7 label];
            v20 = [v19 isEqualToString:SKGPeopleDisplayName];

            if (v20)
            {
              v10 = [SKGDisplayNameNode displayNameWithElementIdentifier:a3 inGraph:v5];
            }

            else
            {
              v21 = [v7 label];
              v22 = [v21 isEqualToString:SKGPeopleName];

              if (v22)
              {
                v10 = [SKGNameNode nameWithElementIdentifier:a3 inGraph:v5];
              }

              else
              {
                v23 = [v7 label];
                v24 = [v23 isEqualToString:SKGPeopleNameKey];

                if (v24)
                {
                  v10 = [SKGNameKeyNode nameKeyWithElementIdentifier:a3 inGraph:v5];
                }

                else
                {
                  v25 = [v7 label];
                  v26 = [v25 isEqualToString:SKGPeopleEmailAddress];

                  if (v26)
                  {
                    v10 = [SKGEmailNode emailWithElementIdentifier:a3 inGraph:v5];
                  }

                  else
                  {
                    v27 = [v7 label];
                    v28 = [v27 isEqualToString:SKGPeoplePhoneNumber];

                    if (v28)
                    {
                      v10 = [SKGPhoneNode phoneWithElementIdentifier:a3 inGraph:v5];
                    }

                    else
                    {
                      v29 = [v7 label];
                      v30 = [v29 isEqualToString:SKGContentReferenceIdentifier];

                      if (v30)
                      {
                        v10 = [SKGReferenceNode referenceWithElementIdentifier:a3 inGraph:v5];
                      }

                      else
                      {
                        v31 = [v7 label];
                        v32 = [v31 isEqualToString:SKGContentPersonaIdentifier];

                        if (v32)
                        {
                          v10 = [SKGPersonaNode personaWithElementIdentifier:a3 inGraph:v5];
                        }

                        else
                        {
                          v33 = [v7 label];
                          v34 = [v33 isEqualToString:SKGContentDomainIdentifier];

                          if (v34)
                          {
                            v10 = [SKGDomainNode domainWithElementIdentifier:a3 inGraph:v5];
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

- (SKGNode)initWithValue:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SKGNode;
  v5 = [(MANode *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v4];
    value = v5->_value;
    v5->_value = v6;
  }

  return v5;
}

- (BOOL)isEqualToNode:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 label];
    v7 = [(SKGNode *)self label];
    if ([v6 isEqualToString:v7])
    {
      v8 = [v5 propertyDictionary];
      v9 = [(SKGNode *)self propertyDictionary];
      v10 = [v8 isEqualToDictionary:v9];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SKGNode *)self isEqualToNode:v4];
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
  v6 = [(SKGNode *)self label];
  v7 = [v5 initWithLabel:v6 domain:-[SKGNode domain](self properties:{"domain"), v4}];

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