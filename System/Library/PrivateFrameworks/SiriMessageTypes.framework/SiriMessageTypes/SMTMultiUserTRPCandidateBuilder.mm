@interface SMTMultiUserTRPCandidateBuilder
- (SMTMultiUserTRPCandidateBuilder)init;
- (id)initBuilderWithTrpCandidateId:(id)id requestId:(id)requestId trpCandidateList:(id)list;
- (id)initBuilderWithTrpCandidateId:(id)id trpCandidateList:(id)list;
@end

@implementation SMTMultiUserTRPCandidateBuilder

- (id)initBuilderWithTrpCandidateId:(id)id trpCandidateList:(id)list
{
  idCopy = id;
  listCopy = list;
  v14.receiver = self;
  v14.super_class = SMTMultiUserTRPCandidateBuilder;
  v9 = [(SMTMultiUserTRPCandidateBuilder *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_multiUserTrpCandidateId, id);
    v11 = [listCopy copy];
    trpCandidateList = v10->_trpCandidateList;
    v10->_trpCandidateList = v11;
  }

  return v10;
}

- (id)initBuilderWithTrpCandidateId:(id)id requestId:(id)requestId trpCandidateList:(id)list
{
  idCopy = id;
  requestIdCopy = requestId;
  listCopy = list;
  v17.receiver = self;
  v17.super_class = SMTMultiUserTRPCandidateBuilder;
  v12 = [(SMTMultiUserTRPCandidateBuilder *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_multiUserTrpCandidateId, id);
    objc_storeStrong(&v13->_requestId, requestId);
    v14 = [listCopy copy];
    trpCandidateList = v13->_trpCandidateList;
    v13->_trpCandidateList = v14;
  }

  return v13;
}

- (SMTMultiUserTRPCandidateBuilder)init
{
  v3.receiver = self;
  v3.super_class = SMTMultiUserTRPCandidateBuilder;
  return [(SMTMultiUserTRPCandidateBuilder *)&v3 init];
}

@end