@interface PGGraphROINode
+ (MANodeFilter)beachFilter;
+ (MANodeFilter)mountainFilter;
+ (MANodeFilter)natureFilter;
+ (MANodeFilter)urbanFilter;
+ (MANodeFilter)waterFilter;
+ (id)_labelForROIType:(unint64_t)a3;
+ (id)_localizationKeyForROINode:(id)a3;
+ (id)filter;
+ (id)filterForTypes:(id)a3;
+ (id)filterWithLabels:(id)a3;
+ (id)momentOfROI;
+ (id)validROILabels;
+ (unint64_t)_roiTypeForLabel:(id)a3;
- (NSArray)localizedSynonyms;
- (NSString)featureIdentifier;
- (NSString)localizedName;
- (NSString)pg_topic;
- (PGGraphROINode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5;
- (PGGraphROINode)initWithROIType:(unint64_t)a3;
- (PGGraphROINodeCollection)collection;
@end

@implementation PGGraphROINode

- (NSString)pg_topic
{
  v2 = [(PGGraphROINode *)self label];
  if (isRecognizedROITopic_onceToken != -1)
  {
    dispatch_once(&isRecognizedROITopic_onceToken, &__block_literal_global_9594);
  }

  if ([isRecognizedROITopic_recognizedROITopics containsObject:v2])
  {
    v3 = v2;
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
  v6 = [(PGGraphROINode *)self label];
  v7 = [v3 stringWithFormat:@"%@|%@", v5, v6];

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

- (PGGraphROINode)initWithLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5
{
  v6 = a3;
  v7 = [objc_opt_class() _roiTypeForLabel:v6];

  if (v7)
  {

    return [(PGGraphROINode *)self initWithROIType:v7];
  }

  else
  {

    return 0;
  }
}

- (PGGraphROINode)initWithROIType:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = PGGraphROINode;
  v4 = [(PGGraphNode *)&v7 init];
  if (v4)
  {
    v5 = [objc_opt_class() _labelForROIType:a3];
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
  v3 = [v2 inRelation];

  return v3;
}

+ (id)_localizationKeyForROINode:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 label];
  v5 = localizationKeyForROILabel(v4);
  if (!v5)
  {
    v6 = +[PGLogging sharedLogging];
    v7 = [v6 loggingConnection];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_error_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_ERROR, "Trying to localize node with unsupported label/domain: %@", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (unint64_t)_roiTypeForLabel:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Urban"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Beach"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Mountain"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Nature"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Water"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_labelForROIType:(unint64_t)a3
{
  if (a3 - 1 > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = *off_278883AB0[a3 - 1];
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

+ (id)filterForTypes:(id)a3
{
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __33__PGGraphROINode_filterForTypes___block_invoke;
  v14 = &unk_278883A90;
  v15 = v6;
  v16 = a1;
  v7 = v6;
  [v5 enumerateIndexesUsingBlock:&v11];

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

+ (id)filterWithLabels:(id)a3
{
  v3 = MEMORY[0x277D22C78];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithLabels:v4 domain:502 properties:MEMORY[0x277CBEC10]];

  return v6;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:0 domain:502];

  return v2;
}

@end