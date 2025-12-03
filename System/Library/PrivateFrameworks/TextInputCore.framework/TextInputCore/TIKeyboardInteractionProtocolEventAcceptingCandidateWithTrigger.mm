@interface TIKeyboardInteractionProtocolEventAcceptingCandidateWithTrigger
- (TIKeyboardInteractionProtocolEventAcceptingCandidateWithTrigger)initWithCandidateAcceptedTrigger:(id)trigger;
- (TIKeyboardInteractionProtocolEventAcceptingCandidateWithTrigger)initWithCoder:(id)coder;
@end

@implementation TIKeyboardInteractionProtocolEventAcceptingCandidateWithTrigger

- (TIKeyboardInteractionProtocolEventAcceptingCandidateWithTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TIKeyboardInteractionProtocolEventAcceptingCandidateWithTrigger;
  v5 = [(TIKeyboardInteractionProtocolEventAcceptingCandidateWithTrigger *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"candidateAcceptedTrigger"];
    candidateAcceptedTrigger = v5->_candidateAcceptedTrigger;
    v5->_candidateAcceptedTrigger = v6;
  }

  return v5;
}

- (TIKeyboardInteractionProtocolEventAcceptingCandidateWithTrigger)initWithCandidateAcceptedTrigger:(id)trigger
{
  triggerCopy = trigger;
  v9.receiver = self;
  v9.super_class = TIKeyboardInteractionProtocolEventAcceptingCandidateWithTrigger;
  v6 = [(TIKeyboardInteractionProtocolEventAcceptingCandidateWithTrigger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_candidateAcceptedTrigger, trigger);
  }

  return v7;
}

@end