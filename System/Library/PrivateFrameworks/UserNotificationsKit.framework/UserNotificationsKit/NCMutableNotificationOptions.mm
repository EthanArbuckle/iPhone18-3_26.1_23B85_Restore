@interface NCMutableNotificationOptions
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAlertSuppressionContexts:(id)a3;
- (void)setAlternateActionLabel:(id)a3;
- (void)setSpeechLanguage:(id)a3;
@end

@implementation NCMutableNotificationOptions

- (void)setAlertSuppressionContexts:(id)a3
{
  self->super._alertSuppressionContexts = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setAlternateActionLabel:(id)a3
{
  self->super._alternateActionLabel = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setSpeechLanguage:(id)a3
{
  self->super._speechLanguage = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NCNotificationOptions alloc];

  return [(NCNotificationOptions *)v4 initWithNotificationOptions:self];
}

@end