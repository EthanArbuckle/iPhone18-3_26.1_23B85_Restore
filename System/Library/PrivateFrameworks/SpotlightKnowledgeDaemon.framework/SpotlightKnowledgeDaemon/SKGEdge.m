@interface SKGEdge
+ (MAEdgeFilter)filter;
+ (id)edgeFromNode:(id)a3 toNode:(id)a4;
+ (id)edgeWithElementIdentifier:(unint64_t)a3 inGraph:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEdge:(id)a3;
- (SKGEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 weight:(float)a7 properties:(id)a8;
- (SKGEdge)initWithSourceNode:(id)a3 targetNode:(id)a4;
- (id)label;
- (id)propertyDictionary;
@end

@implementation SKGEdge

+ (MAEdgeFilter)filter
{
  v2 = objc_alloc(MEMORY[0x277D22C20]);
  v3 = [objc_opt_class() name];
  v4 = [v2 initWithLabel:v3 domain:100];

  return v4;
}

+ (id)edgeWithElementIdentifier:(unint64_t)a3 inGraph:(id)a4
{
  v5 = a4;
  v6 = [v5 graph];
  v7 = [v6 edgeForIdentifier:a3];

  if (!v7)
  {
    v12 = 0;
    goto LABEL_36;
  }

  v8 = [v7 sourceNode];
  v9 = +[SKGNode nodeWithElementIdentifier:inGraph:](SKGNode, "nodeWithElementIdentifier:inGraph:", [v8 identifier], v5);

  v10 = [v7 targetNode];
  v11 = +[SKGNode nodeWithElementIdentifier:inGraph:](SKGNode, "nodeWithElementIdentifier:inGraph:", [v10 identifier], v5);

  v12 = 0;
  if (v9 && v11)
  {
    v13 = [v7 label];
    v14 = [v13 isEqualToString:SKGPeoplePersonUser];

    if (v14)
    {
      v15 = off_27893BDE8;
LABEL_34:
      v12 = [objc_alloc(*v15) initWithSourceNode:v9 targetNode:v11];
      goto LABEL_35;
    }

    v16 = [v7 label];
    v17 = [v16 isEqualToString:SKGPeoplePersonIdentifier];

    if (v17)
    {
      v15 = off_27893BD00;
      goto LABEL_34;
    }

    v18 = [v7 label];
    v19 = [v18 isEqualToString:SKGPeopleContactIdentifier];

    if (v19)
    {
      v15 = off_27893BB60;
      goto LABEL_34;
    }

    v20 = [v7 label];
    v21 = [v20 isEqualToString:SKGPeoplePhotoPersonIdentifier];

    if (v21)
    {
      v15 = off_27893BD58;
      goto LABEL_34;
    }

    v22 = [v7 label];
    v23 = [v22 isEqualToString:SKGPeopleEntityIdentifier];

    if (v23)
    {
      v15 = off_27893BC10;
      goto LABEL_34;
    }

    v24 = [v7 label];
    v25 = [v24 isEqualToString:SKGPeopleDisplayName];

    if (v25)
    {
      v15 = off_27893BB98;
      goto LABEL_34;
    }

    v26 = [v7 label];
    v27 = [v26 isEqualToString:SKGPeopleName];

    if (v27)
    {
      v15 = off_27893BCB0;
      goto LABEL_34;
    }

    v28 = [v7 label];
    v29 = [v28 isEqualToString:SKGPeopleNameKey];

    if (v29)
    {
      v15 = off_27893BCB8;
      goto LABEL_34;
    }

    v30 = [v7 label];
    v31 = [v30 isEqualToString:SKGPeopleEmailAddress];

    if (v31)
    {
      v15 = off_27893BBE0;
      goto LABEL_34;
    }

    v32 = [v7 label];
    v33 = [v32 isEqualToString:SKGPeoplePhoneNumber];

    if (v33)
    {
      v15 = off_27893BD38;
      goto LABEL_34;
    }

    v34 = [v7 label];
    v35 = [v34 isEqualToString:SKGContentReferenceIdentifier];

    if (v35)
    {
      v15 = off_27893BD98;
      goto LABEL_34;
    }

    v36 = [v7 label];
    v37 = [v36 isEqualToString:SKGContentPersonaIdentifier];

    if (v37)
    {
      v15 = off_27893BD10;
      goto LABEL_34;
    }

    v38 = [v7 label];
    v39 = [v38 isEqualToString:SKGContentDomainIdentifier];

    if (v39)
    {
      v15 = off_27893BBB0;
      goto LABEL_34;
    }

    v40 = [v7 label];
    v41 = +[(SKGEdge *)SKGInteractionEdge];
    v42 = [v40 isEqualToString:v41];

    if (!v42)
    {
      v15 = off_27893BBC8;
      goto LABEL_34;
    }

    v43 = v7;
    v44 = [SKGInteractionEdge alloc];
    v45 = [v43 domainIdentifier];
    v46 = [v43 relationship];
    v47 = [v43 score];
    v12 = [(SKGInteractionEdge *)v44 initWithSourceNode:v9 targetNode:v11 domainIdentifier:v45 relationship:v46 score:v47];
  }

LABEL_35:

LABEL_36:

  return v12;
}

+ (id)edgeFromNode:(id)a3 toNode:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [SKGUserEdge edgeFromUser:v5 toNode:v6];
LABEL_27:
    v8 = v7;
    goto LABEL_28;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [SKGPersonEdge edgeFromPerson:v5 toNode:v6];
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [SKGContactEdge edgeFromContact:v5 toNode:v6];
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [SKGPhotoEdge edgeFromPhoto:v5 toNode:v6];
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [SKGEntityEdge edgeFromEntity:v5 toNode:v6];
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [SKGDisplayNameEdge edgeFromDisplayName:v5 toNode:v6];
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [SKGNameEdge edgeFromName:v5 toNode:v6];
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [SKGNameKeyEdge edgeFromNameKey:v5 toNode:v6];
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [SKGEmailEdge edgeFromEmail:v5 toNode:v6];
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [SKGPhoneEdge edgeFromPhone:v5 toNode:v6];
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [SKGReferenceEdge edgeFromReference:v5 toNode:v6];
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [SKGPersonaEdge edgeFromPersona:v5 toNode:v6];
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [SKGDomainEdge edgeFromDomain:v5 toNode:v6];
    goto LABEL_27;
  }

  v8 = 0;
