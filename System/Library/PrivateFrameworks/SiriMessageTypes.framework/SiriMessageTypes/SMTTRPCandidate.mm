@interface SMTTRPCandidate
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SMTTRPCandidate)initWithBuilder:(id)builder;
- (SMTTRPCandidate)initWithCoder:(id)coder;
- (SMTTRPCandidate)initWithTrpCandidateId:(id)id requestId:(id)requestId tcuList:(id)list;
- (SMTTRPCandidate)initWithTrpCandidateId:(id)id requestId:(id)requestId tcuList:(id)list userId:(id)userId;
- (SMTTRPCandidate)initWithTrpCandidateId:(id)id tcuList:(id)list;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMTTRPCandidate

- (void)encodeWithCoder:(id)coder
{
  trpCandidateId = self->_trpCandidateId;
  coderCopy = coder;
  [coderCopy encodeObject:trpCandidateId forKey:@"trpCandidateId"];
  [coderCopy encodeObject:self->_requestId forKey:@"requestId"];
  [coderCopy encodeObject:self->_tcuList forKey:@"tcuList"];
  [coderCopy encodeObject:self->_userId forKey:@"userId"];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isContinuous];
  [coderCopy encodeObject:v6 forKey:@"isContinuous"];
}

- (SMTTRPCandidate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trpCandidateId"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestId"];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"tcuList"];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userId"];
  v12 = [coderCopy decodeBoolForKey:@"isContinuous"];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      trpCandidateId = [(SMTTRPCandidate *)v5 trpCandidateId];
      trpCandidateId = self->_trpCandidateId;
      if (trpCandidateId == trpCandidateId || [(NSString *)trpCandidateId isEqual:trpCandidateId])
      {
        requestId = [(SMTTRPCandidate *)v5 requestId];
        requestId = self->_requestId;
        if (requestId == requestId || [(NSString *)requestId isEqual:requestId])
        {
          tcuList = [(SMTTRPCandidate *)v5 tcuList];
          tcuList = self->_tcuList;
          if (tcuList == tcuList || [(NSArray *)tcuList isEqual:tcuList])
          {
            userId = [(SMTTRPCandidate *)v5 userId];
            userId = self->_userId;
            v14 = (userId == userId || [(NSString *)userId isEqual:userId]) && self->_isContinuous == [(SMTTRPCandidate *)v5 isContinuous];
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

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SMTTRPCandidate;
  v5 = [(SMTTRPCandidate *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {trpCandidateId = %@, requestId = %@, tcuList = %@, userId = %@, isContinuous = %u}", v5, self->_trpCandidateId, self->_requestId, self->_tcuList, self->_userId, self->_isContinuous];

  return v6;
}

- (SMTTRPCandidate)initWithTrpCandidateId:(id)id requestId:(id)requestId tcuList:(id)list userId:(id)userId
{
  idCopy = id;
  requestIdCopy = requestId;
  listCopy = list;
  userIdCopy = userId;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __67__SMTTRPCandidate_initWithTrpCandidateId_requestId_tcuList_userId___block_invoke;
  v20[3] = &unk_2784D5EB8;
  v21 = idCopy;
  v22 = requestIdCopy;
  v23 = listCopy;
  v24 = userIdCopy;
  v14 = userIdCopy;
  v15 = listCopy;
  v16 = requestIdCopy;
  v17 = idCopy;
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

- (SMTTRPCandidate)initWithTrpCandidateId:(id)id tcuList:(id)list
{
  idCopy = id;
  listCopy = list;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__SMTTRPCandidate_initWithTrpCandidateId_tcuList___block_invoke;
  v12[3] = &unk_2784D5E90;
  v13 = idCopy;
  v14 = listCopy;
  v8 = listCopy;
  v9 = idCopy;
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

- (SMTTRPCandidate)initWithTrpCandidateId:(id)id requestId:(id)requestId tcuList:(id)list
{
  idCopy = id;
  requestIdCopy = requestId;
  listCopy = list;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__SMTTRPCandidate_initWithTrpCandidateId_requestId_tcuList___block_invoke;
  v16[3] = &unk_2784D5E68;
  v17 = idCopy;
  v18 = requestIdCopy;
  v19 = listCopy;
  v11 = listCopy;
  v12 = requestIdCopy;
  v13 = idCopy;
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

- (SMTTRPCandidate)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v21.receiver = self;
  v21.super_class = SMTTRPCandidate;
  v5 = [(SMTTRPCandidate *)&v21 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_SMTTRPCandidateMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_SMTTRPCandidateMutation *)v7 isDirty])
    {
      getTrpCandidateId = [(_SMTTRPCandidateMutation *)v7 getTrpCandidateId];
      v9 = [getTrpCandidateId copy];
      trpCandidateId = v6->_trpCandidateId;
      v6->_trpCandidateId = v9;

      getRequestId = [(_SMTTRPCandidateMutation *)v7 getRequestId];
      v12 = [getRequestId copy];
      requestId = v6->_requestId;
      v6->_requestId = v12;

      getTcuList = [(_SMTTRPCandidateMutation *)v7 getTcuList];
      v15 = [getTcuList copy];
      tcuList = v6->_tcuList;
      v6->_tcuList = v15;

      getUserId = [(_SMTTRPCandidateMutation *)v7 getUserId];
      v18 = [getUserId copy];
      userId = v6->_userId;
      v6->_userId = v18;

      v6->_isContinuous = [(_SMTTRPCandidateMutation *)v7 getIsContinuous];
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SMTTRPCandidateMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_SMTTRPCandidateMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(SMTTRPCandidate);
      getTrpCandidateId = [(_SMTTRPCandidateMutation *)v5 getTrpCandidateId];
      v8 = [getTrpCandidateId copy];
      trpCandidateId = v6->_trpCandidateId;
      v6->_trpCandidateId = v8;

      getRequestId = [(_SMTTRPCandidateMutation *)v5 getRequestId];
      v11 = [getRequestId copy];
      requestId = v6->_requestId;
      v6->_requestId = v11;

      getTcuList = [(_SMTTRPCandidateMutation *)v5 getTcuList];
      v14 = [getTcuList copy];
      tcuList = v6->_tcuList;
      v6->_tcuList = v14;

      getRequestId2 = [(_SMTTRPCandidateMutation *)v5 getRequestId];
      v17 = [getRequestId2 copy];
      v18 = v6->_requestId;
      v6->_requestId = v17;

      getUserId = [(_SMTTRPCandidateMutation *)v5 getUserId];
      v20 = [getUserId copy];
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