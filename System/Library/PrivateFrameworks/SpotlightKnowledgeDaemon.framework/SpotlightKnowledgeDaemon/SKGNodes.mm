@interface SKGNodes
+ (MANodeFilter)filter;
+ (id)labels;
+ (id)nodesInGraph:(id)a3;
+ (id)nodesWithIdentifier:(unint64_t)a3 inGraph:(id)a4;
+ (id)nodesWithNode:(id)a3 inGraph:(id)a4;
+ (id)subsetInCollection:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToNodes:(id)a3;
- (SKGNodes)initWithNode:(id)a3 inGraph:(id)a4;
- (id)contacts;
- (id)displayNames;
- (id)domains;
- (id)emails;
- (id)entities;
- (id)nameKeys;
- (id)names;
- (id)personas;
- (id)personasWithPersona:(id)a3 inGraph:(id)a4;
- (id)persons;
- (id)phones;
- (id)photos;
- (id)references;
- (id)users;
- (void)enumerateNodesInGraph:(id)a3 usingBlock:(id)a4;
@end

@implementation SKGNodes

+ (id)labels
{
  v8[13] = *MEMORY[0x277D85DE8];
  p_name = &OBJC_PROTOCOL___SKDEventInfo.name;
  {
    v6 = MEMORY[0x277CBEB98];
    v8[0] = SKGPeoplePersonUser;
    v8[1] = SKGPeoplePersonIdentifier;
    v8[2] = SKGPeopleContactIdentifier;
    v8[3] = SKGPeoplePhotoPersonIdentifier;
    v8[4] = SKGPeopleEntityIdentifier;
    v8[5] = SKGPeopleDisplayName;
    v8[6] = SKGPeopleName;
    v8[7] = SKGPeopleNameKey;
    v8[8] = SKGPeopleEmailAddress;
    v8[9] = SKGPeoplePhoneNumber;
    v8[10] = SKGContentReferenceIdentifier;
    v8[11] = SKGContentPersonaIdentifier;
    v8[12] = SKGContentDomainIdentifier;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:13];
    +[SKGNodes labels]::sNodesLabels = [v6 setWithArray:v7];

    p_name = (&OBJC_PROTOCOL___SKDEventInfo + 8);
  }

  v3 = p_name[413];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (MANodeFilter)filter
{
  v2 = [a1 nodeClass];

  return [v2 filter];
}

+ (id)nodesInGraph:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [a1 filter];
  v7 = [v4 graph];
  v8 = [v5 nodesMatchingFilter:v6 inGraph:v7];

  return v8;
}

+ (id)subsetInCollection:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [a1 filter];
  v7 = [v6 relation];
  v8 = [v5 nodesRelatedToNodes:v4 withRelation:v7];

  return v8;
}

