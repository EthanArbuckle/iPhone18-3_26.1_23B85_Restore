@interface PGFeature
+ (PGFeature)featureWithMeaningfulEvent:(id)event;
+ (PGFeature)featureWithNode:(id)node;
+ (PGFeature)featureWithType:(unint64_t)type name:(id)name;
+ (PGFeature)featureWithType:(unint64_t)type node:(id)node;
+ (id)featuresForEncodedFeatures:(id)features;
+ (id)nameForNode:(id)node;
+ (id)noneFeatureWithType:(unint64_t)type;
+ (id)stringForFeatureType:(unint64_t)type;
- (BOOL)isEqual:(id)equal;
- (NSString)name;
- (PGFeature)initWithEncodedFeature:(id)feature;
- (id)description;
- (id)encodedFeature;
- (id)nodeInGraph:(id)graph;
@end

@implementation PGFeature

- (id)description
{
  if (self->_typeSpecificIdentifier)
  {
    v3 = @": %@ -> %@ (node)";
  }

  else if (self->_name)
  {
    v3 = @": %@ -> %@ (name)";
  }

  else
  {
    v3 = @": %@ -> %@";
  }

  v10.receiver = self;
  v10.super_class = PGFeature;
  v4 = v3;
  v5 = [(PGFeature *)&v10 description];
  v6 = [PGFeature stringForFeatureType:self->_type];
  name = [(PGFeature *)self name];
  v8 = [v5 stringByAppendingFormat:v4, v6, name, v10.receiver, v10.super_class];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    v8 = v7;
    if (*(v7 + 2) == self->_type)
    {
      if (self->_typeSpecificIdentifier && (v9 = *(v7 + 1)) != 0)
      {
        v6 = [v9 isEqual:?];
      }

      else
      {
        name = [(PGFeature *)self name];
        name2 = [v8 name];
        v6 = [name2 isEqualToString:name];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)nodeInGraph:(id)graph
{
  v85[1] = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v5 = graphCopy;
  v6 = 0;
  switch(self->_type)
  {
    case 1uLL:
      typeSpecificIdentifier = self->_typeSpecificIdentifier;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = self->_typeSpecificIdentifier;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v15 = [v5 yearNodeForYear:{objc_msgSend(self->_typeSpecificIdentifier, "integerValue")}];
      goto LABEL_35;
    case 2uLL:
      goto LABEL_21;
    case 3uLL:
      meNode = [graphCopy meNode];
      localIdentifier = [meNode localIdentifier];
      v39 = [localIdentifier isEqualToString:self->_typeSpecificIdentifier];

      if (v39)
      {
        v40 = meNode;
      }

      else
      {
        v40 = [v5 personNodeForPersonLocalIdentifier:self->_typeSpecificIdentifier];
      }

      v6 = v40;

      goto LABEL_51;
    case 4uLL:
      v41 = self->_typeSpecificIdentifier;
      v80 = @"id";
      v81 = v41;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
      v6 = [v5 anyNodeForLabel:@"City" domain:200 properties:v42];

      goto LABEL_51;
    case 5uLL:
      v29 = self->_typeSpecificIdentifier;
      v78 = @"id";
      v79 = v29;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
      v6 = [v5 anyNodeForLabel:@"State" domain:200 properties:v30];

      goto LABEL_51;
    case 6uLL:
      v33 = self->_typeSpecificIdentifier;
      v76 = @"name";
      v77 = v33;
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
      v6 = [v5 anyNodeForLabel:@"Country" domain:200 properties:v34];

      goto LABEL_51;
    case 7uLL:
      name = [PGGraphAddressNodeCollection addressNodeAsCollectionForUUID:self->_typeSpecificIdentifier inGraph:graphCopy];
      anyNode = [name anyNode];
      goto LABEL_49;
    case 8uLL:
    case 0x14uLL:
      v7 = self->_typeSpecificIdentifier;
      v70 = @"name";
      v71 = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
      v6 = [v5 anyNodeForLabel:@"Area" domain:201 properties:v8];

      goto LABEL_51;
    case 9uLL:
      v15 = [graphCopy anyNodeForLabel:self->_typeSpecificIdentifier domain:502 properties:0];
      goto LABEL_35;
    case 0xAuLL:
      v15 = [graphCopy anyNodeForLabel:self->_typeSpecificIdentifier domain:501 properties:0];
      goto LABEL_35;
    case 0xBuLL:
      name = [PGGraphMomentNodeCollection momentNodeForUUID:self->_typeSpecificIdentifier inGraph:graphCopy];
      anyNode = [name anyNode];
      goto LABEL_49;
    case 0xCuLL:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "PGFeature - Collection nodes are no longer supported", buf, 2u);
      }

      goto LABEL_60;
    case 0xDuLL:
      v15 = [graphCopy anyNodeForLabel:self->_typeSpecificIdentifier domain:700 properties:0];
      goto LABEL_35;
    case 0xEuLL:
      v31 = self->_typeSpecificIdentifier;
      v68 = @"name";
      v69 = v31;
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
      v6 = [v5 anyNodeForLabel:@"Season" domain:400 properties:v32];

      goto LABEL_51;
    case 0xFuLL:
      v43 = self->_typeSpecificIdentifier;
      v66 = @"name";
      v67 = v43;
      v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
      v6 = [v5 anyNodeForLabel:@"Holiday" domain:401 properties:v44];

      goto LABEL_51;
    case 0x10uLL:
      name = [(PGGraphHighlightNodeCollection *)PGGraphHighlightGroupNodeCollection highlightNodeForUUID:self->_typeSpecificIdentifier inGraph:graphCopy];
      anyNode = [name anyNode];
      goto LABEL_49;
    case 0x11uLL:
      v50 = self->_typeSpecificIdentifier;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        name = +[PGGraphBusinessNodeCollection businessNodeForBusinessMuid:inGraph:](PGGraphBusinessNodeCollection, "businessNodeForBusinessMuid:inGraph:", [self->_typeSpecificIdentifier unsignedIntegerValue], v5);
        anyNode = [name anyNode];
        goto LABEL_49;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "PGFeature - legacy Business feature, ignoring", buf, 2u);
      }

      goto LABEL_60;
    case 0x12uLL:
      v15 = [graphCopy sceneNodeForSceneName:self->_typeSpecificIdentifier];
      goto LABEL_35;
    case 0x13uLL:
      v48 = self->_typeSpecificIdentifier;
      v82 = @"id";
      v83 = v48;
      v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
      v6 = [v5 anyNodeForLabel:@"District" domain:200 properties:v49];

      goto LABEL_51;
    case 0x15uLL:
      v11 = self->_typeSpecificIdentifier;
      v64 = @"id";
      v65 = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
      v6 = [v5 anyNodeForLabel:@"PublicEvent" domain:900 properties:v12];

      goto LABEL_51;
    case 0x17uLL:
      v15 = [graphCopy meaningfulEventNodeForUUID:self->_typeSpecificIdentifier];
      goto LABEL_35;
    case 0x18uLL:
      v15 = [graphCopy anyNodeForLabel:self->_typeSpecificIdentifier domain:504 properties:0];
      goto LABEL_35;
    case 0x19uLL:
      v15 = [graphCopy anyNodeForLabel:self->_typeSpecificIdentifier domain:901 properties:0];
