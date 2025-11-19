@interface SMTMultiUserTRPCandidate
- (BOOL)isEqual:(id)a3;
- (SMTMultiUserTRPCandidate)initWithBuilder:(id)a3;
- (SMTMultiUserTRPCandidate)initWithCoder:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SMTMultiUserTRPCandidate

- (void)encodeWithCoder:(id)a3
{
  multiUserTrpCandidateId = self->_multiUserTrpCandidateId;
  v5 = a3;
  [v5 encodeObject:multiUserTrpCandidateId forKey:@"multiUserTrpCandidateId"];
  [v5 encodeObject:self->_requestId forKey:@"requestId"];
  [v5 encodeObject:self->_trpCandidateList forKey:@"trpCandidateList"];
}

- (SMTMultiUserTRPCandidate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"multiUserTrpCandidateId"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"trpCandidateList"];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestId"];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __42__SMTMultiUserTRPCandidate_initWithCoder___block_invoke;
  v16[3] = &unk_2784D5B90;
  v17 = v5;
  v18 = v10;
  v19 = v9;
  v11 = v9;
  v12 = v10;
  v13 = v5;
  v14 = [(SMTMultiUserTRPCandidate *)self initWithBuilder:v16];

  return v14;
}

void __42__SMTMultiUserTRPCandidate_initWithCoder___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setMultiUserTrpCandidateId:v3];
  [v4 setRequestId:a1[5]];
  [v4 setTrpCandidateList:a1[6]];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SMTMultiUserTRPCandidate *)v5 multiUserTrpCandidateId];
      multiUserTrpCandidateId = self->_multiUserTrpCandidateId;
      if (multiUserTrpCandidateId == v6 || [(NSString *)multiUserTrpCandidateId isEqual:v6])
      {
        v8 = [(SMTMultiUserTRPCandidate *)v5 requestId];
        requestId = self->_requestId;
        if (requestId == v8 || [(NSString *)requestId isEqual:v8])
        {
          v10 = [(SMTMultiUserTRPCandidate *)v5 trpCandidateList];
          trpCandidateList = self->_trpCandidateList;
          v12 = trpCandidateList == v10 || [(NSArray *)trpCandidateList isEqual:v10];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_multiUserTrpCandidateId hash];
  v4 = [(NSArray *)self->_trpCandidateList hash]^ v3;
  return v4 ^ [(NSString *)self->_requestId hash];
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SMTMultiUserTRPCandidate;
  v5 = [(SMTMultiUserTRPCandidate *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {multiUserTrpCandidateId = %@, requestId = %@, trpCandidateList = %@}", v5, self->_multiUserTrpCandidateId, self->_requestId, self->_trpCandidateList];

  return v6;
}

- (SMTMultiUserTRPCandidate)initWithBuilder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SMTMultiUserTRPCandidate;
  v5 = [(SMTMultiUserTRPCandidate *)&v16 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = objc_alloc_init(SMTMultiUserTRPCandidateBuilder);
    v4[2](v4, v7);
    v8 = [(SMTMultiUserTRPCandidateBuilder *)v7 multiUserTrpCandidateId];
    multiUserTrpCandidateId = v6->_multiUserTrpCandidateId;
    v6->_multiUserTrpCandidateId = v8;

    v10 = [(SMTMultiUserTRPCandidateBuilder *)v7 requestId];
    requestId = v6->_requestId;
    v6->_requestId = v10;

    v12 = [(SMTMultiUserTRPCandidateBuilder *)v7 trpCandidateList];
    v13 = [v12 copy];
    trpCandidateList = v6->_trpCandidateList;
    v6->_trpCandidateList = v13;
  }

  return v6;
}

@end