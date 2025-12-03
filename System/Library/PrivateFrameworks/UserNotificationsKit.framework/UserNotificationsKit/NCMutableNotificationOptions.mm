@interface NCMutableNotificationOptions
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAlertSuppressionContexts:(id)contexts;
- (void)setAlternateActionLabel:(id)label;
- (void)setSpeechLanguage:(id)language;
@end

@implementation NCMutableNotificationOptions

- (void)setAlertSuppressionContexts:(id)contexts
{
  self->super._alertSuppressionContexts = [contexts copy];

  MEMORY[0x2821F96F8]();
}

- (void)setAlternateActionLabel:(id)label
{
  self->super._alternateActionLabel = [label copy];

  MEMORY[0x2821F96F8]();
}

- (void)setSpeechLanguage:(id)language
{
  self->super._speechLanguage = [language copy];

  MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NCNotificationOptions alloc];

  return [(NCNotificationOptions *)v4 initWithNotificationOptions:self];
}

@end