LABEL_35:
      v6 = v15;
      goto LABEL_51;
    case 0x1AuLL:
      v13 = self->_typeSpecificIdentifier;
      v62 = @"name";
      v63 = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
      v6 = [v5 anyNodeForLabel:@"Performer" domain:900 properties:v14];

      goto LABEL_51;
    case 0x1BuLL:
      name = [(PGFeature *)self name];
      v46 = [PGGraphSceneFeatureNodeCollection sceneFeatureNodesForSceneName:name inGraph:v5];
      anyNode2 = [v46 anyNode];
      goto LABEL_46;
    case 0x1CuLL:
      name = [PGGraphHighlightNodeCollection highlightNodeForUUID:self->_typeSpecificIdentifier inGraph:graphCopy];
      anyNode = [name anyNode];
      goto LABEL_49;
    case 0x1DuLL:
LABEL_18:
      v23 = self->_typeSpecificIdentifier;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v24 = self->_typeSpecificIdentifier;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_21:
          v27 = self->_typeSpecificIdentifier;
          v84 = @"id";
          v85[0] = v27;
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:&v84 count:1];
          v6 = [v5 anyNodeForLabel:@"SocialGroup" domain:302 properties:v28];

          goto LABEL_51;
        }
      }

      v25 = +[PGGraphCalendarUnitNode monthDayValueForMonthDayNodeCalendarUnitValue:](PGGraphCalendarUnitNode, "monthDayValueForMonthDayNodeCalendarUnitValue:", [self->_typeSpecificIdentifier integerValue]);
      name = [PGGraphMonthDayNodeCollection monthDayNodesForMonth:v25 day:v26 inGraph:v5];
      anyNode = [name anyNode];
