@interface WFWorkflow
+ (BOOL)attemptRecoveryFromError:(id)a3 optionIndex:(unint64_t)a4;
+ (BOOL)checkClientVersion:(id)a3 currentVersion:(id)a4 error:(id *)a5;
+ (id)effectiveInputClassesFromInputClasses:(id)a3 workflowTypes:(id)a4;
+ (id)localizedSubtitleWithActionCount:(unint64_t)a3;
+ (id)supportedInputClasses;
- (BOOL)addWatchWorkflowTypeIfEligible;
- (BOOL)createReferenceIfNecessaryWithName:(id)a3 nameCollisionBehavior:(unint64_t)a4 allowEmpty:(BOOL)a5 error:(id *)a6;
- (BOOL)disabledOnLockScreen;
- (BOOL)hasActions;
- (BOOL)hasOutputAction;
- (BOOL)hasOutputFallback;
- (BOOL)hasShortcutInputVariables;
- (BOOL)hasStorageProvider;
- (BOOL)hiddenFromLibraryAndSync;
- (BOOL)isDeleted;
- (BOOL)isEligibleForWatch;
- (BOOL)isResidentCompatible;
- (BOOL)isUntitled;
- (BOOL)queue_reloadReferenceFromStorage;
- (BOOL)record:(id)a3 isEquivalentToRecord:(id)a4;
- (BOOL)reloadReferenceFromStorage;
- (BOOL)renameWorkflowTo:(id)a3 error:(id *)a4;
- (BOOL)shouldAutoUpdateAssociatedAppBundleIdentifier;
- (BOOL)shouldShowInputAction;
- (NSArray)actions;
- (NSArray)triggers;
- (NSArray)workflowTypes;
- (NSData)remoteQuarantineHash;
- (NSHashTable)editingObservers;
- (NSString)actionsDescription;
- (NSString)associatedAppBundleIdentifier;
- (NSString)attributionTitle;
- (NSString)description;
- (NSString)galleryIdentifier;
- (NSString)legacyName;
- (NSString)name;
- (NSString)resolvedAssociatedAppBundleIdentifier;
- (NSString)source;
- (NSString)workflowID;
- (NSString)workflowSubtitle;
- (WFDatabase)database;
- (WFIcon)attributionIcon;
- (WFWorkflow)init;
- (WFWorkflow)initWithActionDonation:(id)a3 error:(id *)a4;
- (WFWorkflow)initWithCreationOptions:(id)a3 database:(id)a4 error:(id *)a5;
- (WFWorkflow)initWithName:(id)a3 description:(id)a4 associatedAppBundleIdentifier:(id)a5 actions:(id)a6;
- (WFWorkflow)initWithRecord:(id)a3 reference:(id)a4 storageProvider:(id)a5 migrateIfNecessary:(BOOL)a6 environment:(int64_t)a7 error:(id *)a8;
- (WFWorkflow)initWithShortcut:(id)a3 error:(id *)a4;
- (WFWorkflowActionTree)actionTree;
- (WFWorkflowEditingDelegate)editingDelegate;
- (WFWorkflowIcon)icon;
- (WFWorkflowQuarantine)quarantine;
- (id)actionsGroupedWithAction:(id)a3;
- (id)actionsNestedInsideAction:(id)a3;
- (id)additionalEffectiveInputClassesForTriggers:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createUserActivityForViewing;
- (id)effectiveInputClasses;
- (id)inferOutputTypesWithHasOutputFallback:(BOOL *)a3;
- (id)loadTriggers;
- (id)localizedActionsSummary;
- (id)localizedSubtitle;
- (id)prepareForSharingWithOptions:(id)a3;
- (id)userVisibleStringsForUseCase:(unint64_t)a3;
- (id)validImportQuestions;
- (int64_t)indexOfAction:(id)a3;
- (int64_t)remoteQuarantineStatus;
- (void)_actionsDidChange;
- (void)_actionsWillChange;
- (void)_triggersDidChange;
- (void)action:(id)a3 parameterStateDidChangeForKey:(id)a4;
- (void)action:(id)a3 supplementalParameterValueDidChangeForKey:(id)a4;
- (void)actionNameDidChange:(id)a3;
- (void)actionOutputDetailsDidChange:(id)a3;
- (void)actionTreeDidChangeConnectorState:(id)a3;
- (void)addAction:(id)a3;
- (void)addEditingObserver:(id)a3;
- (void)addWatchWorkflowType;
- (void)clearOutReference;
- (void)configureAsSingleStepShortcutIfNecessary:(id)a3;
- (void)configureWithStandaloneShortcutRepresentation:(id)a3 homeSummaryText:(id)a4;
- (void)databaseDidChange:(id)a3 modified:(id)a4 inserted:(id)a5 removed:(id)a6;
- (void)dealloc;
- (void)deleteReference;
- (void)generateShortcutRepresentation:(id)a3;
- (void)generateStandaloneShortcutRepresentation:(id)a3;
- (void)getHomeSummaryTextWithCompletion:(id)a3;
- (void)insertAction:(id)a3 atIndex:(unint64_t)a4;
- (void)insertActions:(id)a3 atIndex:(unint64_t)a4;
- (void)insertActions:(id)a3 atIndexes:(id)a4;
- (void)loadFromRecord;
- (void)moveActionsAtIndexes:(id)a3 toIndexes:(id)a4;
- (void)performBatchOperation:(id)a3;
- (void)reloadFromRecord;
- (void)reloadTriggers;
- (void)reloadTriggersIfNecessaryForDatabaseChangeWithModified:(id)a3 inserted:(id)a4 removed:(id)a5;
- (void)removeAction:(id)a3;
- (void)removeActions:(id)a3;
- (void)removeEditingObserver:(id)a3;
- (void)requestToRunScriptsOnDomain:(id)a3 withUserInterface:(id)a4 database:(id)a5 completionHandler:(id)a6;
- (void)rewriteWithStrings:(id)a3;
- (void)save;
- (void)saveFromDebouncer:(id)a3;
- (void)saveWithCompletionBlock:(id)a3;
- (void)setActions:(id)a3;
- (void)setAssociatedAppBundleIdentifier:(id)a3;
- (void)setIcon:(id)a3;
- (void)setImportQuestions:(id)a3;
- (void)setInputClasses:(id)a3;
- (void)setName:(id)a3;
- (void)setNoInputBehavior:(id)a3;
- (void)setOutputClasses:(id)a3;
- (void)setRemoteQuarantineHash:(id)a3;
- (void)setRemoteQuarantineStatus:(int64_t)a3;
- (void)setTriggers:(id)a3;
- (void)setWorkflowTypes:(id)a3;
- (void)updateInputAction;
- (void)updateMinimumClientVersion;
- (void)updateSearchAttribution;
- (void)updateSuggestedNameIfPossible;
@end

@implementation WFWorkflow

- (void)loadFromRecord
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [(WFWorkflow *)self record];
  v4 = getWFWorkflowLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v29 = "[WFWorkflow loadFromRecord]";
    v30 = 2114;
    v31 = v3;
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEFAULT, "%s Loading workflow from record: %{public}@", buf, 0x16u);
  }

  v5 = getWFWorkflowLogObject();
  v6 = os_signpost_id_generate(v5);

  v7 = getWFWorkflowLogObject();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "LoadFromRecord", "", buf, 2u);
  }

  [(WFWorkflow *)self willChangeValueForKey:@"inputClasses"];
  v9 = [v3 inputClasses];
  v10 = [v9 if_compactMap:&__block_literal_global_428];
  inputClasses = self->_inputClasses;
  self->_inputClasses = v10;

  [(WFWorkflow *)self didChangeValueForKey:@"inputClasses"];
  [(WFWorkflow *)self willChangeValueForKey:@"noInputBehavior"];
  v12 = [v3 noInputBehavior];
  v13 = WFWorkflowNoInputBehaviorFromSerializedRepresentation(v12);
  noInputBehavior = self->_noInputBehavior;
  self->_noInputBehavior = v13;

  [(WFWorkflow *)self didChangeValueForKey:@"noInputBehavior"];
  [(WFWorkflow *)self willChangeValueForKey:@"outputClasses"];
  v15 = [v3 outputClasses];
  v16 = [v15 if_compactMap:&__block_literal_global_430];
  outputClasses = self->_outputClasses;
  self->_outputClasses = v16;

  [(WFWorkflow *)self didChangeValueForKey:@"outputClasses"];
  v18 = [v3 actions];
  v19 = +[WFActionRegistry sharedRegistry];
  v20 = [WFAction actionsFromSerializedRepresentations:v18 actionRegistry:v19];

  [(WFWorkflow *)self setSaveDisabled:1];
  [(WFWorkflow *)self setActions:v20];
  [(WFWorkflow *)self setSaveDisabled:0];
  [(WFWorkflow *)self setSerializeActionsWhenSaving:0];
  [(WFWorkflow *)self willChangeValueForKey:@"triggers"];
  [(WFWorkflow *)self didChangeValueForKey:@"triggers"];
  [(WFWorkflow *)self willChangeValueForKey:@"importQuestions"];
  v21 = [v3 importQuestions];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __28__WFWorkflow_loadFromRecord__block_invoke_3;
  v27[3] = &unk_1E8379580;
  v27[4] = self;
  v22 = [v21 if_compactMap:v27];
  importQuestions = self->_importQuestions;
  self->_importQuestions = v22;

  [(WFWorkflow *)self didChangeValueForKey:@"importQuestions"];
  [(WFWorkflow *)self updateInputAction];
  [(WFWorkflow *)self updateSearchAttribution];
  v24 = getWFWorkflowLogObject();
  v25 = v24;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v25, OS_SIGNPOST_INTERVAL_END, v6, "LoadFromRecord", "", buf, 2u);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (BOOL)hiddenFromLibraryAndSync
{
  v2 = [(WFWorkflow *)self record];
  v3 = [v2 hiddenFromLibraryAndSync];

  return v3;
}

- (NSArray)actions
{
  v2 = [(WFWorkflow *)self actionTree];
  v3 = [v2 actions];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFWorkflow *)self name];
  v7 = [(WFWorkflow *)self actions];
  v8 = [v3 stringWithFormat:@"<%@: %p, name: %@, actions: %lu>", v5, self, v6, objc_msgSend(v7, "count")];

  return v8;
}

- (NSString)name
{
  v2 = [(WFWorkflow *)self record];
  v3 = [v2 name];

  return v3;
}

- (WFWorkflowActionTree)actionTree
{
  actionTree = self->_actionTree;
  if (!actionTree)
  {
    v4 = objc_alloc_init(WFWorkflowActionTree);
    v5 = self->_actionTree;
    self->_actionTree = v4;

    [(WFWorkflowActionTree *)self->_actionTree addObserver:self];
    [(WFWorkflowActionTree *)self->_actionTree setNotifyVariablesOfChanges:1];
    actionTree = self->_actionTree;
  }

  return actionTree;
}

- (void)_actionsWillChange
{
  [(WFWorkflow *)self willChangeValueForKey:@"actions"];
  actionTree = self->_actionTree;
  if (actionTree)
  {
    v4 = MEMORY[0x1E695DFD8];
    v6 = [(WFWorkflowActionTree *)actionTree actions];
    v5 = [v4 setWithArray:v6];
    [(WFWorkflow *)self setLastActionTreeActions:v5];
  }

  else
  {

    [(WFWorkflow *)self setLastActionTreeActions:0];
  }
}

