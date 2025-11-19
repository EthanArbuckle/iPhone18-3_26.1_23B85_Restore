@interface _UIORequestEditMenuDismissalAction
- (NSString)identifier;
- (_UIORequestEditMenuDismissalAction)initWithConfigurationIdentifier:(id)a3 reason:(int64_t)a4;
- (int64_t)reason;
- (void)performActionFromConnection:(id)a3;
@end

@implementation _UIORequestEditMenuDismissalAction

- (_UIORequestEditMenuDismissalAction)initWithConfigurationIdentifier:(id)a3 reason:(int64_t)a4
{
  v6 = MEMORY[0x1E698E700];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  [v8 setObject:v7 forSetting:0];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v8 setObject:v9 forSetting:1];

  v12.receiver = self;
  v12.super_class = _UIORequestEditMenuDismissalAction;
  v10 = [(_UIOServerAction *)&v12 initWithOriginContext:0 info:v8 responder:0];

  return v10;
}

- (NSString)identifier
{
  v2 = [(_UIORequestEditMenuDismissalAction *)self info];
  v3 = [v2 objectForSetting:0];

  return v3;
}

- (int64_t)reason
{
  v2 = [(_UIORequestEditMenuDismissalAction *)self info];
  v3 = [v2 objectForSetting:1];
  v4 = [v3 integerValue];

  return v4;
}

- (void)performActionFromConnection:(id)a3
{
  v5 = +[_UIEditMenuPresentationServer sharedPresentationServer];
  v4 = [(_UIORequestEditMenuDismissalAction *)self identifier];
  [v5 dismissEditMenuForIdentifier:v4 hideReason:{-[_UIORequestEditMenuDismissalAction reason](self, "reason")}];
}

@end