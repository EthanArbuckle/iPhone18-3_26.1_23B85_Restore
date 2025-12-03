@interface PCClusterMetadata
- (PCClusterMetadata)initWithCoder:(id)coder;
- (PCClusterMetadata)initWithIdentifier:(id)identifier phenoType:(id)type activityTypeHistogram:(id)histogram timeTagHistogram:(id)tagHistogram dayOfWeekHistogram:(id)weekHistogram weekOfYearHistogram:(id)yearHistogram placeNameHistogram:(id)nameHistogram combinedPlaceTypeHistogram:(id)self0 enclosingPlaceNameHistogram:(id)self1 subSuggestionIDsBeforePruning:(id)self2;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCClusterMetadata

- (PCClusterMetadata)initWithIdentifier:(id)identifier phenoType:(id)type activityTypeHistogram:(id)histogram timeTagHistogram:(id)tagHistogram dayOfWeekHistogram:(id)weekHistogram weekOfYearHistogram:(id)yearHistogram placeNameHistogram:(id)nameHistogram combinedPlaceTypeHistogram:(id)self0 enclosingPlaceNameHistogram:(id)self1 subSuggestionIDsBeforePruning:(id)self2
{
  identifierCopy = identifier;
  obj = type;
  typeCopy = type;
  histogramCopy = histogram;
  histogramCopy2 = histogram;
  tagHistogramCopy = tagHistogram;
  weekHistogramCopy = weekHistogram;
  weekHistogramCopy2 = weekHistogram;
  yearHistogramCopy = yearHistogram;
  yearHistogramCopy2 = yearHistogram;
  nameHistogramCopy = nameHistogram;
  typeHistogramCopy = typeHistogram;
  placeNameHistogramCopy = placeNameHistogram;
  pruningCopy = pruning;
  v36.receiver = self;
  v36.super_class = PCClusterMetadata;
  v23 = [(PCClusterMetadata *)&v36 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_identifier, identifier);
    objc_storeStrong(&v24->_phenotype, obj);
    objc_storeStrong(&v24->_activityTypeHistogram, histogramCopy);
    objc_storeStrong(&v24->_timeTagHistogram, tagHistogram);
    objc_storeStrong(&v24->_dayOfWeekHistogram, weekHistogramCopy);
    objc_storeStrong(&v24->_weekOfYearHistogram, yearHistogramCopy);
    objc_storeStrong(&v24->_placeNameHistogram, nameHistogram);
    objc_storeStrong(&v24->_combinedPlaceTypeHistogram, typeHistogram);
    objc_storeStrong(&v24->_enclosingPlaceNameHistogram, placeNameHistogram);
    objc_storeStrong(&v24->_subSuggestionIDsBeforePruning, pruning);
  }

  return v24;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  v5 = [PCDictionaryEncoder encodeDictionary:self->_phenotype];
  [coderCopy encodeObject:v5 forKey:@"phenotype"];

  v6 = [PCDictionaryEncoder encodeDictionary:self->_activityTypeHistogram];
  [coderCopy encodeObject:v6 forKey:@"activityTypeHistogram"];

  v7 = [PCDictionaryEncoder encodeDictionary:self->_timeTagHistogram];
  [coderCopy encodeObject:v7 forKey:@"timeTagHistogram"];

  v8 = [PCDictionaryEncoder encodeDictionary:self->_dayOfWeekHistogram];
  [coderCopy encodeObject:v8 forKey:@"dayOfWeekHistogram"];

  v9 = [PCDictionaryEncoder encodeDictionary:self->_weekOfYearHistogram];
  [coderCopy encodeObject:v9 forKey:@"weekOfYearHistogram"];

  v10 = [PCDictionaryEncoder encodeDictionary:self->_placeNameHistogram];
  [coderCopy encodeObject:v10 forKey:@"placeNameHistogram"];

  v11 = [PCDictionaryEncoder encodeDictionary:self->_combinedPlaceTypeHistogram];
  [coderCopy encodeObject:v11 forKey:@"combinedPlaceTypeHistogram"];

  v12 = [PCDictionaryEncoder encodeDictionary:self->_enclosingPlaceNameHistogram];
  [coderCopy encodeObject:v12 forKey:@"enclosingPlaceNameHistogram"];

  [coderCopy encodeObject:self->_subSuggestionIDsBeforePruning forKey:@"subSuggestionIDsBeforePruning"];
}

- (PCClusterMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phenotype"];
  v24 = [PCDictionaryEncoder decodeToDictionary:v4];

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityTypeHistogram"];
  v23 = [PCDictionaryEncoder decodeToDictionary:v5];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeTagHistogram"];
  v22 = [PCDictionaryEncoder decodeToDictionary:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dayOfWeekHistogram"];
  v21 = [PCDictionaryEncoder decodeToDictionary:v7];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"weekOfYearHistogram"];
  v20 = [PCDictionaryEncoder decodeToDictionary:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placeNameHistogram"];
  v10 = [PCDictionaryEncoder decodeToDictionary:v9];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"combinedPlaceTypeHistogram"];
  v12 = [PCDictionaryEncoder decodeToDictionary:v11];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enclosingPlaceNameHistogram"];
  v14 = [PCDictionaryEncoder decodeToDictionary:v13];

  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"subSuggestionIDsBeforePruning"];

  v27 = [(PCClusterMetadata *)self initWithIdentifier:v25 phenoType:v24 activityTypeHistogram:v23 timeTagHistogram:v22 dayOfWeekHistogram:v21 weekOfYearHistogram:v20 placeNameHistogram:v10 combinedPlaceTypeHistogram:v12 enclosingPlaceNameHistogram:v14 subSuggestionIDsBeforePruning:v18];
  return v27;
}

@end