@interface TICandidatesOfferedEvent
- (TICandidatesOfferedEvent)initWithCandidates:(id)candidates keyboardState:(id)state;
- (TICandidatesOfferedEvent)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TICandidatesOfferedEvent

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TICandidatesOfferedEvent;
  coderCopy = coder;
  [(TIUserAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_candidates forKey:{@"candidates", v5.receiver, v5.super_class}];
}

- (TICandidatesOfferedEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TICandidatesOfferedEvent;
  v5 = [(TIUserAction *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"candidates"];
    candidates = v5->_candidates;
    v5->_candidates = v6;

    [(TIUserAction *)v5 setActionType:5];
  }

  return v5;
}

- (TICandidatesOfferedEvent)initWithCandidates:(id)candidates keyboardState:(id)state
{
  candidatesCopy = candidates;
  v11.receiver = self;
  v11.super_class = TICandidatesOfferedEvent;
  v8 = [(TIUserAction *)&v11 initWithTIKeyboardState:state];
  v9 = v8;
  if (v8)
  {
    [(TIUserAction *)v8 setActionType:5];
    objc_storeStrong(&v9->_candidates, candidates);
  }

  return v9;
}

@end