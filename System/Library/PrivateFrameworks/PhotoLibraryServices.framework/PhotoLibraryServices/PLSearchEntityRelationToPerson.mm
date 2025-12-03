@interface PLSearchEntityRelationToPerson
- (PLSearchEntityRelationToPerson)initWithPerson:(id)person relationType:(signed __int16)type relationTypeConfidence:(double)confidence;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation PLSearchEntityRelationToPerson

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  personUUID = [(PLSearchEntityRelationToPerson *)self personUUID];
  relationType = [(PLSearchEntityRelationToPerson *)self relationType];
  [(PLSearchEntityRelationToPerson *)self relationTypeConfidence];
  v7 = [v3 stringWithFormat:@"\npersonUUID: %@\nrelationType: %llu\nrelationTypeConfidence: %f", personUUID, relationType, v6];

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

- (PLSearchEntityRelationToPerson)initWithPerson:(id)person relationType:(signed __int16)type relationTypeConfidence:(double)confidence
{
  personCopy = person;
  v13.receiver = self;
  v13.super_class = PLSearchEntityRelationToPerson;
  v9 = [(PLSearchEntityRelationToPerson *)&v13 init];
  if (v9)
  {
    personUUID = [personCopy personUUID];
    personUUID = v9->_personUUID;
    v9->_personUUID = personUUID;

    v9->_relationType = type;
    v9->_relationTypeConfidence = confidence;
  }

  return v9;
}

@end