@interface TIKeyboardInteractionProtocolEventAcceptingCandidateWithTrigger
- (TIKeyboardInteractionProtocolEventAcceptingCandidateWithTrigger)initWithCandidateAcceptedTrigger:(id)a3;
- (TIKeyboardInteractionProtocolEventAcceptingCandidateWithTrigger)initWithCoder:(id)a3;
@end

@implementation TIKeyboardInteractionProtocolEventAcceptingCandidateWithTrigger

- (TIKeyboardInteractionProtocolEventAcceptingCandidateWithTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TIKeyboardInteractionProtocolEventAcceptingCandidateWithTrigger;
  v5 = [(TIKeyboardInteractionProtocolEventAcceptingCandidateWithTrigger *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"candidateAcceptedTrigger"];
    candidateAcceptedTrigger = v5->_candidateAcceptedTrigger;
    v5->_candidateAcceptedTrigger = v6;
  }

  return v5;
}

- (TIKeyboardInteractionProtocolEventAcceptingCandidateWithTrigger)initWithCandidateAcceptedTrigger:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TIKeyboardInteractionProtocolEventAcceptingCandidateWithTrigger;
  v6 = [(TIKeyboardInteractionProtocolEventAcceptingCandidateWithTrigger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_candidateAcceptedTrigger, a3);
  }

  return v7;
}

@end