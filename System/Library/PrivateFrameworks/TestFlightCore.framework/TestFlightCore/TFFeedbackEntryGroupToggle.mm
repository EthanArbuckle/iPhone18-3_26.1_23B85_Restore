@interface TFFeedbackEntryGroupToggle
- (TFFeedbackEntryGroupToggle)initWithGroupIdentifier:(id)identifier title:(id)title;
@end

@implementation TFFeedbackEntryGroupToggle

- (TFFeedbackEntryGroupToggle)initWithGroupIdentifier:(id)identifier title:(id)title
{
  v5.receiver = self;
  v5.super_class = TFFeedbackEntryGroupToggle;
  return [(TFFeedbackEntry *)&v5 initWithType:2 identifier:identifier title:title];
}

@end