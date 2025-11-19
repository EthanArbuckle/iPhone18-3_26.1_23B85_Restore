@interface SCDASession
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SCDASession)initWithBuilder:(id)a3;
- (SCDASession)initWithCoder:(id)a3;
- (SCDASession)initWithGeneration:(unint64_t)a3 sessionId:(id)a4 currentElectionAdvertisementId:(id)a5 currentElectionAdvertisementData:(id)a6 electionAdvertisementDataByIds:(id)a7;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCDASession

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  generation = self->_generation;
  v7 = a3;
  v6 = [v4 numberWithUnsignedLongLong:generation];
  [v7 encodeObject:v6 forKey:@"SCDASession::generation"];

  [v7 encodeObject:self->_sessionId forKey:@"SCDASession::sessionId"];
  [v7 encodeObject:self->_currentElectionAdvertisementId forKey:@"SCDASession::currentElectionAdvertisementId"];
  [v7 encodeObject:self->_currentElectionAdvertisementData forKey:@"SCDASession::currentElectionAdvertisementData"];
  [v7 encodeObject:self->_electionAdvertisementDataByIds forKey:@"SCDASession::electionAdvertisementDataByIds"];
}

- (SCDASession)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SCDASession::generation"];
  v6 = [v5 unsignedLongLongValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SCDASession::sessionId"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SCDASession::currentElectionAdvertisementId"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SCDASession::currentElectionAdvertisementData"];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
  v14 = [v4 decodeObjectOfClasses:v13 forKey:@"SCDASession::electionAdvertisementDataByIds"];

  v15 = [(SCDASession *)self initWithGeneration:v6 sessionId:v7 currentElectionAdvertisementId:v8 currentElectionAdvertisementData:v9 electionAdvertisementDataByIds:v14];
  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      generation = self->_generation;
      if (generation == [(SCDASession *)v5 generation])
      {
        v7 = [(SCDASession *)v5 sessionId];
        sessionId = self->_sessionId;
        if (sessionId == v7 || [(NSUUID *)sessionId isEqual:v7])
        {
          v9 = [(SCDASession *)v5 currentElectionAdvertisementId];
          currentElectionAdvertisementId = self->_currentElectionAdvertisementId;
          if (currentElectionAdvertisementId == v9 || [(NSUUID *)currentElectionAdvertisementId isEqual:v9])
          {
            v11 = [(SCDASession *)v5 currentElectionAdvertisementData];
            currentElectionAdvertisementData = self->_currentElectionAdvertisementData;
            if (currentElectionAdvertisementData == v11 || [(NSData *)currentElectionAdvertisementData isEqual:v11])
            {
              v13 = [(SCDASession *)v5 electionAdvertisementDataByIds];
              electionAdvertisementDataByIds = self->_electionAdvertisementDataByIds;
              v15 = electionAdvertisementDataByIds == v13 || [(NSDictionary *)electionAdvertisementDataByIds isEqual:v13];
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_generation];
  v4 = [v3 hash];
  v5 = [(NSUUID *)self->_sessionId hash];
  v6 = v5 ^ [(NSUUID *)self->_currentElectionAdvertisementId hash];
  v7 = v6 ^ [(NSData *)self->_currentElectionAdvertisementData hash]^ v4;
  v8 = [(NSDictionary *)self->_electionAdvertisementDataByIds hash];

  return v7 ^ v8;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = SCDASession;
  v5 = [(SCDASession *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {generation = %llu, sessionId = %@, currentElectionAdvertisementId = %@, currentElectionAdvertisementData = (%llu bytes), electionAdvertisementDataByIds = %@}", v5, self->_generation, self->_sessionId, self->_currentElectionAdvertisementId, -[NSData length](self->_currentElectionAdvertisementData, "length"), self->_electionAdvertisementDataByIds];

  return v6;
}

- (SCDASession)initWithGeneration:(unint64_t)a3 sessionId:(id)a4 currentElectionAdvertisementId:(id)a5 currentElectionAdvertisementData:(id)a6 electionAdvertisementDataByIds:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __139__SCDASession_initWithGeneration_sessionId_currentElectionAdvertisementId_currentElectionAdvertisementData_electionAdvertisementDataByIds___block_invoke;
  v22[3] = &unk_1E85D2C60;
  v26 = v15;
  v27 = a3;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v16 = v15;
  v17 = v14;
  v18 = v13;
  v19 = v12;
  v20 = [(SCDASession *)self initWithBuilder:v22];

  return v20;
}

void __139__SCDASession_initWithGeneration_sessionId_currentElectionAdvertisementId_currentElectionAdvertisementData_electionAdvertisementDataByIds___block_invoke(void *a1, void *a2)
{
  v3 = a1[8];
  v4 = a2;
  [v4 setGeneration:v3];
  [v4 setSessionId:a1[4]];
  [v4 setCurrentElectionAdvertisementId:a1[5]];
  [v4 setCurrentElectionAdvertisementData:a1[6]];
  [v4 setElectionAdvertisementDataByIds:a1[7]];
}

- (SCDASession)initWithBuilder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SCDASession;
  v5 = [(SCDASession *)&v21 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_SCDASessionMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_SCDASessionMutation *)v7 isDirty])
    {
      v6->_generation = [(_SCDASessionMutation *)v7 getGeneration];
      v8 = [(_SCDASessionMutation *)v7 getSessionId];
      v9 = [v8 copy];
      sessionId = v6->_sessionId;
      v6->_sessionId = v9;

      v11 = [(_SCDASessionMutation *)v7 getCurrentElectionAdvertisementId];
      v12 = [v11 copy];
      currentElectionAdvertisementId = v6->_currentElectionAdvertisementId;
      v6->_currentElectionAdvertisementId = v12;

      v14 = [(_SCDASessionMutation *)v7 getCurrentElectionAdvertisementData];
      v15 = [v14 copy];
      currentElectionAdvertisementData = v6->_currentElectionAdvertisementData;
      v6->_currentElectionAdvertisementData = v15;

      v17 = [(_SCDASessionMutation *)v7 getElectionAdvertisementDataByIds];
      v18 = [v17 copy];
      electionAdvertisementDataByIds = v6->_electionAdvertisementDataByIds;
      v6->_electionAdvertisementDataByIds = v18;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SCDASessionMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_SCDASessionMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(SCDASession);
      v6->_generation = [(_SCDASessionMutation *)v5 getGeneration];
      v7 = [(_SCDASessionMutation *)v5 getSessionId];
      v8 = [v7 copy];
      sessionId = v6->_sessionId;
      v6->_sessionId = v8;

      v10 = [(_SCDASessionMutation *)v5 getCurrentElectionAdvertisementId];
      v11 = [v10 copy];
      currentElectionAdvertisementId = v6->_currentElectionAdvertisementId;
      v6->_currentElectionAdvertisementId = v11;

      v13 = [(_SCDASessionMutation *)v5 getCurrentElectionAdvertisementData];
      v14 = [v13 copy];
      currentElectionAdvertisementData = v6->_currentElectionAdvertisementData;
      v6->_currentElectionAdvertisementData = v14;

      v16 = [(_SCDASessionMutation *)v5 getElectionAdvertisementDataByIds];
      v17 = [v16 copy];
      electionAdvertisementDataByIds = v6->_electionAdvertisementDataByIds;
      v6->_electionAdvertisementDataByIds = v17;
    }

    else
    {
      v6 = [(SCDASession *)self copy];
    }
  }

  else
  {
    v6 = [(SCDASession *)self copy];
  }

  return v6;
}

@end