- (NSString)resolvedAssociatedAppBundleIdentifier
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = [(WFWorkflow *)self actions];
  v4 = [v3 if_compactMap:&__block_literal_global_347];
  v5 = [v2 orderedSetWithArray:v4];

  if ([v5 count] == 1)
  {
    v6 = [v5 firstObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)workflowID
{
  v2 = [(WFWorkflow *)self reference];
  v3 = [v2 identifier];

  return v3;
}

- (WFIcon)attributionIcon
{
  if ([(WFWorkflow *)self hiddenFromLibraryAndSync])
  {
    v3 = objc_alloc(MEMORY[0x1E69E0960]);
    v4 = [v3 initWithBundleIdentifier:*MEMORY[0x1E69E0FB0]];
  }

  else
  {
    v5 = [(WFWorkflow *)self associatedAppBundleIdentifier];
    v6 = [v5 length];

    if (v6)
    {
      v7 = objc_alloc(MEMORY[0x1E69E0960]);
      v8 = [(WFWorkflow *)self associatedAppBundleIdentifier];
      v4 = [v7 initWithBundleIdentifier:v8];
    }

    else
    {
      v9 = [(WFWorkflow *)self icon];
      v4 = [v9 icon];
    }
  }

  return v4;
}

- (NSString)associatedAppBundleIdentifier
{
  v2 = [(WFWorkflow *)self record];
  v3 = [v2 associatedAppBundleIdentifier];

  return v3;
}

- (WFWorkflowIcon)icon
{
  v2 = [(WFWorkflow *)self record];
  v3 = [v2 icon];

  return v3;
}

- (NSString)attributionTitle
{
  if ([(WFWorkflow *)self hiddenFromLibraryAndSync])
  {
    WFLocalizedString(@"Shortcuts");
  }

  else
  {
    [(WFWorkflow *)self name];
  }
  v3 = ;

  return v3;
}

- (NSHashTable)editingObservers
{
  editingObservers = self->_editingObservers;
  if (!editingObservers)
  {
    v4 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v5 = self->_editingObservers;
    self->_editingObservers = v4;

    editingObservers = self->_editingObservers;
  }

  return editingObservers;
}

- (void)_actionsDidChange
{
  v73 = *MEMORY[0x1E69E9840];
  v3 = [(WFWorkflow *)self lastActionTreeActions];
  v4 = MEMORY[0x1E695DFD8];
  v5 = [(WFWorkflow *)self actions];
  v6 = [v4 setWithArray:v5];

  v7 = [MEMORY[0x1E695DFA8] setWithSet:v6];
  [v7 minusSet:v3];
  v47 = v3;
  v8 = [MEMORY[0x1E695DFA8] setWithSet:v3];
  v46 = v6;
  [v8 minusSet:v6];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v64 objects:v72 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v65;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v65 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v64 + 1) + 8 * i) willBeAddedToWorkflow:self];
      }

      v11 = [v9 countByEnumeratingWithState:&v64 objects:v72 count:16];
    }

    while (v11);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v14 = v9;
  v15 = [v14 countByEnumeratingWithState:&v60 objects:v71 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v61;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v61 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v60 + 1) + 8 * j);
        [v19 wasAddedToWorkflow:self];
        [v19 addEventObserver:self];
      }

      v16 = [v14 countByEnumeratingWithState:&v60 objects:v71 count:16];
    }

    while (v16);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v20 = v8;
  v21 = [v20 countByEnumeratingWithState:&v56 objects:v70 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v57;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v57 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v56 + 1) + 8 * k);
        [v25 removeEventObserver:self];
        [v25 wasRemovedFromWorkflow:self];
      }

      v22 = [v20 countByEnumeratingWithState:&v56 objects:v70 count:16];
    }

    while (v22);
  }

  v45 = v14;

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v26 = [(WFWorkflow *)self importQuestions];
  v27 = [v26 countByEnumeratingWithState:&v52 objects:v69 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v53;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        if (*v53 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v52 + 1) + 8 * m);
        v32 = [v31 action];
        if (v32)
        {
          v33 = v32;
          v34 = [v31 action];
          v35 = [v20 containsObject:v34];

          if (v35)
          {
            [(WFWorkflow *)self willChangeValueForKey:@"importQuestions"];
            v36 = [(WFWorkflow *)self importQuestions];
            v37 = [v36 if_arrayByRemovingObject:v31];
            [(WFWorkflow *)self setImportQuestions:v37];

            [(WFWorkflow *)self didChangeValueForKey:@"importQuestions"];
          }
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v52 objects:v69 count:16];
    }

    while (v28);
  }

  [(WFWorkflow *)self didChangeValueForKey:@"actions"];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v38 = [(WFWorkflow *)self editingObservers];
  v39 = [v38 copy];

  v40 = [v39 countByEnumeratingWithState:&v48 objects:v68 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v49;
    do
    {
      for (n = 0; n != v41; ++n)
      {
        if (*v49 != v42)
        {
          objc_enumerationMutation(v39);
        }

        [*(*(&v48 + 1) + 8 * n) workflowActionsDidChange:self];
      }

      v41 = [v39 countByEnumeratingWithState:&v48 objects:v68 count:16];
    }

    while (v41);
  }

  [(WFWorkflow *)self updateInputAction];
  [(WFWorkflow *)self updateSuggestedNameIfPossible];
  [(WFWorkflow *)self setSerializeActionsWhenSaving:1];
  [(WFWorkflow *)self save];
  [(WFWorkflow *)self setLastActionTreeActions:0];

  v44 = *MEMORY[0x1E69E9840];
}

- (void)updateInputAction
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(WFWorkflow *)self shouldShowInputAction];
  v4 = MEMORY[0x1E695DFD8];
  v5 = [(WFWorkflow *)self workflowTypes];
  v6 = [v4 setWithArray:v5];

  p_inputAction = &self->_inputAction;
  v8 = [(WFInputAction *)self->_inputAction inputSurfaces];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;

  v12 = *p_inputAction;
  if (!v3)
  {
    if (v12)
    {
      v13 = v12;
      goto LABEL_12;
    }

LABEL_9:
    if ([v11 isEqualToSet:v6])
    {
      goto LABEL_24;
    }

    v13 = *p_inputAction;
    if (v3)
    {
      goto LABEL_11;
    }

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  if (v12)
  {
    goto LABEL_9;
  }

  v13 = 0;
LABEL_11:
  v14 = [WFInputAction inputActionForWorkflow:self];
LABEL_13:
  [(WFWorkflow *)self willChangeValueForKey:@"inputAction"];
  objc_storeStrong(&self->_inputAction, v14);
  [(WFWorkflow *)self didChangeValueForKey:@"inputAction"];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = [(WFWorkflow *)self editingObservers];
  v16 = [v15 copy];

  v17 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v22 + 1) + 8 * i) workflowInputActionDidChange:self];
      }

      v18 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v18);
  }

  if (v13 && !v14)
  {
    [v13 removedFromWorkflow];
  }

LABEL_24:
  v21 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldShowInputAction
{
  v3 = [(WFWorkflow *)self workflowTypes];
  if (WFWorkflowTypesContainsInputType(v3))
  {
    v4 = 1;
  }

  else
  {
    v5 = [(WFWorkflow *)self actionTree];
    v4 = [v5 isShortcutInputVariableUsed];
  }

  return v4;
}

- (NSArray)workflowTypes
{
  v2 = [(WFWorkflow *)self record];
  v3 = [v2 workflowTypes];

  return v3;
}

- (void)updateSuggestedNameIfPossible
{
  if ([(WFWorkflow *)self storageState]== 2 && ![(WFWorkflow *)self userProvidedName])
  {
    v3 = [(WFWorkflow *)self actions];
    v13 = [v3 lastObject];

    v4 = [(WFWorkflow *)self actionsGroupedWithAction:v13];
    v5 = [v4 firstObject];
    if (v13 && v4 && v5)
    {
      v6 = [v5 localizedName];
    }

    else
    {
      v6 = +[WFWorkflow defaultName];
    }

    v7 = v6;
    v8 = [(WFWorkflow *)self name];
    v9 = [v8 containsString:v7];

    if ((v9 & 1) == 0)
    {
      v10 = [(WFWorkflow *)self database];

      if (v10)
      {
        v11 = [(WFWorkflow *)self database];
        v12 = [v11 suggestedWorkflowNameForName:v7];
      }

      else
      {
        v12 = v7;
      }

      [(WFWorkflow *)self setName:v12];
    }
  }
}

- (void)save
{
  v12 = *MEMORY[0x1E69E9840];
  if ([(WFWorkflow *)self saveDisabled]|| [(WFWorkflow *)self ignoreModifications])
  {
LABEL_7:
    v6 = *MEMORY[0x1E69E9840];
    return;
  }

  v3 = [(WFWorkflow *)self database];

  if (v3)
  {
    v4 = getWFWorkflowLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "[WFWorkflow save]";
      v10 = 2112;
      v11 = self;
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_INFO, "%s Poking the save debouncer for workflow: %@", &v8, 0x16u);
    }

    [(WFWorkflow *)self createReferenceIfNecessaryWithName:0 nameCollisionBehavior:0 allowEmpty:0 error:0];
    [(WFWorkflow *)self setRetainedSelf:self];
    v5 = [(WFWorkflow *)self saveDebouncer];
    [v5 poke];

    goto LABEL_7;
  }

  v7 = *MEMORY[0x1E69E9840];

  [(WFWorkflow *)self saveWithCompletionBlock:0];
}

- (WFDatabase)database
{
  v2 = [(WFWorkflow *)self storageProvider];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 database];

  return v5;
}

- (BOOL)hasActions
{
  v2 = [(WFWorkflow *)self actions];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)disabledOnLockScreen
{
  v2 = [(WFWorkflow *)self record];
  v3 = [v2 disabledOnLockScreen];

  return v3;
}

- (NSString)source
{
  source = self->_source;
  if (source)
  {
    v3 = source;
  }

  else
  {
    v5 = [(WFWorkflow *)self record];
    v6 = [v5 source];
    v7 = v6;
    if (v6)
    {
      v3 = v6;
    }

    else
    {
      v8 = [(WFWorkflow *)self reference];
      v3 = [v8 source];
    }
  }

  return v3;
}

- (id)userVisibleStringsForUseCase:(unint64_t)a3
{
  v4 = self;
  sub_1CA5B8094(a3);

  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v5 = sub_1CA94C8E8();

  return v5;
}

- (void)rewriteWithStrings:(id)a3
{
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  sub_1CA94C1C8();
  v4 = self;
  sub_1CA5B8260();
}

- (void)generateShortcutRepresentation:(id)a3
{
  v9 = a3;
  v4 = [(WFWorkflow *)self actions];
  if ([v4 count] == 1)
  {
    v5 = [v4 firstObject];
    v6 = v5;
    if (v5)
    {
      if ([v5 conformsToProtocol:&unk_1F4A9F640])
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [v8 generateShortcutRepresentation:v9];
  }

  else
  {
    (*(v9 + 2))(v9, 0, 0);
  }
}

- (WFWorkflow)initWithShortcut:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (!v7)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"WFWorkflow+INShortcut.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"shortcut"}];
  }

  v8 = [(WFWorkflow *)self init];
  if (!v8)
  {
    v12 = 0;
    goto LABEL_16;
  }

  v9 = [v7 intent];
  v10 = [v9 suggestedInvocationPhrase];

  if (v10)
  {
    v11 = [v7 intent];
  }

  else
  {
    v13 = [v7 userActivity];
    v14 = [v13 suggestedInvocationPhrase];

    if (!v14)
    {
      v16 = 0;
      goto LABEL_10;
    }

    v11 = [v7 userActivity];
  }

  v15 = v11;
  v16 = [v11 suggestedInvocationPhrase];

LABEL_10:
  if ([v16 length])
  {
    [(WFWorkflow *)v8 setName:v16];
  }

  v17 = +[WFActionRegistry sharedRegistry];
  v18 = [v17 createActionWithShortcut:v7 error:a4];

  if (v18)
  {
    [(WFWorkflow *)v8 addAction:v18];
    v19 = [[WFStandaloneShortcutRepresentation alloc] initWithINShortcut:v7];
    [(WFWorkflow *)v8 configureWithStandaloneShortcutRepresentation:v19 homeSummaryText:0];
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

LABEL_16:
  return v12;
}

- (WFWorkflow)initWithActionDonation:(id)a3 error:(id *)a4
{
  v6 = [a3 shortcut];
  v7 = [(WFWorkflow *)self initWithShortcut:v6 error:a4];

  return v7;
}

- (WFWorkflow)initWithName:(id)a3 description:(id)a4 associatedAppBundleIdentifier:(id)a5 actions:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(WFWorkflow *)self init];
  v15 = v14;
  if (v14)
  {
    if (v10)
    {
      [(WFWorkflow *)v14 setName:v10];
    }

    else
    {
      v16 = +[WFWorkflow defaultName];
      [(WFWorkflow *)v15 setName:v16];
    }

    v17 = [(WFWorkflow *)v15 record];
    [v17 setWorkflowSubtitle:v11];

    v18 = [(WFWorkflow *)v15 record];
    [v18 setAssociatedAppBundleIdentifier:v12];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __95__WFWorkflow_WFLCompatibility__initWithName_description_associatedAppBundleIdentifier_actions___block_invoke;
    v22[3] = &unk_1E837F870;
    v23 = v13;
    v19 = v15;
    v24 = v19;
    [(WFWorkflow *)v19 performBatchOperation:v22];
    v20 = v19;
  }

  return v15;
}

void __95__WFWorkflow_WFLCompatibility__initWithName_description_associatedAppBundleIdentifier_actions___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) addAction:{*(*(&v8 + 1) + 8 * v6++), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEligibleForWatch
{
  v2 = [(WFWorkflow *)self actions];
  v3 = [v2 if_firstObjectPassingTest:&__block_literal_global_19345];
  v4 = v3 == 0;

  return v4;
}

uint64_t __50__WFWorkflow_WatchEligibility__isEligibleForWatch__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 disabledOnPlatforms];
  v3 = [v2 containsObject:@"Watch"];

  return v3;
}

- (BOOL)addWatchWorkflowTypeIfEligible
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695E000] addEligibleShortcutToWatchFolderEnabled];
  if (v3)
  {
    v4 = getWFGeneralLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[WFWorkflow(WatchEligibility) addWatchWorkflowTypeIfEligible]";
      v11 = 2112;
      v12 = self;
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_INFO, "%s Adding watch workflow type to workflow %@", &v9, 0x16u);
    }

    v5 = [(WFWorkflow *)self workflowTypes];
    v6 = [v5 containsObject:*MEMORY[0x1E69E1470]];

    if (v6)
    {
      goto LABEL_7;
    }

    v3 = [(WFWorkflow *)self isEligibleForWatch];
    if (v3)
    {
      [(WFWorkflow *)self addWatchWorkflowType];
LABEL_7:
      LOBYTE(v3) = 1;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)addWatchWorkflowType
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(WFWorkflow *)self workflowTypes];
  v4 = [v3 arrayByAddingObject:*MEMORY[0x1E69E1470]];
  [(WFWorkflow *)self setWorkflowTypes:v4];

  v5 = getWFGeneralLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[WFWorkflow(WatchEligibility) addWatchWorkflowType]";
    v9 = 2112;
    v10 = self;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Added watch workflow type to workflow %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (WFWorkflowEditingDelegate)editingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_editingDelegate);

  return WeakRetained;
}

