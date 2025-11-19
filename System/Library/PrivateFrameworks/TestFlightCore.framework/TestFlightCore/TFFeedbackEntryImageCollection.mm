@interface TFFeedbackEntryImageCollection
- (TFFeedbackEntryImageCollection)initWithIdentifier:(id)a3 title:(id)a4;
@end

@implementation TFFeedbackEntryImageCollection

- (TFFeedbackEntryImageCollection)initWithIdentifier:(id)a3 title:(id)a4
{
  v5.receiver = self;
  v5.super_class = TFFeedbackEntryImageCollection;
  return [(TFFeedbackEntry *)&v5 initWithType:3 identifier:a3 title:a4];
}

@end