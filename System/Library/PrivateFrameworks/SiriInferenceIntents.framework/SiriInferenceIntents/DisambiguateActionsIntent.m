@interface DisambiguateActionsIntent
- (DisambiguateActionsIntent)init;
- (DisambiguateActionsIntent)initWithCoder:(id)a3;
@end

@implementation DisambiguateActionsIntent

- (DisambiguateActionsIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DisambiguateActionsIntent();
  return [(DisambiguateActionsIntent *)&v3 init];
}

- (DisambiguateActionsIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DisambiguateActionsIntent();
  v4 = a3;
  v5 = [(DisambiguateActionsIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end