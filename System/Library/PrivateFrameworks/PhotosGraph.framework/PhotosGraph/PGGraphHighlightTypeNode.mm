@interface PGGraphHighlightTypeNode
+ (MANodeFilter)aggregationTypeNodeFilter;
+ (MANodeFilter)concludedTripTypeNodeFilter;
+ (MANodeFilter)defaultTypeNodeFilter;
+ (MANodeFilter)longTripTypeNodeFilter;
+ (MANodeFilter)onGoingTripTypeNodeFilter;
+ (MANodeFilter)shortTripTypeNodeFilter;
+ (MANodeFilter)tripTypeNodeFilter;
+ (MARelation)highlightGroupOfType;
+ (id)filter;
+ (id)typeNodeFilterForLabel:(id)label;
- (NSString)featureIdentifier;
- (PGGraphHighlightTypeNode)initWithLabel:(id)label;
@end

@implementation PGGraphHighlightTypeNode

- (NSString)featureIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  label = [(PGGraphHighlightTypeNode *)self label];
  v7 = [v3 stringWithFormat:@"%@|%@", v5, label];

  return v7;
}

- (PGGraphHighlightTypeNode)initWithLabel:(id)label
{
  labelCopy = label;
  v9.receiver = self;
  v9.super_class = PGGraphHighlightTypeNode;
  v5 = [(PGGraphNode *)&v9 init];
  if (v5)
  {
    v6 = [labelCopy copy];
    label = v5->_label;
    v5->_label = v6;
  }

  return v5;
}

+ (MARelation)highlightGroupOfType
{
  v2 = +[PGGraphHasTypeEdge filter];
  inRelation = [v2 inRelation];

  return inRelation;
}

+ (MANodeFilter)defaultTypeNodeFilter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Default" domain:103];

  return v2;
}

+ (MANodeFilter)onGoingTripTypeNodeFilter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"OngoingTrip" domain:103];

  return v2;
}

+ (MANodeFilter)aggregationTypeNodeFilter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"Aggregation" domain:103];

  return v2;
}

+ (MANodeFilter)shortTripTypeNodeFilter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"ShortTrip" domain:103];

  return v2;
}

+ (MANodeFilter)longTripTypeNodeFilter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:@"LongTrip" domain:103];

  return v2;
}

+ (MANodeFilter)concludedTripTypeNodeFilter
{
  v2 = objc_alloc(MEMORY[0x277D22C78]);
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{@"LongTrip", @"ShortTrip", 0}];
  v4 = [v2 initWithLabels:v3 domain:103 properties:MEMORY[0x277CBEC10]];

  return v4;
}

+ (MANodeFilter)tripTypeNodeFilter
{
  v2 = objc_alloc(MEMORY[0x277D22C78]);
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{@"LongTrip", @"ShortTrip", @"OngoingTrip", 0}];
  v4 = [v2 initWithLabels:v3 domain:103 properties:MEMORY[0x277CBEC10]];

  return v4;
}

+ (id)typeNodeFilterForLabel:(id)label
{
  v3 = MEMORY[0x277D22C78];
  labelCopy = label;
  v5 = [[v3 alloc] initWithLabel:labelCopy domain:103];

  return v5;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:0 domain:103];

  return v2;
}

@end