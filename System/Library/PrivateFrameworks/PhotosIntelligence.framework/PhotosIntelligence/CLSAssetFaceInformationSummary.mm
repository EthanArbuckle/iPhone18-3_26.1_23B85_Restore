@interface CLSAssetFaceInformationSummary
+ (id)_faceInformationByPersonLocalIdentifierFromDictionaryRepresentation:(id)representation;
- (CLSAssetFaceInformationSummary)initWithDictionaryRepresentation:(id)representation;
- (CLSAssetFaceInformationSummary)initWithNumberOfFaces:(unint64_t)faces numberOfFacesIncludingPets:(unint64_t)pets numberOfFacesOfVerifiedPersons:(unint64_t)persons numberOfFacesOfHiddenPersons:(unint64_t)hiddenPersons numberOfGoodFaces:(unint64_t)goodFaces numberOfGoodFacesIncludingPets:(unint64_t)includingPets numberOfGoodFacesOfVerifiedPersons:(unint64_t)verifiedPersons averageFaceQuality:(double)self0 averageFaceQualityIncludingPets:(double)self1 averageFaceQualityOfVerifiedPersons:(double)self2 userFeedbackScore:(double)self3 faceInformationByPersonLocalIdentifier:(id)self4 faceInformationByConsolidatedPersonLocalIdentifier:(id)self5;
- (id)_dictionaryRepresentationForFaceInformationByPersonLocalIdentifier:(id)identifier;
- (id)dictionaryRepresentation;
@end

@implementation CLSAssetFaceInformationSummary

- (id)_dictionaryRepresentationForFaceInformationByPersonLocalIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E695DF90];
  identifierCopy = identifier;
  v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(identifierCopy, "count")}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __101__CLSAssetFaceInformationSummary__dictionaryRepresentationForFaceInformationByPersonLocalIdentifier___block_invoke;
  v8[3] = &unk_1E82A2868;
  v6 = v5;
  v9 = v6;
  [identifierCopy enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

void __101__CLSAssetFaceInformationSummary__dictionaryRepresentationForFaceInformationByPersonLocalIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 dictionaryRepresentation];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (id)dictionaryRepresentation
{
  v19[13] = *MEMORY[0x1E69E9840];
  v18[0] = @"numberOfFaces";
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_numberOfFaces];
  v19[0] = v17;
  v18[1] = @"numberOfFacesIncludingPets";
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_numberOfFacesIncludingPets];
  v19[1] = v16;
  v18[2] = @"numberOfFacesOfVerifiedPersons";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_numberOfFacesOfVerifiedPersons];
  v19[2] = v15;
  v18[3] = @"numberOfFacesOfHiddenPersons";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_numberOfFacesOfHiddenPersons];
  v19[3] = v14;
  v18[4] = @"numberOfGoodFaces";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_numberOfGoodFaces];
  v19[4] = v3;
  v18[5] = @"numberOfGoodFacesIncludingPets";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_numberOfGoodFacesIncludingPets];
  v19[5] = v4;
  v18[6] = @"numberOfGoodFacesOfVerifiedPersons";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_numberOfGoodFacesOfVerifiedPersons];
  v19[6] = v5;
  v18[7] = @"averageFaceQuality";
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_averageFaceQuality];
  v19[7] = v6;
  v18[8] = @"averageFaceQualityIncludingPets";
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_averageFaceQualityIncludingPets];
  v19[8] = v7;
  v18[9] = @"averageFaceQualityOfVerifiedPersons";
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_averageFaceQualityOfVerifiedPersons];
  v19[9] = v8;
  v18[10] = @"userFeedbackScore";
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_userFeedbackScore];
  v19[10] = v9;
  v18[11] = @"faceInformationByPersonLocalIdentifier";
  v10 = [(CLSAssetFaceInformationSummary *)self _dictionaryRepresentationForFaceInformationByPersonLocalIdentifier:self->_faceInformationByPersonLocalIdentifier];
  v19[11] = v10;
  v18[12] = @"faceInformationByConsolidatedPersonLocalIdentifier";
  v11 = [(CLSAssetFaceInformationSummary *)self _dictionaryRepresentationForFaceInformationByPersonLocalIdentifier:self->_faceInformationByConsolidatedPersonLocalIdentifier];
  v19[12] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:13];

  return v12;
}

