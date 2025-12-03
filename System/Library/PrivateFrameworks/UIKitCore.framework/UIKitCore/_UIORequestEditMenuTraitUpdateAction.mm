@interface _UIORequestEditMenuTraitUpdateAction
- (NSString)identifier;
- (_UIORequestEditMenuTraitUpdateAction)initWithConfigurationIdentifier:(id)identifier userInterfaceStyle:(int64_t)style;
- (int64_t)userInterfaceStyle;
- (void)performActionFromConnection:(id)connection;
@end

@implementation _UIORequestEditMenuTraitUpdateAction

- (_UIORequestEditMenuTraitUpdateAction)initWithConfigurationIdentifier:(id)identifier userInterfaceStyle:(int64_t)style
{
  v6 = MEMORY[0x1E698E700];
  identifierCopy = identifier;
  v8 = objc_alloc_init(v6);
  [v8 setObject:identifierCopy forSetting:0];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  [v8 setObject:v9 forSetting:1];

  v12.receiver = self;
  v12.super_class = _UIORequestEditMenuTraitUpdateAction;
  v10 = [(_UIOServerAction *)&v12 initWithOriginContext:0 info:v8 responder:0];

  return v10;
}

- (NSString)identifier
{
  info = [(_UIORequestEditMenuTraitUpdateAction *)self info];
  v3 = [info objectForSetting:0];

  return v3;
}

- (int64_t)userInterfaceStyle
{
  info = [(_UIORequestEditMenuTraitUpdateAction *)self info];
  v3 = [info objectForSetting:1];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)performActionFromConnection:(id)connection
{
  v5 = +[_UIEditMenuPresentationServer sharedPresentationServer];
  identifier = [(_UIORequestEditMenuTraitUpdateAction *)self identifier];
  [v5 updateUserInterfaceStyleForMenuWithIdentifier:identifier userInterfaceStyle:{-[_UIORequestEditMenuTraitUpdateAction userInterfaceStyle](self, "userInterfaceStyle")}];
}

@end