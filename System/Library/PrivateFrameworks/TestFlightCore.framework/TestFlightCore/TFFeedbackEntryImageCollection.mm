@interface TFFeedbackEntryImageCollection
- (TFFeedbackEntryImageCollection)initWithIdentifier:(id)identifier title:(id)title;
@end

@implementation TFFeedbackEntryImageCollection

- (TFFeedbackEntryImageCollection)initWithIdentifier:(id)identifier title:(id)title
{
  v5.receiver = self;
  v5.super_class = TFFeedbackEntryImageCollection;
  return [(TFFeedbackEntry *)&v5 initWithType:3 identifier:identifier title:title];
}

@end