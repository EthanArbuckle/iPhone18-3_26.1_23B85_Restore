@interface _UIEventComponentForwardingRecipient
- (UIResponder)responder;
- (id)description;
@end

@implementation _UIEventComponentForwardingRecipient

- (UIResponder)responder
{
  WeakRetained = objc_loadWeakRetained(&self->responder);

  return WeakRetained;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v16.receiver = self;
  v16.super_class = _UIEventComponentForwardingRecipient;
  v4 = [(_UIEventComponentForwardingRecipient *)&v16 description];
  v5 = @"moved";
  v6 = @"cancelled";
  recordedPhase = self->recordedPhase;
  autocompletedPhase = self->autocompletedPhase;
  if (recordedPhase == 3)
  {
    v9 = @"ended";
  }

  else
  {
    v9 = @"cancelled";
  }

  if (recordedPhase != 1)
  {
    v5 = v9;
  }

  if (recordedPhase)
  {
    v10 = v5;
  }

  else
  {
    v10 = @"began";
  }

  if (autocompletedPhase == 3)
  {
    v6 = @"ended";
  }

  if (autocompletedPhase == 1)
  {
    v6 = @"moved";
  }

  if (autocompletedPhase)
  {
    v11 = v6;
  }

  else
  {
    v11 = @"began";
  }

  WeakRetained = objc_loadWeakRetained(&self->responder);
  v13 = objc_loadWeakRetained(&self->fromResponder);
  v14 = [v3 stringWithFormat:@"%@ - recorded phase = %@, autocompleted phase = %@, to responder: %@, from responder: %@", v4, v10, v11, WeakRetained, v13];

  return v14;
}

@end