- (BOOL)record:(id)a3 isEquivalentToRecord:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 name];
  v8 = [v6 name];
  v9 = v7;
  v10 = v8;
  v11 = v10;
  if (v9 == v10)
  {

    goto LABEL_7;
  }

  LOBYTE(v12) = 0;
  v13 = v10;
  v14 = v9;
  if (!v9 || !v10)
  {
    goto LABEL_119;
  }

  v15 = [v9 isEqualToString:v10];

  if (v15)
  {
LABEL_7:
    v16 = [v5 legacyName];
    v17 = [v6 legacyName];
    v14 = v16;
    v18 = v17;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v19 = v18;
      if (!v14)
      {
        v130 = 0;
        goto LABEL_118;
      }

      v130 = v14;
      if (!v18)
      {
LABEL_118:

        goto LABEL_119;
      }

      v20 = [v14 isEqualToString:v18];

      if (!v20)
      {
        LOBYTE(v12) = 0;
LABEL_119:

        goto LABEL_120;
      }
    }

    v21 = [v5 workflowSubtitle];
    v22 = [v6 workflowSubtitle];
    v23 = v21;
    v24 = v22;
    v19 = v24;
    v130 = v23;
    if (v23 != v24)
    {
      LOBYTE(v12) = 0;
      if (v23)
      {
        v25 = v24;
        if (v24)
        {
          v26 = [v23 isEqualToString:v24];

          if (!v26)
          {
            LOBYTE(v12) = 0;
            goto LABEL_118;
          }

LABEL_19:
          v27 = [v5 actionsDescription];
          v28 = [v6 actionsDescription];
          v23 = v27;
          v29 = v28;
          v129 = v29;
          if (v23 != v29)
          {
            LOBYTE(v12) = 0;
            if (v23)
            {
              v30 = v29;
              v31 = v23;
              if (v29)
              {
                v12 = [v23 isEqualToString:v29];

                if (!v12)
                {
                  goto LABEL_116;
                }

LABEL_26:
                v128 = v23;
                v32 = [v5 associatedAppBundleIdentifier];
                v33 = [v6 associatedAppBundleIdentifier];
                v34 = v32;
                v35 = v33;
                v126 = v35;
                v127 = v34;
                if (v34 != v35)
                {
                  LOBYTE(v12) = 0;
                  if (v34)
                  {
                    v36 = v35;
                    v37 = v34;
                    v23 = v128;
                    if (v35)
                    {
                      v38 = [v127 isEqualToString:v35];

                      if (!v38)
                      {
                        LOBYTE(v12) = 0;
                        v23 = v128;
LABEL_114:
                        v30 = v126;
                        v31 = v127;
                        goto LABEL_115;
                      }

LABEL_33:
                      v39 = [v5 icon];
                      v40 = [v6 icon];
                      v41 = v39;
                      v42 = v40;
                      v124 = v42;
                      v125 = v41;
                      if (v41 != v42)
                      {
                        LOBYTE(v12) = 0;
                        if (v41)
                        {
                          v43 = v42;
                          v23 = v128;
                          if (v42)
                          {
                            v44 = [v41 isEqual:v42];

                            if (!v44)
                            {
                              LOBYTE(v12) = 0;
                              v23 = v128;
LABEL_112:
                              v36 = v124;
                              v37 = v125;
                              goto LABEL_113;
                            }

LABEL_40:
                            v45 = MEMORY[0x1E695DFD8];
                            v121 = [v5 workflowTypes];
                            v46 = [v45 setWithArray:v121];
                            v47 = MEMORY[0x1E695DFD8];
                            v120 = [v6 workflowTypes];
                            v48 = [v47 setWithArray:?];
                            v49 = v46;
                            v50 = v48;
                            v122 = v50;
                            v123 = v49;
                            if (v49 != v50)
                            {
                              LOBYTE(v12) = 0;
                              if (v49)
                              {
                                v51 = v50;
                                v52 = v49;
                                v23 = v128;
                                if (v50)
                                {
                                  v53 = [v123 isEqual:v50];

                                  if (!v53)
                                  {
                                    LOBYTE(v12) = 0;
                                    v23 = v128;
LABEL_110:

                                    v41 = v121;
                                    v43 = v123;
                                    goto LABEL_111;
                                  }

LABEL_47:
                                  v54 = MEMORY[0x1E695DFD8];
                                  v117 = [v5 inputClasses];
                                  v55 = [v54 setWithArray:v117];
                                  v56 = MEMORY[0x1E695DFD8];
                                  v116 = [v6 inputClasses];
                                  v57 = [v56 setWithArray:?];
                                  v58 = v55;
                                  v59 = v57;
                                  v118 = v59;
                                  v119 = v58;
                                  if (v58 != v59)
                                  {
                                    LOBYTE(v12) = 0;
                                    if (v58)
                                    {
                                      v60 = v59;
                                      v61 = v58;
                                      v23 = v128;
                                      if (v59)
                                      {
                                        v62 = [v119 isEqual:v59];

                                        if (!v62)
                                        {
                                          LOBYTE(v12) = 0;
                                          v23 = v128;
LABEL_108:

                                          v52 = v117;
                                          v51 = v119;
                                          goto LABEL_109;
                                        }

LABEL_54:
                                        v63 = [v5 noInputBehavior];
                                        v64 = [v6 noInputBehavior];
                                        v65 = v63;
                                        v66 = v64;
                                        v114 = v66;
                                        v115 = v65;
                                        if (v65 != v66)
                                        {
                                          LOBYTE(v12) = 0;
                                          if (v65)
                                          {
                                            v67 = v66;
                                            v23 = v128;
                                            if (v66)
                                            {
                                              v68 = [v65 isEqualToDictionary:v66];

                                              if (!v68)
                                              {
                                                LOBYTE(v12) = 0;
                                                v23 = v128;
LABEL_106:
                                                v60 = v114;
                                                v61 = v115;
                                                goto LABEL_107;
                                              }

LABEL_61:
                                              v69 = MEMORY[0x1E695DFD8];
                                              v111 = [v5 outputClasses];
                                              v70 = [v69 setWithArray:?];
                                              v71 = MEMORY[0x1E695DFD8];
                                              v110 = [v6 outputClasses];
                                              v72 = [v71 setWithArray:?];
                                              v73 = v70;
                                              v74 = v72;
                                              v112 = v74;
                                              v113 = v73;
                                              if (v73 != v74)
                                              {
                                                LOBYTE(v12) = 0;
                                                if (v73)
                                                {
                                                  v75 = v74;
                                                  v76 = v73;
                                                  v23 = v128;
                                                  if (v74)
                                                  {
                                                    v77 = [v113 isEqual:v74];

                                                    if (!v77)
                                                    {
                                                      LOBYTE(v12) = 0;
                                                      v23 = v128;
LABEL_104:

                                                      v67 = v113;
                                                      v65 = v111;
                                                      goto LABEL_105;
                                                    }

LABEL_68:
                                                    v78 = [v5 actions];
                                                    v79 = [v6 actions];
                                                    v80 = v78;
                                                    v81 = v79;
                                                    v108 = v81;
                                                    v109 = v80;
                                                    if (v80 != v81)
                                                    {
                                                      LOBYTE(v12) = 0;
                                                      if (v80)
                                                      {
                                                        v82 = v81;
                                                        v23 = v128;
                                                        if (v81)
                                                        {
                                                          v83 = [v80 isEqualToArray:v81];

                                                          if (!v83)
                                                          {
                                                            LOBYTE(v12) = 0;
                                                            v23 = v128;
LABEL_102:
                                                            v75 = v108;
                                                            v76 = v109;
                                                            goto LABEL_103;
                                                          }

LABEL_75:
                                                          v84 = [v5 importQuestions];
                                                          v85 = [v6 importQuestions];
                                                          v80 = v84;
                                                          v86 = v85;
                                                          v107 = v86;
                                                          if (v80 == v86)
                                                          {

                                                            v104 = v80;
                                                          }

                                                          else
                                                          {
                                                            LOBYTE(v12) = 0;
                                                            if (!v80)
                                                            {
                                                              v87 = v86;
                                                              v88 = 0;
                                                              v23 = v128;
                                                              goto LABEL_99;
                                                            }

                                                            v87 = v86;
                                                            v88 = v80;
                                                            v23 = v128;
                                                            if (!v86)
                                                            {
LABEL_99:
                                                              v106 = v88;

                                                              goto LABEL_100;
                                                            }

                                                            v89 = v80;
                                                            v90 = [v80 isEqualToArray:v86];

                                                            v104 = v89;
                                                            if (!v90)
                                                            {
                                                              LOBYTE(v12) = 0;
                                                              v23 = v128;
                                                              v80 = v104;
LABEL_100:
                                                              v82 = v107;
                                                              goto LABEL_101;
                                                            }
                                                          }

                                                          v91 = [v5 quarantine];
                                                          v92 = [v6 quarantine];
                                                          v93 = v91;
                                                          v94 = v92;
                                                          if (v93 == v94)
                                                          {
                                                            v103 = v94;

LABEL_89:
                                                            v97 = [v5 isDeleted];
                                                            if (v97 == [v6 isDeleted])
                                                            {
                                                              v105 = v93;
                                                              v99 = [v5 remoteQuarantineStatus];
                                                              if (v99 == [v6 remoteQuarantineStatus] && (v100 = objc_msgSend(v5, "disabledOnLockScreen"), v100 == objc_msgSend(v6, "disabledOnLockScreen")))
                                                              {
                                                                v101 = [v5 hiddenFromLibraryAndSync];
                                                                v12 = v101 ^ [v6 hiddenFromLibraryAndSync] ^ 1;
                                                              }

                                                              else
                                                              {
                                                                LOBYTE(v12) = 0;
                                                              }

                                                              v23 = v128;
                                                              v80 = v104;
                                                              v88 = v105;
                                                              goto LABEL_98;
                                                            }

LABEL_90:
                                                            LOBYTE(v12) = 0;
                                                            v88 = v93;
                                                            v23 = v128;
                                                            v80 = v104;
LABEL_98:
                                                            v87 = v103;
                                                            goto LABEL_99;
                                                          }

                                                          if (v93 && v94)
                                                          {
                                                            v95 = v94;
                                                            v96 = [v93 isEqual:v94];
                                                            v103 = v95;

                                                            if (!v96)
                                                            {
                                                              goto LABEL_90;
                                                            }

                                                            goto LABEL_89;
                                                          }

                                                          v98 = v94;

                                                          v87 = v98;
                                                          LOBYTE(v12) = 0;
                                                          v88 = v93;
                                                          v23 = v128;
                                                          v80 = v104;
                                                          goto LABEL_99;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v82 = v81;
                                                        v23 = v128;
                                                      }

LABEL_101:

                                                      goto LABEL_102;
                                                    }

                                                    goto LABEL_75;
                                                  }
                                                }

                                                else
                                                {
                                                  v75 = v74;
                                                  v76 = 0;
                                                  v23 = v128;
                                                }

LABEL_103:

                                                goto LABEL_104;
                                              }

                                              goto LABEL_68;
                                            }
                                          }

                                          else
                                          {
                                            v67 = v66;
                                            v23 = v128;
                                          }

LABEL_105:

                                          goto LABEL_106;
                                        }

                                        goto LABEL_61;
                                      }
                                    }

                                    else
                                    {
                                      v60 = v59;
                                      v61 = 0;
                                      v23 = v128;
                                    }

LABEL_107:

                                    goto LABEL_108;
                                  }

                                  goto LABEL_54;
                                }
                              }

                              else
                              {
                                v51 = v50;
                                v52 = 0;
                                v23 = v128;
                              }

LABEL_109:

                              goto LABEL_110;
                            }

                            goto LABEL_47;
                          }
                        }

                        else
                        {
                          v43 = v42;
                          v23 = v128;
                        }

LABEL_111:

                        goto LABEL_112;
                      }

                      goto LABEL_40;
                    }
                  }

                  else
                  {
                    v36 = v35;
                    v37 = 0;
                    v23 = v128;
                  }

LABEL_113:

                  goto LABEL_114;
                }

                goto LABEL_33;
              }
            }

            else
            {
              v30 = v29;
              v31 = 0;
            }

LABEL_115:

LABEL_116:
            v25 = v129;
            goto LABEL_117;
          }

          goto LABEL_26;
        }
      }

      else
      {
        v25 = v24;
        v23 = 0;
      }

LABEL_117:

      goto LABEL_118;
    }

    goto LABEL_19;
  }

  LOBYTE(v12) = 0;
LABEL_120:

  return v12;
}

- (void)databaseDidChange:(id)a3 modified:(id)a4 inserted:(id)a5 removed:(id)a6
{
  v51 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = getWFFilesystemEventsLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v48 = "[WFWorkflow databaseDidChange:modified:inserted:removed:]";
    v49 = 2112;
    v50 = self;
    _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_DEFAULT, "%s databaseDidChange on %@", buf, 0x16u);
  }

  if (![(WFWorkflow *)self ignoreModifications])
  {
    [(WFWorkflow *)self reloadTriggersIfNecessaryForDatabaseChangeWithModified:v9 inserted:v10 removed:v11];
  }

  if ([(WFWorkflow *)self isSaving])
  {
    [(WFWorkflow *)self setSaving:0];
  }

  else if (![(WFWorkflow *)self ignoreModifications])
  {
    v34 = v10;
    v13 = [(WFWorkflow *)self reference];
    v14 = [v13 identifier];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v42;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v42 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v41 + 1) + 8 * i);
          if (!-[WFWorkflow lazyEmptyWorkflowDeleted](self, "lazyEmptyWorkflowDeleted") && ![v20 objectType])
          {
            v21 = [v20 identifier];
            v22 = [v21 isEqualToString:v14];

            if (v22)
            {
              v40[0] = MEMORY[0x1E69E9820];
              v40[1] = 3221225472;
              v40[2] = __58__WFWorkflow_databaseDidChange_modified_inserted_removed___block_invoke;
              v40[3] = &unk_1E837FA70;
              v40[4] = self;
              dispatch_async(MEMORY[0x1E69E96A0], v40);
              goto LABEL_30;
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v41 objects:v46 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v15 = v9;
    v23 = [v15 countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v23)
    {
      v24 = v23;
      v32 = v11;
      v33 = v9;
      v25 = *v37;
      v26 = MEMORY[0x1E69E96A0];
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v37 != v25)
          {
            objc_enumerationMutation(v15);
          }

          v28 = *(*(&v36 + 1) + 8 * j);
          if (![v28 objectType])
          {
            v29 = [v28 identifier];
            v30 = [v29 isEqualToString:v14];

            if (v30)
            {
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __58__WFWorkflow_databaseDidChange_modified_inserted_removed___block_invoke_2;
              block[3] = &unk_1E837FA70;
              block[4] = self;
              dispatch_async(v26, block);
            }
          }
        }

        v24 = [v15 countByEnumeratingWithState:&v36 objects:v45 count:16];
      }

      while (v24);
      v11 = v32;
      v9 = v33;
    }