- (CLSAssetFaceInformationSummary)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"numberOfFaces"];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v6 = [representationCopy objectForKeyedSubscript:@"numberOfFacesIncludingPets"];
  unsignedIntegerValue2 = [v6 unsignedIntegerValue];

  v7 = [representationCopy objectForKeyedSubscript:@"numberOfFacesOfVerifiedPersons"];
  unsignedIntegerValue3 = [v7 unsignedIntegerValue];

  v9 = [representationCopy objectForKeyedSubscript:@"numberOfFacesOfHiddenPersons"];
  unsignedIntegerValue4 = [v9 unsignedIntegerValue];

  v11 = [representationCopy objectForKeyedSubscript:@"numberOfGoodFaces"];
  unsignedIntegerValue5 = [v11 unsignedIntegerValue];

  v13 = [representationCopy objectForKeyedSubscript:@"numberOfGoodFacesIncludingPets"];
  unsignedIntegerValue6 = [v13 unsignedIntegerValue];

  v15 = [representationCopy objectForKeyedSubscript:@"numberOfGoodFacesOfVerifiedPersons"];
  unsignedIntegerValue7 = [v15 unsignedIntegerValue];

  v17 = [representationCopy objectForKeyedSubscript:@"averageFaceQuality"];
  [v17 doubleValue];
  v19 = v18;

  v20 = [representationCopy objectForKeyedSubscript:@"averageFaceQualityIncludingPets"];
  [v20 doubleValue];
  v22 = v21;

  v23 = [representationCopy objectForKeyedSubscript:@"averageFaceQualityOfVerifiedPersons"];
  [v23 doubleValue];
  v25 = v24;

  v26 = [representationCopy objectForKeyedSubscript:@"userFeedbackScore"];
  [v26 doubleValue];
  v28 = v27;

  v29 = objc_opt_class();
  v30 = [representationCopy objectForKeyedSubscript:@"faceInformationByPersonLocalIdentifier"];
  v31 = [v29 _faceInformationByPersonLocalIdentifierFromDictionaryRepresentation:v30];

  v32 = objc_opt_class();
  v33 = [representationCopy objectForKeyedSubscript:@"faceInformationByConsolidatedPersonLocalIdentifier"];

  v34 = [v32 _faceInformationByPersonLocalIdentifierFromDictionaryRepresentation:v33];

  v35 = [(CLSAssetFaceInformationSummary *)self initWithNumberOfFaces:unsignedIntegerValue numberOfFacesIncludingPets:unsignedIntegerValue2 numberOfFacesOfVerifiedPersons:unsignedIntegerValue3 numberOfFacesOfHiddenPersons:unsignedIntegerValue4 numberOfGoodFaces:unsignedIntegerValue5 numberOfGoodFacesIncludingPets:unsignedIntegerValue6 numberOfGoodFacesOfVerifiedPersons:v19 averageFaceQuality:v22 averageFaceQualityIncludingPets:v25 averageFaceQualityOfVerifiedPersons:v28 userFeedbackScore:unsignedIntegerValue7 faceInformationByPersonLocalIdentifier:v31 faceInformationByConsolidatedPersonLocalIdentifier:v34];
  return v35;
}

- (CLSAssetFaceInformationSummary)initWithNumberOfFaces:(unint64_t)faces numberOfFacesIncludingPets:(unint64_t)pets numberOfFacesOfVerifiedPersons:(unint64_t)persons numberOfFacesOfHiddenPersons:(unint64_t)hiddenPersons numberOfGoodFaces:(unint64_t)goodFaces numberOfGoodFacesIncludingPets:(unint64_t)includingPets numberOfGoodFacesOfVerifiedPersons:(unint64_t)verifiedPersons averageFaceQuality:(double)self0 averageFaceQualityIncludingPets:(double)self1 averageFaceQualityOfVerifiedPersons:(double)self2 userFeedbackScore:(double)self3 faceInformationByPersonLocalIdentifier:(id)self4 faceInformationByConsolidatedPersonLocalIdentifier:(id)self5
{
  includingPetsCopy = includingPets;
  goodFacesCopy = goodFaces;
  hiddenPersonsCopy = hiddenPersons;
  personsCopy = persons;
  petsCopy = pets;
  facesCopy = faces;
  identifierCopy = identifier;
  localIdentifierCopy = localIdentifier;
  v35.receiver = self;
  v35.super_class = CLSAssetFaceInformationSummary;
  v28 = [(CLSAssetFaceInformationSummary *)&v35 init];
  v29 = v28;
  if (v28)
  {
    v28->_numberOfFaces = facesCopy;
    v28->_numberOfFacesIncludingPets = petsCopy;
    v28->_numberOfFacesOfVerifiedPersons = personsCopy;
    v28->_numberOfFacesOfHiddenPersons = hiddenPersonsCopy;
    v28->_numberOfGoodFaces = goodFacesCopy;
    v28->_numberOfGoodFacesIncludingPets = includingPetsCopy;
    v28->_numberOfGoodFacesOfVerifiedPersons = verifiedPersons;
    v28->_averageFaceQuality = quality;
    v28->_averageFaceQualityIncludingPets = qualityIncludingPets;
    v28->_averageFaceQualityOfVerifiedPersons = ofVerifiedPersons;
    v28->_userFeedbackScore = score;
    v30 = [identifierCopy copy];
    faceInformationByPersonLocalIdentifier = v29->_faceInformationByPersonLocalIdentifier;
    v29->_faceInformationByPersonLocalIdentifier = v30;

    v32 = [localIdentifierCopy copy];
    faceInformationByConsolidatedPersonLocalIdentifier = v29->_faceInformationByConsolidatedPersonLocalIdentifier;
    v29->_faceInformationByConsolidatedPersonLocalIdentifier = v32;
  }

  return v29;
}

+ (id)_faceInformationByPersonLocalIdentifierFromDictionaryRepresentation:(id)representation
{
  v3 = MEMORY[0x1E695DF90];
  representationCopy = representation;
  v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(representationCopy, "count")}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __102__CLSAssetFaceInformationSummary__faceInformationByPersonLocalIdentifierFromDictionaryRepresentation___block_invoke;
  v8[3] = &unk_1E82A2840;
  v6 = v5;
  v9 = v6;
  [representationCopy enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

void __102__CLSAssetFaceInformationSummary__faceInformationByPersonLocalIdentifierFromDictionaryRepresentation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[CLSFaceInformation alloc] initWithDictionaryRepresentation:v5];

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

@end