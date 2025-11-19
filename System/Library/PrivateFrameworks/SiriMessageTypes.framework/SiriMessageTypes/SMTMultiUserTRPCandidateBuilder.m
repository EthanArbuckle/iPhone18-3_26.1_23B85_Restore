@interface SMTMultiUserTRPCandidateBuilder
- (SMTMultiUserTRPCandidateBuilder)init;
- (id)initBuilderWithTrpCandidateId:(id)a3 requestId:(id)a4 trpCandidateList:(id)a5;
- (id)initBuilderWithTrpCandidateId:(id)a3 trpCandidateList:(id)a4;
@end

@implementation SMTMultiUserTRPCandidateBuilder

- (id)initBuilderWithTrpCandidateId:(id)a3 trpCandidateList:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SMTMultiUserTRPCandidateBuilder;
  v9 = [(SMTMultiUserTRPCandidateBuilder *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_multiUserTrpCandidateId, a3);
    v11 = [v8 copy];
    trpCandidateList = v10->_trpCandidateList;
    v10->_trpCandidateList = v11;
  }

  return v10;
}

- (id)initBuilderWithTrpCandidateId:(id)a3 requestId:(id)a4 trpCandidateList:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = SMTMultiUserTRPCandidateBuilder;
  v12 = [(SMTMultiUserTRPCandidateBuilder *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_multiUserTrpCandidateId, a3);
    objc_storeStrong(&v13->_requestId, a4);
    v14 = [v11 copy];
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