LABEL_30:

    v10 = v34;
  }

  v31 = *MEMORY[0x1E69E9840];
}

uint64_t __58__WFWorkflow_databaseDidChange_modified_inserted_removed___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setStorageProvider:0];
  [*(a1 + 32) willChangeValueForKey:@"deleted"];
  [*(a1 + 32) setDeletedFromDatabase:1];
  v2 = *(a1 + 32);

  return [v2 didChangeValueForKey:@"deleted"];
}

uint64_t __58__WFWorkflow_databaseDidChange_modified_inserted_removed___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) reloadReferenceFromStorage];
  v2 = *(a1 + 32);

  return [v2 reloadFromRecord];
}

- (void)reloadTriggersIfNecessaryForDatabaseChangeWithModified:(id)a3 inserted:(id)a4 removed:(id)a5
{
  v68 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFWorkflow *)self reference];
  v47 = [v11 identifier];

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v62;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v62 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v61 + 1) + 8 * i);
        if ([v17 objectType] == 1)
        {
          v39 = [(WFWorkflow *)self database];
          v40 = [v17 identifier];
          v41 = [v39 configuredTriggerForTriggerID:v40];

          v42 = [v41 workflowID];
          v20 = v47;
          LODWORD(v39) = [v42 isEqualToString:v47];

          if (v39)
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __86__WFWorkflow_reloadTriggersIfNecessaryForDatabaseChangeWithModified_inserted_removed___block_invoke;
            block[3] = &unk_1E837FA70;
            block[4] = self;
            dispatch_async(MEMORY[0x1E69E96A0], block);
          }

          v21 = v12;
          goto LABEL_39;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v61 objects:v67 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v18 = [(WFWorkflow *)self triggers];
  v19 = [v18 count];

  v20 = v47;
  if (v19)
  {
    v46 = v8;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v21 = v10;
    v22 = [v21 countByEnumeratingWithState:&v56 objects:v66 count:16];
    v23 = self;
    if (v22)
    {
      v24 = v22;
      v25 = *v57;
      while (2)
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v57 != v25)
          {
            objc_enumerationMutation(v21);
          }

          v27 = *(*(&v56 + 1) + 8 * j);
          if ([v27 objectType] == 1)
          {
            v28 = [(WFWorkflow *)self triggers];
            v55[0] = MEMORY[0x1E69E9820];
            v55[1] = 3221225472;
            v55[2] = __86__WFWorkflow_reloadTriggersIfNecessaryForDatabaseChangeWithModified_inserted_removed___block_invoke_2;
            v55[3] = &unk_1E8379628;
            v55[4] = v27;
            v29 = [v28 if_objectsPassingTest:v55];
            v30 = [v29 count];

            if (v30)
            {
              v54[0] = MEMORY[0x1E69E9820];
              v54[1] = 3221225472;
              v54[2] = __86__WFWorkflow_reloadTriggersIfNecessaryForDatabaseChangeWithModified_inserted_removed___block_invoke_3;
              v54[3] = &unk_1E837FA70;
              v54[4] = v23;
              v43 = MEMORY[0x1E69E96A0];
              v44 = v54;
LABEL_36:
              dispatch_async(v43, v44);
              goto LABEL_37;
            }

            self = v23;
          }
        }

        v24 = [v21 countByEnumeratingWithState:&v56 objects:v66 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v8 = v46;
    v21 = v46;
    v31 = [v21 countByEnumeratingWithState:&v50 objects:v65 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v51;
      while (2)
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v51 != v33)
          {
            objc_enumerationMutation(v21);
          }

          v35 = *(*(&v50 + 1) + 8 * k);
          if ([v35 objectType] == 1)
          {
            v36 = [(WFWorkflow *)self triggers];
            v49[0] = MEMORY[0x1E69E9820];
            v49[1] = 3221225472;
            v49[2] = __86__WFWorkflow_reloadTriggersIfNecessaryForDatabaseChangeWithModified_inserted_removed___block_invoke_4;
            v49[3] = &unk_1E8379628;
            v49[4] = v35;
            v37 = [v36 if_objectsPassingTest:v49];
            v38 = [v37 count];

            if (v38)
            {
              v48[0] = MEMORY[0x1E69E9820];
              v48[1] = 3221225472;
              v48[2] = __86__WFWorkflow_reloadTriggersIfNecessaryForDatabaseChangeWithModified_inserted_removed___block_invoke_5;
              v48[3] = &unk_1E837FA70;
              v48[4] = v23;
              v43 = MEMORY[0x1E69E96A0];
              v44 = v48;
              goto LABEL_36;
            }

            self = v23;
          }
        }

        v32 = [v21 countByEnumeratingWithState:&v50 objects:v65 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }

LABEL_37:
      v8 = v46;
    }

    v20 = v47;
LABEL_39:
  }

  v45 = *MEMORY[0x1E69E9840];
}

uint64_t __86__WFWorkflow_reloadTriggersIfNecessaryForDatabaseChangeWithModified_inserted_removed___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

uint64_t __86__WFWorkflow_reloadTriggersIfNecessaryForDatabaseChangeWithModified_inserted_removed___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (id)inferOutputTypesWithHasOutputFallback:(BOOL *)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = [(WFWorkflow *)self actions];
  v5 = [v4 if_compactMap:&__block_literal_global_625];

  if ([v5 count])
  {
    v24 = a3;
    v6 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v25 = v5;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v32;
      v10 = 1;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v31 + 1) + 8 * i);
          if (v10)
          {
            v10 = [*(*(&v31 + 1) + 8 * i) hasOutputFallback];
          }

          else
          {
            v10 = 0;
          }

          v13 = MEMORY[0x1E695DFD8];
          v14 = [v12 outputContentClasses];
          v15 = [v13 setWithArray:v14];

          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v16 = v15;
          v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v28;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v28 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                [v6 addObject:*(*(&v27 + 1) + 8 * j)];
              }

              v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v18);
          }
        }

        v8 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v8);
    }

    else
    {
      v10 = 1;
    }

    if (v24)
    {
      *v24 = v10;
    }

    v21 = [v6 copy];

    v5 = v25;
  }

  else
  {
    v21 = [MEMORY[0x1E695DFD8] set];
  }

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

void *__52__WFWorkflow_inferOutputTypesWithHasOutputFallback___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)updateSearchAttribution
{
  v4 = [(WFWorkflow *)self resolvedAssociatedAppBundleIdentifier];
  v3 = [(WFWorkflow *)self record];
  [v3 setSearchAttributionAppBundleIdentifier:v4];
}

- (BOOL)isUntitled
{
  v2 = [(WFWorkflow *)self name];
  v3 = +[WFWorkflow defaultName];
  v4 = [v2 hasPrefix:v3];

  return v4;
}

- (void)setImportQuestions:(id)a3
{
  v5 = a3;
  v6 = [v5 objectsNotMatchingClass:objc_opt_class()];
  v7 = [v6 count];

  if (v7)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"WFWorkflow.m" lineNumber:1442 description:{@"Invalid parameter not satisfying: %@", @"![[importQuestions objectsNotMatchingClass:[WFWorkflowImportQuestion class]] count]"}];
  }

  importQuestions = self->_importQuestions;
  v9 = v5;
  v10 = importQuestions;
  v11 = v10;
  if (v10 == v9)
  {
  }

  else
  {
    if (v9 && v10)
    {
      v12 = [(NSArray *)v9 isEqualToArray:v10];

      if (v12)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    [(WFWorkflow *)self willChangeValueForKey:@"importQuestions"];
    v13 = [(NSArray *)v9 copy];
    v14 = self->_importQuestions;
    self->_importQuestions = v13;

    v15 = [(WFWorkflow *)self importQuestions];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __33__WFWorkflow_setImportQuestions___block_invoke;
    v21[3] = &unk_1E83795F8;
    v21[4] = self;
    v16 = [v15 if_compactMap:v21];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = MEMORY[0x1E695E0F0];
    }

    v19 = [(WFWorkflow *)self record];
    [v19 setImportQuestions:v18];

    [(WFWorkflow *)self didChangeValueForKey:@"importQuestions"];
  }

LABEL_14:
}

id __33__WFWorkflow_setImportQuestions___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 actions];
  v5 = [v3 serializedRepresentationWithWorkflowActions:v4];

  return v5;
}

- (id)localizedSubtitle
{
  v2 = [(WFWorkflow *)self actions];
  v3 = +[WFWorkflow localizedSubtitleWithActionCount:](WFWorkflow, "localizedSubtitleWithActionCount:", [v2 count]);

  return v3;
}

- (id)localizedActionsSummary
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(WFWorkflow *)self actions];
  v4 = [v3 count];

  if (v4)
  {
    v5 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = [(WFWorkflow *)self actions];
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        if (WFActionShouldBeIncludedInSummary(v11))
        {
          v12 = [v11 parameterSummaryString];
          if (v12 || ([v11 localizedName], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v13 = v12;
            [v5 addObject:v12];
          }

          if ([v5 count] > 9)
          {
            break;
          }
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    if ([v5 count])
    {
      v14 = objc_opt_new();
      v15 = [v14 stringForObjectValue:v5];
    }

    else
    {
      v15 = [(WFWorkflow *)self localizedSubtitle];
    }
  }

  else
  {
    v15 = WFLocalizedString(@"No actions");
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)additionalEffectiveInputClassesForTriggers:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) trigger];
        v11 = [objc_opt_class() shortcutInputContentItemClass];

        if (v11)
        {
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)effectiveInputClasses
{
  v3 = [(WFWorkflow *)self inputClasses];
  v4 = [(WFWorkflow *)self workflowTypes];
  v5 = [WFWorkflow effectiveInputClassesFromInputClasses:v3 workflowTypes:v4];
  v6 = [v5 mutableCopy];

  v7 = [(WFWorkflow *)self triggers];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(WFWorkflow *)self triggers];
    v10 = [(WFWorkflow *)self additionalEffectiveInputClassesForTriggers:v9];

    v11 = [(WFWorkflow *)self workflowTypes];
    LOBYTE(v9) = WFWorkflowTypesContainsInputType(v11);

    if (v9)
    {
      v12 = [v10 arrayByAddingObjectsFromArray:v6];
    }

    else
    {
      v12 = v10;
    }

    v13 = v12;
  }

  else
  {
    v13 = v6;
  }

  return v13;
}

- (void)actionOutputDetailsDidChange:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = [a3 UUID];
  if (v4)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = [(WFWorkflow *)self actions];
    v19 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v19)
    {
      v18 = *v25;
      do
      {
        v5 = 0;
        do
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v24 + 1) + 8 * v5);
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v7 = [v6 containedVariables];
          v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v21;
            do
            {
              v11 = 0;
              do
              {
                if (*v21 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v20 + 1) + 8 * v11);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v13 = [v12 outputUUID];
                  v14 = [v13 isEqualToString:v4];

                  if (v14)
                  {
                    v15 = [v12 variableProvider];
                    [v12 variableProviderDidInvalidateOutputDetails:v15];
                  }
                }

                ++v11;
              }

              while (v9 != v11);
              v9 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v9);
          }

          ++v5;
        }

        while (v5 != v19);
        v19 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v19);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)actionNameDidChange:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 UUID];
  if (v5)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [(WFWorkflow *)self actions];
    v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v21)
    {
      v20 = *v28;
      do
      {
        v6 = 0;
        do
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = v6;
          v7 = *(*(&v27 + 1) + 8 * v6);
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v8 = [v7 containedVariables];
          v9 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v24;
            do
            {
              v12 = 0;
              do
              {
                if (*v24 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v23 + 1) + 8 * v12);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v14 = [v13 outputUUID];
                  v15 = [v14 isEqualToString:v5];

                  if (v15)
                  {
                    v16 = [v13 variableProvider];
                    v17 = [v4 outputName];
                    [v13 variableProvider:v16 variableNameDidChangeTo:v17];
                  }
                }

                ++v12;
              }

              while (v10 != v12);
              v10 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v10);
          }

          v6 = v22 + 1;
        }

        while (v22 + 1 != v21);
        v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v21);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)action:(id)a3 supplementalParameterValueDidChangeForKey:(id)a4
{
  [(WFWorkflow *)self setSerializeActionsWhenSaving:1, a4];

  [(WFWorkflow *)self save];
}

- (void)action:(id)a3 parameterStateDidChangeForKey:(id)a4
{
  [(WFWorkflow *)self setSerializeActionsWhenSaving:1, a4];

  [(WFWorkflow *)self save];
}

