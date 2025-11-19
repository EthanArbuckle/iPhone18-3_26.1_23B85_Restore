@interface SCDAElectionParticipantIds
- (id)init:(id)a3 rotatedElectionParticipantId:(id)a4;
@end

@implementation SCDAElectionParticipantIds

- (id)init:(id)a3 rotatedElectionParticipantId:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SCDAElectionParticipantIds;
  v9 = [(SCDAElectionParticipantIds *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_electionParticipantId, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

@end