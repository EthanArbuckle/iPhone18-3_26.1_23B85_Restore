@interface SMTTRPCandidate
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SMTTRPCandidate)initWithBuilder:(id)a3;
- (SMTTRPCandidate)initWithCoder:(id)a3;
- (SMTTRPCandidate)initWithTrpCandidateId:(id)a3 requestId:(id)a4 tcuList:(id)a5;
- (SMTTRPCandidate)initWithTrpCandidateId:(id)a3 requestId:(id)a4 tcuList:(id)a5 userId:(id)a6;
- (SMTTRPCandidate)initWithTrpCandidateId:(id)a3 tcuList:(id)a4;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMTTRPCandidate

- (void)encodeWithCoder:(id)a3
{
  trpCandidateId = self->_trpCandidateId;
  v5 = a3;
  [v5 encodeObject:trpCandidateId forKey:@"trpCandidateId"];
  [v5 encodeObject:self->_requestId forKey:@"requestId"];
  [v5 encodeObject:self->_tcuList forKey:@"tcuList"];
  [v5 encodeObject:self->_userId forKey:@"userId"];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isContinuous];
  [v5 encodeObject:v6 forKey:@"isContinuous"];
}

- (SMTTRPCandidate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trpCandidateId"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestId"];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"tcuList"];

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userId"];
  v12 = [v4 decodeBoolForKey:@"isContinuous"];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __33__SMTTRPCandidate_initWithCoder___block_invoke;
  v19[3] = &unk_2784D5EE0;
  v20 = v5;
  v21 = v6;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v13 = v11;
  v14 = v10;
  v15 = v6;
  v16 = v5;
  v17 = [(SMTTRPCandidate *)self initWithBuilder:v19];

  return v17;
}

void __33__SMTTRPCandidate_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setTrpCandidateId:v3];
  [v4 setRequestId:*(a1 + 40)];
  [v4 setTcuList:*(a1 + 48)];
  [v4 setUserId:*(a1 + 56)];
  [v4 setIsContinuous:*(a1 + 64)];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SMTTRPCandidate *)v5 trpCandidateId];
      trpCandidateId = self->_trpCandidateId;
      if (trpCandidateId == v6 || [(NSString *)trpCandidateId isEqual:v6])
      {
        v8 = [(SMTTRPCandidate *)v5 requestId];
        requestId = self->_requestId;
        if (requestId == v8 || [(NSString *)requestId isEqual:v8])
        {
          v10 = [(SMTTRPCandidate *)v5 tcuList];
          tcuList = self->_tcuList;
          if (tcuList == v10 || [(NSArray *)tcuList isEqual:v10])
          {
            v12 = [(SMTTRPCandidate *)v5 userId];
            userId = self->_userId;
            v14 = (userId == v12 || [(NSString *)userId isEqual:v12]) && self->_isContinuous == [(SMTTRPCandidate *)v5 isContinuous];
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_trpCandidateId hash];
  v4 = [(NSArray *)self->_tcuList hash]^ v3;
  v5 = v4 ^ [(NSString *)self->_userId hash];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isContinuous];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SMTTRPCandidate;
  v5 = [(SMTTRPCandidate *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {trpCandidateId = %@, requestId = %@, tcuList = %@, userId = %@, isContinuous = %u}", v5, self->_trpCandidateId, self->_requestId, self->_tcuList, self->_userId, self->_isContinuous];

  return v6;
}

- (SMTTRPCandidate)initWithTrpCandidateId:(id)a3 requestId:(id)a4 tcuList:(id)a5 userId:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __67__SMTTRPCandidate_initWithTrpCandidateId_requestId_tcuList_userId___block_invoke;
  v20[3] = &unk_2784D5EB8;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v14 = v13;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = [(SMTTRPCandidate *)self initWithBuilder:v20];

  return v18;
}

void __67__SMTTRPCandidate_initWithTrpCandidateId_requestId_tcuList_userId___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setTrpCandidateId:v3];
  [v4 setRequestId:a1[5]];
  [v4 setTcuList:a1[6]];
  [v4 setUserId:a1[7]];
}

