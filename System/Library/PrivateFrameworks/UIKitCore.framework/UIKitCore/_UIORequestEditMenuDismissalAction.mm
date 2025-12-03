@interface _UIORequestEditMenuDismissalAction
- (NSString)identifier;
- (_UIORequestEditMenuDismissalAction)initWithConfigurationIdentifier:(id)identifier reason:(int64_t)reason;
- (int64_t)reason;
- (void)performActionFromConnection:(id)connection;
@end

@implementation _UIORequestEditMenuDismissalAction

- (_UIORequestEditMenuDismissalAction)initWithConfigurationIdentifier:(id)identifier reason:(int64_t)reason
{
  v6 = MEMORY[0x1E698E700];
  identifierCopy = identifier;
  v8 = objc_alloc_init(v6);
  [v8 setObject:identifierCopy forSetting:0];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
  [v8 setObject:v9 forSetting:1];

  v12.receiver = self;
  v12.super_class = _UIORequestEditMenuDismissalAction;
  v10 = [(_UIOServerAction *)&v12 initWithOriginContext:0 info:v8 responder:0];

  return v10;
}

- (NSString)identifier
{
  info = [(_UIORequestEditMenuDismissalAction *)self info];
  v3 = [info objectForSetting:0];

  return v3;
}

- (int64_t)reason
{
  info = [(_UIORequestEditMenuDismissalAction *)self info];
  v3 = [info objectForSetting:1];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)performActionFromConnection:(id)connection
{
  v5 = +[_UIEditMenuPresentationServer sharedPresentationServer];
  identifier = [(_UIORequestEditMenuDismissalAction *)self identifier];
  [v5 dismissEditMenuForIdentifier:identifier hideReason:{-[_UIORequestEditMenuDismissalAction reason](self, "reason")}];
}

@end