@interface SBSSystemNotesCreateAction
- (SBSSystemNotesCreateAction)initWithReason:(int64_t)a3 responder:(id)a4;
- (int64_t)reason;
- (void)reason;
@end

@implementation SBSSystemNotesCreateAction

- (SBSSystemNotesCreateAction)initWithReason:(int64_t)a3 responder:(id)a4
{
  v6 = a4;
  if (a3 != 1)
  {
    [SBSSystemNotesCreateAction initWithReason:responder:];
  }

  v7 = objc_alloc_init(MEMORY[0x1E698E700]);
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v7 setObject:v8 forSetting:0];

  v9 = objc_alloc_init(_SBSSystemNotesCreateActionSettingsDescriptionProvider);
  [v7 setDescriptionProvider:v9];

  v12.receiver = self;
  v12.super_class = SBSSystemNotesCreateAction;
  v10 = [(SBSSystemNotesCreateAction *)&v12 initWithInfo:v7 responder:v6];

  return v10;
}

- (int64_t)reason
{
  v2 = [(SBSSystemNotesCreateAction *)self info];
  v3 = [v2 objectForSetting:0];
  v4 = [v3 unsignedIntegerValue];

  if (v4 >= 3)
  {
    [SBSSystemNotesCreateAction reason];
  }

  return v4;
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
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"reasonNum >= SBSSystemNotesCreateReasonInvalid && reasonNum <= SBSSystemNotesCreateReasonCount" object:? file:? lineNumber:? description:?];
}

@end