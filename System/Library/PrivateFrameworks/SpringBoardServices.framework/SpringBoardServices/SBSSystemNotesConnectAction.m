@interface SBSSystemNotesConnectAction
- (SBSSystemNotesConnectAction)initWithSource:(unint64_t)a3 responder:(id)a4;
- (unint64_t)connectionSource;
- (void)connectionSource;
@end

@implementation SBSSystemNotesConnectAction

- (SBSSystemNotesConnectAction)initWithSource:(unint64_t)a3 responder:(id)a4
{
  v6 = a4;
  if (a3 >= 3)
  {
    [SBSSystemNotesConnectAction initWithSource:responder:];
  }

  v7 = objc_alloc_init(MEMORY[0x1E698E700]);
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v7 setObject:v8 forSetting:0];

  v9 = objc_alloc_init(_SBSSystemNotesConnectActionSettingsDescriptionProvider);
  [v7 setDescriptionProvider:v9];

  v12.receiver = self;
  v12.super_class = SBSSystemNotesConnectAction;
  v10 = [(SBSSystemNotesConnectAction *)&v12 initWithInfo:v7 responder:v6];

  return v10;
}

- (unint64_t)connectionSource
{
  v2 = [(SBSSystemNotesConnectAction *)self info];
  v3 = [v2 objectForSetting:0];
  v4 = [v3 unsignedIntegerValue];

  if (v4 >= 3)
  {
    [SBSSystemNotesConnectAction connectionSource];
  }

  return v4;
}

- (void)initWithSource:responder:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"connectionSource < SBSSystemNotesSceneConnectionSourceCount" object:? file:? lineNumber:? description:?];
}

- (void)connectionSource
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"sourceNum < SBSSystemNotesSceneConnectionSourceCount" object:? file:? lineNumber:? description:?];
}

@end