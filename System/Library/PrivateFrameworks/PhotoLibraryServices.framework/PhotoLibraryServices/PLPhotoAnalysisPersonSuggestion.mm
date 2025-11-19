@interface PLPhotoAnalysisPersonSuggestion
- (PLPhotoAnalysisPersonSuggestion)initWithSuggestionDictionary:(id)a3;
- (id)description;
- (id)suggestionDictionaryRepresentation;
@end

@implementation PLPhotoAnalysisPersonSuggestion

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PLPhotoAnalysisPersonSuggestion;
  v4 = [(PLPhotoAnalysisPersonSuggestion *)&v8 description];
  v5 = [(PLPhotoAnalysisPersonSuggestion *)self suggestionDictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)suggestionDictionaryRepresentation
{
  v11[5] = *MEMORY[0x1E69E9840];
  v10[0] = @"faceCSN";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_keyFaceClusterSequenceNumber];
  keyFaceLocalIdentifier = self->_keyFaceLocalIdentifier;
  personLocalIdentifier = self->_personLocalIdentifier;
  v11[0] = v3;
  v11[1] = keyFaceLocalIdentifier;
  v10[1] = @"faceIdentifier";
  v10[2] = @"personIdentifier";
  v11[2] = personLocalIdentifier;
  v10[3] = @"personFaceCount";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_personFaceCount];
  v11[3] = v6;
  v10[4] = @"confirmed";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_confirmed];
  v11[4] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:5];

  return v8;
}

- (PLPhotoAnalysisPersonSuggestion)initWithSuggestionDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PLPhotoAnalysisPersonSuggestion;
  v5 = [(PLPhotoAnalysisPersonSuggestion *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"faceCSN"];
    v7 = [v4 objectForKeyedSubscript:@"faceIdentifier"];
    v8 = [v4 objectForKeyedSubscript:@"personIdentifier"];
    v9 = [v4 objectForKeyedSubscript:@"personFaceCount"];
    v10 = [v4 objectForKeyedSubscript:@"confirmed"];
    v11 = [v4 objectForKeyedSubscript:@"similarityScore"];
    if (v6 && v7 && v8 && v10 && v9)
    {
      v5->_keyFaceClusterSequenceNumber = [v6 integerValue];
      v12 = [v7 copy];
      keyFaceLocalIdentifier = v5->_keyFaceLocalIdentifier;
      v5->_keyFaceLocalIdentifier = v12;

      v14 = [v8 copy];
      personLocalIdentifier = v5->_personLocalIdentifier;
      v5->_personLocalIdentifier = v14;

      v5->_personFaceCount = [v9 integerValue];
      v5->_confirmed = [v10 BOOLValue];
      if (v11)
      {
        [v11 doubleValue];
      }

      else
      {
        v16 = 0.0;
      }

      v5->_similarityScore = v16;
    }

    else
    {

      v5 = 0;
    }
  }

  return v5;
}

@end