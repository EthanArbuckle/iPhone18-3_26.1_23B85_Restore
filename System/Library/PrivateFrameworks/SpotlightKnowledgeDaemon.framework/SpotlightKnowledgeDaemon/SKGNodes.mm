@interface SKGNodes
+ (MANodeFilter)filter;
+ (id)labels;
+ (id)nodesInGraph:(id)graph;
+ (id)nodesWithIdentifier:(unint64_t)identifier inGraph:(id)graph;
+ (id)nodesWithNode:(id)node inGraph:(id)graph;
+ (id)subsetInCollection:(id)collection;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToNodes:(id)nodes;
- (SKGNodes)initWithNode:(id)node inGraph:(id)graph;
- (id)contacts;
- (id)displayNames;
- (id)domains;
- (id)emails;
- (id)entities;
- (id)nameKeys;
- (id)names;
- (id)personas;
- (id)personasWithPersona:(id)persona inGraph:(id)graph;
- (id)persons;
- (id)phones;
- (id)photos;
- (id)references;
- (id)users;
- (void)enumerateNodesInGraph:(id)graph usingBlock:(id)block;
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
  nodeClass = [self nodeClass];

  return [nodeClass filter];
}

+ (id)nodesInGraph:(id)graph
{
  graphCopy = graph;
  v5 = objc_opt_class();
  filter = [self filter];
  graph = [graphCopy graph];
  v8 = [v5 nodesMatchingFilter:filter inGraph:graph];

  return v8;
}

+ (id)subsetInCollection:(id)collection
{
  collectionCopy = collection;
  v5 = objc_opt_class();
  filter = [self filter];
  relation = [filter relation];
  v8 = [v5 nodesRelatedToNodes:collectionCopy withRelation:relation];

  return v8;
}

