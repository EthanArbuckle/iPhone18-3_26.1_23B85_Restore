@interface TRAArbitrationInputs
- (TRAArbitrationInputs)initWithInterfaceIdiomInputs:(id)a3 deviceOrientationInputs:(id)a4 keyboardInputs:(id)a5 ambientPresentationInputs:(id)a6;
- (TRAArbitrationInputs)initWithInterfaceIdiomInputs:(id)a3 userInterfaceStyleInputs:(id)a4 deviceOrientationInputs:(id)a5 keyboardInputs:(id)a6 ambientPresentationInputs:(id)a7;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation TRAArbitrationInputs

- (TRAArbitrationInputs)initWithInterfaceIdiomInputs:(id)a3 deviceOrientationInputs:(id)a4 keyboardInputs:(id)a5 ambientPresentationInputs:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[TRAArbitrationUserInterfaceStyleInputs alloc] initWithUserInterfaceStyle:0];
  v15 = [(TRAArbitrationInputs *)self initWithInterfaceIdiomInputs:v13 userInterfaceStyleInputs:v14 deviceOrientationInputs:v12 keyboardInputs:v11 ambientPresentationInputs:v10];

  return v15;
}

- (TRAArbitrationInputs)initWithInterfaceIdiomInputs:(id)a3 userInterfaceStyleInputs:(id)a4 deviceOrientationInputs:(id)a5 keyboardInputs:(id)a6 ambientPresentationInputs:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_8:
    [TRAArbitrationInputs initWithInterfaceIdiomInputs:userInterfaceStyleInputs:deviceOrientationInputs:keyboardInputs:ambientPresentationInputs:];
    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [TRAArbitrationInputs initWithInterfaceIdiomInputs:userInterfaceStyleInputs:deviceOrientationInputs:keyboardInputs:ambientPresentationInputs:];
  if (!v13)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v14)
  {
    goto LABEL_4;
  }

LABEL_9:
  [TRAArbitrationInputs initWithInterfaceIdiomInputs:userInterfaceStyleInputs:deviceOrientationInputs:keyboardInputs:ambientPresentationInputs:];
LABEL_4:
  v29.receiver = self;
  v29.super_class = TRAArbitrationInputs;
  v17 = [(TRAArbitrationInputs *)&v29 init];
  if (v17)
  {
    v18 = [v12 copy];
    interfaceIdiomInputs = v17->_interfaceIdiomInputs;
    v17->_interfaceIdiomInputs = v18;

    v20 = [v13 copy];
    userInterfaceStyleInputs = v17->_userInterfaceStyleInputs;
    v17->_userInterfaceStyleInputs = v20;

    v22 = [v14 copy];
    deviceOrientationInputs = v17->_deviceOrientationInputs;
    v17->_deviceOrientationInputs = v22;

    v24 = [v15 copy];
    keyboardInputs = v17->_keyboardInputs;
    v17->_keyboardInputs = v24;

    v26 = [v16 copy];
    ambientPresentationInputs = v17->_ambientPresentationInputs;
    v17->_ambientPresentationInputs = v26;
  }

  return v17;
}

- (id)succinctDescription
{
  v2 = [(TRAArbitrationInputs *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__TRAArbitrationInputs_succinctDescriptionBuilder__block_invoke;
  v7[3] = &unk_279DD48D0;
  v4 = v3;
  v8 = v4;
  v9 = self;
  [v4 appendBodySectionWithName:0 multilinePrefix:@"\t" block:v7];
  v5 = v4;

  return v4;
}

id __50__TRAArbitrationInputs_succinctDescriptionBuilder__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:@"interfaceIdiomInputs"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:@"userInterfaceStyleInputs"];
  v4 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"deviceOrientationInputs"];
  v5 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"keyboardInputs"];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 40) withName:@"ambientPresentationInputs"];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(TRAArbitrationInputs *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (void)initWithInterfaceIdiomInputs:userInterfaceStyleInputs:deviceOrientationInputs:keyboardInputs:ambientPresentationInputs:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"interfaceIdiomInputs" object:? file:? lineNumber:? description:?];
}

- (void)initWithInterfaceIdiomInputs:userInterfaceStyleInputs:deviceOrientationInputs:keyboardInputs:ambientPresentationInputs:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"userInterfaceStyleInputs" object:? file:? lineNumber:? description:?];
}

- (void)initWithInterfaceIdiomInputs:userInterfaceStyleInputs:deviceOrientationInputs:keyboardInputs:ambientPresentationInputs:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"deviceOrientationInputs" object:? file:? lineNumber:? description:?];
}

@end