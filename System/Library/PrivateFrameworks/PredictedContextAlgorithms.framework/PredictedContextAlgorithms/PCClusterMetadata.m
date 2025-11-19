@interface PCClusterMetadata
- (PCClusterMetadata)initWithCoder:(id)a3;
- (PCClusterMetadata)initWithIdentifier:(id)a3 phenoType:(id)a4 activityTypeHistogram:(id)a5 timeTagHistogram:(id)a6 dayOfWeekHistogram:(id)a7 weekOfYearHistogram:(id)a8 placeNameHistogram:(id)a9 combinedPlaceTypeHistogram:(id)a10 enclosingPlaceNameHistogram:(id)a11 subSuggestionIDsBeforePruning:(id)a12;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PCClusterMetadata

- (PCClusterMetadata)initWithIdentifier:(id)a3 phenoType:(id)a4 activityTypeHistogram:(id)a5 timeTagHistogram:(id)a6 dayOfWeekHistogram:(id)a7 weekOfYearHistogram:(id)a8 placeNameHistogram:(id)a9 combinedPlaceTypeHistogram:(id)a10 enclosingPlaceNameHistogram:(id)a11 subSuggestionIDsBeforePruning:(id)a12
{
  v35 = a3;
  obj = a4;
  v34 = a4;
  v27 = a5;
  v33 = a5;
  v32 = a6;
  v28 = a7;
  v31 = a7;
  v29 = a8;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v36.receiver = self;
  v36.super_class = PCClusterMetadata;
  v23 = [(PCClusterMetadata *)&v36 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_identifier, a3);
    objc_storeStrong(&v24->_phenotype, obj);
    objc_storeStrong(&v24->_activityTypeHistogram, v27);
    objc_storeStrong(&v24->_timeTagHistogram, a6);
    objc_storeStrong(&v24->_dayOfWeekHistogram, v28);
    objc_storeStrong(&v24->_weekOfYearHistogram, v29);
    objc_storeStrong(&v24->_placeNameHistogram, a9);
    objc_storeStrong(&v24->_combinedPlaceTypeHistogram, a10);
    objc_storeStrong(&v24->_enclosingPlaceNameHistogram, a11);
    objc_storeStrong(&v24->_subSuggestionIDsBeforePruning, a12);
  }

  return v24;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v13 = a3;
  [v13 encodeObject:identifier forKey:@"identifier"];
  v5 = [PCDictionaryEncoder encodeDictionary:self->_phenotype];
  [v13 encodeObject:v5 forKey:@"phenotype"];

  v6 = [PCDictionaryEncoder encodeDictionary:self->_activityTypeHistogram];
  [v13 encodeObject:v6 forKey:@"activityTypeHistogram"];

  v7 = [PCDictionaryEncoder encodeDictionary:self->_timeTagHistogram];
  [v13 encodeObject:v7 forKey:@"timeTagHistogram"];

  v8 = [PCDictionaryEncoder encodeDictionary:self->_dayOfWeekHistogram];
  [v13 encodeObject:v8 forKey:@"dayOfWeekHistogram"];

  v9 = [PCDictionaryEncoder encodeDictionary:self->_weekOfYearHistogram];
  [v13 encodeObject:v9 forKey:@"weekOfYearHistogram"];

  v10 = [PCDictionaryEncoder encodeDictionary:self->_placeNameHistogram];
  [v13 encodeObject:v10 forKey:@"placeNameHistogram"];

  v11 = [PCDictionaryEncoder encodeDictionary:self->_combinedPlaceTypeHistogram];
  [v13 encodeObject:v11 forKey:@"combinedPlaceTypeHistogram"];

  v12 = [PCDictionaryEncoder encodeDictionary:self->_enclosingPlaceNameHistogram];
  [v13 encodeObject:v12 forKey:@"enclosingPlaceNameHistogram"];

  [v13 encodeObject:self->_subSuggestionIDsBeforePruning forKey:@"subSuggestionIDsBeforePruning"];
}

- (PCClusterMetadata)initWithCoder:(id)a3
{
  v3 = a3;
  v25 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"phenotype"];
  v24 = [PCDictionaryEncoder decodeToDictionary:v4];

  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"activityTypeHistogram"];
  v23 = [PCDictionaryEncoder decodeToDictionary:v5];

  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"timeTagHistogram"];
  v22 = [PCDictionaryEncoder decodeToDictionary:v6];

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"dayOfWeekHistogram"];
  v21 = [PCDictionaryEncoder decodeToDictionary:v7];

  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"weekOfYearHistogram"];
  v20 = [PCDictionaryEncoder decodeToDictionary:v8];

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"placeNameHistogram"];
  v10 = [PCDictionaryEncoder decodeToDictionary:v9];

  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"combinedPlaceTypeHistogram"];
  v12 = [PCDictionaryEncoder decodeToDictionary:v11];

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"enclosingPlaceNameHistogram"];
  v14 = [PCDictionaryEncoder decodeToDictionary:v13];

  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  v18 = [v3 decodeObjectOfClasses:v17 forKey:@"subSuggestionIDsBeforePruning"];

  v27 = [(PCClusterMetadata *)self initWithIdentifier:v25 phenoType:v24 activityTypeHistogram:v23 timeTagHistogram:v22 dayOfWeekHistogram:v21 weekOfYearHistogram:v20 placeNameHistogram:v10 combinedPlaceTypeHistogram:v12 enclosingPlaceNameHistogram:v14 subSuggestionIDsBeforePruning:v18];
  return v27;
}

@end