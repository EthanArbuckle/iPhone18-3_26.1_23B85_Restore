@interface SocialConversationIntent
- (SocialConversationIntent)init;
- (SocialConversationIntent)initWithCoder:(id)coder;
@end

@implementation SocialConversationIntent

- (SocialConversationIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SocialConversationIntent();
  return [(SocialConversationIntent *)&v3 init];
}

- (SocialConversationIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SocialConversationIntent();
  coderCopy = coder;
  v5 = [(SocialConversationIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end