LABEL_49:
      v6 = anyNode;
      goto LABEL_50;
    case 0x1EuLL:
      *buf = 0;
      v57 = buf;
      v58 = 0x3032000000;
      v59 = __Block_byref_object_copy__55574;
      v60 = __Block_byref_object_dispose__55575;
      v61 = 0;
      v18 = [PGGraphHomeWorkNodeCollection homeNodesInGraph:graphCopy];
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __25__PGFeature_nodeInGraph___block_invoke;
      v55[3] = &unk_2788865C8;
      v55[4] = self;
      v55[5] = buf;
      [v18 enumerateNodesUsingBlock:v55];

      v6 = *(v57 + 5);
      _Block_object_dispose(buf, 8);

      goto LABEL_51;
    case 0x1FuLL:
      *buf = 0;
      v57 = buf;
      v58 = 0x3032000000;
      v59 = __Block_byref_object_copy__55574;
      v60 = __Block_byref_object_dispose__55575;
      v61 = 0;
      v19 = [PGGraphHomeWorkNodeCollection workNodesInGraph:graphCopy];
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __25__PGFeature_nodeInGraph___block_invoke_2;
      v54[3] = &unk_2788865C8;
      v54[4] = self;
      v54[5] = buf;
      [v19 enumerateNodesUsingBlock:v54];

      v6 = *(v57 + 5);
      _Block_object_dispose(buf, 8);

      goto LABEL_51;
    case 0x20uLL:
      name = [PGGraphHighlightTypeNodeCollection typeNodesWithLabel:self->_typeSpecificIdentifier inGraph:graphCopy];
      anyNode = [name anyNode];
      goto LABEL_49;
    case 0x21uLL:
      *buf = 0;
      v57 = buf;
      v58 = 0x3032000000;
      v59 = __Block_byref_object_copy__55574;
      v60 = __Block_byref_object_dispose__55575;
      v61 = 0;
      v20 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:graphCopy];
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __25__PGFeature_nodeInGraph___block_invoke_3;
      v53[3] = &unk_2788865F0;
      v53[4] = self;
      v53[5] = buf;
      [v20 enumerateNodesUsingBlock:v53];

      v6 = *(v57 + 5);
      _Block_object_dispose(buf, 8);

      goto LABEL_51;
    case 0x22uLL:
      name = [(PGGraphNodeCollection *)PGGraphOverTheYearsNodeCollection nodesInGraph:graphCopy];
      anyNode = [name anyNode];
      goto LABEL_49;
    case 0x23uLL:
      name = [PGGraphPetNodeCollection petNodesForLocalIdentifier:self->_typeSpecificIdentifier inGraph:graphCopy];
      anyNode = [name anyNode];
      goto LABEL_49;
    case 0x24uLL:
      if (self->_name)
      {
        v45 = self->_typeSpecificIdentifier;
        name = [MEMORY[0x277CBEB98] setWithObject:?];
        v46 = [PGGraphPersonActivityMeaningNodeCollection personActivityMeaningNodesForActivityLabel:v45 personLocalIdentifiers:name inGraph:v5];
        anyNode2 = [v46 anyNode];
LABEL_46:
        v6 = anyNode2;

LABEL_50:
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PGFeature - PersonActivityMeaning has nil personLocalIdentifier", buf, 2u);
        }

