@interface VSRecognitionConfirmAction
- (VSRecognitionConfirmAction)init;
- (VSRecognitionConfirmAction)initWithModelIdentifier:(id)identifier;
- (int)completionType;
- (void)_setConfirmed:(BOOL)confirmed;
- (void)dealloc;
- (void)setConfirmedAction:(id)action;
- (void)setDeniedAction:(id)action;
@end

@implementation VSRecognitionConfirmAction

- (void)setDeniedAction:(id)action
{
  deniedAction = self->_deniedAction;
  if (deniedAction != action)
  {

    self->_deniedAction = action;
  }
}

- (void)setConfirmedAction:(id)action
{
  confirmedAction = self->_confirmedAction;
  if (confirmedAction != action)
  {

    self->_confirmedAction = action;
  }
}

- (void)_setConfirmed:(BOOL)confirmed
{
  if (confirmed)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_confirmFlags = *&self->_confirmFlags & 0xFD | v3;
}

- (int)completionType
{
  v5.receiver = self;
  v5.super_class = VSRecognitionConfirmAction;
  result = [(VSRecognitionRecognizeAction *)&v5 completionType];
  if ((*&self->_confirmFlags & 2) != 0)
  {
    v4 = 112;
  }

  else
  {
    v4 = 120;
  }

  if (!*(&self->super.super.super.isa + v4))
  {
    return 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VSRecognitionConfirmAction;
  [(VSRecognitionRecognizeAction *)&v3 dealloc];
}

- (VSRecognitionConfirmAction)initWithModelIdentifier:(id)identifier
{
  *&self->_confirmFlags |= 1u;
  v4.receiver = self;
  v4.super_class = VSRecognitionConfirmAction;
  result = [(VSRecognitionRecognizeAction *)&v4 initWithModelIdentifier:@"com.apple.yn"];
  *&result->_confirmFlags &= ~1u;
  return result;
}

- (VSRecognitionConfirmAction)init
{
  if (*&self->_confirmFlags)
  {
    v4.receiver = self;
    v4.super_class = VSRecognitionConfirmAction;
    return [(VSRecognitionConfirmAction *)&v4 init];
  }

  else
  {
    *&self->_confirmFlags |= 1u;
    v3.receiver = self;
    v3.super_class = VSRecognitionConfirmAction;
    result = [(VSRecognitionRecognizeAction *)&v3 initWithModelIdentifier:@"com.apple.yn"];
    *&result->_confirmFlags &= ~1u;
  }

  return result;
}

@end