+ (id)nodesWithNode:(id)a3 inGraph:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 label];
  v8 = [v7 isEqualToString:SKGPeoplePersonUser];

  if (v8)
  {
    v9 = [[SKGUsers alloc] initWithUserNode:v5 inGraph:v6];
  }

  else
  {
    v10 = [v5 label];
    v11 = [v10 isEqualToString:SKGPeoplePersonIdentifier];

    if (v11)
    {
      v9 = [[SKGPersons alloc] initWithPersonNode:v5 inGraph:v6];
    }

    else
    {
      v12 = [v5 label];
      v13 = [v12 isEqualToString:SKGPeopleContactIdentifier];

      if (v13)
      {
        v9 = [[SKGContacts alloc] initWithContactNode:v5 inGraph:v6];
      }

      else
      {
        v14 = [v5 label];
        v15 = [v14 isEqualToString:SKGPeoplePhotoPersonIdentifier];

        if (v15)
        {
          v9 = [[SKGPhotos alloc] initWithPhotoNode:v5 inGraph:v6];
        }

        else
        {
          v16 = [v5 label];
          v17 = [v16 isEqualToString:SKGPeopleEntityIdentifier];

          if (v17)
          {
            v9 = [[SKGEntities alloc] initWithEntityNode:v5 inGraph:v6];
          }

          else
          {
            v18 = [v5 label];
            v19 = [v18 isEqualToString:SKGPeopleDisplayName];

            if (v19)
            {
              v9 = [[SKGDisplayNames alloc] initWithDisplayNameNode:v5 inGraph:v6];
            }

            else
            {
              v20 = [v5 label];
              v21 = [v20 isEqualToString:SKGPeopleName];

              if (v21)
              {
                v9 = [[SKGNames alloc] initWithNameNode:v5 inGraph:v6];
              }

              else
              {
                v22 = [v5 label];
                v23 = [v22 isEqualToString:SKGPeopleNameKey];

                if (v23)
                {
                  v9 = [[SKGNameKeys alloc] initWithNameKeyNode:v5 inGraph:v6];
                }

                else
                {
                  v24 = [v5 label];
                  v25 = [v24 isEqualToString:SKGPeopleEmailAddress];

                  if (v25)
                  {
                    v9 = [[SKGEmails alloc] initWithEmailNode:v5 inGraph:v6];
                  }

                  else
                  {
                    v26 = [v5 label];
                    v27 = [v26 isEqualToString:SKGPeoplePhoneNumber];

                    if (v27)
                    {
                      v9 = [[SKGPhones alloc] initWithPhoneNode:v5 inGraph:v6];
                    }

                    else
                    {
                      v28 = [v5 label];
                      v29 = [v28 isEqualToString:SKGContentReferenceIdentifier];

                      if (v29)
                      {
                        v9 = [[SKGReferences alloc] initWithReferenceNode:v5 inGraph:v6];
                      }

                      else
                      {
                        v30 = [v5 label];
                        v31 = [v30 isEqualToString:SKGContentPersonaIdentifier];

                        if (v31)
                        {
                          v9 = [[SKGPersonas alloc] initWithPersonaNode:v5 inGraph:v6];
                        }

                        else
                        {
                          v32 = [v5 label];
                          v33 = [v32 isEqualToString:SKGContentDomainIdentifier];

                          if (v33)
                          {
                            v9 = [[SKGDomains alloc] initWithDomainNode:v5 inGraph:v6];
                          }

                          else
                          {
                            v9 = [[SKGNodes alloc] initWithNode:v5 inGraph:v6];
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

  v34 = v9;

  return v34;
}

- (void)enumerateNodesInGraph:(id)a3 usingBlock:(id)a4
{
  v5 = a4;
  v6 = objc_autoreleasePoolPush();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SKGNodes_enumerateNodesInGraph_usingBlock___block_invoke;
  v8[3] = &unk_27893DB70;
  v7 = v5;
  v9 = v7;
  [(MAElementCollection *)self enumerateIdentifiersAsCollectionsWithBlock:v8];

  objc_autoreleasePoolPop(v6);
}

void __45__SKGNodes_enumerateNodesInGraph_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [v5 setNodeIdentifier:a2];
  (*(*(a1 + 32) + 16))();
}

+ (id)nodesWithIdentifier:(unint64_t)a3 inGraph:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = objc_alloc(objc_opt_class());
  v7 = [v5 graph];
  v8 = [v7 nodeForIdentifier:a3];
  v14[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v10 = [v5 graph];
  v11 = [v6 initWithArray:v9 graph:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (SKGNodes)initWithNode:(id)a3 inGraph:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 graph];
  v9 = [v7 graph];
  v10 = [v6 filter];
  v11 = [v9 nodeIdentifiersMatchingFilter:v10];
  v14.receiver = self;
  v14.super_class = SKGNodes;
  v12 = [(MAElementCollection *)&v14 initWithGraph:v8 elementIdentifiers:v11];

  [(SKGNodes *)v12 setNodeIdentifier:0];
  return v12;
}

- (BOOL)isEqualToNodes:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (v6 = [v4 nodeIdentifier], v6 == -[SKGNodes nodeIdentifier](self, "nodeIdentifier")))
  {
    v7 = [objc_opt_class() labels];
    v8 = [objc_opt_class() labels];
    v9 = [v7 isEqualToSet:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SKGNodes *)self isEqualToNodes:v4];
  }

  return v5;
}

- (id)users
{
  v3 = objc_opt_class();
  v4 = +[(SKGNode *)SKGUserNode];
  v5 = [v3 nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

- (id)persons
{
  v3 = objc_opt_class();
  v4 = +[(SKGNode *)SKGPersonNode];
  v5 = [v3 nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

- (id)contacts
{
  v3 = objc_opt_class();
  v4 = +[(SKGNode *)SKGContactNode];
  v5 = [v3 nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

- (id)photos
{
  v3 = objc_opt_class();
  v4 = +[(SKGNode *)SKGPhotoNode];
  v5 = [v3 nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

- (id)entities
{
  v3 = objc_opt_class();
  v4 = +[(SKGNode *)SKGEntityNode];
  v5 = [v3 nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

- (id)displayNames
{
  v3 = objc_opt_class();
  v4 = +[(SKGNode *)SKGDisplayNameNode];
  v5 = [v3 nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

- (id)names
{
  v3 = objc_opt_class();
  v4 = +[(SKGNode *)SKGNameNode];
  v5 = [v3 nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

- (id)nameKeys
{
  v3 = objc_opt_class();
  v4 = +[(SKGNode *)SKGNameKeyNode];
  v5 = [v3 nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

- (id)emails
{
  v3 = objc_opt_class();
  v4 = +[(SKGNode *)SKGEmailNode];
  v5 = [v3 nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

- (id)phones
{
  v3 = objc_opt_class();
  v4 = +[(SKGNode *)SKGPhoneNode];
  v5 = [v3 nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

- (id)references
{
  v3 = objc_opt_class();
  v4 = +[(SKGNode *)SKGReferenceNode];
  v5 = [v3 nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

- (id)personas
{
  v3 = objc_opt_class();
  v4 = +[(SKGNode *)SKGPersonaNode];
  v5 = [v3 nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

- (id)personasWithPersona:(id)a3 inGraph:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [[SKGPersonaNode alloc] initWithPersona:v6];
  v10 = [(SKGNodes *)SKGPersonas nodesWithNode:v9 inGraph:v7];
  v11 = +[(SKGEdge *)SKGPersonaEdge];
  v12 = [(MAEdgeCollection *)SKGPersonaEdges edgesFromNodes:v10 toNodes:self matchingFilter:v11];

  v13 = [(MANodeCollection *)SKGPersonas sourceNodesOfEdges:v12];

  objc_autoreleasePoolPop(v8);

  return v13;
}

- (id)domains
{
  v3 = objc_opt_class();
  v4 = +[(SKGNode *)SKGDomainNode];
  v5 = [v3 nodesRelatedToNodes:self withRelation:v4];

  return v5;
}

@end