@interface VSRecognitionConfirmAction
- (VSRecognitionConfirmAction)init;
- (VSRecognitionConfirmAction)initWithModelIdentifier:(id)a3;
- (int)completionType;
- (void)_setConfirmed:(BOOL)a3;
- (void)dealloc;
- (void)setConfirmedAction:(id)a3;
- (void)setDeniedAction:(id)a3;
@end

@implementation VSRecognitionConfirmAction

- (void)setDeniedAction:(id)a3
{
  deniedAction = self->_deniedAction;
  if (deniedAction != a3)
  {

    self->_deniedAction = a3;
  }
}

- (void)setConfirmedAction:(id)a3
{
  confirmedAction = self->_confirmedAction;
  if (confirmedAction != a3)
  {

    self->_confirmedAction = a3;
  }
}

- (void)_setConfirmed:(BOOL)a3
{
  if (a3)
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

- (VSRecognitionConfirmAction)initWithModelIdentifier:(id)a3
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