@interface WFWorkflowActionTree
- (BOOL)actionIsConnectedToPreviousAction:(id)a3;
- (BOOL)removeActionAtIndex:(int64_t)a3;
- (NSArray)actions;
- (WFActionOutput)shortcutInputActionOutput;
- (WFWorkflowActionTree)initWithActionTree:(id)a3;
- (WFWorkflowActionTree)initWithActions:(id)a3;
- (id)actionAtIndex:(int64_t)a3;
- (id)actionsInsideAction:(id)a3;
- (id)actionsProvidingVariableNamed:(id)a3 atIndex:(int64_t)a4;
- (id)availableOutputActionsAtIndex:(int64_t)a3;
- (id)availableVariableNamesAtIndex:(int64_t)a3;
- (id)inheritedInputVariableForAction:(id)a3 workflowInputTypes:(id)a4 ignoreInputTypes:(BOOL)a5;
- (id)outputActionWithID:(id)a3;
- (id)outputsForAction:(id)a3 inScopeOfAction:(id)a4;
- (id)possibleContentClassesForVariableNamed:(id)a3 atIndex:(int64_t)a4;
- (int64_t)indentationLevelOfActionAtIndex:(int64_t)a3;
- (int64_t)indexOfAction:(id)a3;
- (int64_t)validIndexForInsertingActionAtIndex:(int64_t)a3;
- (void)insertActions:(id)a3 atIndex:(int64_t)a4;
- (void)setActions:(id)a3;
@end

@implementation WFWorkflowActionTree

- (NSArray)actions
{
  v2 = self;
  WFWorkflowActionTree.actions.getter();

  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v3 = sub_1CA94C648();

  return v3;
}

- (WFWorkflowActionTree)initWithActions:(id)a3
{
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v3 = sub_1CA94C658();
  return WFWorkflowActionTree.init(actions:)(v3);
}

- (id)availableVariableNamesAtIndex:(int64_t)a3
{
  v3 = self;
  WFWorkflowActionTree.availableVariableNames(at:)();

  v4 = sub_1CA94C648();

  return v4;
}

- (id)possibleContentClassesForVariableNamed:(id)a3 atIndex:(int64_t)a4
{
  sub_1CA94C3A8();
  v5 = self;
  WFWorkflowActionTree.__possibleContentClasses(namedVariable:at:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444880, &qword_1CA984340);
  v6 = sub_1CA94C648();

  return v6;
}

- (id)actionsProvidingVariableNamed:(id)a3 atIndex:(int64_t)a4
{
  sub_1CA94C3A8();
  v5 = self;
  WFWorkflowActionTree.actionsProvidingVariable(named:at:)();

  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v6 = sub_1CA94C648();

  return v6;
}

- (id)availableOutputActionsAtIndex:(int64_t)a3
{
  v3 = self;
  WFWorkflowActionTree.availableOutputActions(at:)();

  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v4 = sub_1CA94C648();

  return v4;
}

- (id)outputActionWithID:(id)a3
{
  v4 = sub_1CA94C3A8();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  WFWorkflowActionTree.outputAction(id:)(v9, v8);
  v11 = v10;

  return v11;
}

- (WFActionOutput)shortcutInputActionOutput
{
  v2 = WFWorkflowActionTree.shortcutInputActionOutput.getter();

  return v2;
}

- (id)outputsForAction:(id)a3 inScopeOfAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  WFWorkflowActionTree.outputs(for:inScopeOf:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444800, &qword_1CA984018);
  v9 = sub_1CA94C648();

  return v9;
}

- (id)inheritedInputVariableForAction:(id)a3 workflowInputTypes:(id)a4 ignoreInputTypes:(BOOL)a5
{
  v6 = a4;
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444880, &qword_1CA984340);
    v6 = sub_1CA94C658();
  }

  v9 = a3;
  v10 = self;
  v17.value._rawValue = v6;
  v17.is_nil = a5;
  WFWorkflowActionTree.__inheritedInputVariable(for:workflowInputTypes:ignoreInputTypes:)(v12, v9, v17, v11);
  v14 = v13;

  return v14;
}

- (WFWorkflowActionTree)initWithActionTree:(id)a3
{
  v3 = a3;
  WFWorkflowActionTree.init(actionTree:)();
  return result;
}

- (void)setActions:(id)a3
{
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  sub_1CA94C658();
  v4 = self;
  WFWorkflowActionTree.actions.setter();
}

- (id)actionAtIndex:(int64_t)a3
{
  v4 = self;
  WFWorkflowActionTree.action(at:)(v5, a3);
  v7 = v6;

  return v7;
}

- (int64_t)indexOfAction:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = WFWorkflowActionTree.index(of:)(v4);

  return v6;
}

- (int64_t)indentationLevelOfActionAtIndex:(int64_t)a3
{
  v4 = self;
  v5 = WFWorkflowActionTree.indentationLevelOfAction(at:)(a3);

  return v5;
}

- (int64_t)validIndexForInsertingActionAtIndex:(int64_t)a3
{
  v4 = self;
  v5 = WFWorkflowActionTree.validIndexForInsertingAction(at:)(a3);

  return v5;
}

- (void)insertActions:(id)a3 atIndex:(int64_t)a4
{
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v6 = sub_1CA94C658();
  v7 = self;
  WFWorkflowActionTree.insertActions(_:at:)(v6, a4);
}

- (BOOL)removeActionAtIndex:(int64_t)a3
{
  v4 = self;
  LOBYTE(a3) = WFWorkflowActionTree.removeAction(at:)(a3);

  return a3 & 1;
}

- (id)actionsInsideAction:(id)a3
{
  v4 = self;
  v5 = a3;
  v6 = WFWorkflowActionTree.actions(inside:)(a3);

  if (v6)
  {
    sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
    v7 = sub_1CA94C648();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)actionIsConnectedToPreviousAction:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = WFWorkflowActionTree.actionIsConnectedToPreviousAction(_:)(v4);

  return self & 1;
}

@end