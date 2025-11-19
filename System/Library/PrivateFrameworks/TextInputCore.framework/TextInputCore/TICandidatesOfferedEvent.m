@interface TICandidatesOfferedEvent
- (TICandidatesOfferedEvent)initWithCandidates:(id)a3 keyboardState:(id)a4;
- (TICandidatesOfferedEvent)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TICandidatesOfferedEvent

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TICandidatesOfferedEvent;
  v4 = a3;
  [(TIUserAction *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_candidates forKey:{@"candidates", v5.receiver, v5.super_class}];
}

- (TICandidatesOfferedEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TICandidatesOfferedEvent;
  v5 = [(TIUserAction *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"candidates"];
    candidates = v5->_candidates;
    v5->_candidates = v6;

    [(TIUserAction *)v5 setActionType:5];
  }

  return v5;
}

- (TICandidatesOfferedEvent)initWithCandidates:(id)a3 keyboardState:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TICandidatesOfferedEvent;
  v8 = [(TIUserAction *)&v11 initWithTIKeyboardState:a4];
  v9 = v8;
  if (v8)
  {
    [(TIUserAction *)v8 setActionType:5];
    objc_storeStrong(&v9->_candidates, a3);
  }

  return v9;
}

@end