+ (id)nodesWithNode:(id)node inGraph:(id)graph
{
  nodeCopy = node;
  graphCopy = graph;
  label = [nodeCopy label];
  v8 = [label isEqualToString:SKGPeoplePersonUser];

  if (v8)
  {
    v9 = [[SKGUsers alloc] initWithUserNode:nodeCopy inGraph:graphCopy];
  }

  else
  {
    label2 = [nodeCopy label];
    v11 = [label2 isEqualToString:SKGPeoplePersonIdentifier];

    if (v11)
    {
      v9 = [[SKGPersons alloc] initWithPersonNode:nodeCopy inGraph:graphCopy];
    }

    else
    {
      label3 = [nodeCopy label];
      v13 = [label3 isEqualToString:SKGPeopleContactIdentifier];

      if (v13)
      {
        v9 = [[SKGContacts alloc] initWithContactNode:nodeCopy inGraph:graphCopy];
      }

      else
      {
        label4 = [nodeCopy label];
        v15 = [label4 isEqualToString:SKGPeoplePhotoPersonIdentifier];

        if (v15)
        {
          v9 = [[SKGPhotos alloc] initWithPhotoNode:nodeCopy inGraph:graphCopy];
        }

        else
        {
          label5 = [nodeCopy label];
          v17 = [label5 isEqualToString:SKGPeopleEntityIdentifier];

          if (v17)
          {
            v9 = [[SKGEntities alloc] initWithEntityNode:nodeCopy inGraph:graphCopy];
          }

          else
          {
            label6 = [nodeCopy label];
            v19 = [label6 isEqualToString:SKGPeopleDisplayName];

            if (v19)
            {
              v9 = [[SKGDisplayNames alloc] initWithDisplayNameNode:nodeCopy inGraph:graphCopy];
            }

            else
            {
              label7 = [nodeCopy label];
              v21 = [label7 isEqualToString:SKGPeopleName];

              if (v21)
              {
                v9 = [[SKGNames alloc] initWithNameNode:nodeCopy inGraph:graphCopy];
              }

              else
              {
                label8 = [nodeCopy label];
                v23 = [label8 isEqualToString:SKGPeopleNameKey];

                if (v23)
                {
                  v9 = [[SKGNameKeys alloc] initWithNameKeyNode:nodeCopy inGraph:graphCopy];
                }

                else
                {
                  label9 = [nodeCopy label];
                  v25 = [label9 isEqualToString:SKGPeopleEmailAddress];

                  if (v25)
                  {
                    v9 = [[SKGEmails alloc] initWithEmailNode:nodeCopy inGraph:graphCopy];
                  }

                  else
                  {
                    label10 = [nodeCopy label];
                    v27 = [label10 isEqualToString:SKGPeoplePhoneNumber];

                    if (v27)
                    {
                      v9 = [[SKGPhones alloc] initWithPhoneNode:nodeCopy inGraph:graphCopy];
                    }

                    else
                    {
                      label11 = [nodeCopy label];
                      v29 = [label11 isEqualToString:SKGContentReferenceIdentifier];

                      if (v29)
                      {
                        v9 = [[SKGReferences alloc] initWithReferenceNode:nodeCopy inGraph:graphCopy];
                      }

                      else
                      {
                        label12 = [nodeCopy label];
                        v31 = [label12 isEqualToString:SKGContentPersonaIdentifier];

                        if (v31)
                        {
                          v9 = [[SKGPersonas alloc] initWithPersonaNode:nodeCopy inGraph:graphCopy];
                        }

                        else
                        {
                          label13 = [nodeCopy label];
                          v33 = [label13 isEqualToString:SKGContentDomainIdentifier];

                          if (v33)
                          {
                            v9 = [[SKGDomains alloc] initWithDomainNode:nodeCopy inGraph:graphCopy];
                          }

                          else
                          {
                            v9 = [[SKGNodes alloc] initWithNode:nodeCopy inGraph:graphCopy];
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

- (void)enumerateNodesInGraph:(id)graph usingBlock:(id)block
{
  blockCopy = block;
  v6 = objc_autoreleasePoolPush();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SKGNodes_enumerateNodesInGraph_usingBlock___block_invoke;
  v8[3] = &unk_27893DB70;
  v7 = blockCopy;
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

+ (id)nodesWithIdentifier:(unint64_t)identifier inGraph:(id)graph
{
  v14[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v6 = objc_alloc(objc_opt_class());
  graph = [graphCopy graph];
  v8 = [graph nodeForIdentifier:identifier];
  v14[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  graph2 = [graphCopy graph];
  v11 = [v6 initWithArray:v9 graph:graph2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (SKGNodes)initWithNode:(id)node inGraph:(id)graph
{
  nodeCopy = node;
  graphCopy = graph;
  graph = [graphCopy graph];
  graph2 = [graphCopy graph];
  filter = [nodeCopy filter];
  v11 = [graph2 nodeIdentifiersMatchingFilter:filter];
  v14.receiver = self;
  v14.super_class = SKGNodes;
  v12 = [(MAElementCollection *)&v14 initWithGraph:graph elementIdentifiers:v11];

  [(SKGNodes *)v12 setNodeIdentifier:0];
  return v12;
}

- (BOOL)isEqualToNodes:(id)nodes
{
  nodesCopy = nodes;
  v5 = nodesCopy;
  if (nodesCopy && (v6 = [nodesCopy nodeIdentifier], v6 == -[SKGNodes nodeIdentifier](self, "nodeIdentifier")))
  {
    labels = [objc_opt_class() labels];
    labels2 = [objc_opt_class() labels];
    v9 = [labels isEqualToSet:labels2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SKGNodes *)self isEqualToNodes:equalCopy];
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

- (id)personasWithPersona:(id)persona inGraph:(id)graph
{
  personaCopy = persona;
  graphCopy = graph;
  v8 = objc_autoreleasePoolPush();
  v9 = [[SKGPersonaNode alloc] initWithPersona:personaCopy];
  v10 = [(SKGNodes *)SKGPersonas nodesWithNode:v9 inGraph:graphCopy];
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