LABEL_28:

  return v8;
}

- (SKGEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 weight:(float)a7 properties:(id)a8
{
  v11 = a4;
  v12 = a5;
  v13 = [a8 objectForKey:@"relationship"];
  if (v13)
  {
    v16.receiver = self;
    v16.super_class = SKGEdge;
    self = [(MAEdge *)&v16 initWithSourceNode:v11 targetNode:v12];
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (SKGEdge)initWithSourceNode:(id)a3 targetNode:(id)a4
{
  v5.receiver = self;
  v5.super_class = SKGEdge;
  return [(MAEdge *)&v5 initWithSourceNode:a3 targetNode:a4];
}

- (BOOL)isEqualToEdge:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = [v4 label];
  v7 = [(SKGEdge *)self label];
  if (([v6 isEqualToString:v7] & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = [v5 propertyDictionary];
  v9 = [(SKGEdge *)self propertyDictionary];
  v10 = [v8 isEqualToDictionary:v9];

  if ((v10 & 1) == 0)
  {
LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

  v6 = [v5 sourceNode];
  v7 = [(MAEdge *)self sourceNode];
  if (([v6 isEqualToNode:v7] & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v11 = [v5 targetNode];
  v12 = [(MAEdge *)self targetNode];
  v13 = [v11 isEqualToNode:v12];

  if ((v13 & 1) == 0)
  {
    goto LABEL_8;
  }

  v14 = 1;
LABEL_9:

  return v14;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SKGEdge *)self isEqualToEdge:v4];
  }

  return v5;
}

- (id)propertyDictionary
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"relationship";
  v3 = [(SKGEdge *)self label];
  v8[1] = @"score";
  v9[0] = v3;
  v4 = [(SKGEdge *)self score];
  v9[1] = v4;
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