LABEL_60:
        v6 = 0;
      }

LABEL_51:

      v51 = *MEMORY[0x277D85DE8];

      return v6;
    case 0x25uLL:
      name = [PGGraphAudioFeatureNodeCollection audioFeatureNodesForLabel:self->_typeSpecificIdentifier inGraph:graphCopy];
      anyNode = [name anyNode];
      goto LABEL_49;
    case 0x26uLL:
      v9 = self->_typeSpecificIdentifier;
      v74 = @"name";
      v75 = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
      v6 = [v5 anyNodeForLabel:@"Subcontinent" domain:200 properties:v10];

      goto LABEL_51;
    case 0x27uLL:
      v35 = self->_typeSpecificIdentifier;
      v72 = @"name";
      v73 = v35;
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
      v6 = [v5 anyNodeForLabel:@"Continent" domain:200 properties:v36];

      goto LABEL_51;
    default:
      goto LABEL_51;
  }
}

void __25__PGFeature_nodeInGraph___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 featureIdentifier];
  v7 = [v6 isEqualToString:*(*(a1 + 32) + 8)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void __25__PGFeature_nodeInGraph___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 featureIdentifier];
  v7 = [v6 isEqualToString:*(*(a1 + 32) + 8)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void __25__PGFeature_nodeInGraph___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 featureIdentifier];
  v7 = [v6 isEqualToString:*(*(a1 + 32) + 8)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (NSString)name
{
  v3 = self->_name;
  if (!v3)
  {
    v4 = MEMORY[0x277CCACA8];
    if (self->_typeSpecificIdentifier)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", self->_typeSpecificIdentifier];
    }

    else
    {
      v5 = [PGFeature stringForFeatureType:self->_type];
      v3 = [v4 stringWithFormat:@"No %@", v5];
    }
  }

  return v3;
}

- (id)encodedFeature
{
  v3 = MEMORY[0x277CBEB38];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_type];
  v5 = [v3 dictionaryWithObject:v4 forKey:@"type"];

  typeSpecificIdentifier = self->_typeSpecificIdentifier;
  if (typeSpecificIdentifier)
  {
    [v5 setObject:typeSpecificIdentifier forKeyedSubscript:@"spec"];
  }

  name = self->_name;
  if (name)
  {
    [v5 setObject:name forKeyedSubscript:@"name"];
  }

  return v5;
}

- (PGFeature)initWithEncodedFeature:(id)feature
{
  featureCopy = feature;
  v12.receiver = self;
  v12.super_class = PGFeature;
  v5 = [(PGFeature *)&v12 init];
  if (v5)
  {
    v6 = [featureCopy objectForKeyedSubscript:@"type"];
    v5->_type = [v6 integerValue];

    v7 = [featureCopy objectForKeyedSubscript:@"spec"];
    typeSpecificIdentifier = v5->_typeSpecificIdentifier;
    v5->_typeSpecificIdentifier = v7;

    v9 = [featureCopy objectForKeyedSubscript:@"name"];
    name = v5->_name;
    v5->_name = v9;
  }

  return v5;
}

+ (id)featuresForEncodedFeatures:(id)features
{
  v20 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(featuresCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = featuresCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [PGFeature alloc];
        v12 = [(PGFeature *)v11 initWithEncodedFeature:v10, v15];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)stringForFeatureType:(unint64_t)type
{
  if (type > 0x27)
  {
    return @"Unknown";
  }

  else
  {
    return off_278886610[type];
  }
}

+ (id)nameForNode:(id)node
{
  nodeCopy = node;
  label = [nodeCopy label];
  domain = [nodeCopy domain];
  if ([label isEqualToString:@"SocialGroup"])
  {
    name = nodeCopy;
    stringValue = [name socialGroupNameWithServiceManager:0];
LABEL_3:
    v8 = stringValue;

    goto LABEL_15;
  }

  if (domain > 699)
  {
    if (domain == 701)
    {
      personLocalIdentifier = [nodeCopy personLocalIdentifier];
      goto LABEL_14;
    }

    if (domain != 700)
    {
LABEL_11:
      name = [nodeCopy name];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        stringValue = [name stringValue];
      }

      else
      {
        stringValue = name;
      }

      goto LABEL_3;
    }

LABEL_10:
    personLocalIdentifier = label;
    goto LABEL_14;
  }

  if (domain == 502)
  {
    goto LABEL_10;
  }

  if (domain != 600)
  {
    goto LABEL_11;
  }

  personLocalIdentifier = [label stringByReplacingOccurrencesOfString:@"_" withString:@" "];
LABEL_14:
  v8 = personLocalIdentifier;
LABEL_15:

  return v8;
}

