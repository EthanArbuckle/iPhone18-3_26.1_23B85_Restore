@interface SBSSystemNotesConnectAction
- (SBSSystemNotesConnectAction)initWithSource:(unint64_t)source responder:(id)responder;
- (unint64_t)connectionSource;
- (void)connectionSource;
@end

@implementation SBSSystemNotesConnectAction

- (SBSSystemNotesConnectAction)initWithSource:(unint64_t)source responder:(id)responder
{
  responderCopy = responder;
  if (source >= 3)
  {
    [SBSSystemNotesConnectAction initWithSource:responder:];
  }

  v7 = objc_alloc_init(MEMORY[0x1E698E700]);
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:source];
  [v7 setObject:v8 forSetting:0];

  v9 = objc_alloc_init(_SBSSystemNotesConnectActionSettingsDescriptionProvider);
  [v7 setDescriptionProvider:v9];

  v12.receiver = self;
  v12.super_class = SBSSystemNotesConnectAction;
  v10 = [(SBSSystemNotesConnectAction *)&v12 initWithInfo:v7 responder:responderCopy];

  return v10;
}

- (unint64_t)connectionSource
{
  info = [(SBSSystemNotesConnectAction *)self info];
  v3 = [info objectForSetting:0];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  if (unsignedIntegerValue >= 3)
  {
    [SBSSystemNotesConnectAction connectionSource];
  }

  return unsignedIntegerValue;
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"sourceNum < SBSSystemNotesSceneConnectionSourceCount" object:? file:? lineNumber:? description:?];
}

@end