@interface OKTransitionRipple
+ (void)setupJavascriptContext:(id)a3;
- (void)prepareInView:(id)a3;
@end

@implementation OKTransitionRipple

- (void)prepareInView:(id)a3
{
  v4.receiver = self;
  v4.super_class = OKTransitionRipple;
  [(OKTransitionCATransition *)&v4 prepareInView:a3];
  [(CATransition *)self->super._transition setType:@"rippleEffect"];
}

+ (void)setupJavascriptContext:(id)a3
{
  v4 = objc_opt_class();

  [a3 setObject:v4 forKeyedSubscript:@"OKTransitionRipple"];
}

@end