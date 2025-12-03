@interface DisambiguateActionsIntent
- (DisambiguateActionsIntent)init;
- (DisambiguateActionsIntent)initWithCoder:(id)coder;
@end

@implementation DisambiguateActionsIntent

- (DisambiguateActionsIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DisambiguateActionsIntent();
  return [(DisambiguateActionsIntent *)&v3 init];
}

- (DisambiguateActionsIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DisambiguateActionsIntent();
  coderCopy = coder;
  v5 = [(DisambiguateActionsIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end