- (id)actionsNestedInsideAction:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflow *)self actionTree];
  v6 = [v5 actionsNestedInsideAction:v4];

  return v6;
}

- (id)actionsGroupedWithAction:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflow *)self actionTree];
  v6 = [v5 actionsGroupedWithAction:v4];

  return v6;
}

- (void)moveActionsAtIndexes:(id)a3 toIndexes:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (([v6 isEqual:v7] & 1) == 0)
  {
    v8 = getWFWorkflowLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315906;
      v14 = "[WFWorkflow moveActionsAtIndexes:toIndexes:]";
      v15 = 2114;
      v16 = v6;
      v17 = 2114;
      v18 = v7;
      v19 = 2114;
      v20 = self;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEFAULT, "%s Moving actions from indexes: %{public}@ to indexes: %{public}@ in workflow: %{public}@", &v13, 0x2Au);
    }

    v9 = [(WFWorkflow *)self actions];
    v10 = [v9 mutableCopy];

    v11 = [v10 objectsAtIndexes:v6];
    [v10 removeObjectsInArray:v11];
    [v10 insertObjects:v11 atIndexes:v7];
    [(WFWorkflow *)self setActions:v10];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)insertActions:(id)a3 atIndexes:(id)a4
{
  v12 = a4;
  v7 = a3;
  v8 = [v7 count];
  if (v8 != [v12 count])
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFWorkflow.m" lineNumber:1179 description:{@"Invalid parameter not satisfying: %@", @"actions.count == indexes.count"}];
  }

  v9 = [(WFWorkflow *)self actions];
  v10 = [v9 mutableCopy];

  [v10 insertObjects:v7 atIndexes:v12];
  [(WFWorkflow *)self setActions:v10];
}

- (void)insertActions:(id)a3 atIndex:(unint64_t)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = getWFWorkflowLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315906;
    v11 = "[WFWorkflow insertActions:atIndex:]";
    v12 = 2114;
    v13 = v6;
    v14 = 2048;
    v15 = a4;
    v16 = 2114;
    v17 = self;
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEFAULT, "%s Inserting actions: %{public}@ at index: %lu to workflow: %{public}@", &v10, 0x2Au);
  }

  v8 = [(WFWorkflow *)self actionTree];
  [v8 insertActions:v6 atIndex:a4];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)insertAction:(id)a3 atIndex:(unint64_t)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a3;
  v8 = [v6 arrayWithObjects:&v10 count:1];

  [(WFWorkflow *)self insertActions:v8 atIndex:a4, v10, v11];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)deleteReference
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(WFWorkflow *)self database];
  v4 = [(WFWorkflow *)self reference];
  v16 = 0;
  v5 = [v3 deleteReference:v4 error:&v16];
  v6 = v16;

  if (v5)
  {
    if ([(WFWorkflow *)self storageState]== 2)
    {
      [(WFWorkflow *)self setLazyEmptyWorkflowDeleted:1];
    }

    [(WFWorkflow *)self willChangeValueForKey:@"reference"];
    reference = self->_reference;
    self->_reference = 0;

    [(WFWorkflow *)self didChangeValueForKey:@"reference"];
    v8 = [(WFWorkflow *)self database];
    v9 = +[WFWorkflow defaultName];
    v10 = [v8 suggestedWorkflowNameForName:v9];

    [(WFWorkflow *)self setName:v10];
    v11 = objc_alloc_init(WFDeleteShortcutEvent);
    v12 = [(WFWorkflow *)self associatedAppBundleIdentifier];
    [(WFDeleteShortcutEvent *)v11 setAddToSiriBundleIdentifier:v12];

    v13 = [(WFWorkflow *)self galleryIdentifier];
    [(WFDeleteShortcutEvent *)v11 setGalleryIdentifier:v13];

    v14 = [(WFWorkflow *)self source];
    [(WFDeleteShortcutEvent *)v11 setShortcutSource:v14];

    [(WFEvent *)v11 track];
  }

  else
  {
    v10 = getWFWorkflowLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v18 = "[WFWorkflow deleteReference]";
      v19 = 2112;
      v20 = self;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEFAULT, "%s Database deletion failed for workflow: %@", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)removeActions:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getWFWorkflowLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v12 = "[WFWorkflow removeActions:]";
    v13 = 2114;
    v14 = v4;
    v15 = 2114;
    v16 = self;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Removing actions: %{public}@ to workflow: %{public}@", buf, 0x20u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __28__WFWorkflow_removeActions___block_invoke;
  v8[3] = &unk_1E837F870;
  v9 = v4;
  v10 = self;
  v6 = v4;
  [(WFWorkflow *)self performBatchOperation:v8];

  v7 = *MEMORY[0x1E69E9840];
}

void __28__WFWorkflow_removeActions___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFA8] set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        v9 = [*(a1 + 40) actionTree];
        v10 = [v9 indexOfAction:v8];

        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = [*(a1 + 40) actionTree];
          [v11 removeActionAtIndex:v10];

          v12 = [v8 UUID];
          v13 = [v12 length];

          if (v13)
          {
            v14 = [v8 UUID];
            [v2 addObject:v14];
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    v15 = [*(a1 + 40) database];
    if (v15)
    {
      v16 = v15;
      v17 = [*(a1 + 40) reference];

      if (v17)
      {
        v18 = [*(a1 + 40) database];
        v19 = [v2 allObjects];
        v20 = [*(a1 + 40) reference];
        [v18 deleteSmartPromptStatesForDeletedActionUUIDs:v19 forReference:v20];
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)removeAction:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v8 count:1];

  [(WFWorkflow *)self removeActions:v6, v8, v9];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)addAction:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflow *)self actions];
  -[WFWorkflow insertAction:atIndex:](self, "insertAction:atIndex:", v4, [v5 count]);
}

- (void)_triggersDidChange
{
  v15 = *MEMORY[0x1E69E9840];
  [(WFWorkflow *)self didChangeValueForKey:@"triggers"];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(WFWorkflow *)self editingObservers];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) workflowTriggersDidChange:self];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)actionTreeDidChangeConnectorState:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(WFWorkflow *)self editingObservers:a3];
  v5 = [v4 copy];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) workflowConnectorStateDidChange:self];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)removeEditingObserver:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflow *)self editingObservers];
  [v5 removeObject:v4];
}

- (void)addEditingObserver:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflow *)self editingObservers];
  [v5 addObject:v4];
}

- (void)reloadTriggers
{
  v3 = [(WFWorkflow *)self loadTriggers];
  [(WFWorkflow *)self setTriggers:v3];
}

- (id)loadTriggers
{
  v3 = [(WFWorkflow *)self database];

  if (v3)
  {
    v4 = [(WFWorkflow *)self database];
    v5 = [(WFWorkflow *)self workflowID];
    v6 = [v4 configuredTriggersForWorkflowID:v5];
    v7 = [v6 descriptors];
  }

  else
  {
    v4 = +[WFDatabaseProxy defaultDatabase];
    v5 = [(WFWorkflow *)self workflowID];
    v7 = [v4 configuredTriggersForWorkflowID:v5 error:0];
  }

  return v7;
}

- (void)setTriggers:(id)a3
{
  v4 = a3;
  [(WFWorkflow *)self _triggersWillChange];
  triggers = self->_triggers;
  self->_triggers = v4;

  [(WFWorkflow *)self _triggersDidChange];
}

- (NSArray)triggers
{
  triggers = self->_triggers;
  if (!triggers)
  {
    v4 = [(WFWorkflow *)self loadTriggers];
    v5 = self->_triggers;
    self->_triggers = v4;

    triggers = self->_triggers;
  }

  return triggers;
}

- (void)setActions:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflow *)self actionTree];
  [v5 setActions:v4];
}

- (int64_t)indexOfAction:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflow *)self actionTree];
  v6 = [v5 indexOfAction:v4];

  return v6;
}

- (void)getHomeSummaryTextWithCompletion:(id)a3
{
  v10 = a3;
  v4 = [(WFWorkflow *)self actions];
  v5 = [v4 firstObject];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [(WFWorkflow *)self actions];
  v9 = [v8 count];

  if (v9 == 1 && v7)
  {
    [v7 localizedParameterSummaryWithCompletion:v10];
  }

  else
  {
    v10[2](v10, 0);
  }
}

- (void)configureWithStandaloneShortcutRepresentation:(id)a3 homeSummaryText:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(WFWorkflow *)self record];
  v9 = getWFWorkflowLogObject();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v10)
    {
      *buf = 136315650;
      v43 = "[WFWorkflow configureWithStandaloneShortcutRepresentation:homeSummaryText:]";
      v44 = 2114;
      v45 = self;
      v46 = 2114;
      v47 = v6;
      v11 = "%s Configuring workflow %{public}@ as single step shortcut with representation: %{public}@";
      v12 = v9;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_INFO, v11, buf, v13);
    }
  }

  else if (v10)
  {
    *buf = 136315394;
    v43 = "[WFWorkflow configureWithStandaloneShortcutRepresentation:homeSummaryText:]";
    v44 = 2114;
    v45 = self;
    v11 = "%s Updating subtitle and actions summary of workflow: %{public}@";
    v12 = v9;
    v13 = 22;
    goto LABEL_6;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__WFWorkflow_configureWithStandaloneShortcutRepresentation_homeSummaryText___block_invoke;
  aBlock[3] = &unk_1E837C1E8;
  v14 = v6;
  v39 = v14;
  v40 = self;
  v15 = v8;
  v41 = v15;
  v16 = _Block_copy(aBlock);
  v17 = [(WFWorkflow *)self resolvedAssociatedAppBundleIdentifier];
  if (v17 || (-[WFWorkflow associatedAppBundleIdentifier](self, "associatedAppBundleIdentifier"), (v17 = objc_claimAutoreleasedReturnValue()) != 0) || ([v14 associatedAppBundleIdentifier], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = v17;
    v19 = [MEMORY[0x1E696E878] sharedConnection];
    v20 = [MEMORY[0x1E695DFD8] setWithObject:v18];
    [v19 wf_accessBundleContentForBundleIdentifiers:v20 withBlock:v16];

    if (v7)
    {
LABEL_11:
      v21 = v7;
      goto LABEL_14;
    }
  }

  else
  {
    v16[2](v16);
    if (v7)
    {
      goto LABEL_11;
    }
  }

  v21 = [(WFWorkflow *)self localizedActionsSummary];
LABEL_14:
  v22 = v21;
  v23 = [v15 actionsDescription];
  v24 = v23;
  if (v23 == v22)
  {
  }

  else
  {
    v25 = [v15 actionsDescription];
    v26 = [v25 isEqualToString:v22];

    if ((v26 & 1) == 0)
    {
      [(WFWorkflow *)self willChangeValueForKey:@"actionsDescription"];
      [v15 setActionsDescription:v22];
      [(WFWorkflow *)self didChangeValueForKey:@"actionsDescription"];
    }
  }

  v27 = [(WFWorkflow *)self resolvedAssociatedAppBundleIdentifier];
  v28 = v27;
  if (v6 && !v27)
  {
    v29 = [v14 associatedAppBundleIdentifier];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v32 = [v14 launchIdForCurrentPlatform];
      v33 = v32;
      if (v32)
      {
        v34 = v32;
      }

      else
      {
        v34 = [v14 activityBundleIdentifier];
      }

      v31 = v34;
    }

    if (VCIsShortcutsAppBundleIdentifier())
    {
      v28 = 0;
    }

    else
    {
      v28 = v31;
    }
  }

  if (!v28)
  {
    v35 = self;
    v36 = 0;
    goto LABEL_34;
  }

  if ([(WFWorkflow *)self shouldAutoUpdateAssociatedAppBundleIdentifier])
  {
    v35 = self;
    v36 = v28;
LABEL_34:
    [(WFWorkflow *)v35 setAssociatedAppBundleIdentifier:v36];
  }

  v37 = *MEMORY[0x1E69E9840];
}

void __76__WFWorkflow_configureWithStandaloneShortcutRepresentation_homeSummaryText___block_invoke(id *a1)
{
  v2 = [a1[4] title];
  if (![v2 length])
  {
    goto LABEL_8;
  }

  v3 = [a1[5] name];
  v4 = [a1[4] title];
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {

LABEL_8:
    goto LABEL_9;
  }

  if (v5 && v6)
  {
    v8 = [v5 isEqualToString:v6];

    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_9:
    v9 = [a1[5] localizedSubtitle];
    goto LABEL_12;
  }

LABEL_11:
  v9 = [a1[4] title];
LABEL_12:
  v10 = v9;
  v11 = [a1[6] workflowSubtitle];
  v14 = v10;
  v12 = v11;
  if (v14 == v12)
  {

    goto LABEL_20;
  }

  if (!v14 || !v12)
  {

    goto LABEL_19;
  }

  v13 = [v14 isEqualToString:v12];

  if ((v13 & 1) == 0)
  {
LABEL_19:
    [a1[5] willChangeValueForKey:@"workflowSubtitle"];
    [a1[6] setWorkflowSubtitle:v14];
    [a1[5] didChangeValueForKey:@"workflowSubtitle"];
  }

LABEL_20:
}

- (void)configureAsSingleStepShortcutIfNecessary:(id)a3
{
  v4 = a3;
  v5 = getWFWorkflowLogObject();
  v6 = os_signpost_id_generate(v5);

  v7 = getWFWorkflowLogObject();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "GenerateStandaloneRepresentation", "", buf, 2u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__WFWorkflow_configureAsSingleStepShortcutIfNecessary___block_invoke;
  v10[3] = &unk_1E83795D0;
  v11 = v4;
  v12 = v6;
  v10[4] = self;
  v9 = v4;
  [(WFWorkflow *)self generateStandaloneShortcutRepresentation:v10];
}

