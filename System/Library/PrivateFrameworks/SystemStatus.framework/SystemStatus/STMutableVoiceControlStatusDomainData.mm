@interface STMutableVoiceControlStatusDomainData
- (BOOL)applyDiff:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setListeningState:(unint64_t)a3;
- (void)setVoiceControlActive:(BOOL)a3;
@end

@implementation STMutableVoiceControlStatusDomainData

- (void)setVoiceControlActive:(BOOL)a3
{
  if (self->super._voiceControlActive != a3)
  {
    self->super._voiceControlActive = a3;
  }
}

- (void)setListeningState:(unint64_t)a3
{
  if (self->super._listeningState != a3)
  {
    self->super._listeningState = a3;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [STVoiceControlStatusDomainData allocWithZone:a3];

  return [(STVoiceControlStatusDomainData *)v4 initWithData:?];
}

- (BOOL)applyDiff:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [v4 applyToMutableData:self];
  }

  return isKindOfClass & 1;
}

@end