@interface UIMainMenuCommand
@end

@implementation UIMainMenuCommand

id __68___UIMainMenuCommand__initWithUIMenuLeaf_allowingKeyboardShortcuts___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 alternateLeafWithBaseLeaf:v3];
  v6 = [[_UIMainMenuCommand alloc] _initWithUIMenuLeaf:v5 allowingKeyboardShortcuts:*(a1 + 40)];
  v7 = [_UIMainMenuCommandAlternate alloc];
  v8 = [v4 modifierFlags];

  v9 = [(_UIMainMenuCommandAlternate *)v7 _initWithModifierFlags:v8 command:v6];

  return v9;
}

id __99___UIMainMenuCommand_uiMenuLeafForCommandAndAlternatesForSession_parentState_primaryActionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 command];
  v5 = [v4 _uiActionForSelfOnlyForSession:a1[4] parentState:a1[5] primaryActionHandler:a1[6]];

  if (v5)
  {
    v6 = +[_UIMenuLeafAlternate alternateWithModifierFlags:menuLeaf:](_UIMenuLeafAlternate, "alternateWithModifierFlags:menuLeaf:", [v3 modifierFlags], v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end