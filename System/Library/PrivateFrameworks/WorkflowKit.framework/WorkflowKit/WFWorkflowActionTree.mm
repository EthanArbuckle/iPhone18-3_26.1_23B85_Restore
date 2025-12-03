@interface WFWorkflowActionTree
- (BOOL)actionIsConnectedToPreviousAction:(id)action;
- (BOOL)removeActionAtIndex:(int64_t)index;
- (NSArray)actions;
- (WFActionOutput)shortcutInputActionOutput;
- (WFWorkflowActionTree)initWithActionTree:(id)tree;
- (WFWorkflowActionTree)initWithActions:(id)actions;
- (id)actionAtIndex:(int64_t)index;
- (id)actionsInsideAction:(id)action;
- (id)actionsProvidingVariableNamed:(id)named atIndex:(int64_t)index;
- (id)availableOutputActionsAtIndex:(int64_t)index;
- (id)availableVariableNamesAtIndex:(int64_t)index;
- (id)inheritedInputVariableForAction:(id)action workflowInputTypes:(id)types ignoreInputTypes:(BOOL)inputTypes;
- (id)outputActionWithID:(id)d;
- (id)outputsForAction:(id)action inScopeOfAction:(id)ofAction;
- (id)possibleContentClassesForVariableNamed:(id)named atIndex:(int64_t)index;
- (int64_t)indentationLevelOfActionAtIndex:(int64_t)index;
- (int64_t)indexOfAction:(id)action;
- (int64_t)validIndexForInsertingActionAtIndex:(int64_t)index;
- (void)insertActions:(id)actions atIndex:(int64_t)index;
- (void)setActions:(id)actions;
@end

@implementation WFWorkflowActionTree

- (NSArray)actions
{
  selfCopy = self;
  WFWorkflowActionTree.actions.getter();

  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v3 = sub_1CA94C648();

  return v3;
}

- (WFWorkflowActionTree)initWithActions:(id)actions
{
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v3 = sub_1CA94C658();
  return WFWorkflowActionTree.init(actions:)(v3);
}

- (id)availableVariableNamesAtIndex:(int64_t)index
{
  selfCopy = self;
  WFWorkflowActionTree.availableVariableNames(at:)();

  v4 = sub_1CA94C648();

  return v4;
}

- (id)possibleContentClassesForVariableNamed:(id)named atIndex:(int64_t)index
{
  sub_1CA94C3A8();
  selfCopy = self;
  WFWorkflowActionTree.__possibleContentClasses(namedVariable:at:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444880, &qword_1CA984340);
  v6 = sub_1CA94C648();

  return v6;
}

- (id)actionsProvidingVariableNamed:(id)named atIndex:(int64_t)index
{
  sub_1CA94C3A8();
  selfCopy = self;
  WFWorkflowActionTree.actionsProvidingVariable(named:at:)();

  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v6 = sub_1CA94C648();

  return v6;
}

- (id)availableOutputActionsAtIndex:(int64_t)index
{
  selfCopy = self;
  WFWorkflowActionTree.availableOutputActions(at:)();

  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v4 = sub_1CA94C648();

  return v4;
}

- (id)outputActionWithID:(id)d
{
  v4 = sub_1CA94C3A8();
  v6 = v5;
  selfCopy = self;
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

- (id)outputsForAction:(id)action inScopeOfAction:(id)ofAction
{
  actionCopy = action;
  ofActionCopy = ofAction;
  selfCopy = self;
  WFWorkflowActionTree.outputs(for:inScopeOf:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444800, &qword_1CA984018);
  v9 = sub_1CA94C648();

  return v9;
}

- (id)inheritedInputVariableForAction:(id)action workflowInputTypes:(id)types ignoreInputTypes:(BOOL)inputTypes
{
  typesCopy = types;
  if (types)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444880, &qword_1CA984340);
    typesCopy = sub_1CA94C658();
  }

  actionCopy = action;
  selfCopy = self;
  v17.value._rawValue = typesCopy;
  v17.is_nil = inputTypes;
  WFWorkflowActionTree.__inheritedInputVariable(for:workflowInputTypes:ignoreInputTypes:)(v12, actionCopy, v17, v11);
  v14 = v13;

  return v14;
}

- (WFWorkflowActionTree)initWithActionTree:(id)tree
{
  treeCopy = tree;
  WFWorkflowActionTree.init(actionTree:)();
  return result;
}

- (void)setActions:(id)actions
{
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  sub_1CA94C658();
  selfCopy = self;
  WFWorkflowActionTree.actions.setter();
}

- (id)actionAtIndex:(int64_t)index
{
  selfCopy = self;
  WFWorkflowActionTree.action(at:)(v5, index);
  v7 = v6;

  return v7;
}

- (int64_t)indexOfAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  v6 = WFWorkflowActionTree.index(of:)(actionCopy);

  return v6;
}

- (int64_t)indentationLevelOfActionAtIndex:(int64_t)index
{
  selfCopy = self;
  v5 = WFWorkflowActionTree.indentationLevelOfAction(at:)(index);

  return v5;
}

- (int64_t)validIndexForInsertingActionAtIndex:(int64_t)index
{
  selfCopy = self;
  v5 = WFWorkflowActionTree.validIndexForInsertingAction(at:)(index);

  return v5;
}

- (void)insertActions:(id)actions atIndex:(int64_t)index
{
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v6 = sub_1CA94C658();
  selfCopy = self;
  WFWorkflowActionTree.insertActions(_:at:)(v6, index);
}

- (BOOL)removeActionAtIndex:(int64_t)index
{
  selfCopy = self;
  LOBYTE(index) = WFWorkflowActionTree.removeAction(at:)(index);

  return index & 1;
}

- (id)actionsInsideAction:(id)action
{
  selfCopy = self;
  actionCopy = action;
  v6 = WFWorkflowActionTree.actions(inside:)(action);

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

- (BOOL)actionIsConnectedToPreviousAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  LOBYTE(self) = WFWorkflowActionTree.actionIsConnectedToPreviousAction(_:)(actionCopy);

  return self & 1;
}

@end