void __55__WFWorkflow_configureAsSingleStepShortcutIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = getWFWorkflowLogObject();
  v5 = v4;
  v6 = *(a1 + 48);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v5, OS_SIGNPOST_INTERVAL_END, v6, "GenerateStandaloneRepresentation", "", buf, 2u);
  }

  v7 = getWFWorkflowLogObject();
  v8 = os_signpost_id_generate(v7);

  v9 = getWFWorkflowLogObject();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "HomeSummaryText", "", buf, 2u);
  }

  v11 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__WFWorkflow_configureAsSingleStepShortcutIfNecessary___block_invoke_442;
  v13[3] = &unk_1E83795A8;
  v16 = v8;
  v13[4] = v11;
  v14 = v3;
  v15 = *(a1 + 40);
  v12 = v3;
  [v11 getHomeSummaryTextWithCompletion:v13];
}

uint64_t __55__WFWorkflow_configureAsSingleStepShortcutIfNecessary___block_invoke_442(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = getWFWorkflowLogObject();
  v5 = v4;
  v6 = *(a1 + 56);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v5, OS_SIGNPOST_INTERVAL_END, v6, "HomeSummaryText", "", v8, 2u);
  }

  [*(a1 + 32) configureWithStandaloneShortcutRepresentation:*(a1 + 40) homeSummaryText:v3];
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)generateStandaloneShortcutRepresentation:(id)a3
{
  v8 = a3;
  v4 = [(WFWorkflow *)self actions];
  if ([v4 count] == 1)
  {
    v5 = [v4 firstObject];
    v6 = v5;
    if (v5 && ([v5 conformsToProtocol:&unk_1F4A9F640] & 1) != 0)
    {
      v7 = v6;

      [v7 generateStandaloneShortcutRepresentation:v8];
      goto LABEL_7;
    }
  }

  v8[2](v8, 0);
LABEL_7:
}

- (void)clearOutReference
{
  reference = self->_reference;
  self->_reference = 0;
}

- (BOOL)queue_reloadReferenceFromStorage
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(WFWorkflow *)self storageProvider];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [(WFWorkflow *)self reference];
  v7 = [v6 identifier];

  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    [(WFWorkflow *)self willChangeValueForKey:@"reference"];
    v10 = [v5 database];
    v11 = [v10 referenceForWorkflowID:v7];
    reference = self->_reference;
    self->_reference = v11;

    [(WFWorkflow *)self didChangeValueForKey:@"reference"];
    goto LABEL_23;
  }

  if (v5)
  {
    if (v7)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  v13 = getWFWorkflowLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315394;
    v18 = "[WFWorkflow queue_reloadReferenceFromStorage]";
    v19 = 2112;
    v20 = self;
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_DEBUG, "%s Asked to reload reference from storage, but missing storage: %@", &v17, 0x16u);
  }

  if (!v7)
  {
LABEL_20:
    v14 = getWFWorkflowLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v17 = 136315394;
      v18 = "[WFWorkflow queue_reloadReferenceFromStorage]";
      v19 = 2112;
      v20 = self;
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_DEBUG, "%s Asked to reload reference from storage, but missing identifier: %@", &v17, 0x16u);
    }
  }

LABEL_23:

  v15 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)reloadReferenceFromStorage
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {

    return [(WFWorkflow *)self queue_reloadReferenceFromStorage];
  }

  else
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __40__WFWorkflow_reloadReferenceFromStorage__block_invoke;
    v5[3] = &unk_1E837F898;
    v5[4] = self;
    v5[5] = &v6;
    dispatch_sync(MEMORY[0x1E69E96A0], v5);
    v4 = *(v7 + 24);
    _Block_object_dispose(&v6, 8);
    return v4;
  }
}

uint64_t __40__WFWorkflow_reloadReferenceFromStorage__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) queue_reloadReferenceFromStorage];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)updateMinimumClientVersion
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = @"900";
  v4 = @"900";
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [(WFWorkflow *)self actions];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      v10 = v3;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v21 + 1) + 8 * v9) minimumSupportedClientVersion];
        v3 = WFMaximumBundleVersion(v11, v10);

        ++v9;
        v10 = v3;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v12 = [(WFWorkflow *)self inputAction];

  if (v12)
  {
    v13 = [(WFWorkflow *)self inputAction];
    v14 = [v13 minimumSupportedClientVersion];
    v15 = WFMaximumBundleVersion(v3, v14);

    v3 = v15;
  }

  v16 = [(WFWorkflow *)self record];
  v17 = [v16 minimumClientVersion];
  v18 = WFCompareBundleVersions(v3, v17);

  if (v18 != 1)
  {
    v19 = [(WFWorkflow *)self record];
    [v19 setMinimumClientVersion:v3];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)performBatchOperation:(id)a3
{
  v4 = a3;
  [(WFWorkflow *)self setSaveDisabled:1];
  v4[2](v4);

  [(WFWorkflow *)self setSaveDisabled:0];

  [(WFWorkflow *)self save];
}

WFWorkflowImportQuestion *__28__WFWorkflow_loadFromRecord__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [WFWorkflowImportQuestion alloc];
  v5 = [*(a1 + 32) actions];
  v6 = [(WFWorkflowImportQuestion *)v4 initWithSerializedRepresentation:v3 workflowActions:v5];

  return v6;
}

- (void)reloadFromRecord
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = [(WFWorkflow *)self storageProvider];
  if (!v3)
  {
LABEL_27:
    v29 = *MEMORY[0x1E69E9840];
    return;
  }

  v31 = v3;
  v4 = [(WFWorkflow *)self reference];
  if (v4)
  {
    v5 = v4;
    v6 = [(WFWorkflow *)self serializeActionsWhenSaving];

    if (!v6)
    {
      v7 = getWFWorkflowLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(WFWorkflow *)self storageProvider];
        *buf = 136315650;
        v45 = "[WFWorkflow reloadFromRecord]";
        v46 = 2114;
        v47 = self;
        v48 = 2114;
        v49 = v8;
        _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEFAULT, "%s Reloading workflow: %{public}@ from storage provider: %{public}@", buf, 0x20u);
      }

      v43[0] = @"name";
      v43[1] = @"legacyName";
      v43[2] = @"icon";
      v43[3] = @"workflowTypes";
      v43[4] = @"workflowSubtitle";
      v43[5] = @"actionsDescription";
      v43[6] = @"associatedAppBundleIdentifier";
      v43[7] = @"quarantine";
      v43[8] = @"remoteQuarantineStatus";
      v43[9] = @"deleted";
      [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:10];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v9 = v40 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v38;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v38 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [(WFWorkflow *)self willChangeValueForKey:*(*(&v37 + 1) + 8 * i)];
          }

          v11 = [v9 countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v11);
      }

      v14 = [(WFWorkflow *)self record];
      v15 = [v14 copy];

      v16 = [(WFWorkflow *)self storageProvider];
      v17 = [(WFWorkflow *)self record];
      v18 = [(WFWorkflow *)self reference];
      v36 = 0;
      v19 = [v16 reloadRecord:v17 withReference:v18 error:&v36];
      v20 = v36;

      if ((v19 & 1) == 0)
      {
        v21 = getWFGeneralLogObject();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v45 = "[WFWorkflow reloadFromRecord]";
          v46 = 2114;
          v47 = v20;
          _os_log_impl(&dword_1CA256000, v21, OS_LOG_TYPE_ERROR, "%s Failed to reload workflow from record. Error: %{public}@", buf, 0x16u);
        }
      }

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v22 = v9;
      v23 = [v22 countByEnumeratingWithState:&v32 objects:v41 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v33;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v33 != v25)
            {
              objc_enumerationMutation(v22);
            }

            [(WFWorkflow *)self didChangeValueForKey:*(*(&v32 + 1) + 8 * j)];
          }

          v24 = [v22 countByEnumeratingWithState:&v32 objects:v41 count:16];
        }

        while (v24);
      }

      v27 = [(WFWorkflow *)self record];
      v28 = [(WFWorkflow *)self record:v27 isEquivalentToRecord:v15];

      if (!v28)
      {
        [(WFWorkflow *)self loadFromRecord];
      }
    }

    goto LABEL_27;
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)saveFromDebouncer:(id)a3
{
  if (!a3)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"WFWorkflow.m" lineNumber:706 description:{@"Invalid parameter not satisfying: %@", @"debouncer"}];
  }

  [(WFWorkflow *)self saveWithCompletionBlock:0];
}

- (void)saveWithCompletionBlock:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getWFWorkflowLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v35 = "[WFWorkflow saveWithCompletionBlock:]";
    v36 = 2112;
    v37 = self;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Saving workflow: %@", buf, 0x16u);
  }

  v6 = getWFWorkflowLogObject();
  v7 = os_signpost_id_generate(v6);

  v8 = getWFWorkflowLogObject();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Save", "", buf, 2u);
  }

  if ([(WFWorkflow *)self serializeActionsWhenSaving])
  {
    v10 = getWFWorkflowLogObject();
    v11 = os_signpost_id_generate(v10);

    v12 = getWFWorkflowLogObject();
    v13 = v12;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1CA256000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "SerializeActions", "", buf, 2u);
    }

    v14 = [(WFWorkflow *)self actions];
    v15 = [v14 if_map:&__block_literal_global_400];

    v16 = [(WFWorkflow *)self record];
    v17 = [v16 actions];
    v18 = [v17 isEqualToArray:v15];

    if ((v18 & 1) == 0)
    {
      v19 = [(WFWorkflow *)self record];
      [v19 setActions:v15];
    }

    v20 = [(WFWorkflow *)self resolvedAssociatedAppBundleIdentifier];
    v21 = [(WFWorkflow *)self record];
    [v21 setSearchAttributionAppBundleIdentifier:v20];

    [(WFWorkflow *)self setSerializeActionsWhenSaving:0];
    v22 = getWFWorkflowLogObject();
    v23 = v22;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1CA256000, v23, OS_SIGNPOST_INTERVAL_END, v11, "SerializeActions", "", buf, 2u);
    }
  }

  buf[0] = 0;
  v24 = [(WFWorkflow *)self inferOutputTypesWithHasOutputFallback:buf];
  v25 = [v24 allObjects];
  [(WFWorkflow *)self setOutputClasses:v25];

  v26 = [(WFWorkflow *)self actionTree];
  -[WFWorkflow setHasShortcutInputVariables:](self, "setHasShortcutInputVariables:", [v26 isShortcutInputVariableUsed]);

  [(WFWorkflow *)self setHasOutputFallback:buf[0]];
  v27 = [(WFWorkflow *)self actions];
  v28 = [v27 if_compactMap:&__block_literal_global_404];

  -[WFWorkflow setHasOutputAction:](self, "setHasOutputAction:", [v28 count] != 0);
  [(WFWorkflow *)self updateMinimumClientVersion];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __38__WFWorkflow_saveWithCompletionBlock___block_invoke_2;
  v31[3] = &unk_1E8379538;
  v31[4] = self;
  v32 = v4;
  v33 = v7;
  v29 = v4;
  [(WFWorkflow *)self configureAsSingleStepShortcutIfNecessary:v31];

  v30 = *MEMORY[0x1E69E9840];
}

void __38__WFWorkflow_saveWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) storageProvider];
  if (v2)
  {
    v3 = [*(a1 + 32) reference];

    if (v3)
    {
      [*(a1 + 32) setSaving:1];
      v4 = getWFWorkflowLogObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = [*(a1 + 32) record];
        v6 = [*(a1 + 32) storageProvider];
        *buf = 136315650;
        v19 = "[WFWorkflow saveWithCompletionBlock:]_block_invoke_2";
        v20 = 2114;
        v21 = v5;
        v22 = 2114;
        v23 = v6;
        _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_INFO, "%s Saving workflow record: %{public}@ to storage provider: %{public}@", buf, 0x20u);
      }

      v7 = [*(a1 + 32) storageProvider];
      v8 = [*(a1 + 32) record];
      v9 = [*(a1 + 32) reference];
      v17 = 0;
      v10 = [v7 saveRecord:v8 withReference:v9 error:&v17];
      v2 = v17;

      if ((v10 & 1) == 0)
      {
        v11 = getWFGeneralLogObject();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v19 = "[WFWorkflow saveWithCompletionBlock:]_block_invoke";
          v20 = 2114;
          v21 = v2;
          _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, "%s Failed to save workflow. Error: %{public}@", buf, 0x16u);
        }
      }

      [*(a1 + 32) reloadReferenceFromStorage];
      [*(a1 + 32) setRetainedSelf:0];
    }

    else
    {
      v2 = 0;
    }
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v2);
  }

  v13 = getWFWorkflowLogObject();
  v14 = v13;
  v15 = *(a1 + 48);
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v14, OS_SIGNPOST_INTERVAL_END, v15, "Save", "", buf, 2u);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void *__38__WFWorkflow_saveWithCompletionBlock___block_invoke_401(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (BOOL)createReferenceIfNecessaryWithName:(id)a3 nameCollisionBehavior:(unint64_t)a4 allowEmpty:(BOOL)a5 error:(id *)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = a3;
  if ([(WFWorkflow *)self storageState]!= 2)
  {
    goto LABEL_9;
  }

  if ([(WFWorkflow *)self storageState]== 2)
  {
    v11 = [(WFWorkflow *)self actions];
    if ([v11 count])
    {
LABEL_7:

      goto LABEL_8;
    }

    v12 = [(WFWorkflow *)self triggers];
    if ([v12 count] || -[WFWorkflow userProvidedName](self, "userProvidedName"))
    {

      goto LABEL_7;
    }

    v25 = [(WFWorkflow *)self inputAction];

    if (!v25 && !a5)
    {
      [(WFWorkflow *)self deleteReference];
      goto LABEL_9;
    }
  }

LABEL_8:
  v13 = [(WFWorkflow *)self reference];

  if (v13)
  {
LABEL_9:
    v14 = 1;
    goto LABEL_10;
  }

  v17 = getWFWorkflowLogObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v26 = 136315394;
    v27 = "[WFWorkflow createReferenceIfNecessaryWithName:nameCollisionBehavior:allowEmpty:error:]";
    v28 = 2112;
    v29 = self;
    _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_DEBUG, "%s Creating database reference for workflow: %@", &v26, 0x16u);
  }

  v18 = [(WFWorkflow *)self record];
  v19 = [v18 copy];

  if (v10)
  {
    [v19 setName:v10];
  }

  v20 = [[WFWorkflowCreationOptions alloc] initWithRecord:v19];
  v21 = [(WFWorkflowCreationOptions *)self->_creationOptions folderIdentifier];
  [(WFWorkflowCreationOptions *)v20 setFolderIdentifier:v21];

  v22 = [(WFWorkflow *)self database];
  v23 = [v22 createWorkflowWithOptions:v20 nameCollisionBehavior:a4 error:a6];

  v14 = v23 != 0;
  if (v23)
  {
    [(WFWorkflow *)self willChangeValueForKey:@"reference"];
    objc_storeStrong(&self->_reference, v23);
    [(WFWorkflow *)self didChangeValueForKey:@"reference"];
    if (v10)
    {
      v24 = [v23 name];
      [(WFWorkflow *)self setName:v24];
    }

    [(WFWorkflow *)self saveWithCompletionBlock:0];
  }

