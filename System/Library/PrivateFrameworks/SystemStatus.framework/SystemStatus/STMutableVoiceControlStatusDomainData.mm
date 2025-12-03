@interface STMutableVoiceControlStatusDomainData
- (BOOL)applyDiff:(id)diff;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setListeningState:(unint64_t)state;
- (void)setVoiceControlActive:(BOOL)active;
@end

@implementation STMutableVoiceControlStatusDomainData

- (void)setVoiceControlActive:(BOOL)active
{
  if (self->super._voiceControlActive != active)
  {
    self->super._voiceControlActive = active;
  }
}

- (void)setListeningState:(unint64_t)state
{
  if (self->super._listeningState != state)
  {
    self->super._listeningState = state;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [STVoiceControlStatusDomainData allocWithZone:zone];

  return [(STVoiceControlStatusDomainData *)v4 initWithData:?];
}

- (BOOL)applyDiff:(id)diff
{
  diffCopy = diff;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [diffCopy applyToMutableData:self];
  }

  return isKindOfClass & 1;
}

@end