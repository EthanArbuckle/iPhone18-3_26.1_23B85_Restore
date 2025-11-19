@interface SocialConversationIntent
- (SocialConversationIntent)init;
- (SocialConversationIntent)initWithCoder:(id)a3;
@end

@implementation SocialConversationIntent

- (SocialConversationIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SocialConversationIntent();
  return [(SocialConversationIntent *)&v3 init];
}

- (SocialConversationIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SocialConversationIntent();
  v4 = a3;
  v5 = [(SocialConversationIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end