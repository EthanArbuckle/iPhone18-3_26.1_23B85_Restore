@interface TFFeedbackEntryGroupToggle
- (TFFeedbackEntryGroupToggle)initWithGroupIdentifier:(id)a3 title:(id)a4;
@end

@implementation TFFeedbackEntryGroupToggle

- (TFFeedbackEntryGroupToggle)initWithGroupIdentifier:(id)a3 title:(id)a4
{
  v5.receiver = self;
  v5.super_class = TFFeedbackEntryGroupToggle;
  return [(TFFeedbackEntry *)&v5 initWithType:2 identifier:a3 title:a4];
}

@end