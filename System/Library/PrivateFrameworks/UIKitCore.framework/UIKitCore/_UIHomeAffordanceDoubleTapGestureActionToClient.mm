@interface _UIHomeAffordanceDoubleTapGestureActionToClient
+ (id)actionForDoubleTapGestureDidSucceed:(BOOL)succeed;
- (BOOL)didSucceed;
- (id)debugDescription;
- (id)succinctDescription;
- (void)appendDescriptionToStream:(id)stream;
@end

@implementation _UIHomeAffordanceDoubleTapGestureActionToClient

+ (id)actionForDoubleTapGestureDidSucceed:(BOOL)succeed
{
  succeedCopy = succeed;
  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:&unk_1EFE305B0 forSetting:0];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:succeedCopy];
  [v5 setObject:v6 forSetting:1];

  v7 = [[self alloc] initWithInfo:v5 responder:0];

  return v7;
}

- (BOOL)didSucceed
{
  info = [(_UIHomeAffordanceDoubleTapGestureActionToClient *)self info];
  v3 = [info objectForSetting:1];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6.receiver = self;
  v6.super_class = _UIHomeAffordanceDoubleTapGestureActionToClient;
  [(_UIHomeAffordanceBSActionToClient *)&v6 appendDescriptionToStream:streamCopy];
  v5 = [streamCopy appendBool:-[_UIHomeAffordanceDoubleTapGestureActionToClient didSucceed](self withName:{"didSucceed"), @"didSucceed"}];
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:succinctStyle];

  return v5;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  debugStyle = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:debugStyle];

  return v5;
}

@end