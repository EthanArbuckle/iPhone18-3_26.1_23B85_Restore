@interface PGGraphPersonRelationshipTagNode
+ (MARelation)personWithTag;
+ (id)filter;
+ (id)filterWithTag:(unint64_t)tag;
+ (id)labelForRelationshipTag:(unint64_t)tag;
+ (id)personWithTagWithConfidence:(double)confidence;
+ (id)supportedTagsAsStrings;
+ (unint64_t)relationshipTagFromString:(id)string;
- (MANodeFilter)uniquelyIdentifyingFilter;
- (NSArray)localizedSynonyms;
- (NSString)localizedName;
- (PGGraphPersonRelationshipTagNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (PGGraphPersonRelationshipTagNode)initWithPersonRelationshipTag:(unint64_t)tag;
- (PGGraphPersonRelationshipTagNodeCollection)collection;
- (id)_localizationKeyForRelationshipTagLabel:(id)label;
- (unint64_t)tag;
@end

@implementation PGGraphPersonRelationshipTagNode

- (NSArray)localizedSynonyms
{
  label = [(PGGraphPersonRelationshipTagNode *)self label];
  v4 = [(PGGraphPersonRelationshipTagNode *)self _localizationKeyForRelationshipTagLabel:label];

  v5 = [PGGraphSynonymSupportHelper localizedSynonymsForLocalizationKey:v4];

  return v5;
}

- (id)_localizationKeyForRelationshipTagLabel:(id)label
{
  v3 = _localizationKeyForRelationshipTagLabel__onceToken;
  labelCopy = label;
  if (v3 != -1)
  {
    dispatch_once(&_localizationKeyForRelationshipTagLabel__onceToken, &__block_literal_global_34406);
  }

  v5 = [_localizationKeyForRelationshipTagLabel__searchKeyByLabel objectForKeyedSubscript:labelCopy];

  return v5;
}

void __76__PGGraphPersonRelationshipTagNode__localizationKeyForRelationshipTagLabel___block_invoke()
{
  v4[14] = *MEMORY[0x277D85DE8];
  v3[0] = @"Mother";
  v3[1] = @"Father";
  v4[0] = @"PGPersonMotherSearchableText";
  v4[1] = @"PGPersonFatherSearchableText";
  v3[2] = @"Parent";
  v3[3] = @"Child";
  v4[2] = @"PGPersonParentSearchableText";
  v4[3] = @"PGPersonChildSearchableText";
  v3[4] = @"Son";
  v3[5] = @"Daughter";
  v4[4] = @"PGPersonSonSearchableText";
  v4[5] = @"PGPersonDaughterSearchableText";
  v3[6] = @"Brother";
  v3[7] = @"Sister";
  v4[6] = @"PGPersonBrotherSearchableText";
  v4[7] = @"PGPersonSisterSearchableText";
  v3[8] = @"Sibling";
  v3[9] = @"Family";
  v4[8] = @"PGPersonSiblingSearchableText";
  v4[9] = @"PGPersonFamilySearchableText";
  v3[10] = @"Partner";
  v3[11] = @"Friend";
  v4[10] = @"PGPersonPartnerSearchableText";
  v4[11] = @"PGPersonFriendSearchableText";
  v3[12] = @"Coworker";
  v3[13] = @"Alumni";
  v4[12] = @"PGPersonCoworkerSearchableText";
  v4[13] = @"PGPersonAlumniSearchableText";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:14];
  v1 = _localizationKeyForRelationshipTagLabel__searchKeyByLabel;
  _localizationKeyForRelationshipTagLabel__searchKeyByLabel = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (NSString)localizedName
{
  label = [(PGGraphPersonRelationshipTagNode *)self label];
  v4 = [(PGGraphPersonRelationshipTagNode *)self _localizationKeyForRelationshipTagLabel:label];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:v4 value:v4 table:@"Localizable"];

  return v6;
}

- (PGGraphPersonRelationshipTagNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphPersonRelationshipTagNodeCollection alloc] initWithNode:self];

  return v2;
}

- (MANodeFilter)uniquelyIdentifyingFilter
{
  v3 = objc_alloc(MEMORY[0x277D22C78]);
  label = [(PGGraphPersonRelationshipTagNode *)self label];
  v5 = [v3 initWithLabel:label domain:305];

  return v5;
}

- (unint64_t)tag
{
  v3 = objc_opt_class();
  label = [(PGGraphPersonRelationshipTagNode *)self label];
  v5 = [v3 relationshipTagFromString:label];

  return v5;
}

- (PGGraphPersonRelationshipTagNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  labelCopy = label;
  v7 = [objc_opt_class() relationshipTagFromString:labelCopy];

  return [(PGGraphPersonRelationshipTagNode *)self initWithPersonRelationshipTag:v7];
}

- (PGGraphPersonRelationshipTagNode)initWithPersonRelationshipTag:(unint64_t)tag
{
  v8.receiver = self;
  v8.super_class = PGGraphPersonRelationshipTagNode;
  v4 = [(PGGraphNode *)&v8 init];
  if (v4)
  {
    v5 = [objc_opt_class() labelForRelationshipTag:tag];
    label = v4->_label;
    v4->_label = v5;
  }

  return v4;
}

+ (id)personWithTagWithConfidence:(double)confidence
{
  v3 = [PGGraphRelationshipTagEdge filterWithConfidence:confidence];
  inRelation = [v3 inRelation];

  return inRelation;
}

+ (MARelation)personWithTag
{
  v2 = +[PGGraphRelationshipTagEdge filter];
  inRelation = [v2 inRelation];

  return inRelation;
}

+ (id)filterWithTag:(unint64_t)tag
{
  v3 = [self labelForRelationshipTag:tag];
  v4 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:v3 domain:305];

  return v4;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:0 domain:305];

  return v2;
}

+ (id)labelForRelationshipTag:(unint64_t)tag
{
  if (tag > 0xE)
  {
    return @"Mother";
  }

  else
  {
    return off_278883618[tag];
  }
}

+ (unint64_t)relationshipTagFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"Mother"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"Father"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"Parent"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"Child"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"Son"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"Daughter"])
  {
    v4 = 6;
  }

  else if ([stringCopy isEqualToString:@"Brother"])
  {
    v4 = 7;
  }

  else if ([stringCopy isEqualToString:@"Sister"])
  {
    v4 = 8;
  }

  else if ([stringCopy isEqualToString:@"Sibling"])
  {
    v4 = 9;
  }

  else if ([stringCopy isEqualToString:@"Family"])
  {
    v4 = 10;
  }

  else if ([stringCopy isEqualToString:@"Partner"])
  {
    v4 = 11;
  }

  else if ([stringCopy isEqualToString:@"Friend"])
  {
    v4 = 12;
  }

  else if ([stringCopy isEqualToString:@"Coworker"])
  {
    v4 = 13;
  }

  else if ([stringCopy isEqualToString:@"Alumni"])
  {
    v4 = 14;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)supportedTagsAsStrings
{
  v7[14] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Mother";
  v7[1] = @"Father";
  v7[2] = @"Parent";
  v7[3] = @"Child";
  v7[4] = @"Son";
  v7[5] = @"Daughter";
  v7[6] = @"Brother";
  v7[7] = @"Sister";
  v7[8] = @"Sibling";
  v7[9] = @"Family";
  v7[10] = @"Partner";
  v7[11] = @"Friend";
  v7[12] = @"Coworker";
  v7[13] = @"Alumni";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:14];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end