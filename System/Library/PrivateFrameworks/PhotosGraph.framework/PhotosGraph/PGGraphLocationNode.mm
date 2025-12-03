@interface PGGraphLocationNode
+ (MARelation)addressOfLocation;
+ (MARelation)childLocationOfLocation;
+ (MARelation)parentLocationOfLocation;
+ (id)filter;
- (CLLocationCoordinate2D)centroidCoordinate;
- (CLLocationCoordinate2D)coordinate;
- (NSString)featureIdentifier;
- (NSString)fullname;
- (PGGraphLocationNode)init;
- (PGGraphLocationNodeCollection)locationNodeCollection;
- (id)associatedNodesForRemoval;
- (id)keywordDescription;
- (unint64_t)featureType;
- (unint64_t)locationMask;
@end

@implementation PGGraphLocationNode

- (CLLocationCoordinate2D)centroidCoordinate
{
  latitude = self->_centroidCoordinate.latitude;
  longitude = self->_centroidCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (NSString)featureIdentifier
{
  v3 = objc_alloc(MEMORY[0x277CBEAD8]);
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = [v5 stringWithFormat:@"%@ must implement %@", v7, v8];
  v10 = [v3 initWithName:v4 reason:v9 userInfo:0];

  objc_exception_throw(v10);
}

- (unint64_t)featureType
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = +[PGLogging sharedLogging];
  loggingConnection = [v2 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
  {
    v6 = 138412290;
    v7 = objc_opt_class();
    _os_log_fault_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_FAULT, "Feature type not implemented for node class %@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

- (CLLocationCoordinate2D)coordinate
{
  p_centroidCoordinate = &self->_centroidCoordinate;
  if (!CLLocationCoordinate2DIsValid(self->_centroidCoordinate))
  {
    locationNodeCollection = [(PGGraphLocationNode *)self locationNodeCollection];
    addressNodes = [locationNodeCollection addressNodes];
    [addressNodes centroidCoordinate];
    p_centroidCoordinate->latitude = v6;
    p_centroidCoordinate->longitude = v7;
  }

  latitude = p_centroidCoordinate->latitude;
  longitude = p_centroidCoordinate->longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (id)associatedNodesForRemoval
{
  v3 = [MEMORY[0x277CBEB58] set];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__PGGraphLocationNode_associatedNodesForRemoval__block_invoke;
  v6[3] = &unk_27888B590;
  v4 = v3;
  v7 = v4;
  [(MANode *)self enumerateNeighborEdgesAndNodesThroughOutEdgesUsingBlock:v6];

  return v4;
}

void __48__PGGraphLocationNode_associatedNodesForRemoval__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 domain] - 200 <= 2 && objc_msgSend(v6, "domain") - 200 <= 2 && objc_msgSend(v5, "inEdgesCount") == 1)
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (id)keywordDescription
{
  label = [(PGGraphLocationNode *)self label];
  array = [MEMORY[0x277CBEB18] array];
  if (([label isEqualToString:@"Address"] & 1) == 0)
  {
    name = [(PGGraphNode *)self name];
    if (name)
    {
      [array addObject:name];
    }
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__72279;
  v23 = __Block_byref_object_dispose__72280;
  selfCopy = self;
  do
  {
    if (![v20[5] outEdgesCount])
    {
      break;
    }

    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v6 = v20[5];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __41__PGGraphLocationNode_keywordDescription__block_invoke;
    v11[3] = &unk_27888B550;
    v13 = &v19;
    v12 = array;
    v14 = &v15;
    [v6 enumerateOutEdgesUsingBlock:v11];
    LODWORD(v6) = *(v16 + 24);

    _Block_object_dispose(&v15, 8);
  }

  while (v6);
  v7 = MEMORY[0x277CCACA8];
  v8 = [array componentsJoinedByString:{@", "}];
  v9 = [v7 stringWithFormat:@"[%@] %@", label, v8];

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __41__PGGraphLocationNode_keywordDescription__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = a2;
  v5 = [v11 domain] == 200;
  v6 = v11;
  if (v5)
  {
    v7 = [v11 oppositeNode:*(*(*(a1 + 40) + 8) + 40)];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = [*(*(*(a1 + 40) + 8) + 40) name];
    if (v10)
    {
      [*(a1 + 32) addObject:v10];
    }

    *a3 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 1;

    v6 = v11;
  }
}

- (unint64_t)locationMask
{
  label = [(PGGraphLocationNode *)self label];
  if ([label isEqualToString:@"Address"])
  {
    v3 = 1;
  }

  else if ([label isEqualToString:@"Number"])
  {
    v3 = 2;
  }

  else if ([label isEqualToString:@"Street"])
  {
    v3 = 4;
  }

  else if ([label isEqualToString:@"District"])
  {
    v3 = 8;
  }

  else if ([label isEqualToString:@"City"])
  {
    v3 = 16;
  }

  else if ([label isEqualToString:@"County"])
  {
    v3 = 32;
  }

  else if ([label isEqualToString:@"State"])
  {
    v3 = 64;
  }

  else if ([label isEqualToString:@"Country"])
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)fullname
{
  v32 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  selfCopy = self;
  label = [(PGGraphLocationNode *)selfCopy label];
  v6 = [label isEqualToString:@"Address"];

  if (v6)
  {
    locationNodeCollection = [(PGGraphLocationNode *)selfCopy locationNodeCollection];
    parentLocationNodes = [locationNodeCollection parentLocationNodes];
    anyNode = [parentLocationNodes anyNode];

    selfCopy = anyNode;
  }

  if (selfCopy)
  {
    *&v7 = 138412546;
    v27 = v7;
    v11 = MEMORY[0x277D86220];
    do
    {
      name = [(PGGraphNode *)selfCopy name];
      if (![(MANode *)selfCopy outEdgesCount])
      {
        label2 = [(PGGraphLocationNode *)selfCopy label];
        v14 = [label2 isEqualToString:@"Country"];

        if (v14)
        {
          currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
          v16 = [currentLocale localizedStringForCountryCode:name];
          if ([v16 length])
          {
            loggingConnection = name;
            name = v16;
          }

          else
          {
            v18 = +[PGLogging sharedLogging];
            loggingConnection = [v18 loggingConnection];

            if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
            {
              *buf = v27;
              v29 = currentLocale;
              v30 = 2112;
              v31 = name;
              _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Locale %@ does not have a country name for country code %@", buf, 0x16u);
            }
          }
        }
      }

      if (name)
      {
        [array addObject:name];
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v22 = objc_opt_class();
        label3 = [(PGGraphLocationNode *)selfCopy label];
        *buf = v27;
        v29 = v22;
        v30 = 2112;
        v31 = label3;
        _os_log_fault_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_FAULT, "Location Node of class %@ with label %@ has a nil name.", buf, 0x16u);
      }

      locationNodeCollection2 = [(PGGraphLocationNode *)selfCopy locationNodeCollection];
      parentLocationNodes2 = [locationNodeCollection2 parentLocationNodes];
      anyNode2 = [parentLocationNodes2 anyNode];

      selfCopy = anyNode2;
    }

    while (anyNode2);
  }

  v24 = [array componentsJoinedByString:{@", "}];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (PGGraphLocationNodeCollection)locationNodeCollection
{
  v2 = [objc_alloc(-[PGGraphLocationNode collectionClass](self "collectionClass"))];

  return v2;
}

- (PGGraphLocationNode)init
{
  v3.receiver = self;
  v3.super_class = PGGraphLocationNode;
  result = [(PGGraphNode *)&v3 init];
  if (result)
  {
    result->_centroidCoordinate = *MEMORY[0x277CE4278];
  }

  return result;
}

+ (MARelation)addressOfLocation
{
  v13[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphLocationEdge filter];
  inRelation = [v3 inRelation];
  transitiveClosure = [inRelation transitiveClosure];
  optionalStep = [transitiveClosure optionalStep];
  v13[0] = optionalStep;
  v7 = +[PGGraphAddressNode filter];
  relation = [v7 relation];
  v13[1] = relation;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v10 = [v2 chain:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (MARelation)childLocationOfLocation
{
  v2 = +[PGGraphLocationEdge filter];
  inRelation = [v2 inRelation];

  return inRelation;
}

+ (MARelation)parentLocationOfLocation
{
  v2 = +[PGGraphLocationEdge filter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:0 domain:200];

  return v2;
}

@end