LABEL_10:
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [WFWorkflow allocWithZone:a3];
  v5 = [(WFWorkflow *)self record];
  v6 = [v5 copy];
  v7 = [(WFWorkflow *)self reference];
  v8 = [(WFWorkflow *)self storageProvider];
  v9 = [(WFWorkflow *)v4 initWithRecord:v6 reference:v7 storageProvider:v8 error:0];

  return v9;
}

- (id)prepareForSharingWithOptions:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WFWorkflow *)self copy];
  [v5 setStorageProvider:0];
  if ([v4 clearsImportQuestionData])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = [v5 importQuestions];
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          v12 = [v11 action];
          v13 = [v11 defaultState];
          v14 = [v11 parameter];
          v15 = [v14 key];
          [v12 setParameterState:v13 forKey:v15];
        }

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }
  }

  v16 = [v5 record];
  v17 = [v4 quickActionSurfaces];
  if ([v17 count])
  {
    v18 = [v17 allObjects];
    [v16 setQuickActionSurfacesForSharing:v18];
  }

  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)validImportQuestions
{
  v3 = [(WFWorkflow *)self importQuestions];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__WFWorkflow_validImportQuestions__block_invoke;
  v6[3] = &unk_1E83794D0;
  v6[4] = self;
  v4 = [v3 if_objectsPassingTest:v6];

  return v4;
}

uint64_t __34__WFWorkflow_validImportQuestions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 action];
  if (v4)
  {
    v5 = [*(a1 + 32) actions];
    v6 = [v3 action];
    v7 = [v5 containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isDeleted
{
  v3 = [(WFWorkflow *)self record];
  v4 = ([v3 isDeleted] & 1) != 0 || -[WFWorkflow deletedFromDatabase](self, "deletedFromDatabase");

  return v4;
}

- (void)setRemoteQuarantineHash:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflow *)self remoteQuarantineHash];
  v6 = v4;
  v9 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    [(WFWorkflow *)self willChangeValueForKey:@"remoteQuarantineStatus"];
    v8 = [(WFWorkflow *)self record];
    [v8 setRemoteQuarantineHash:v9];

    [(WFWorkflow *)self didChangeValueForKey:@"remoteQuarantineStatus"];
  }

LABEL_9:
}

- (NSData)remoteQuarantineHash
{
  v2 = [(WFWorkflow *)self record];
  v3 = [v2 remoteQuarantineHash];

  return v3;
}

- (void)setRemoteQuarantineStatus:(int64_t)a3
{
  v5 = [(WFWorkflow *)self record];
  v6 = [v5 remoteQuarantineStatus];

  if (v6 != a3)
  {
    [(WFWorkflow *)self willChangeValueForKey:@"remoteQuarantineStatus"];
    v7 = [(WFWorkflow *)self record];
    [v7 setRemoteQuarantineStatus:a3];

    [(WFWorkflow *)self didChangeValueForKey:@"remoteQuarantineStatus"];
  }
}

- (int64_t)remoteQuarantineStatus
{
  v2 = [(WFWorkflow *)self record];
  v3 = [v2 remoteQuarantineStatus];

  return v3;
}

- (WFWorkflowQuarantine)quarantine
{
  v2 = [(WFWorkflow *)self record];
  v3 = [v2 quarantine];

  return v3;
}

- (BOOL)hasOutputAction
{
  v2 = [(WFWorkflow *)self record];
  v3 = [v2 hasOutputAction];

  return v3;
}

- (BOOL)hasOutputFallback
{
  v2 = [(WFWorkflow *)self record];
  v3 = [v2 hasOutputFallback];

  return v3;
}

- (BOOL)hasShortcutInputVariables
{
  v2 = [(WFWorkflow *)self record];
  v3 = [v2 hasShortcutInputVariables];

  return v3;
}

- (void)setOutputClasses:(id)a3
{
  v4 = a3;
  outputClasses = self->_outputClasses;
  v13 = v4;
  v6 = outputClasses;
  if (v6 == v13)
  {

    goto LABEL_9;
  }

  if (!v13 || !v6)
  {

    goto LABEL_8;
  }

  v7 = [(NSArray *)v13 isEqualToArray:v6];

  if (!v7)
  {
LABEL_8:
    [(WFWorkflow *)self willChangeValueForKey:@"outputClasses"];
    v8 = [(NSArray *)v13 copy];
    v9 = self->_outputClasses;
    self->_outputClasses = v8;

    v10 = [(WFWorkflow *)self outputClasses];
    v11 = [v10 if_map:&__block_literal_global_380];
    v12 = [(WFWorkflow *)self record];
    [v12 setOutputClasses:v11];

    [(WFWorkflow *)self didChangeValueForKey:@"outputClasses"];
  }

LABEL_9:
}

- (void)setNoInputBehavior:(id)a3
{
  v4 = a3;
  [(WFWorkflow *)self willChangeValueForKey:@"noInputBehavior"];
  noInputBehavior = self->_noInputBehavior;
  self->_noInputBehavior = v4;
  v6 = v4;

  v7 = [(WFWorkflowNoInputBehavior *)v6 serializedRepresentation];

  v8 = [(WFWorkflow *)self record];
  [v8 setNoInputBehavior:v7];

  [(WFWorkflow *)self didChangeValueForKey:@"noInputBehavior"];
}

- (void)setInputClasses:(id)a3
{
  v4 = a3;
  inputClasses = self->_inputClasses;
  v13 = v4;
  v6 = inputClasses;
  if (v6 == v13)
  {

    goto LABEL_9;
  }

  if (!v13 || !v6)
  {

    goto LABEL_8;
  }

  v7 = [(NSArray *)v13 isEqualToArray:v6];

  if (!v7)
  {
LABEL_8:
    [(WFWorkflow *)self willChangeValueForKey:@"inputClasses"];
    v8 = [(NSArray *)v13 copy];
    v9 = self->_inputClasses;
    self->_inputClasses = v8;

    v10 = [(WFWorkflow *)self inputClasses];
    v11 = [v10 if_map:&__block_literal_global_372];
    v12 = [(WFWorkflow *)self record];
    [v12 setInputClasses:v11];

    [(WFWorkflow *)self didChangeValueForKey:@"inputClasses"];
  }

LABEL_9:
}

- (void)setWorkflowTypes:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflow *)self workflowTypes];
  v13 = v4;
  v6 = v5;
  if (v6 == v13)
  {

    goto LABEL_11;
  }

  if (v13 && v6)
  {
    v7 = [v13 isEqualToArray:v6];

    if (v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v8 = [(WFWorkflow *)self database];
  v9 = [v8 coherenceSyncEnabled];

  if (v9)
  {
    v10 = [(WFWorkflow *)self workflowID];
    v11 = [(WFWorkflow *)self database];
    [WFWorkflowRecord updateCoherenceLibraryWithTypesForWorkflow:v10 workflowTypes:v13 existingWorkflowTypes:v6 database:v11];
  }

  [(WFWorkflow *)self willChangeValueForKey:@"workflowTypes"];
  v12 = [(WFWorkflow *)self record];
  [v12 setWorkflowTypes:v13];

  [(WFWorkflow *)self didChangeValueForKey:@"workflowTypes"];
  [(WFWorkflow *)self updateInputAction];
LABEL_11:
}

- (NSString)galleryIdentifier
{
  v2 = [(WFWorkflow *)self record];
  v3 = [v2 galleryIdentifier];

  return v3;
}

id __51__WFWorkflow_resolvedAssociatedAppBundleIdentifier__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if ([v2 conformsToProtocol:&unk_1F4A9F640])
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 associatedAppBundleIdentifier];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [v3 displayableAppDescriptor];
    v7 = [v8 bundleIdentifier];

    if (!v7)
    {
LABEL_10:
      v9 = 0;
      goto LABEL_12;
    }
  }

  if (VCIsShortcutsAppBundleIdentifier())
  {
    goto LABEL_10;
  }

  v7 = v7;
  v9 = v7;
LABEL_12:

  return v9;
}

- (BOOL)shouldAutoUpdateAssociatedAppBundleIdentifier
{
  v2 = [(WFWorkflow *)self record];
  v3 = [v2 shouldAutoUpdateAssociatedAppBundleIdentifier];

  return v3;
}

- (void)setAssociatedAppBundleIdentifier:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(WFWorkflow *)self willChangeValueForKey:@"associatedAppBundleIdentifier"];
  v5 = [(WFWorkflow *)self resolvedAssociatedAppBundleIdentifier];
  v6 = v5;
  if (v4)
  {
    if (([v4 isEqualToString:v5] & 1) == 0)
    {
      v7 = getWFWorkflowLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v12 = 136315650;
        v13 = "[WFWorkflow setAssociatedAppBundleIdentifier:]";
        v14 = 2112;
        v15 = v4;
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s Mismatch associated app bundle identifier %@ with resolved associated app bundle identifier %@", &v12, 0x20u);
      }
    }

    v8 = self;
    v9 = 1;
    goto LABEL_9;
  }

  if (v5)
  {
    v8 = self;
    v9 = 0;
LABEL_9:
    [(WFWorkflow *)v8 setShouldAutoUpdateAssociatedAppBundleIdentifier:v9];
  }

  v10 = [(WFWorkflow *)self record];
  [v10 setAssociatedAppBundleIdentifier:v4];

  [(WFWorkflow *)self didChangeValueForKey:@"associatedAppBundleIdentifier"];
  v11 = *MEMORY[0x1E69E9840];
}

- (NSString)actionsDescription
{
  v3 = [(WFWorkflow *)self record];
  v4 = [v3 actionsDescription];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(WFWorkflow *)self localizedActionsSummary];
  }

  v7 = v6;

  return v7;
}

- (NSString)workflowSubtitle
{
  v3 = [(WFWorkflow *)self record];
  v4 = [v3 actionCount];
  v5 = [(WFWorkflow *)self record];
  v6 = [v5 workflowSubtitle];
  v7 = [WFWorkflowRecord workflowSubtitleForActionCount:v4 savedSubtitle:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [(WFWorkflow *)self localizedSubtitle];
  }

  v10 = v9;

  return v10;
}

- (void)setIcon:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflow *)self record];
  v6 = [v5 icon];
  v10 = v4;
  v7 = v6;
  if (v7 == v10)
  {

    goto LABEL_9;
  }

  if (!v10 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [v10 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_8:
    [(WFWorkflow *)self willChangeValueForKey:@"icon"];
    v9 = [(WFWorkflow *)self record];
    [v9 setIcon:v10];

    [(WFWorkflow *)self didChangeValueForKey:@"icon"];
  }

LABEL_9:
}

- (NSString)legacyName
{
  v2 = [(WFWorkflow *)self record];
  v3 = [v2 legacyName];

  return v3;
}

- (BOOL)renameWorkflowTo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(WFWorkflow *)self name];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
LABEL_12:
    v10 = 1;
    goto LABEL_13;
  }

  if ([(WFWorkflow *)self storageState]== 2)
  {
    [(WFWorkflow *)self setUserProvidedName:1];
  }

  v9 = [(WFWorkflow *)self reference];
  if (v9)
  {

    goto LABEL_8;
  }

  if ([(WFWorkflow *)self storageState]!= 2)
  {
LABEL_8:
    v11 = [(WFWorkflow *)self reference];
    if (v11)
    {
      v12 = v11;
      v13 = [(WFWorkflow *)self database];

      if (v13)
      {
        v14 = [(WFWorkflow *)self database];
        v15 = [(WFWorkflow *)self reference];
        v16 = [v14 renameReference:v15 to:v6 error:a4];

        if (!v16)
        {
          v10 = 0;
          goto LABEL_13;
        }
      }
    }

    [(WFWorkflow *)self setName:v6];
    [(WFWorkflow *)self save];
    goto LABEL_12;
  }

  v10 = [(WFWorkflow *)self createReferenceIfNecessaryWithName:v6 nameCollisionBehavior:2 allowEmpty:1 error:a4];
