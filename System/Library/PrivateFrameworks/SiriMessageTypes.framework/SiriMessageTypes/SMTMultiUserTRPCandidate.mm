@interface SMTMultiUserTRPCandidate
- (BOOL)isEqual:(id)equal;
- (SMTMultiUserTRPCandidate)initWithBuilder:(id)builder;
- (SMTMultiUserTRPCandidate)initWithCoder:(id)coder;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMTMultiUserTRPCandidate

- (void)encodeWithCoder:(id)coder
{
  multiUserTrpCandidateId = self->_multiUserTrpCandidateId;
  coderCopy = coder;
  [coderCopy encodeObject:multiUserTrpCandidateId forKey:@"multiUserTrpCandidateId"];
  [coderCopy encodeObject:self->_requestId forKey:@"requestId"];
  [coderCopy encodeObject:self->_trpCandidateList forKey:@"trpCandidateList"];
}

- (SMTMultiUserTRPCandidate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"multiUserTrpCandidateId"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"trpCandidateList"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestId"];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      multiUserTrpCandidateId = [(SMTMultiUserTRPCandidate *)v5 multiUserTrpCandidateId];
      multiUserTrpCandidateId = self->_multiUserTrpCandidateId;
      if (multiUserTrpCandidateId == multiUserTrpCandidateId || [(NSString *)multiUserTrpCandidateId isEqual:multiUserTrpCandidateId])
      {
        requestId = [(SMTMultiUserTRPCandidate *)v5 requestId];
        requestId = self->_requestId;
        if (requestId == requestId || [(NSString *)requestId isEqual:requestId])
        {
          trpCandidateList = [(SMTMultiUserTRPCandidate *)v5 trpCandidateList];
          trpCandidateList = self->_trpCandidateList;
          v12 = trpCandidateList == trpCandidateList || [(NSArray *)trpCandidateList isEqual:trpCandidateList];
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

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SMTMultiUserTRPCandidate;
  v5 = [(SMTMultiUserTRPCandidate *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {multiUserTrpCandidateId = %@, requestId = %@, trpCandidateList = %@}", v5, self->_multiUserTrpCandidateId, self->_requestId, self->_trpCandidateList];

  return v6;
}

- (SMTMultiUserTRPCandidate)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v16.receiver = self;
  v16.super_class = SMTMultiUserTRPCandidate;
  v5 = [(SMTMultiUserTRPCandidate *)&v16 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = objc_alloc_init(SMTMultiUserTRPCandidateBuilder);
    builderCopy[2](builderCopy, v7);
    multiUserTrpCandidateId = [(SMTMultiUserTRPCandidateBuilder *)v7 multiUserTrpCandidateId];
    multiUserTrpCandidateId = v6->_multiUserTrpCandidateId;
    v6->_multiUserTrpCandidateId = multiUserTrpCandidateId;

    requestId = [(SMTMultiUserTRPCandidateBuilder *)v7 requestId];
    requestId = v6->_requestId;
    v6->_requestId = requestId;

    trpCandidateList = [(SMTMultiUserTRPCandidateBuilder *)v7 trpCandidateList];
    v13 = [trpCandidateList copy];
    trpCandidateList = v6->_trpCandidateList;
    v6->_trpCandidateList = v13;
  }

  return v6;
}

@end