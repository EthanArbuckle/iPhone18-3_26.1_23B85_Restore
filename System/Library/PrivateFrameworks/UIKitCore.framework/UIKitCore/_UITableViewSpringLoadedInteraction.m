@interface _UITableViewSpringLoadedInteraction
+ (id)tableViewSpringLoadedInteraction;
@end

@implementation _UITableViewSpringLoadedInteraction

+ (id)tableViewSpringLoadedInteraction
{
  v2 = [UISpringLoadedInteraction alloc];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(UISpringLoadedInteraction *)v2 initWithInteractionBehavior:v3 interactionEffect:v4 activationHandler:&__block_literal_global_575];

  return v5;
}

@end