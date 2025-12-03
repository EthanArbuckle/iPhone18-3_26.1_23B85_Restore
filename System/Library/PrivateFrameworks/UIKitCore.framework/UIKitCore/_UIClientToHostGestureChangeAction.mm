@interface _UIClientToHostGestureChangeAction
- (NSString)hostGestureIdentifier;
- (_UIClientToHostGestureChangeAction)initWithHostGestureIdentifier:(id)identifier changeToState:(int64_t)state;
- (int64_t)state;
- (void)dispatchToHostGestureRecognizer;
@end

@implementation _UIClientToHostGestureChangeAction

- (_UIClientToHostGestureChangeAction)initWithHostGestureIdentifier:(id)identifier changeToState:(int64_t)state
{
  v6 = MEMORY[0x1E698E700];
  identifierCopy = identifier;
  v8 = objc_alloc_init(v6);
  [v8 setObject:identifierCopy forSetting:0];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  [v8 setObject:v9 forSetting:1];

  v10 = [(_UIClientToHostGestureChangeAction *)self initWithInfo:v8 responder:0];
  return v10;
}

- (NSString)hostGestureIdentifier
{
  info = [(_UIClientToHostGestureChangeAction *)self info];
  v3 = [info objectForSetting:0];

  return v3;
}

- (int64_t)state
{
  info = [(_UIClientToHostGestureChangeAction *)self info];
  v3 = [info objectForSetting:1];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)dispatchToHostGestureRecognizer
{
  state = [(_UIClientToHostGestureChangeAction *)self state];
  hostGestureIdentifier = [(_UIClientToHostGestureChangeAction *)self hostGestureIdentifier];
  [_UIClientToHostRelationshipGestureInteraction dispatchGestureRecognizerStateChange:state toHostGestureWithIdentifier:hostGestureIdentifier];
}

@end