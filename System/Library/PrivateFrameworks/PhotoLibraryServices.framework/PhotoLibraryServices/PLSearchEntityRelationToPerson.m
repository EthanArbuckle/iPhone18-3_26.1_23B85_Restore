@interface PLSearchEntityRelationToPerson
- (PLSearchEntityRelationToPerson)initWithPerson:(id)a3 relationType:(signed __int16)a4 relationTypeConfidence:(double)a5;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation PLSearchEntityRelationToPerson

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PLSearchEntityRelationToPerson *)self personUUID];
  v5 = [(PLSearchEntityRelationToPerson *)self relationType];
  [(PLSearchEntityRelationToPerson *)self relationTypeConfidence];
  v7 = [v3 stringWithFormat:@"\npersonUUID: %@\nrelationType: %llu\nrelationTypeConfidence: %f", v4, v5, v6];

  return v7;
}

- (id)dictionaryRepresentation
{
  v8[3] = *MEMORY[0x1E69E9840];
  v8[0] = self->_personUUID;
  v7[0] = @"personUUID";
  v7[1] = @"relationType";
  v3 = [MEMORY[0x1E696AD98] numberWithShort:self->_relationType];
  v8[1] = v3;
  v7[2] = @"relationTypeConfidence";
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_relationTypeConfidence];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

- (PLSearchEntityRelationToPerson)initWithPerson:(id)a3 relationType:(signed __int16)a4 relationTypeConfidence:(double)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = PLSearchEntityRelationToPerson;
  v9 = [(PLSearchEntityRelationToPerson *)&v13 init];
  if (v9)
  {
    v10 = [v8 personUUID];
    personUUID = v9->_personUUID;
    v9->_personUUID = v10;

    v9->_relationType = a4;
    v9->_relationTypeConfidence = a5;
  }

  return v9;
}

@end