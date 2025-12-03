@interface PGGraphMemoryNode
+ (MARelation)featureOfMemory;
+ (MARelation)momentOfMemory;
+ (id)allMemoryTypeStrings;
+ (id)filter;
+ (id)filterWithMemoryCategories:(id)categories;
+ (id)filterWithMemoryCategory:(unint64_t)category;
+ (id)filterWithUniqueMemoryIdentifier:(id)identifier;
+ (id)filterWithUniqueMemoryIdentifierArray:(id)array;
+ (id)filterWithUniqueMemoryIdentifiers:(id)identifiers;
+ (id)fullMemoryTypeStringWithMemoryCategorySubcategory:(unint64_t)subcategory featureNodes:(id)nodes;
+ (id)fullyQualifiedMemoryTypeForMemoryType:(id)type withPrefix:(id)prefix;
+ (id)uniqueMemoryIdentifierWithMemoryLabel:(id)label featureNodes:(id)nodes;
- (BOOL)hasProperties:(id)properties;
- (NSString)description;
- (PGGraphFeatureNodeCollection)memoryFeatureNodes;
- (PGGraphMemoryNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (PGGraphMemoryNode)initWithLabel:(id)label memoryCategorySubcategory:(unint64_t)subcategory uniqueMemoryIdentifier:(id)identifier generatedWithFallbackRequirements:(BOOL)requirements;
- (PGGraphMemoryNodeCollection)collection;
- (PGGraphMomentNodeCollection)memoryMomentNodes;
- (id)memoryFeatureNodesInGraph:(id)graph;
- (id)propertyDictionary;
@end

@implementation PGGraphMemoryNode

+ (id)fullyQualifiedMemoryTypeForMemoryType:(id)type withPrefix:(id)prefix
{
  v15 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  prefixCopy = prefix;
  if ([(__CFString *)prefixCopy length])
  {
    v7 = prefixCopy;
  }

  else
  {
    v8 = +[PGLogging sharedLogging];
    loggingConnection = [v8 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = typeCopy;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGGraphMemoryNode] qualifier prefix for MemoryTypeString: %@ is nil", &v13, 0xCu);
    }

    v7 = @"Unknown";
  }

  v10 = [(__CFString *)v7 stringByAppendingString:typeCopy];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)allMemoryTypeStrings
{
  v238 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = +[PGMeaningfulEventRequiredCriteriaFactory availableMeaningLabels];
  v4 = +[PGTrendsMemoryGenerator allTrendSceneFeatureLabels];
  v5 = @"None";
  [v2 addObject:@"None"];

  v6 = @"MomentsSingleMoment";
  [v2 addObject:@"MomentsSingleMoment"];

  v7 = @"PersonYear";
  [v2 addObject:@"PersonYear"];

  v8 = @"PersonSeason";
  [v2 addObject:@"PersonSeason"];

  v9 = @"PersonOverTheYears";
  [v2 addObject:@"PersonOverTheYears"];

  v10 = @"PersonEarlyMoments";
  [v2 addObject:@"PersonEarlyMoments"];

  v11 = @"PersonExcitingMomentsYear";
  [v2 addObject:@"PersonExcitingMomentsYear"];

  v12 = @"PersonExcitingMomentsOverTheYears";
  [v2 addObject:@"PersonExcitingMomentsOverTheYears"];

  v13 = @"SocialGroupYear";
  [v2 addObject:@"SocialGroupYear"];

  v14 = @"SocialGroupOverTheYears";
  [v2 addObject:@"SocialGroupOverTheYears"];

  v15 = @"HomeLastMonth";
  [v2 addObject:@"HomeLastMonth"];

  v16 = @"InReviewYear";
  [v2 addObject:@"InReviewYear"];

  v17 = @"InReviewRecents";
  [v2 addObject:@"InReviewRecents"];

  v18 = @"FoodieGenericYear";
  [v2 addObject:@"FoodieGenericYear"];

  v19 = @"FoodieGenericOverTheYears";
  [v2 addObject:@"FoodieGenericOverTheYears"];

  v20 = @"FoodiePersonYear";
  [v2 addObject:@"FoodiePersonYear"];

  v21 = @"FoodiePersonOverTheYears";
  [v2 addObject:@"FoodiePersonOverTheYears"];

  v22 = @"FoodieCityYear";
  [v2 addObject:@"FoodieCityYear"];

  v23 = @"FoodieCityOverTheYears";
  [v2 addObject:@"FoodieCityOverTheYears"];

  v24 = @"FoodieRestaurantYear";
  [v2 addObject:@"FoodieRestaurantYear"];

  v25 = @"FoodieRestaurantOverTheYears";
  [v2 addObject:@"FoodieRestaurantOverTheYears"];

  v26 = @"FoodieHomeYear";
  [v2 addObject:@"FoodieHomeYear"];

  v27 = @"FoodieHomeOverTheYears";
  [v2 addObject:@"FoodieHomeOverTheYears"];

  v28 = @"FoodieTrip";
  [v2 addObject:@"FoodieTrip"];

  v29 = @"PetYear";
  [v2 addObject:@"PetYear"];

  v30 = @"PetSeason";
  [v2 addObject:@"PetSeason"];

  v31 = @"PetOverTheYears";
  [v2 addObject:@"PetOverTheYears"];

  v32 = @"PetWithPersonOverTheYears";
  [v2 addObject:@"PetWithPersonOverTheYears"];

  v33 = @"PetOutdoorYear";
  [v2 addObject:@"PetOutdoorYear"];

  v34 = @"PetOutdoorOverTheYears";
  [v2 addObject:@"PetOutdoorOverTheYears"];

  v35 = @"BabyYear";
  [v2 addObject:@"BabyYear"];

  v36 = @"BabyOverTheYears";
  [v2 addObject:@"BabyOverTheYears"];

  v37 = @"LocationCityYear";
  [v2 addObject:@"LocationCityYear"];

  v38 = @"LocationCityOverTheYears";
  [v2 addObject:@"LocationCityOverTheYears"];

  v39 = @"LocationAreaYear";
  [v2 addObject:@"LocationAreaYear"];

  v40 = @"LocationAreaOverTheYears";
  [v2 addObject:@"LocationAreaOverTheYears"];

  v41 = @"ROIYear";
  [v2 addObject:@"ROIYear"];

  v42 = @"ROIOverTheYears";
  [v2 addObject:@"ROIOverTheYears"];

  v43 = @"MeaningfulEventSingleEvent";
  v219 = 0u;
  v220 = 0u;
  v221 = 0u;
  v222 = 0u;
  v44 = v3;
  v45 = [v44 countByEnumeratingWithState:&v219 objects:v237 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v220;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v220 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = [objc_opt_class() fullyQualifiedMemoryTypeForMemoryType:@"MeaningfulEventSingleEvent" withPrefix:*(*(&v219 + 1) + 8 * i)];
        [v2 addObject:v49];
      }

      v46 = [v44 countByEnumeratingWithState:&v219 objects:v237 count:16];
    }

    while (v46);
  }

  v50 = @"MeaningfulEventGenericYear";
  v215 = 0u;
  v216 = 0u;
  v217 = 0u;
  v218 = 0u;
  v51 = v44;
  v52 = [v51 countByEnumeratingWithState:&v215 objects:v236 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v216;
    do
    {
      for (j = 0; j != v53; ++j)
      {
        if (*v216 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = [objc_opt_class() fullyQualifiedMemoryTypeForMemoryType:@"MeaningfulEventGenericYear" withPrefix:*(*(&v215 + 1) + 8 * j)];
        [v2 addObject:v56];
      }

      v53 = [v51 countByEnumeratingWithState:&v215 objects:v236 count:16];
    }

    while (v53);
  }

  v57 = @"MeaningfulEventGenericOverTheYears";
  v211 = 0u;
  v212 = 0u;
  v213 = 0u;
  v214 = 0u;
  v58 = v51;
  v59 = [v58 countByEnumeratingWithState:&v211 objects:v235 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v212;
    do
    {
      for (k = 0; k != v60; ++k)
      {
        if (*v212 != v61)
        {
          objc_enumerationMutation(v58);
        }

        v63 = [objc_opt_class() fullyQualifiedMemoryTypeForMemoryType:@"MeaningfulEventGenericOverTheYears" withPrefix:*(*(&v211 + 1) + 8 * k)];
        [v2 addObject:v63];
      }

      v60 = [v58 countByEnumeratingWithState:&v211 objects:v235 count:16];
    }

    while (v60);
  }

  v64 = @"MeaningfulEventSocialGroupYear";
  v207 = 0u;
  v208 = 0u;
  v209 = 0u;
  v210 = 0u;
  v65 = v58;
  v66 = [v65 countByEnumeratingWithState:&v207 objects:v234 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v208;
    do
    {
      for (m = 0; m != v67; ++m)
      {
        if (*v208 != v68)
        {
          objc_enumerationMutation(v65);
        }

        v70 = [objc_opt_class() fullyQualifiedMemoryTypeForMemoryType:@"MeaningfulEventSocialGroupYear" withPrefix:*(*(&v207 + 1) + 8 * m)];
        [v2 addObject:v70];
      }

      v67 = [v65 countByEnumeratingWithState:&v207 objects:v234 count:16];
    }

    while (v67);
  }

  v71 = @"MeaningfulEventSocialGroupOverTheYears";
  v203 = 0u;
  v204 = 0u;
  v205 = 0u;
  v206 = 0u;
  v72 = v65;
  v73 = [v72 countByEnumeratingWithState:&v203 objects:v233 count:16];
  if (v73)
  {
    v74 = v73;
    v75 = *v204;
    do
    {
      for (n = 0; n != v74; ++n)
      {
        if (*v204 != v75)
        {
          objc_enumerationMutation(v72);
        }

        v77 = [objc_opt_class() fullyQualifiedMemoryTypeForMemoryType:@"MeaningfulEventSocialGroupOverTheYears" withPrefix:*(*(&v203 + 1) + 8 * n)];
        [v2 addObject:v77];
      }

      v74 = [v72 countByEnumeratingWithState:&v203 objects:v233 count:16];
    }

    while (v74);
  }

  v78 = @"MeaningfulEventAreaYear";
  v199 = 0u;
  v200 = 0u;
  v201 = 0u;
  v202 = 0u;
  v79 = v72;
  v80 = [v79 countByEnumeratingWithState:&v199 objects:v232 count:16];
  if (v80)
  {
    v81 = v80;
    v82 = *v200;
    do
    {
      for (ii = 0; ii != v81; ++ii)
      {
        if (*v200 != v82)
        {
          objc_enumerationMutation(v79);
        }

        v84 = [objc_opt_class() fullyQualifiedMemoryTypeForMemoryType:@"MeaningfulEventAreaYear" withPrefix:*(*(&v199 + 1) + 8 * ii)];
        [v2 addObject:v84];
      }

      v81 = [v79 countByEnumeratingWithState:&v199 objects:v232 count:16];
    }

    while (v81);
  }

  v85 = @"MeaningfulEventAreaOverTheYears";
  v195 = 0u;
  v196 = 0u;
  v197 = 0u;
  v198 = 0u;
  v86 = v79;
  v87 = [v86 countByEnumeratingWithState:&v195 objects:v231 count:16];
  if (v87)
  {
    v88 = v87;
    v89 = *v196;
    do
    {
      for (jj = 0; jj != v88; ++jj)
      {
        if (*v196 != v89)
        {
          objc_enumerationMutation(v86);
        }

        v91 = [objc_opt_class() fullyQualifiedMemoryTypeForMemoryType:@"MeaningfulEventAreaOverTheYears" withPrefix:*(*(&v195 + 1) + 8 * jj)];
        [v2 addObject:v91];
      }

      v88 = [v86 countByEnumeratingWithState:&v195 objects:v231 count:16];
    }

    while (v88);
  }

  v92 = @"MeaningfulEventCityYear";
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  v93 = v86;
  v94 = [v93 countByEnumeratingWithState:&v191 objects:v230 count:16];
  if (v94)
  {
    v95 = v94;
    v96 = *v192;
    do
    {
      for (kk = 0; kk != v95; ++kk)
      {
        if (*v192 != v96)
        {
          objc_enumerationMutation(v93);
        }

        v98 = [objc_opt_class() fullyQualifiedMemoryTypeForMemoryType:@"MeaningfulEventCityYear" withPrefix:*(*(&v191 + 1) + 8 * kk)];
        [v2 addObject:v98];
      }

      v95 = [v93 countByEnumeratingWithState:&v191 objects:v230 count:16];
    }

    while (v95);
  }

  v99 = @"MeaningfulEventCityOverTheYears";
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v190 = 0u;
  v100 = v93;
  v101 = [v100 countByEnumeratingWithState:&v187 objects:v229 count:16];
  if (v101)
  {
    v102 = v101;
    v103 = *v188;
    do
    {
      for (mm = 0; mm != v102; ++mm)
      {
        if (*v188 != v103)
        {
          objc_enumerationMutation(v100);
        }

        v105 = [objc_opt_class() fullyQualifiedMemoryTypeForMemoryType:@"MeaningfulEventCityOverTheYears" withPrefix:*(*(&v187 + 1) + 8 * mm)];
        [v2 addObject:v105];
      }

      v102 = [v100 countByEnumeratingWithState:&v187 objects:v229 count:16];
    }

    while (v102);
  }

  v106 = @"TripTrip";
  [v2 addObject:@"TripTrip"];

  v107 = @"TripRecurrent";
  [v2 addObject:@"TripRecurrent"];

  v108 = @"TripOngoingTrip";
  [v2 addObject:@"TripOngoingTrip"];

  v109 = @"SupersetPast";
  [v2 addObject:@"SupersetPast"];

  v110 = @"SeasonSingleSeason";
  [v2 addObject:@"SeasonSingleSeason"];

  v111 = @"ChildActivityYear";
  [v2 addObject:@"ChildActivityYear"];

  v112 = @"ChildActivityOverTheYears";
  [v2 addObject:@"ChildActivityOverTheYears"];

  v113 = @"ChildWithPersonYear";
  [v2 addObject:@"ChildWithPersonYear"];

  v114 = @"ChildWithPersonOverTheYears";
  [v2 addObject:@"ChildWithPersonOverTheYears"];

  v115 = @"ChildOutdoorYear";
  [v2 addObject:@"ChildOutdoorYear"];

  v116 = @"ChildOutdoorOverTheYears";
  [v2 addObject:@"ChildOutdoorOverTheYears"];

  v117 = @"TrendsGenericYear";
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v118 = v4;
  v119 = [v118 countByEnumeratingWithState:&v183 objects:v228 count:16];
  if (v119)
  {
    v120 = v119;
    v121 = *v184;
    do
    {
      for (nn = 0; nn != v120; ++nn)
      {
        if (*v184 != v121)
        {
          objc_enumerationMutation(v118);
        }

        v123 = [objc_opt_class() fullyQualifiedMemoryTypeForMemoryType:@"TrendsGenericYear" withPrefix:*(*(&v183 + 1) + 8 * nn)];
        [v2 addObject:v123];
      }

      v120 = [v118 countByEnumeratingWithState:&v183 objects:v228 count:16];
    }

    while (v120);
  }

  v124 = @"TrendsGenericOverTheYears";
  v179 = 0u;
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  v125 = v118;
  v126 = [v125 countByEnumeratingWithState:&v179 objects:v227 count:16];
  if (v126)
  {
    v127 = v126;
    v128 = *v180;
    do
    {
      for (i1 = 0; i1 != v127; ++i1)
      {
        if (*v180 != v128)
        {
          objc_enumerationMutation(v125);
        }

        v130 = [objc_opt_class() fullyQualifiedMemoryTypeForMemoryType:@"TrendsGenericOverTheYears" withPrefix:*(*(&v179 + 1) + 8 * i1)];
        [v2 addObject:v130];
      }

      v127 = [v125 countByEnumeratingWithState:&v179 objects:v227 count:16];
    }

    while (v127);
  }

  v131 = @"TrendsPersonYear";
  v175 = 0u;
  v176 = 0u;
  v177 = 0u;
  v178 = 0u;
  v132 = v125;
  v133 = [v132 countByEnumeratingWithState:&v175 objects:v226 count:16];
  if (v133)
  {
    v134 = v133;
    v135 = *v176;
    do
    {
      for (i2 = 0; i2 != v134; ++i2)
      {
        if (*v176 != v135)
        {
          objc_enumerationMutation(v132);
        }

        v137 = [objc_opt_class() fullyQualifiedMemoryTypeForMemoryType:@"TrendsPersonYear" withPrefix:*(*(&v175 + 1) + 8 * i2)];
        [v2 addObject:v137];
      }

      v134 = [v132 countByEnumeratingWithState:&v175 objects:v226 count:16];
    }

    while (v134);
  }

  v138 = @"TrendsPersonOverTheYears";
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  v139 = v132;
  v140 = [v139 countByEnumeratingWithState:&v171 objects:v225 count:16];
  if (v140)
  {
    v141 = v140;
    v142 = *v172;
    do
    {
      for (i3 = 0; i3 != v141; ++i3)
      {
        if (*v172 != v142)
        {
          objc_enumerationMutation(v139);
        }

        v144 = [objc_opt_class() fullyQualifiedMemoryTypeForMemoryType:@"TrendsPersonOverTheYears" withPrefix:*(*(&v171 + 1) + 8 * i3)];
        [v2 addObject:v144];
      }

      v141 = [v139 countByEnumeratingWithState:&v171 objects:v225 count:16];
    }

    while (v141);
  }

  v145 = @"TrendsCityYear";
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v146 = v139;
  v147 = [v146 countByEnumeratingWithState:&v167 objects:v224 count:16];
  if (v147)
  {
    v148 = v147;
    v149 = *v168;
    do
    {
      for (i4 = 0; i4 != v148; ++i4)
      {
        if (*v168 != v149)
        {
          objc_enumerationMutation(v146);
        }

        v151 = [objc_opt_class() fullyQualifiedMemoryTypeForMemoryType:@"TrendsCityYear" withPrefix:*(*(&v167 + 1) + 8 * i4)];
        [v2 addObject:v151];
      }

      v148 = [v146 countByEnumeratingWithState:&v167 objects:v224 count:16];
    }

    while (v148);
  }

  v152 = @"TrendsCityOverTheYears";
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v153 = v146;
  v154 = [v153 countByEnumeratingWithState:&v163 objects:v223 count:16];
  if (v154)
  {
    v155 = v154;
    v156 = *v164;
    do
    {
      for (i5 = 0; i5 != v155; ++i5)
      {
        if (*v164 != v156)
        {
          objc_enumerationMutation(v153);
        }

        v158 = [objc_opt_class() fullyQualifiedMemoryTypeForMemoryType:@"TrendsCityOverTheYears" withPrefix:{*(*(&v163 + 1) + 8 * i5), v163}];
        [v2 addObject:v158];
      }

      v155 = [v153 countByEnumeratingWithState:&v163 objects:v223 count:16];
    }

    while (v155);
  }

  v159 = @"MomentsDayInHistoryAggregation";
  [v2 addObject:@"MomentsDayInHistoryAggregation"];

  v160 = @"ContentCreationToolOverTime";
  [v2 addObject:@"ContentCreationToolOverTime"];

  v161 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)fullMemoryTypeStringWithMemoryCategorySubcategory:(unint64_t)subcategory featureNodes:(id)nodes
{
  nodesCopy = nodes;
  v6 = PGStringForMemoryCategorySubcategory(subcategory);
  if (subcategory - 11001 >= 9)
  {
    if (subcategory - 16001 >= 6)
    {
      goto LABEL_6;
    }

    v7 = [(PGGraphNodeCollection *)PGGraphSceneFeatureNodeCollection subsetInCollection:nodesCopy];
    labels = [v7 labels];
  }

  else
  {
    v7 = [(PGGraphNodeCollection *)PGGraphMeaningNodeCollection subsetInCollection:nodesCopy];
    labels = [v7 meaningLabels];
  }

  v9 = labels;
  anyObject = [labels anyObject];

  v11 = [objc_opt_class() fullyQualifiedMemoryTypeForMemoryType:v6 withPrefix:anyObject];

  v6 = v11;
LABEL_6:

  return v6;
}

