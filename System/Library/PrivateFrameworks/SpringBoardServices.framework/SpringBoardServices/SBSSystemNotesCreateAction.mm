@interface SBSSystemNotesCreateAction
- (SBSSystemNotesCreateAction)initWithReason:(int64_t)reason responder:(id)responder;
- (int64_t)reason;
- (void)reason;
@end

@implementation SBSSystemNotesCreateAction

- (SBSSystemNotesCreateAction)initWithReason:(int64_t)reason responder:(id)responder
{
  responderCopy = responder;
  if (reason != 1)
  {
    [SBSSystemNotesCreateAction initWithReason:responder:];
  }

  v7 = objc_alloc_init(MEMORY[0x1E698E700]);
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
  [v7 setObject:v8 forSetting:0];

  v9 = objc_alloc_init(_SBSSystemNotesCreateActionSettingsDescriptionProvider);
  [v7 setDescriptionProvider:v9];

  v12.receiver = self;
  v12.super_class = SBSSystemNotesCreateAction;
  v10 = [(SBSSystemNotesCreateAction *)&v12 initWithInfo:v7 responder:responderCopy];

  return v10;
}

- (int64_t)reason
{
  info = [(SBSSystemNotesCreateAction *)self info];
  v3 = [info objectForSetting:0];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  if (unsignedIntegerValue >= 3)
  {
    [SBSSystemNotesCreateAction reason];
  }

  return unsignedIntegerValue;
}

- (void)initWithReason:responder:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"reason > SBSSystemNotesCreateReasonInvalid && reason < SBSSystemNotesCreateReasonCount" object:? file:? lineNumber:? description:?];
}

- (void)reason
{
  OUTLINED_FUNCTION_0();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"reasonNum >= SBSSystemNotesCreateReasonInvalid && reasonNum <= SBSSystemNotesCreateReasonCount" object:? file:? lineNumber:? description:?];
}

@end