+ (id)noneFeatureWithType:(unint64_t)type
{
  v4 = objc_alloc_init(self);
  v4[2] = type;

  return v4;
}

+ (PGFeature)featureWithType:(unint64_t)type name:(id)name
{
  nameCopy = name;
  v8 = objc_alloc_init(self);
  *(v8 + 2) = type;
  objc_storeStrong(v8 + 3, name);
  v9 = *(v8 + 1);
  *(v8 + 1) = nameCopy;

  return v8;
}

+ (PGFeature)featureWithMeaningfulEvent:(id)event
{
  eventCopy = event;
  v5 = objc_alloc_init(self);
  v5[2] = 23;
  uUID = [eventCopy UUID];

  v7 = v5[1];
  v5[1] = uUID;

  return v5;
}

+ (PGFeature)featureWithType:(unint64_t)type node:(id)node
{
  nodeCopy = node;
  if (type == 23)
  {
    v7 = [self featureWithMeaningfulEvent:nodeCopy];
  }

  else
  {
    v8 = [self featureWithNode:nodeCopy];
    v7 = v8;
    if (type == 20 && [v8 type] == 8)
    {
      v7[2] = 20;
    }
  }

  return v7;
}

+ (PGFeature)featureWithNode:(id)node
{
  nodeCopy = node;
  v5 = objc_alloc_init(self);
  domain = [nodeCopy domain];
  label = [nodeCopy label];
  v8 = label;
  if (domain > 401)
  {
    if (domain > 600)
    {
      if (domain <= 899)
      {
        switch(domain)
        {
          case 601:
            v9 = 27;
            break;
          case 700:
            v9 = 13;
            break;
          case 701:
            v9 = 36;
            break;
          default:
            goto LABEL_64;
        }

        goto LABEL_61;
      }

      if (domain != 900)
      {
        if (domain == 901)
        {
          v9 = 25;
        }

        else
        {
          if (domain != 1201)
          {
            goto LABEL_64;
          }

          v9 = 37;
        }

        goto LABEL_61;
      }

      if (![label isEqualToString:@"PublicEvent"])
      {
        if ([v8 isEqualToString:@"Performer"])
        {
          v14 = 26;
          goto LABEL_49;
        }

        goto LABEL_64;
      }

      v25 = 21;
    }

    else
    {
      if (domain <= 502)
      {
        switch(domain)
        {
          case 402:
            if (![label isEqualToString:@"OverTheYears"])
            {
              goto LABEL_64;
            }

            v5[2] = 34;
            v20 = @"OverTheYears";
            v21 = v5[1];
            v5[1] = @"OverTheYears";
            goto LABEL_63;
          case 501:
            v9 = 10;
            break;
          case 502:
            v9 = 9;
            break;
          default:
            goto LABEL_64;
        }

        goto LABEL_61;
      }

      if (domain != 503)
      {
        if (domain == 504)
        {
          v9 = 24;
        }

        else
        {
          if (domain != 600)
          {
            goto LABEL_64;
          }

          v9 = 18;
        }

        goto LABEL_61;
      }

      v25 = 17;
    }

    v5[2] = v25;
    featureIdentifier = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(nodeCopy, "muid")}];
    goto LABEL_62;
  }

  if (domain > 203)
  {
    if (domain > 303)
    {
      if (domain != 304)
      {
        if (domain != 400)
        {
          if (domain != 401 || ![label isEqualToString:@"Holiday"])
          {
            goto LABEL_64;
          }

          v14 = 15;
          goto LABEL_49;
        }

        if ([label isEqualToString:@"Year"])
        {
          v18 = 1;
        }

        else
        {
          if (![v8 isEqualToString:@"MonthDay"])
          {
            if ([v8 isEqualToString:@"Season"])
            {
              v14 = 14;
              goto LABEL_49;
            }

            goto LABEL_64;
          }

          v18 = 29;
        }

        v5[2] = v18;
        v10 = MEMORY[0x277CCABB0];
        calendarUnitValue = [nodeCopy calendarUnitValue];
LABEL_84:
        featureIdentifier = [v10 numberWithInteger:calendarUnitValue];
        goto LABEL_62;
      }

      if (![label isEqualToString:@"Pet"])
      {
        goto LABEL_64;
      }

      v16 = 35;
    }

    else
    {
      if (domain == 204)
      {
        v13 = 33;
LABEL_59:
        v5[2] = v13;
        featureIdentifier = [nodeCopy featureIdentifier];
        goto LABEL_62;
      }

      if (domain != 300)
      {
        if (domain != 302)
        {
          goto LABEL_64;
        }

        v5[2] = 2;
        v10 = MEMORY[0x277CCABB0];
        calendarUnitValue = [nodeCopy socialGroupID];
        goto LABEL_84;
      }

      v16 = 3;
    }

    v5[2] = v16;
    featureIdentifier = [nodeCopy localIdentifier];
    goto LABEL_62;
  }

  if (domain <= 199)
  {
    if (domain != 100)
    {
      if (domain != 102)
      {
        if (domain != 103)
        {
          goto LABEL_64;
        }

        v9 = 32;
LABEL_61:
        v5[2] = v9;
        featureIdentifier = label;
        goto LABEL_62;
      }

      if ([label isEqualToString:@"Highlight"])
      {
        v15 = 28;
      }

      else
      {
        v15 = 16;
      }

LABEL_80:
      v5[2] = v15;
      featureIdentifier = [nodeCopy uuid];
      goto LABEL_62;
    }

    v19 = 11;
    goto LABEL_55;
  }

  if (domain != 200)
  {
    if (domain != 201)
    {
      if (domain != 202)
      {
        goto LABEL_64;
      }

      v12 = [label isEqualToString:@"Home"];
      v13 = 30;
      if (!v12)
      {
        v13 = 31;
      }

      goto LABEL_59;
    }

    v14 = 8;
LABEL_49:
    v5[2] = v14;
    featureIdentifier = [nodeCopy name];
LABEL_62:
    v21 = v5[1];
    v5[1] = featureIdentifier;
LABEL_63:

    goto LABEL_64;
  }

  if ([label isEqualToString:@"Address"])
  {
    v15 = 7;
    goto LABEL_80;
  }

  if ([v8 isEqualToString:@"District"])
  {
    v19 = 19;
LABEL_55:
    v5[2] = v19;
    featureIdentifier = [nodeCopy UUID];
    goto LABEL_62;
  }

  if ([v8 isEqualToString:@"City"])
  {
    v19 = 4;
    goto LABEL_55;
  }

  if ([v8 isEqualToString:@"State"])
  {
    v19 = 5;
    goto LABEL_55;
  }

  if ([v8 isEqualToString:@"Country"])
  {
    v14 = 6;
    goto LABEL_49;
  }

  if ([v8 isEqualToString:@"Subcontinent"])
  {
    v19 = 38;
    goto LABEL_55;
  }

  if ([v8 isEqualToString:@"Continent"])
  {
    v19 = 39;
    goto LABEL_55;
  }

LABEL_64:
  if (v5[2])
  {
    v22 = [self nameForNode:nodeCopy];
    v23 = v5[3];
    v5[3] = v22;
  }

  else
  {
    v23 = v5;
    v5 = 0;
  }

  return v5;
}

@end