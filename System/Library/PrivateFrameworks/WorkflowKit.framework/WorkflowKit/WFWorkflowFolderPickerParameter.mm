@interface WFWorkflowFolderPickerParameter
- (id)accessoryIconForPossibleState:(id)state;
- (id)accessoryImageForPossibleState:(id)state;
- (id)defaultSerializedRepresentation;
- (id)localizedLabelForPossibleState:(id)state;
- (id)possibleStates;
@end

@implementation WFWorkflowFolderPickerParameter

- (id)accessoryIconForPossibleState:(id)state
{
  value = [state value];
  identifier = [value identifier];

  if ([identifier isEqualToString:@"AllShortcuts"])
  {
    v5 = objc_alloc(MEMORY[0x1E69E0D70]);
    clearBackground = [MEMORY[0x1E69E0B48] clearBackground];
    v7 = [v5 initWithSymbolName:@"app.2.stack.3d" background:clearBackground];
  }

  else
  {
    v8 = +[WFDatabase defaultDatabase];
    clearBackground = [v8 collectionWithIdentifier:identifier];

    [clearBackground glyphCharacter];
    v9 = WFSystemImageNameForOutlineGlyphCharacter();
    if (v9)
    {
      v10 = objc_alloc(MEMORY[0x1E69E0D70]);
      clearBackground2 = [MEMORY[0x1E69E0B48] clearBackground];
      v7 = [v10 initWithSymbolName:v9 background:clearBackground2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)accessoryImageForPossibleState:(id)state
{
  v3 = [(WFWorkflowFolderPickerParameter *)self accessoryIconForPossibleState:state];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = MEMORY[0x1E69E0B58];
    symbolName = [v3 symbolName];
    v6 = [v4 glyphNamed:symbolName pointSize:25.0];
    v7 = [v6 imageWithRenderingMode:2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)localizedLabelForPossibleState:(id)state
{
  value = [state value];
  displayString = [value displayString];

  return displayString;
}

- (id)defaultSerializedRepresentation
{
  v2 = WFAllShortcutsParameterState();
  serializedRepresentation = [v2 serializedRepresentation];

  return serializedRepresentation;
}

- (id)possibleStates
{
  v16[1] = *MEMORY[0x1E69E9840];
  possibleStates = self->_possibleStates;
  if (!possibleStates)
  {
    v4 = +[WFDatabaseProxy defaultDatabase];
    v5 = [v4 sortedVisibleFoldersWithError:0];
    v6 = v5;
    v7 = MEMORY[0x1E695E0F0];
    if (v5)
    {
      v7 = v5;
    }

    v8 = v7;

    v9 = [v8 if_map:&__block_literal_global_69862];

    v10 = WFAllShortcutsParameterState();
    v16[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v12 = [v11 arrayByAddingObjectsFromArray:v9];
    v13 = self->_possibleStates;
    self->_possibleStates = v12;

    possibleStates = self->_possibleStates;
  }

  v14 = *MEMORY[0x1E69E9840];

  return possibleStates;
}

WFINObjectSubstitutableState *__49__WFWorkflowFolderPickerParameter_possibleStates__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696E910];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 identifier];
  v6 = [v3 name];

  v7 = [v4 initWithIdentifier:v5 displayString:v6];
  v8 = [(WFVariableSubstitutableParameterState *)[WFINObjectSubstitutableState alloc] initWithValue:v7];

  return v8;
}

@end