LABEL_13:

  return v10;
}

- (void)setName:(id)a3
{
  v4 = a3;
  v5 = [(WFWorkflow *)self record];
  v6 = [v5 name];
  v10 = v4;
  v7 = v6;
  if (v7 == v10)
  {

    goto LABEL_9;
  }

  if (!v10 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [v10 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
LABEL_8:
    [(WFWorkflow *)self willChangeValueForKey:@"name"];
    v9 = [(WFWorkflow *)self record];
    [v9 setName:v10];

    [(WFWorkflow *)self didChangeValueForKey:@"name"];
  }

LABEL_9:
}

- (BOOL)hasStorageProvider
{
  v2 = [(WFWorkflow *)self storageProvider];
  v3 = v2 != 0;

  return v3;
}

- (void)dealloc
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(WFWorkflow *)self actions];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        [v8 removeEventObserver:self];
        [v8 wasRemovedFromWorkflow:self];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v9 = [(WFWorkflow *)self database];
  v10 = v9;
  if (v9)
  {
    [v9 removeObjectObserver:self];
  }

  v12.receiver = self;
  v12.super_class = WFWorkflow;
  [(WFWorkflow *)&v12 dealloc];
  v11 = *MEMORY[0x1E69E9840];
}

- (WFWorkflow)initWithRecord:(id)a3 reference:(id)a4 storageProvider:(id)a5 migrateIfNecessary:(BOOL)a6 environment:(int64_t)a7 error:(id *)a8
{
  v9 = a6;
  v63 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  obj = a5;
  v55 = a5;
  if (!v14)
  {
    v50 = [MEMORY[0x1E696AAA8] currentHandler];
    [v50 handleFailureInMethod:a2 object:self file:@"WFWorkflow.m" lineNumber:148 description:{@"Invalid parameter not satisfying: %@", @"record"}];
  }

  v16 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v17 = [v16 objectForInfoDictionaryKey:*MEMORY[0x1E695E500]];
  v18 = [v14 minimumClientVersion];
  v19 = [WFWorkflow checkClientVersion:v18 currentVersion:v17 error:a8];

  if (v19)
  {
    v20 = [v14 lastMigratedClientVersion];
    v21 = WFCompareBundleVersions(v17, v20);
    v22 = WFCompareBundleVersions(@"985", v20);
    if (!v20 || v22 == 2 || (v23 = (v21 & 1) == 0, [v20 isEqualToString:@"0"]))
    {
      [v14 setLastMigratedClientVersion:@"899"];
      v23 = 1;
    }

    v24 = 0;
    if (v9 && v23)
    {
      v52 = v15;
      v25 = getWFGeneralLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v14 lastMigratedClientVersion];
        *buf = 136315650;
        v58 = "[WFWorkflow initWithRecord:reference:storageProvider:migrateIfNecessary:environment:error:]";
        v59 = 2114;
        v60 = v26;
        v61 = 2114;
        v62 = v17;
        _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_DEFAULT, "%s Migrating workflow before opening, since it's last migrated version is %{public}@ and the current version is %{public}@", buf, 0x20u);
      }

      v27 = getWFWorkflowLogObject();
      v28 = os_signpost_id_generate(v27);

      v29 = getWFWorkflowLogObject();
      v30 = v29;
      v31 = v28 - 1;
      if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
      {
        v32 = [v14 actions];
        v33 = [v32 count];
        *buf = 134349056;
        v58 = v33;
        _os_signpost_emit_with_name_impl(&dword_1CA256000, v30, OS_SIGNPOST_INTERVAL_BEGIN, v28, "WorkflowMigration", " enableTelemetry=YES actionCount=%{public,signpost.telemetry:number1}lu", buf, 0xCu);
      }

      spid = v28;

      v34 = [v14 fileRepresentation];
      v35 = [v34 migrateRootObject];
      v24 = v35;
      if (v35)
      {
        [v14 loadFromStorage:v34];
      }

      v36 = getWFWorkflowLogObject();
      v37 = v36;
      if (v31 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1CA256000, v37, OS_SIGNPOST_INTERVAL_END, spid, "WorkflowMigration", " enableTelemetry=YES ", buf, 2u);
      }

      v15 = v52;
    }

    v56.receiver = self;
    v56.super_class = WFWorkflow;
    self = [(WFWorkflow *)&v56 init];
    v38 = v55;
    if (self)
    {
      v39 = [v14 copy];
      record = self->_record;
      self->_record = v39;

      objc_storeStrong(&self->_reference, a4);
      objc_storeStrong(&self->_storageProvider, obj);
      self->_environment = a7;
      v41 = objc_alloc(MEMORY[0x1E69E0A80]);
      v42 = [v41 initWithDelay:MEMORY[0x1E69E96A0] maximumDelay:0.5 queue:2.0];
      saveDebouncer = self->_saveDebouncer;
      self->_saveDebouncer = v42;

      [(WFDebouncer *)self->_saveDebouncer addTarget:self action:sel_saveFromDebouncer_];
      self->_userProvidedName = 0;
      self->_serializeActionsWhenSaving = v24;
      self->_storageState = v55 == 0;
      [(WFWorkflow *)self loadFromRecord];
      v44 = [(WFWorkflow *)self database];
      v45 = v44;
      if (v44)
      {
        [v44 addObjectObserver:self];
      }

      v46 = self;
    }

    v47 = self;
  }

  else
  {
    v47 = 0;
    v38 = v55;
  }

  v48 = *MEMORY[0x1E69E9840];
  return v47;
}

- (WFWorkflow)initWithCreationOptions:(id)a3 database:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [[WFDatabaseWorkflowStorage alloc] initWithDatabase:v10];
  v12 = objc_alloc_init(WFWorkflowRecord);
  v13 = [(WFWorkflow *)self initWithRecord:v12 reference:0 storageProvider:v11 error:a5];

  if (v13)
  {
    objc_storeStrong(&v13->_creationOptions, a3);
    v13->_storageState = 2;
    v14 = +[WFWorkflow defaultName];
    v15 = [v10 suggestedWorkflowNameForName:v14];
    v16 = [(WFWorkflow *)v13 record];
    [v16 setName:v15];

    v17 = v13;
  }

  return v13;
}

- (WFWorkflow)init
{
  v3 = objc_alloc_init(WFWorkflowRecord);
  v4 = [(WFWorkflow *)self initWithRecord:v3 reference:0 storageProvider:0 error:0];

  return v4;
}

+ (BOOL)checkClientVersion:(id)a3 currentVersion:(id)a4 error:(id *)a5
{
  v19[4] = *MEMORY[0x1E69E9840];
  v7 = WFCompareBundleVersions(a3, a4);
  v8 = v7;
  if (a5 && (v7 & 1) == 0)
  {
    v18[0] = *MEMORY[0x1E696A588];
    v9 = WFLocalizedString(@"Shortcut Format Too New");
    v19[0] = v9;
    v18[1] = *MEMORY[0x1E696A578];
    v10 = WFLocalizedString(@"This shortcut cannot be opened because it was created on a newer version of the Shortcuts app.");
    v19[1] = v10;
    v18[2] = *MEMORY[0x1E696A590];
    v11 = WFLocalizedString(@"Update Shortcuts");
    v17[0] = v11;
    v12 = WFLocalizedString(@"OK");
    v17[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v18[3] = *MEMORY[0x1E696A8A8];
    v19[2] = v13;
    v19[3] = a1;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];

    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFWorkflowErrorDomain" code:2 userInfo:v14];
  }

  v15 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

+ (BOOL)attemptRecoveryFromError:(id)a3 optionIndex:(unint64_t)a4
{
  if (!a4)
  {
    v4 = [MEMORY[0x1E6996CA8] sharedContext];
    v5 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=General&path=SOFTWARE_UPDATE_LINK"];
    [v4 openURL:v5 withBundleIdentifier:@"com.apple.Preferences" userInterface:0 completionHandler:0];
  }

  return 1;
}

+ (id)localizedSubtitleWithActionCount:(unint64_t)a3
{
  v4 = localizedSubtitleActionCountCache;
  if (!localizedSubtitleActionCountCache)
  {
    v5 = objc_opt_new();
    v6 = localizedSubtitleActionCountCache;
    localizedSubtitleActionCountCache = v5;

    v4 = localizedSubtitleActionCountCache;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v8 = [v4 objectForKey:v7];

  if (!v8)
  {
    if (a3)
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = WFLocalizedPluralString(@"%lu actions");
      v8 = [v9 localizedStringWithFormat:v10, a3];
    }

    else
    {
      v8 = WFLocalizedString(@"No actions");
    }

    v11 = localizedSubtitleActionCountCache;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v11 setObject:v8 forKey:v12];
  }

  v13 = v8;

  return v13;
}

+ (id)effectiveInputClassesFromInputClasses:(id)a3 workflowTypes:(id)a4
{
  v5 = a3;
  v6 = WFWorkflowTypesContainsInputType(a4);
  v7 = v5;
  if ((v6 & 1) == 0)
  {
    v8 = +[WFWorkflow supportedInputClasses];
    v7 = [v8 array];
  }

  v9 = [v7 mutableCopy];
  if ([v9 containsObject:objc_opt_class()])
  {
    v10 = objc_opt_class();
    [v9 insertObject:v10 atIndex:{objc_msgSend(v9, "indexOfObject:", objc_opt_class())}];
  }

  if ([v9 containsObject:objc_opt_class()])
  {
    v11 = objc_opt_class();
    [v9 insertObject:v11 atIndex:{objc_msgSend(v9, "indexOfObject:", objc_opt_class())}];
  }

  return v9;
}

+ (id)supportedInputClasses
{
  v2 = [a1 supportedInputClassNames];
  v3 = [v2 if_compactMap:&__block_literal_global_271];

  return v3;
}

- (id)createUserActivityForViewing
{
  v3 = objc_opt_new();
  v4 = [(WFWorkflow *)self workflowID];
  [v3 setObject:v4 forKeyedSubscript:@"workflowID"];

  v5 = [(WFWorkflow *)self name];
  [v3 setObject:v5 forKeyedSubscript:@"workflowName"];

  v6 = [objc_alloc(MEMORY[0x1E69636A8]) initWithActivityType:@"is.workflow.my.app.viewworkflow"];
  v7 = [(WFWorkflow *)self name];
  [v6 setTitle:v7];

  [v6 setUserInfo:v3];
  v8 = [MEMORY[0x1E695DFD8] setWithObjects:{@"workflowID", @"workflowName", 0}];
  [v6 setRequiredUserInfoKeys:v8];

  [v6 setEligibleForHandoff:0];
  [v6 setEligibleForSearch:0];

  return v6;
}

- (BOOL)isResidentCompatible
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(WFWorkflow *)self actions];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if (![v7 isResidentCompatible] || (objc_msgSend(v7, "containsVariableOfType:", @"Ask") & 1) != 0)
        {
          v8 = 0;
          goto LABEL_13;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v8 = 1;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 1;
  }

LABEL_13:

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)requestToRunScriptsOnDomain:(id)a3 withUserInterface:(id)a4 database:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v14)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"WFWorkflow+TrustedDomains.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  v15 = [(WFWorkflow *)self reference];
  if (v15)
  {
    if ([v13 isReference:v15 allowedToRunOnDomain:v11])
    {
      v14[2](v14, 1);
    }

    else
    {
      v16 = [MEMORY[0x1E6996C70] alertWithPreferredStyle:0];
      v17 = [(WFWorkflow *)self name];
      v18 = [v11 lowercaseString];
      v32 = v12;
      v19 = MEMORY[0x1E696AEC0];
      v20 = WFLocalizedString(@"Do you want to give “%1$@” access to “%2$@”?");
      v21 = [v19 localizedStringWithFormat:v20, v17, v18];
      [v16 setTitle:v21];

      v22 = MEMORY[0x1E696AEC0];
      v23 = WFLocalizedString(@"Whenever you run this shortcut, “%1$@” will be able to interact with the current web page, including reading sensitive information such as passwords, phone numbers, and credit cards.");
      v24 = [v22 localizedStringWithFormat:v23, v17, v18];
      [v16 setMessage:v24];

      v25 = MEMORY[0x1E6996C78];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __103__WFWorkflow_TrustedDomains__requestToRunScriptsOnDomain_withUserInterface_database_completionHandler___block_invoke;
      v38[3] = &unk_1E837F4E8;
      v26 = v14;
      v39 = v26;
      v27 = [v25 cancelButtonWithHandler:v38];
      [v16 addButton:v27];

      v28 = MEMORY[0x1E6996C78];
      v29 = WFLocalizedString(@"Allow");
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __103__WFWorkflow_TrustedDomains__requestToRunScriptsOnDomain_withUserInterface_database_completionHandler___block_invoke_2;
      v33[3] = &unk_1E837F510;
      v34 = v13;
      v35 = v15;
      v36 = v11;
      v37 = v26;
      v30 = [v28 buttonWithTitle:v29 style:0 preferred:1 handler:v33];
      [v16 addButton:v30];

      v12 = v32;
      [v32 presentAlert:v16];
    }
  }

  else
  {
    v14[2](v14, 0);
  }
}

uint64_t __103__WFWorkflow_TrustedDomains__requestToRunScriptsOnDomain_withUserInterface_database_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setTrustedToRunScripts:1 forReference:*(a1 + 40) onDomain:*(a1 + 48)];
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

@end