- (SMTTRPCandidate)initWithTrpCandidateId:(id)a3 tcuList:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__SMTTRPCandidate_initWithTrpCandidateId_tcuList___block_invoke;
  v12[3] = &unk_2784D5E90;
  v13 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v6;
  v10 = [(SMTTRPCandidate *)self initWithBuilder:v12];

  return v10;
}

void __50__SMTTRPCandidate_initWithTrpCandidateId_tcuList___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setTrpCandidateId:v3];
  [v4 setRequestId:0];
  [v4 setTcuList:*(a1 + 40)];
}

- (SMTTRPCandidate)initWithTrpCandidateId:(id)a3 requestId:(id)a4 tcuList:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__SMTTRPCandidate_initWithTrpCandidateId_requestId_tcuList___block_invoke;
  v16[3] = &unk_2784D5E68;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  v14 = [(SMTTRPCandidate *)self initWithBuilder:v16];

  return v14;
}

void __60__SMTTRPCandidate_initWithTrpCandidateId_requestId_tcuList___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setTrpCandidateId:v3];
  [v4 setRequestId:a1[5]];
  [v4 setTcuList:a1[6]];
}

- (SMTTRPCandidate)initWithBuilder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SMTTRPCandidate;
  v5 = [(SMTTRPCandidate *)&v21 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_SMTTRPCandidateMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_SMTTRPCandidateMutation *)v7 isDirty])
    {
      v8 = [(_SMTTRPCandidateMutation *)v7 getTrpCandidateId];
      v9 = [v8 copy];
      trpCandidateId = v6->_trpCandidateId;
      v6->_trpCandidateId = v9;

      v11 = [(_SMTTRPCandidateMutation *)v7 getRequestId];
      v12 = [v11 copy];
      requestId = v6->_requestId;
      v6->_requestId = v12;

      v14 = [(_SMTTRPCandidateMutation *)v7 getTcuList];
      v15 = [v14 copy];
      tcuList = v6->_tcuList;
      v6->_tcuList = v15;

      v17 = [(_SMTTRPCandidateMutation *)v7 getUserId];
      v18 = [v17 copy];
      userId = v6->_userId;
      v6->_userId = v18;

      v6->_isContinuous = [(_SMTTRPCandidateMutation *)v7 getIsContinuous];
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
    v5 = [[_SMTTRPCandidateMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_SMTTRPCandidateMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(SMTTRPCandidate);
      v7 = [(_SMTTRPCandidateMutation *)v5 getTrpCandidateId];
      v8 = [v7 copy];
      trpCandidateId = v6->_trpCandidateId;
      v6->_trpCandidateId = v8;

      v10 = [(_SMTTRPCandidateMutation *)v5 getRequestId];
      v11 = [v10 copy];
      requestId = v6->_requestId;
      v6->_requestId = v11;

      v13 = [(_SMTTRPCandidateMutation *)v5 getTcuList];
      v14 = [v13 copy];
      tcuList = v6->_tcuList;
      v6->_tcuList = v14;

      v16 = [(_SMTTRPCandidateMutation *)v5 getRequestId];
      v17 = [v16 copy];
      v18 = v6->_requestId;
      v6->_requestId = v17;

      v19 = [(_SMTTRPCandidateMutation *)v5 getUserId];
      v20 = [v19 copy];
      userId = v6->_userId;
      v6->_userId = v20;

      v6->_isContinuous = [(_SMTTRPCandidateMutation *)v5 getIsContinuous];
    }

    else
    {
      v6 = [(SMTTRPCandidate *)self copy];
    }
  }

  else
  {
    v6 = [(SMTTRPCandidate *)self copy];
  }

  return v6;
}

@end