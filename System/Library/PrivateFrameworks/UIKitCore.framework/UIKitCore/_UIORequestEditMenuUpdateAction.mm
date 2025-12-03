@interface _UIORequestEditMenuUpdateAction
- (NSString)identifier;
- (UIMenu)updatedMenu;
- (_UIORequestEditMenuUpdateAction)initWithConfigurationIdentifier:(id)identifier updatedMenu:(id)menu reason:(int64_t)reason;
- (int64_t)reason;
- (void)performActionFromConnection:(id)connection;
@end

@implementation _UIORequestEditMenuUpdateAction

- (_UIORequestEditMenuUpdateAction)initWithConfigurationIdentifier:(id)identifier updatedMenu:(id)menu reason:(int64_t)reason
{
  v8 = MEMORY[0x1E696ACC8];
  identifierCopy = identifier;
  v10 = [v8 archivedDataWithRootObject:menu requiringSecureCoding:1 error:0];
  v11 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v11 setObject:identifierCopy forSetting:0];

  [v11 setObject:v10 forSetting:1];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
  [v11 setObject:v12 forSetting:2];

  v15.receiver = self;
  v15.super_class = _UIORequestEditMenuUpdateAction;
  v13 = [(_UIOServerAction *)&v15 initWithOriginContext:0 info:v11 responder:0];

  return v13;
}

- (NSString)identifier
{
  info = [(_UIORequestEditMenuUpdateAction *)self info];
  v3 = [info objectForSetting:0];

  return v3;
}

- (UIMenu)updatedMenu
{
  v3 = MEMORY[0x1E696ACD0];
  v4 = objc_opt_class();
  info = [(_UIORequestEditMenuUpdateAction *)self info];
  v6 = [info objectForSetting:1];
  v7 = [v3 unarchivedObjectOfClass:v4 fromData:v6 error:0];

  return v7;
}

- (int64_t)reason
{
  info = [(_UIORequestEditMenuUpdateAction *)self info];
  v3 = [info objectForSetting:2];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)performActionFromConnection:(id)connection
{
  v6 = +[_UIEditMenuPresentationServer sharedPresentationServer];
  identifier = [(_UIORequestEditMenuUpdateAction *)self identifier];
  updatedMenu = [(_UIORequestEditMenuUpdateAction *)self updatedMenu];
  [v6 replaceEditMenuForIdentifier:identifier updatedMenu:updatedMenu reason:{-[_UIORequestEditMenuUpdateAction reason](self, "reason")}];
}

@end