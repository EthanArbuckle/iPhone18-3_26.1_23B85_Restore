@interface CLSAssetFaceInformationSummary
+ (id)_faceInformationByPersonLocalIdentifierFromDictionaryRepresentation:(id)a3;
- (CLSAssetFaceInformationSummary)initWithDictionaryRepresentation:(id)a3;
- (CLSAssetFaceInformationSummary)initWithNumberOfFaces:(unint64_t)a3 numberOfFacesIncludingPets:(unint64_t)a4 numberOfFacesOfVerifiedPersons:(unint64_t)a5 numberOfFacesOfHiddenPersons:(unint64_t)a6 numberOfGoodFaces:(unint64_t)a7 numberOfGoodFacesIncludingPets:(unint64_t)a8 numberOfGoodFacesOfVerifiedPersons:(unint64_t)a9 averageFaceQuality:(double)a10 averageFaceQualityIncludingPets:(double)a11 averageFaceQualityOfVerifiedPersons:(double)a12 userFeedbackScore:(double)a13 faceInformationByPersonLocalIdentifier:(id)a14 faceInformationByConsolidatedPersonLocalIdentifier:(id)a15;
- (id)_dictionaryRepresentationForFaceInformationByPersonLocalIdentifier:(id)a3;
- (id)dictionaryRepresentation;
@end

@implementation CLSAssetFaceInformationSummary

- (id)_dictionaryRepresentationForFaceInformationByPersonLocalIdentifier:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __101__CLSAssetFaceInformationSummary__dictionaryRepresentationForFaceInformationByPersonLocalIdentifier___block_invoke;
  v8[3] = &unk_1E82A2868;
  v6 = v5;
  v9 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

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

- (CLSAssetFaceInformationSummary)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"numberOfFaces"];
  v38 = [v5 unsignedIntegerValue];

  v6 = [v4 objectForKeyedSubscript:@"numberOfFacesIncludingPets"];
  v37 = [v6 unsignedIntegerValue];

  v7 = [v4 objectForKeyedSubscript:@"numberOfFacesOfVerifiedPersons"];
  v8 = [v7 unsignedIntegerValue];

  v9 = [v4 objectForKeyedSubscript:@"numberOfFacesOfHiddenPersons"];
  v10 = [v9 unsignedIntegerValue];

  v11 = [v4 objectForKeyedSubscript:@"numberOfGoodFaces"];
  v12 = [v11 unsignedIntegerValue];

  v13 = [v4 objectForKeyedSubscript:@"numberOfGoodFacesIncludingPets"];
  v14 = [v13 unsignedIntegerValue];

  v15 = [v4 objectForKeyedSubscript:@"numberOfGoodFacesOfVerifiedPersons"];
  v16 = [v15 unsignedIntegerValue];

  v17 = [v4 objectForKeyedSubscript:@"averageFaceQuality"];
  [v17 doubleValue];
  v19 = v18;

  v20 = [v4 objectForKeyedSubscript:@"averageFaceQualityIncludingPets"];
  [v20 doubleValue];
  v22 = v21;

  v23 = [v4 objectForKeyedSubscript:@"averageFaceQualityOfVerifiedPersons"];
  [v23 doubleValue];
  v25 = v24;

  v26 = [v4 objectForKeyedSubscript:@"userFeedbackScore"];
  [v26 doubleValue];
  v28 = v27;

  v29 = objc_opt_class();
  v30 = [v4 objectForKeyedSubscript:@"faceInformationByPersonLocalIdentifier"];
  v31 = [v29 _faceInformationByPersonLocalIdentifierFromDictionaryRepresentation:v30];

  v32 = objc_opt_class();
  v33 = [v4 objectForKeyedSubscript:@"faceInformationByConsolidatedPersonLocalIdentifier"];

  v34 = [v32 _faceInformationByPersonLocalIdentifierFromDictionaryRepresentation:v33];

  v35 = [(CLSAssetFaceInformationSummary *)self initWithNumberOfFaces:v38 numberOfFacesIncludingPets:v37 numberOfFacesOfVerifiedPersons:v8 numberOfFacesOfHiddenPersons:v10 numberOfGoodFaces:v12 numberOfGoodFacesIncludingPets:v14 numberOfGoodFacesOfVerifiedPersons:v19 averageFaceQuality:v22 averageFaceQualityIncludingPets:v25 averageFaceQualityOfVerifiedPersons:v28 userFeedbackScore:v16 faceInformationByPersonLocalIdentifier:v31 faceInformationByConsolidatedPersonLocalIdentifier:v34];
  return v35;
}

- (CLSAssetFaceInformationSummary)initWithNumberOfFaces:(unint64_t)a3 numberOfFacesIncludingPets:(unint64_t)a4 numberOfFacesOfVerifiedPersons:(unint64_t)a5 numberOfFacesOfHiddenPersons:(unint64_t)a6 numberOfGoodFaces:(unint64_t)a7 numberOfGoodFacesIncludingPets:(unint64_t)a8 numberOfGoodFacesOfVerifiedPersons:(unint64_t)a9 averageFaceQuality:(double)a10 averageFaceQualityIncludingPets:(double)a11 averageFaceQualityOfVerifiedPersons:(double)a12 userFeedbackScore:(double)a13 faceInformationByPersonLocalIdentifier:(id)a14 faceInformationByConsolidatedPersonLocalIdentifier:(id)a15
{
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v26 = a14;
  v27 = a15;
  v35.receiver = self;
  v35.super_class = CLSAssetFaceInformationSummary;
  v28 = [(CLSAssetFaceInformationSummary *)&v35 init];
  v29 = v28;
  if (v28)
  {
    v28->_numberOfFaces = v24;
    v28->_numberOfFacesIncludingPets = v23;
    v28->_numberOfFacesOfVerifiedPersons = v22;
    v28->_numberOfFacesOfHiddenPersons = v21;
    v28->_numberOfGoodFaces = v20;
    v28->_numberOfGoodFacesIncludingPets = v19;
    v28->_numberOfGoodFacesOfVerifiedPersons = a9;
    v28->_averageFaceQuality = a10;
    v28->_averageFaceQualityIncludingPets = a11;
    v28->_averageFaceQualityOfVerifiedPersons = a12;
    v28->_userFeedbackScore = a13;
    v30 = [v26 copy];
    faceInformationByPersonLocalIdentifier = v29->_faceInformationByPersonLocalIdentifier;
    v29->_faceInformationByPersonLocalIdentifier = v30;

    v32 = [v27 copy];
    faceInformationByConsolidatedPersonLocalIdentifier = v29->_faceInformationByConsolidatedPersonLocalIdentifier;
    v29->_faceInformationByConsolidatedPersonLocalIdentifier = v32;
  }

  return v29;
}

+ (id)_faceInformationByPersonLocalIdentifierFromDictionaryRepresentation:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __102__CLSAssetFaceInformationSummary__faceInformationByPersonLocalIdentifierFromDictionaryRepresentation___block_invoke;
  v8[3] = &unk_1E82A2840;
  v6 = v5;
  v9 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

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