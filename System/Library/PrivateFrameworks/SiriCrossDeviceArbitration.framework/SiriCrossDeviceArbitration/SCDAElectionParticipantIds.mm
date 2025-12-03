@interface SCDAElectionParticipantIds
- (id)init:(id)init rotatedElectionParticipantId:(id)id;
@end

@implementation SCDAElectionParticipantIds

- (id)init:(id)init rotatedElectionParticipantId:(id)id
{
  initCopy = init;
  idCopy = id;
  v12.receiver = self;
  v12.super_class = SCDAElectionParticipantIds;
  v9 = [(SCDAElectionParticipantIds *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_electionParticipantId, init);
    objc_storeStrong(p_isa + 2, id);
  }

  return p_isa;
}

@end