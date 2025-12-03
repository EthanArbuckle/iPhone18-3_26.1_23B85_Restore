@interface TRAArbitrationInputs
- (TRAArbitrationInputs)initWithInterfaceIdiomInputs:(id)inputs deviceOrientationInputs:(id)orientationInputs keyboardInputs:(id)keyboardInputs ambientPresentationInputs:(id)presentationInputs;
- (TRAArbitrationInputs)initWithInterfaceIdiomInputs:(id)inputs userInterfaceStyleInputs:(id)styleInputs deviceOrientationInputs:(id)orientationInputs keyboardInputs:(id)keyboardInputs ambientPresentationInputs:(id)presentationInputs;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation TRAArbitrationInputs

- (TRAArbitrationInputs)initWithInterfaceIdiomInputs:(id)inputs deviceOrientationInputs:(id)orientationInputs keyboardInputs:(id)keyboardInputs ambientPresentationInputs:(id)presentationInputs
{
  presentationInputsCopy = presentationInputs;
  keyboardInputsCopy = keyboardInputs;
  orientationInputsCopy = orientationInputs;
  inputsCopy = inputs;
  v14 = [[TRAArbitrationUserInterfaceStyleInputs alloc] initWithUserInterfaceStyle:0];
  v15 = [(TRAArbitrationInputs *)self initWithInterfaceIdiomInputs:inputsCopy userInterfaceStyleInputs:v14 deviceOrientationInputs:orientationInputsCopy keyboardInputs:keyboardInputsCopy ambientPresentationInputs:presentationInputsCopy];

  return v15;
}

- (TRAArbitrationInputs)initWithInterfaceIdiomInputs:(id)inputs userInterfaceStyleInputs:(id)styleInputs deviceOrientationInputs:(id)orientationInputs keyboardInputs:(id)keyboardInputs ambientPresentationInputs:(id)presentationInputs
{
  inputsCopy = inputs;
  styleInputsCopy = styleInputs;
  orientationInputsCopy = orientationInputs;
  keyboardInputsCopy = keyboardInputs;
  presentationInputsCopy = presentationInputs;
  if (inputsCopy)
  {
    if (styleInputsCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    [TRAArbitrationInputs initWithInterfaceIdiomInputs:userInterfaceStyleInputs:deviceOrientationInputs:keyboardInputs:ambientPresentationInputs:];
    if (orientationInputsCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [TRAArbitrationInputs initWithInterfaceIdiomInputs:userInterfaceStyleInputs:deviceOrientationInputs:keyboardInputs:ambientPresentationInputs:];
  if (!styleInputsCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (orientationInputsCopy)
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
    v18 = [inputsCopy copy];
    interfaceIdiomInputs = v17->_interfaceIdiomInputs;
    v17->_interfaceIdiomInputs = v18;

    v20 = [styleInputsCopy copy];
    userInterfaceStyleInputs = v17->_userInterfaceStyleInputs;
    v17->_userInterfaceStyleInputs = v20;

    v22 = [orientationInputsCopy copy];
    deviceOrientationInputs = v17->_deviceOrientationInputs;
    v17->_deviceOrientationInputs = v22;

    v24 = [keyboardInputsCopy copy];
    keyboardInputs = v17->_keyboardInputs;
    v17->_keyboardInputs = v24;

    v26 = [presentationInputsCopy copy];
    ambientPresentationInputs = v17->_ambientPresentationInputs;
    v17->_ambientPresentationInputs = v26;
  }

  return v17;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(TRAArbitrationInputs *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
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
  selfCopy = self;
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

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(TRAArbitrationInputs *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
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