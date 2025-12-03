@interface OKTransitionRipple
+ (void)setupJavascriptContext:(id)context;
- (void)prepareInView:(id)view;
@end

@implementation OKTransitionRipple

- (void)prepareInView:(id)view
{
  v4.receiver = self;
  v4.super_class = OKTransitionRipple;
  [(OKTransitionCATransition *)&v4 prepareInView:view];
  [(CATransition *)self->super._transition setType:@"rippleEffect"];
}

+ (void)setupJavascriptContext:(id)context
{
  v4 = objc_opt_class();

  [context setObject:v4 forKeyedSubscript:@"OKTransitionRipple"];
}

@end