- (PGGraphFeatureNodeCollection)memoryFeatureNodes
{
  collection = [(PGGraphMemoryNode *)self collection];
  featureNodes = [collection featureNodes];

  return featureNodes;
}

- (id)memoryFeatureNodesInGraph:(id)graph
{
  collection = [(PGGraphMemoryNode *)self collection];
  featureNodes = [collection featureNodes];

  return featureNodes;
}

- (PGGraphMomentNodeCollection)memoryMomentNodes
{
  collection = [(PGGraphMemoryNode *)self collection];
  momentNodes = [collection momentNodes];

  return momentNodes;
}

- (PGGraphMemoryNodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphMemoryNodeCollection alloc] initWithNode:self];

  return v2;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  label = self->_label;
  v5 = PGStringForMemoryCategorySubcategory(self->_memoryCategorySubcategory);
  v6 = [v3 stringWithFormat:@"PGGraphMemoryNode - (%@, %@, %@)", label, v5, self->_uniqueMemoryIdentifier];

  return v6;
}

- (id)propertyDictionary
{
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
  [v3 setObject:self->_uniqueMemoryIdentifier forKeyedSubscript:@"memid"];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_memoryCategorySubcategory];
  [v3 setObject:v4 forKeyedSubscript:@"subcategory"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_generatedWithFallbackRequirements];
  [v3 setObject:v5 forKeyedSubscript:@"generatedWithFallbackRequirements"];

  return v3;
}

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count])
  {
    v6 = [v5 objectForKeyedSubscript:@"memid"];
    v7 = v6;
    if (v6 && ![v6 isEqual:self->_uniqueMemoryIdentifier])
    {
      goto LABEL_11;
    }

    v8 = [v5 objectForKeyedSubscript:@"subcategory"];
    v7 = v8;
    if (v8)
    {
      if ([v8 unsignedIntegerValue] != self->_memoryCategorySubcategory)
      {
        goto LABEL_11;
      }
    }

    v9 = [v5 objectForKeyedSubscript:@"generatedWithFallbackRequirements"];
    v7 = v9;
    if (v9 && self->_generatedWithFallbackRequirements != [v9 BOOLValue])
    {
LABEL_11:
      v10 = 0;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (PGGraphMemoryNode)initWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  propertiesCopy = properties;
  labelCopy = label;
  v9 = [propertiesCopy objectForKeyedSubscript:@"memid"];
  v10 = [propertiesCopy objectForKeyedSubscript:@"subcategory"];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  v12 = [propertiesCopy objectForKeyedSubscript:@"generatedWithFallbackRequirements"];

  bOOLValue = [v12 BOOLValue];
  v14 = [(PGGraphMemoryNode *)self initWithLabel:labelCopy memoryCategorySubcategory:unsignedIntegerValue uniqueMemoryIdentifier:v9 generatedWithFallbackRequirements:bOOLValue];

  return v14;
}

- (PGGraphMemoryNode)initWithLabel:(id)label memoryCategorySubcategory:(unint64_t)subcategory uniqueMemoryIdentifier:(id)identifier generatedWithFallbackRequirements:(BOOL)requirements
{
  labelCopy = label;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = PGGraphMemoryNode;
  v12 = [(PGGraphNode *)&v16 init];
  if (v12)
  {
    v13 = [labelCopy copy];
    label = v12->_label;
    v12->_label = v13;

    objc_storeStrong(&v12->_uniqueMemoryIdentifier, identifier);
    v12->_memoryCategorySubcategory = subcategory;
    v12->_generatedWithFallbackRequirements = requirements;
  }

  return v12;
}

+ (id)uniqueMemoryIdentifierWithMemoryLabel:(id)label featureNodes:(id)nodes
{
  v15[1] = *MEMORY[0x277D85DE8];
  labelCopy = label;
  featureIdentifiers = [nodes featureIdentifiers];
  if ([featureIdentifiers count])
  {
    v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:0];
    v15[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v9 = [featureIdentifiers sortedArrayUsingDescriptors:v8];

    v10 = MEMORY[0x277CCACA8];
    v11 = [v9 componentsJoinedByString:@"|"];
    labelCopy = [v10 stringWithFormat:@"%@|%@", labelCopy, v11];
  }

  else
  {
    labelCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", labelCopy];
  }

  v13 = *MEMORY[0x277D85DE8];

  return labelCopy;
}

+ (MARelation)momentOfMemory
{
  v2 = +[PGGraphMemoryContainsAssetsFromEdge filter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (MARelation)featureOfMemory
{
  v2 = +[PGGraphMemoryFeaturesEdge filter];
  outRelation = [v2 outRelation];

  return outRelation;
}

+ (id)filterWithUniqueMemoryIdentifierArray:(id)array
{
  v11[1] = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  filter = [self filter];
  v10 = @"memid";
  v11[0] = arrayCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [filter filterBySettingProperties:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)filterWithUniqueMemoryIdentifiers:(id)identifiers
{
  v11[1] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  filter = [self filter];
  v10 = @"memid";
  v11[0] = identifiersCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [filter filterBySettingProperties:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)filterWithUniqueMemoryIdentifier:(id)identifier
{
  v11[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  filter = [self filter];
  v10 = @"memid";
  v11[0] = identifierCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [filter filterBySettingProperties:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)filterWithMemoryCategories:(id)categories
{
  v3 = MEMORY[0x277CBEB58];
  categoriesCopy = categories;
  v5 = objc_alloc_init(v3);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__PGGraphMemoryNode_filterWithMemoryCategories___block_invoke;
  v10[3] = &unk_27888A200;
  v11 = v5;
  v6 = v5;
  [categoriesCopy enumerateIndexesUsingBlock:v10];

  v7 = objc_alloc(MEMORY[0x277D22C78]);
  v8 = [v7 initWithLabels:v6 domain:1100 properties:MEMORY[0x277CBEC10]];

  return v8;
}

void __48__PGGraphMemoryNode_filterWithMemoryCategories___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v9 = *MEMORY[0x277D85DE8];
  v4 = [PGGraphBuilder memoryLabelForCategory:a2];
  if ([v4 isEqualToString:@"Unknown"])
  {
    v5 = +[PGLogging sharedLogging];
    v6 = [v5 loggingConnection];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 67109120;
      v8[1] = v2;
      _os_log_error_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_ERROR, "[PGGraphMemoryNode filterWithMemoryCategories:] passed an unsupported category %d", v8, 8u);
    }
  }

  else
  {
    [*(a1 + 32) addObject:v4];
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)filterWithMemoryCategory:(unint64_t)category
{
  v3 = [PGGraphBuilder memoryLabelForCategory:category];
  v4 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:v3 domain:1100];

  return v4;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:0 domain:1100];

  return v2;
}

@end