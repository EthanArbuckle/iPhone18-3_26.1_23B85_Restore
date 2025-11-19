@interface _UIClientToHostGestureChangeAction
- (NSString)hostGestureIdentifier;
- (_UIClientToHostGestureChangeAction)initWithHostGestureIdentifier:(id)a3 changeToState:(int64_t)a4;
- (int64_t)state;
- (void)dispatchToHostGestureRecognizer;
@end

@implementation _UIClientToHostGestureChangeAction

- (_UIClientToHostGestureChangeAction)initWithHostGestureIdentifier:(id)a3 changeToState:(int64_t)a4
{
  v6 = MEMORY[0x1E698E700];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  [v8 setObject:v7 forSetting:0];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v8 setObject:v9 forSetting:1];

  v10 = [(_UIClientToHostGestureChangeAction *)self initWithInfo:v8 responder:0];
  return v10;
}

- (NSString)hostGestureIdentifier
{
  v2 = [(_UIClientToHostGestureChangeAction *)self info];
  v3 = [v2 objectForSetting:0];

  return v3;
}

- (int64_t)state
{
  v2 = [(_UIClientToHostGestureChangeAction *)self info];
  v3 = [v2 objectForSetting:1];
  v4 = [v3 integerValue];

  return v4;
}

- (void)dispatchToHostGestureRecognizer
{
  v3 = [(_UIClientToHostGestureChangeAction *)self state];
  v4 = [(_UIClientToHostGestureChangeAction *)self hostGestureIdentifier];
  [_UIClientToHostRelationshipGestureInteraction dispatchGestureRecognizerStateChange:v3 toHostGestureWithIdentifier:v4];
}

@end