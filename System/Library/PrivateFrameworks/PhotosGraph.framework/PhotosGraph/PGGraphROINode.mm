@interface PGGraphROINode
+ (MANodeFilter)beachFilter;
+ (MANodeFilter)mountainFilter;
+ (MANodeFilter)natureFilter;
+ (MANodeFilter)urbanFilter;
+ (MANodeFilter)waterFilter;
+ (id)_labelForROIType:(unint64_t)type;
+ (id)_localizationKeyForROINode:(id)node;
+ (id)filter;
+ (id)filterForTypes:(id)types;
+ (id)filterWithLabels:(id)labels;
+ (id)momentOfROI;
+ (id)validROILabels;
+ (unint64_t)_roiTypeForLabel:(id)label;
- (NSArray)localizedSynonyms;
- (NSString)featureIdentifier;
- (NSString)localizedName;
- (NSString)pg_topic;
- (PGGraphROINode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (PGGraphROINode)initWithROIType:(unint64_t)type;
- (PGGraphROINodeCollection)collection;
@end

@implementation PGGraphROINode

- (NSString)pg_topic
{
  label = [(PGGraphROINode *)self label];
  if (isRecognizedROITopic_onceToken != -1)
  {
    dispatch_once(&isRecognizedROITopic_onceToken, &__block_literal_global_9594);
  }

  if ([isRecognizedROITopic_recognizedROITopics containsObject:label])
  {
    v3 = label;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)featureIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  label = [(PGGraphROINode *)self label];
  v7 = [v3 stringWithFormat:@"%@|%@", v5, label];

  return v7;
}

- (PGGraphROINodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphROINodeCollection alloc] initWithNode:self];

  return v2;
}

- (NSArray)localizedSynonyms
{
  v2 = [objc_opt_class() _localizationKeyForROINode:self];
  v3 = [PGGraphSynonymSupportHelper localizedSynonymsForLocalizationKey:v2];

  return v3;
}

- (NSString)localizedName
{
  v2 = [objc_opt_class() _localizationKeyForROINode:self];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:v2 table:@"Localizable"];

  return v4;
}

- (PGGraphROINode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  labelCopy = label;
  v7 = [objc_opt_class() _roiTypeForLabel:labelCopy];

  if (v7)
  {

    return [(PGGraphROINode *)self initWithROIType:v7];
  }

  else
  {

    return 0;
  }
}

- (PGGraphROINode)initWithROIType:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = PGGraphROINode;
  v4 = [(PGGraphNode *)&v7 init];
  if (v4)
  {
    v5 = [objc_opt_class() _labelForROIType:type];
    if (v5)
    {
      objc_storeStrong(&v4->_label, v5);
    }

    else
    {

      v4 = 0;
    }
  }

  return v4;
}

+ (id)momentOfROI
{
  v2 = +[PGGraphROIEdge filter];
  inRelation = [v2 inRelation];

  return inRelation;
}

+ (id)_localizationKeyForROINode:(id)node
{
  v12 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  label = [nodeCopy label];
  v5 = localizationKeyForROILabel(label);
  if (!v5)
  {
    v6 = +[PGLogging sharedLogging];
    loggingConnection = [v6 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = nodeCopy;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Trying to localize node with unsupported label/domain: %@", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (unint64_t)_roiTypeForLabel:(id)label
{
  labelCopy = label;
  if ([labelCopy isEqualToString:@"Urban"])
  {
    v4 = 1;
  }

  else if ([labelCopy isEqualToString:@"Beach"])
  {
    v4 = 2;
  }

  else if ([labelCopy isEqualToString:@"Mountain"])
  {
    v4 = 3;
  }

  else if ([labelCopy isEqualToString:@"Nature"])
  {
    v4 = 4;
  }

  else if ([labelCopy isEqualToString:@"Water"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_labelForROIType:(unint64_t)type
{
  if (type - 1 > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = *off_278883AB0[type - 1];
  }

  return v4;
}

+ (id)validROILabels
{
  v6[5] = *MEMORY[0x277D85DE8];
  v6[0] = @"Urban";
  v6[1] = @"Beach";
  v6[2] = @"Mountain";
  v6[3] = @"Nature";
  v6[4] = @"Water";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:5];
  v3 = [MEMORY[0x277CBEB98] setWithArray:v2];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (MANodeFilter)waterFilter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Water" domain:502];

  return v2;
}

+ (MANodeFilter)natureFilter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Nature" domain:502];

  return v2;
}

+ (MANodeFilter)mountainFilter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Mountain" domain:502];

  return v2;
}

+ (MANodeFilter)beachFilter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Beach" domain:502];

  return v2;
}

+ (MANodeFilter)urbanFilter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Urban" domain:502];

  return v2;
}

+ (id)filterForTypes:(id)types
{
  v4 = MEMORY[0x277CBEB58];
  typesCopy = types;
  v6 = objc_alloc_init(v4);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __33__PGGraphROINode_filterForTypes___block_invoke;
  v14 = &unk_278883A90;
  v15 = v6;
  selfCopy = self;
  v7 = v6;
  [typesCopy enumerateIndexesUsingBlock:&v11];

  v8 = objc_alloc(MEMORY[0x277D22C78]);
  v9 = [v8 initWithLabels:v7 domain:502 properties:{MEMORY[0x277CBEC10], v11, v12, v13, v14}];

  return v9;
}

void __33__PGGraphROINode_filterForTypes___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 40) _labelForROIType:a2];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

+ (id)filterWithLabels:(id)labels
{
  v3 = MEMORY[0x277D22C78];
  labelsCopy = labels;
  v5 = [v3 alloc];
  v6 = [v5 initWithLabels:labelsCopy domain:502 properties:MEMORY[0x277CBEC10]];

  return v6;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:0 domain:502];

  return v2;
}

@end