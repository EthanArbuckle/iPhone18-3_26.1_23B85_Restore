@interface WFAction
+ (id)actionFromSerializedRepresentation:(id)a3 actionRegistry:(id)a4;
+ (id)actionsFromSerializedRepresentations:(id)a3 actionRegistry:(id)a4;
+ (id)iconCache;
+ (id)userInterfaceXPCInterface;
+ (void)showImplicitChooseFromListWithInput:(id)a3 userInterface:(id)a4 workQueue:(id)a5 cancelHandler:(id)a6 selectionHandler:(id)a7;
- (BOOL)allowSessionKitSessionsIfNeededWithConfiguration:(id)a3 isManualInvocation:(BOOL)a4 error:(id *)a5;
- (BOOL)appResourceRequiresAppInstall;
- (BOOL)blocksSnapping;
- (BOOL)canHandleInputOfContentClasses:(id)a3 withSupportedClasses:(id)a4 includingCoercedTypes:(BOOL)a5;
- (BOOL)containsVariableOfType:(id)a3;
- (BOOL)deletesInput;
- (BOOL)descriptionInputIncludesSupportingItemClasses;
- (BOOL)getInputContentFromVariablesInParameterState:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (BOOL)hasAvailableActionOutputVariables;
- (BOOL)highRisk;
- (BOOL)inputPassthrough;
- (BOOL)inputRequired;
- (BOOL)inputTypeDeterminesOutputType;
- (BOOL)inputsMultipleItems;
- (BOOL)isDisabledWhenRunOnDevice:(id)a3;
- (BOOL)isDiscontinued;
- (BOOL)isEligibleForOutputVariable;
- (BOOL)isLastAction;
- (BOOL)isOutputExpandedInEditor;
- (BOOL)isResidentCompatible;
- (BOOL)isRunningInCarPlay;
- (BOOL)isRunningInSiriUserInterface;
- (BOOL)isSubclassThatOverridesSelector:(SEL)a3;
- (BOOL)isTesting;
- (BOOL)isVariableWithNameAvailable:(id)a3;
- (BOOL)isVariableWithOutputUUIDAvailable:(id)a3;
- (BOOL)legacyBehaviorIgnoresOutputFromAction:(id)a3 inWorkflow:(id)a4;
- (BOOL)locallyProcessesData;
- (BOOL)mightStartAudioRecording;
- (BOOL)mightSuppressRunningProgress;
- (BOOL)outputIsRenamed;
- (BOOL)outputsMultipleItems;
- (BOOL)prefersActionAttribution;
- (BOOL)requiresHandoffWhenRunWithUserInterfaceType:(id)a3;
- (BOOL)requiresRemoteExecution;
- (BOOL)requiresUnlock;
- (BOOL)requiresUserInteractionWhenRunWithInput:(id)a3;
- (BOOL)runningInStepWiseExecutor;
- (BOOL)runningInToolKit;
- (BOOL)runningViaSpotlight;
- (BOOL)setParameterState:(id)a3 forKey:(id)a4;
- (BOOL)setParameterStateToVariable:(id)a3 forKey:(id)a4;
- (BOOL)shouldBeIncludedInAppsList;
- (BOOL)shouldDisableSmartPromptChecks;
- (BOOL)shouldInsertExpandingParameterForParameter:(id)a3;
- (BOOL)showsImplicitChooseFromListWhenRunWithInput:(id)a3;
- (BOOL)snappingPassthrough;
- (BOOL)synchronouslyHandleTestingEvent:(id)a3 error:(id *)a4;
- (BOOL)takeSessionKitAssertionIfNeededWithError:(id *)a3;
- (BOOL)usesCompactUnlockService;
- (BOOL)usesLegacyInputBehavior;
- (BOOL)visibleForUse:(int64_t)a3;
- (Class)contentItemClass;
- (INAppDescriptor)appDescriptor;
- (NSArray)additionalParameterSummaries;
- (NSArray)availableOutputActions;
- (NSArray)availableVariableNames;
- (NSArray)disabledOnPlatforms;
- (NSArray)inputContentClasses;
- (NSArray)inputTypes;
- (NSArray)localizedKeywords;
- (NSArray)outputContentClasses;
- (NSArray)outputTypes;
- (NSArray)parameterDefinitions;
- (NSArray)parameters;
- (NSArray)remoteExecuteOnPlatforms;
- (NSArray)requiredResources;
- (NSArray)specifiedInputContentClasses;
- (NSArray)specifiedOutputContentClasses;
- (NSArray)supportedAppIdentifiers;
- (NSArray)userInterfaceTypes;
- (NSArray)workflowInputClasses;
- (NSAttributedString)attributedLocalizedName;
- (NSDictionary)appDefinition;
- (NSDictionary)displayableAppDefinition;
- (NSDictionary)inputDictionary;
- (NSDictionary)outputDictionary;
- (NSDictionary)parametersByKey;
- (NSDictionary)serializedRepresentation;
- (NSDictionary)sessionKitSessionConfigurationDefinition;
- (NSDictionary)sessionKitToastDurationsPerRunSourceDefinition;
- (NSDictionary)userInterfaceClasses;
- (NSSet)ignoredParameterKeysForProcessing;
- (NSString)UUID;
- (NSString)appBundleIdentifier;
- (NSString)customOutputName;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)externalMetricsBundleIdentifier;
- (NSString)fillingProvider;
- (NSString)groupingIdentifier;
- (NSString)iconBackgroundColorName;
- (NSString)iconName;
- (NSString)iconSymbolColorName;
- (NSString)iconSymbolName;
- (NSString)inputParameterKey;
- (NSString)localizedAppName;
- (NSString)localizedCategory;
- (NSString)localizedDefaultOutputName;
- (NSString)localizedDescriptionAttributionMarkdownString;
- (NSString)localizedDescriptionInput;
- (NSString)localizedDescriptionNote;
- (NSString)localizedDescriptionRequires;
- (NSString)localizedDescriptionResult;
- (NSString)localizedDescriptionSummary;
- (NSString)localizedDiscontinuedDescription;
- (NSString)localizedFocusFilterDescription;
- (NSString)localizedName;
- (NSString)outputName;
- (NSString)sessionKitSessionInvocationType;
- (OS_dispatch_queue)effectiveWorkQueue;
- (WFAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5;
- (WFActionDescriptionDefinition)descriptionDefinition;
- (WFActionParameterSummary)parameterSummary;
- (WFActionSessionKitSessionConfiguration)sessionKitSessionConfiguration;
- (WFAppInstalledResource)appResource;
- (WFColor)iconColor;
- (WFContactStore)contactStore;
- (WFContentAttributionTracker)contentAttributionTracker;
- (WFContentCollection)output;
- (WFContentPermissionRequestor)contentPermissionRequestor;
- (WFIcon)icon;
- (WFInterchangeApp)app;
- (WFParameter)inputParameter;
- (WFResourceManager)resourceManager;
- (WFUserVisibleString)customOutputString;
- (WFWorkflow)workflow;
- (WFWorkflowActionTree)actionTree;
- (id)actionForAppIdentifier:(id)a3;
- (id)actionProvidingVariableWithOutputUUID:(id)a3;
- (id)actionsProvidingVariableName:(id)a3;
- (id)classesForTypeArray:(id)a3 includeAllOutputTypes:(BOOL)a4;
- (id)containedVariables;
- (id)containedVariablesOfClass:(Class)a3;
- (id)contentDestinationWithError:(id *)a3;
- (id)copyForDuplicating;
- (id)copyForProcessing;
- (id)copyParameterStatesWithFallingBackToDefaultValue:(BOOL)a3;
- (id)copyWithDefinition:(id)a3 serializedParameters:(id)a4;
- (id)copyWithSerializedParameters:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createResourceManager;
- (id)createStateForParameter:(id)a3 fromSerializedRepresentation:(id)a4;
- (id)defaultParameterStateForKey:(id)a3;
- (id)descriptionInput;
- (id)deviceLockedError;
- (id)generateOutputUUIDForAction:(id)a3;
- (id)generateUUIDIfNecessaryWithUUIDProvider:(id)a3;
- (id)generatedResourceNodes;
- (id)inheritedInputVariableInWorkflow:(id)a3 ignoringInputTypes:(BOOL)a4;
- (id)itemsBeingDeleted;
- (id)localizedCategoryWithContext:(id)a3;
- (id)localizedDefaultOutputNameWithContext:(id)a3;
- (id)localizedDescriptionAttributionMarkdownStringWithContext:(id)a3;
- (id)localizedDescriptionInputWithContext:(id)a3;
- (id)localizedDescriptionNoteWithContext:(id)a3;
- (id)localizedDescriptionRequiresWithContext:(id)a3;
- (id)localizedDescriptionResultWithContext:(id)a3;
- (id)localizedDescriptionSummaryWithContext:(id)a3;
- (id)localizedDiscontinuedDescriptionWithContext:(id)a3;
- (id)localizedErrorWithLinkError:(id)a3;
- (id)localizedFocusFilterDescriptionWithContext:(id)a3;
- (id)localizedKeywordsWithContext:(id)a3;
- (id)localizedNameWithContext:(id)a3;
- (id)minimumSupportedClientVersion;
- (id)missingAppError;
- (id)outputVariableWithVariableProvider:(id)a3 UUIDProvider:(id)a4;
- (id)parameterForKey:(id)a3;
- (id)parameterStateForKey:(id)a3 fallingBackToDefaultValue:(BOOL)a4;
- (id)parameterValueForKey:(id)a3 ofClass:(Class)a4;
- (id)parametersRequiringUserInputAlongsideParameter:(id)a3;
- (id)populatedInputWithProcessedParameterValues:(id)a3;
- (id)possibleContentClassesForVariableNamed:(id)a3;
- (id)possibleContentClassesForVariableWithOutputUUID:(id)a3;
- (id)previousAction;
- (id)serializedParameterStateForKey:(id)a3;
- (id)serializedParameters;
- (id)smartPromptSubtitleWithPreviousContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5;
- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5;
- (id)supplementalParameterValueForKey:(id)a3 ofClass:(Class)a4;
- (id)systemEntityCollectionIdentifierForDisambiguatingParameterWithKey:(id)a3;
- (id)typeDescriptionWithTypes:(id)a3 explanationText:(id)a4 multiple:(BOOL)a5 optional:(BOOL)a6;
- (id)unevaluatedResourceNodes;
- (id)unevaluatedResourceObjectsOfClass:(Class)a3;
- (id)unevaluatedResourceObjectsOfClasses:(id)a3;
- (id)userVisibleStringsForUseCase:(unint64_t)a3;
- (id)visibleParametersWithProcessing:(BOOL)a3;
- (int64_t)initialSuggestionBehavior;
- (int64_t)rateLimitDelay;
- (int64_t)rateLimitThreshold;
- (int64_t)rateLimitTimeout;
- (unint64_t)appearance;
- (unint64_t)outputDisclosureLevel;
- (unint64_t)parameterCollapsingBehavior;
- (void)_finishRunningWithError:(id)a3;
- (void)_processParameterStates:(id)a3 withInput:(id)a4 skippingHiddenParameters:(BOOL)a5 askForValuesIfNecessary:(BOOL)a6 workQueue:(id)a7 completionHandler:(id)a8;
- (void)addEventObserver:(id)a3;
- (void)addVariableObserver:(id)a3;
- (void)askForValuesOfParameters:(id)a3 withDefaultStates:(id)a4 prompts:(id)a5 input:(id)a6 workQueue:(id)a7 completionHandler:(id)a8;
- (void)cancel;
- (void)checkUserInterfaceAndRun;
- (void)configureResourcesForParameter:(id)a3;
- (void)dismissPresentedContentWithCompletionHandler:(id)a3;
- (void)enumerateObservers:(id)a3;
- (void)fetchSuggestedEntitiesForParameterWithKey:(id)a3 completionHandler:(id)a4;
- (void)finishRunningWithError:(id)a3;
- (void)getContentDestinationWithCompletionHandler:(id)a3;
- (void)handleTestingEvent:(id)a3 completionHandler:(id)a4;
- (void)iconUpdated;
- (void)initializeParameters;
- (void)initializeParametersWithLock;
- (void)lockInputParameter;
- (void)logDataTransmissionForSmartPromptApprovalResult:(id)a3;
- (void)nameUpdated;
- (void)notifyEventObserversParameterStateDidChangeForKey:(id)a3;
- (void)outputDetailsUpdated;
- (void)parameterDefaultSerializedRepresentationDidChange:(id)a3;
- (void)parameterStateValidityCriteriaDidChange:(id)a3;
- (void)performDataAccessChecksWithUserInterface:(id)a3 contentItemCache:(id)a4 completionHandler:(id)a5;
- (void)performDataAndHardwareAccessChecksAndRun;
- (void)performDeletionAuthorizationChecksWithUserInterface:(id)a3 contentItemCache:(id)a4 completionHandler:(id)a5;
- (void)performSmartPromptChecksWithUserInterface:(id)a3 contentDestination:(id)a4 contentItemCache:(id)a5 isWebpageCoercion:(BOOL)a6 completionHandler:(id)a7;
- (void)preloadDefaultParameterStatesIfNecessaryWithCompletionHandler:(id)a3;
- (void)prepareToProcessWithCompletionHandler:(id)a3;
- (void)presentSmartPromptAuthorizationWithConfiguration:(id)a3 userInterface:(id)a4 databaseApprovalResult:(id)a5 contentDestination:(id)a6 completionHandler:(id)a7;
- (void)processEncodedValue:(id)a3 withToolKitInvocation:(id)a4 forParameter:(id)a5 completionHandler:(id)a6;
- (void)processValueForParameter:(id)a3 withToolKitInvocation:(id)a4 completionHandler:(id)a5;
- (void)promptForArchiveVerificationIfNecessary:(id)a3 completionHandler:(id)a4;
- (void)promptForAudioRecordingPermissionIfNeededWithCompletionBlock:(id)a3;
- (void)recreateGeneratedResourcesIfNeeded;
- (void)recreateResourcesIfNeeded;
- (void)recreateUnevaluatedResourcesIfNeeded;
- (void)reloadAuxiliaryButton;
- (void)removeEventObserver:(id)a3;
- (void)removeVariableObserver:(id)a3;
- (void)requestInterfacePresentationWithCompletionHandler:(id)a3;
- (void)requestUnlock:(id)a3;
- (void)requestUnlockIfNeeded:(id)a3;
- (void)resetOutput;
- (void)resolveAppDescriptorIfNecessary:(id)a3;
- (void)rewriteWithStrings:(id)a3;
- (void)runAsynchronouslyWithInput:(id)a3;
- (void)runWithInput:(WFContentCollection *)a3 completionHandler:(id)a4;
- (void)runWithInput:(id)a3 error:(id *)a4;
- (void)runWithInput:(id)a3 userInterface:(id)a4 runningDelegate:(id)a5 variableSource:(id)a6 workQueue:(id)a7 completionHandler:(id)a8;
- (void)setActionTree:(id)a3;
- (void)setCurrentGeneratedResourceNodes:(id)a3;
- (void)setDefaultCoercionOptionsOnContentCollection:(id)a3;
- (void)setDefaultCoercionOptionsOnInputs;
- (void)setGroupingIdentifier:(id)a3;
- (void)setOutput:(id)a3 onVariableSource:(id)a4;
- (void)setOutputName:(id)a3;
- (void)setSupplementalParameterValue:(id)a3 forKey:(id)a4;
- (void)setUUID:(id)a3;
- (void)snapInputParameterIfNecessary;
- (void)snapInputParameterToVariable:(id)a3;
- (void)unlockAppProtectionWithCompletionHandler:(id)a3;
- (void)unlockInputParameter;
- (void)updateAppDescriptorWithSelectedApp:(id)a3;
- (void)updateParameterSummaryIfNeeded:(id)a3;
- (void)visibleParametersUpdated;
- (void)wasAddedToWorkflow:(id)a3;
- (void)wasAddedToWorkflowByUser:(id)a3;
- (void)wasRemovedFromWorkflow:(id)a3;
@end

@implementation WFAction

- (NSArray)parameters
{
  parameters = self->_parameters;
  if (!parameters)
  {
    [(WFAction *)self initializeParametersWithLock];
    parameters = self->_parameters;
  }

  return parameters;
}

- (void)initializeParametersWithLock
{
  os_unfair_lock_lock(&self->_parameterInitializationLock);
  [(WFAction *)self initializeParameters];

  os_unfair_lock_unlock(&self->_parameterInitializationLock);
}

- (void)initializeParameters
{
  v41 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_parameterInitializationLock);
  if (!self->_parameters)
  {
    v4 = getWFGeneralLogObject();
    v5 = os_signpost_id_generate(v4);

    v6 = getWFGeneralLogObject();
    v7 = v6;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      v8 = [(WFAction *)self identifier];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138412546;
      v38 = v8;
      v39 = 2112;
      v40 = v10;
      _os_signpost_emit_with_name_impl(&dword_1CA256000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "InitializeActionParameters", "identifier=%{signpost.description:attribute}@,class=%{signpost.description:attribute}@", buf, 0x16u);
    }

    v11 = [(WFAction *)self parameterDefinitions];
    v12 = v11;
    v13 = MEMORY[0x1E695E0F0];
    if (v11)
    {
      v13 = v11;
    }

    v14 = v13;

    v15 = objc_opt_new();
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __32__WFAction_initializeParameters__block_invoke;
    v33[3] = &unk_1E83752E0;
    v33[4] = self;
    v16 = v15;
    v34 = v16;
    v35 = a2;
    v17 = [v14 if_compactMap:v33];
    parameters = self->_parameters;
    self->_parameters = v17;

    v19 = [v16 copy];
    parametersByKey = self->_parametersByKey;
    self->_parametersByKey = v19;

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v21 = self->_parameters;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v30;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v30 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [(WFAction *)self configureResourcesForParameter:*(*(&v29 + 1) + 8 * i), v29];
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v29 objects:v36 count:16];
      }

      while (v23);
    }

    v26 = getWFGeneralLogObject();
    v27 = v26;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1CA256000, v27, OS_SIGNPOST_INTERVAL_END, v5, "InitializeActionParameters", "", buf, 2u);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (NSArray)parameterDefinitions
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"Parameters"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

id __32__WFAction_initializeParameters__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [WFParameter parameterWithDefinition:v3];
  if (v4)
  {
    [*(a1 + 32) configureParameter:v4];
    v5 = [v4 key];
    v6 = [*(a1 + 40) objectForKey:v5];

    if (v6)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = *(a1 + 48);
      v13 = *(a1 + 32);
      v14 = [v13 identifier];
      [v11 handleFailureInMethod:v12 object:v13 file:@"WFAction.m" lineNumber:2301 description:{@"Multiple parameters of %@ use key %@", v14, v5}];
    }

    [*(a1 + 40) setObject:v4 forKey:v5];
    [v4 addEventObserver:*(a1 + 32)];
    v7 = v4;
  }

  else
  {
    v8 = getWFGeneralLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[WFAction initializeParameters]_block_invoke";
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, "%s Failed to initialize parameter with definition: %@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)serializedParameters
{
  v3 = [(WFAction *)self encodedSerializedParameters];
  v4 = [v3 mutableCopy];

  v5 = [(WFAction *)self decodedParameterStates];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __32__WFAction_serializedParameters__block_invoke;
  v10[3] = &unk_1E8374E50;
  v10[4] = self;
  v6 = v4;
  v11 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

- (NSDictionary)parametersByKey
{
  parametersByKey = self->_parametersByKey;
  if (!parametersByKey)
  {
    [(WFAction *)self initializeParametersWithLock];
    parametersByKey = self->_parametersByKey;
  }

  return parametersByKey;
}

- (NSString)localizedName
{
  v3 = [(WFAction *)self defaultLocalizationContext];
  v4 = [(WFAction *)self localizedNameWithContext:v3];

  return v4;
}

- (NSString)localizedDescriptionSummary
{
  v3 = [(WFAction *)self defaultLocalizationContext];
  v4 = [(WFAction *)self localizedDescriptionSummaryWithContext:v3];

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFAction *)self identifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, identifier: %@>", v5, self, v6];

  return v7;
}

- (WFParameter)inputParameter
{
  v3 = [(WFAction *)self inputParameterKey];
  if (v3)
  {
    v4 = [(WFAction *)self parametersByKey];
    v5 = [v4 objectForKey:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)inputParameterKey
{
  v2 = [(WFAction *)self inputDictionary];
  v3 = [v2 objectForKey:@"ParameterKey"];

  return v3;
}

- (NSDictionary)inputDictionary
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"Input"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  v6 = v5;

  return v5;
}

- (WFContentPermissionRequestor)contentPermissionRequestor
{
  contentPermissionRequestor = self->_contentPermissionRequestor;
  if (!contentPermissionRequestor)
  {
    v4 = [[WFActionContentPermissionRequestor alloc] initWithAction:self];
    v5 = self->_contentPermissionRequestor;
    self->_contentPermissionRequestor = v4;

    contentPermissionRequestor = self->_contentPermissionRequestor;
  }

  return contentPermissionRequestor;
}

- (BOOL)runningInToolKit
{
  v3 = [(WFAction *)self runningDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(WFAction *)self runningDelegate];
  v6 = [v5 currentRunningContextForAction:self];

  v7 = [v6 runSource];
  IsToolKit = WFRunSourceIsToolKit();

  return IsToolKit;
}

- (void)runWithInput:(WFContentCollection *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_1CA67052C(&unk_1CA98E280, v7);
}

- (WFUserVisibleString)customOutputString
{
  v2 = self;
  v3 = sub_1CA61ED8C();

  return v3;
}

- (id)userVisibleStringsForUseCase:(unint64_t)a3
{
  v4 = self;
  sub_1CA61EE08(a3);

  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v5 = sub_1CA94C8E8();

  return v5;
}

- (void)rewriteWithStrings:(id)a3
{
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v4 = sub_1CA94C1C8();
  v5 = self;
  sub_1CA61F0AC(v4);
}

- (id)localizedErrorWithLinkError:(id)a3
{
  v88[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v16 = 0;
    goto LABEL_83;
  }

  v5 = v4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = WFLocalizedString(@"There was a problem applying the Focus filter.");
  v8 = [(WFAction *)self appDescriptor];
  v9 = [v8 localizedName];
  v10 = [v9 length];

  if (v10)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = WFLocalizedString(@"There was a problem communicating with the “%@” app.");
    v13 = [(WFAction *)self appDescriptor];
    v14 = [v13 localizedName];
    v15 = [v11 localizedStringWithFormat:v12, v14];
  }

  else
  {
    v15 = WFLocalizedString(@"There was a problem communicating with the app.");
  }

  v17 = [v5 userInfo];
  v18 = [v17 objectForKey:*MEMORY[0x1E69ACB28]];

  if (v18)
  {
    v19 = v18;

    v5 = v19;
  }

  v20 = [v5 domain];
  v21 = [v20 isEqualToString:*MEMORY[0x1E69ACB58]];

  if (v21)
  {
    v22 = [v5 code];
    if (v22 <= 1006)
    {
      if (v22 <= 1002)
      {
        if (v22 != 1001)
        {
          if (v22 == 1002)
          {
            if ((isKindOfClass & 1) == 0)
            {
              v45 = MEMORY[0x1E696AEC0];
              v46 = @"The action “%@” was interrupted because it didn't finish executing in time.";
              goto LABEL_41;
            }

            goto LABEL_69;
          }

          goto LABEL_68;
        }

LABEL_12:
        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_69;
      }

      if ((v22 - 1003) >= 3)
      {
        if (v22 == 1006)
        {
          v45 = MEMORY[0x1E696AEC0];
          v46 = @"The action “%@” could not run because it is not supported on this platform.";
          goto LABEL_41;
        }

        goto LABEL_68;
      }

      if (isKindOfClass)
      {
LABEL_69:
        v44 = v15;
        v15 = v44;
        goto LABEL_70;
      }

      v41 = MEMORY[0x1E696AEC0];
      v42 = @"The action “%1$@” could not run because the “%2$@” app quit unexpectedly.";
    }

    else
    {
      if (v22 <= 1099)
      {
        if ((v22 - 1007) < 7)
        {
          goto LABEL_12;
        }

        goto LABEL_68;
      }

      if (v22 <= 1399)
      {
        if (v22 == 1100 || v22 == 1200)
        {
          if ((isKindOfClass & 1) == 0)
          {
            v45 = MEMORY[0x1E696AEC0];
            v46 = @"The action “%@” could not run because Shortcuts couldn't communicate with the app.";
            goto LABEL_41;
          }

          goto LABEL_69;
        }

        if (v22 != 1300)
        {
LABEL_68:
          if (isKindOfClass)
          {
            goto LABEL_69;
          }

LABEL_100:
          v45 = MEMORY[0x1E696AEC0];
          v46 = @"The action “%@” could not run because an unknown error occurred.";
          goto LABEL_41;
        }

        goto LABEL_12;
      }

      switch(v22)
      {
        case 1400:
          goto LABEL_12;
        case 1700:
          v50 = [(WFAction *)self appDescriptor];
          v51 = [v50 localizedName];
          v52 = [v51 length];

          if (!v52)
          {
            if ((isKindOfClass & 1) == 0)
            {
              v45 = MEMORY[0x1E696AEC0];
              v46 = @"The action “%@” could not run. Open the app to continue.";
              goto LABEL_41;
            }

            v44 = WFLocalizedString(@"Focus filter could not be applied. Open the app to continue.");
            goto LABEL_70;
          }

          v41 = MEMORY[0x1E696AEC0];
          if (isKindOfClass)
          {
            v49 = @"Focus filter could not be applied. Open %@ to continue.";
            goto LABEL_67;
          }

          v42 = @"The action “%1$@” could not run. Open %2$@ to continue.";
          break;
        case 2400:
          v41 = MEMORY[0x1E696AEC0];
          if (isKindOfClass)
          {
            v49 = @"Focus filter could not be applied. %@ is locked.";
LABEL_67:
            v53 = WFLocalizedString(v49);
            v54 = [(WFAction *)self appDescriptor];
            v55 = [v54 localizedName];
            v56 = [v41 localizedStringWithFormat:v53, v55];

            v30 = 0;
            v15 = v56;
            goto LABEL_71;
          }

          v42 = @"The action “%1$@” could not run because %2$@ is locked.";
          break;
        default:
          goto LABEL_68;
      }
    }

    v47 = WFLocalizedString(v42);
    v79 = [(WFAction *)self localizedName];
    v80 = [(WFAction *)self appDescriptor];
    v81 = [v80 localizedName];
    v30 = [v41 localizedStringWithFormat:v47, v79, v81];

    goto LABEL_42;
  }

  v23 = [v5 domain];
  v24 = [v23 isEqualToString:*MEMORY[0x1E69ACC68]];

  if (!v24)
  {
    v31 = [v5 domain];
    v32 = [v31 isEqualToString:*MEMORY[0x1E69ACB90]];

    if (!v32)
    {
      v30 = 0;
      goto LABEL_71;
    }

    v33 = self;
    if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if ([v5 code] == 1)
      {
        v34 = MEMORY[0x1E696AEC0];
        v35 = WFLocalizedString(@"Unable to load options due to the %@ parameter not being set.");
        v83 = [(WFAction *)v33 metadata];
        v82 = [v83 parameters];
        v85[0] = MEMORY[0x1E69E9820];
        v85[1] = 3221225472;
        v85[2] = __61__WFAction_LinkLocalizedErrors__localizedErrorWithLinkError___block_invoke;
        v85[3] = &unk_1E837CB40;
        v86 = v5;
        v36 = [v82 if_firstObjectPassingTest:v85];
        v37 = [v36 title];
        v38 = [v37 wf_localizedString];
        v39 = v34;
        v40 = v35;
        v30 = [v39 localizedStringWithFormat:v35, v38];

LABEL_45:
        goto LABEL_71;
      }
    }

    else
    {

      v33 = 0;
    }

    v30 = 0;
    goto LABEL_45;
  }

  v25 = [v5 code];
  if (v25 <= 2005)
  {
    if ((v25 - 2001) >= 4)
    {
      if (v25 != 2000)
      {
        if (v25 == 2005)
        {
          v26 = [v5 userInfo];
          v27 = [v26 objectForKeyedSubscript:*MEMORY[0x1E69ACC78]];

          v28 = [(WFAction *)self parameterForKey:v27];
          v29 = [v28 localizedLabel];

          if (isKindOfClass)
          {
            v30 = v7;
          }

          else
          {
            v74 = MEMORY[0x1E696AEC0];
            v75 = WFLocalizedString(@"The action “%1$@” could not run because a value was not provided for the “%2$@” parameter.");
            v76 = [(WFAction *)self localizedName];
            v77 = v76;
            if (v29)
            {
              v78 = v29;
            }

            else
            {
              v78 = v27;
            }

            v30 = [v74 localizedStringWithFormat:v75, v76, v78];
          }

LABEL_71:
          v57 = [v5 ln_staticDeferredLocalizedString];
          v58 = v57;
          if (v57)
          {
            [v57 localizedStringForLocaleIdentifier:0];
            v30 = v59 = v30;
          }

          else
          {
            if (!VCIsInternalBuild())
            {
              goto LABEL_74;
            }

            v65 = [v5 userInfo];
            v59 = [v65 objectForKeyedSubscript:*MEMORY[0x1E696A578]];

            if (v59 && ([v30 isEqualToString:v59] & 1) == 0)
            {
              v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ [Internal Only: %@]", v30, v59];

              v30 = v66;
            }
          }

LABEL_74:
          if (v30)
          {
            v60 = [v5 userInfo];
            v87 = *MEMORY[0x1E696A578];
            v88[0] = v30;
            v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:&v87 count:1];
            v62 = [v60 if_dictionaryByAddingEntriesFromDictionary:v61];

            v63 = MEMORY[0x1E696ABC0];
            v64 = [v5 domain];
            v16 = [v63 errorWithDomain:v64 code:objc_msgSend(v5 userInfo:{"code"), v62}];
          }

          else
          {
            v16 = v5;
          }

          goto LABEL_82;
        }

        goto LABEL_99;
      }

      v69 = LNPerformActionErrorCodeAsString();
      v70 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", v69];
      v30 = [v5 localizedDescription];
      if ([v30 length])
      {
        [v5 localizedDescription];
        v71 = v84 = v69;
        v72 = [v71 hasPrefix:v70];

        v69 = v84;
        if (!v72)
        {
LABEL_98:

LABEL_99:
          if ((isKindOfClass & 1) == 0)
          {
            goto LABEL_100;
          }

LABEL_39:
          v44 = v7;
LABEL_70:
          v30 = v44;
          goto LABEL_71;
        }

        v73 = [v5 localizedDescription];
        v30 = [v73 substringFromIndex:{objc_msgSend(v70, "length")}];

        if ([v30 length])
        {

          goto LABEL_71;
        }
      }

      goto LABEL_98;
    }

    goto LABEL_38;
  }

  v43 = v25 + 40;
  if ((v25 - 2008) <= 6)
  {
    if (((1 << v43) & 0x39) == 0)
    {
      if (((1 << v43) & 0x42) == 0)
      {
        v45 = MEMORY[0x1E696AEC0];
        v46 = @"The action “%@” could not run because it was cancelled.";
        goto LABEL_41;
      }

      v44 = [v5 localizedDescription];
      goto LABEL_70;
    }

    goto LABEL_38;
  }

  if (v25 == 2006)
  {
LABEL_38:
    if ((isKindOfClass & 1) == 0)
    {
LABEL_40:
      v45 = MEMORY[0x1E696AEC0];
      v46 = @"The action “%@” could not run because an internal error occurred.";
LABEL_41:
      v47 = WFLocalizedString(v46);
      v48 = [(WFAction *)self localizedName];
      v30 = [v45 localizedStringWithFormat:v47, v48];

LABEL_42:
      goto LABEL_71;
    }

    goto LABEL_39;
  }

  if (v25 != 2007)
  {
    goto LABEL_99;
  }

  v16 = [MEMORY[0x1E696ABC0] userCancelledError];
  v30 = 0;
LABEL_82:

LABEL_83:
  v67 = *MEMORY[0x1E69E9840];

  return v16;
}

uint64_t __61__WFAction_LinkLocalizedErrors__localizedErrorWithLinkError___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [*(a1 + 32) userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69ACBA0]];
  v6 = [v3 isEqualToString:v5];

  return v6;
}

- (WFWorkflow)workflow
{
  WeakRetained = objc_loadWeakRetained(&self->_workflow);

  return WeakRetained;
}

- (void)fetchSuggestedEntitiesForParameterWithKey:(id)a3 completionHandler:(id)a4
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = WFLocalizedString(@"Suggestions Not Found");
  v6 = WFLocalizedString(@"The specified action has no suggestions available");
  v7 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A578];
  v12[0] = *MEMORY[0x1E696A588];
  v12[1] = v8;
  v13[0] = v5;
  v13[1] = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v7 errorWithDomain:@"WFActionErrorDomain" code:5 userInfo:v9];

  v4[2](v4, 0, v10);
  v11 = *MEMORY[0x1E69E9840];
}

- (id)systemEntityCollectionIdentifierForDisambiguatingParameterWithKey:(id)a3
{
  v3 = [(WFAction *)self parameterStateForKey:a3];
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
  v6 = [v5 variable];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
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

  v9 = [v8 collectionFilter];

  v10 = [v9 systemEntityCollectionIdentifier];

  return v10;
}

- (BOOL)synchronouslyHandleTestingEvent:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(WFAction *)self isTesting])
  {
    v7 = dispatch_semaphore_create(0);
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__8610;
    v19 = __Block_byref_object_dispose__8611;
    v20 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __50__WFAction_synchronouslyHandleTestingEvent_error___block_invoke;
    v11[3] = &unk_1E8375358;
    v13 = &v21;
    v14 = &v15;
    v8 = v7;
    v12 = v8;
    [(WFAction *)self handleTestingEvent:v6 completionHandler:v11];
    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    if (a4)
    {
      *a4 = v16[5];
    }

    v9 = *(v22 + 24);

    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

void __50__WFAction_synchronouslyHandleTestingEvent_error___block_invoke(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)handleTestingEvent:(id)a3 completionHandler:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(WFAction *)self runningDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(WFAction *)self runningDelegate];
    [v9 action:self handleTestingEvent:v10 completionHandler:v6];
  }

  else
  {
    v6[2](v6, 1, 0);
  }
}

- (BOOL)isTesting
{
  v3 = [(WFAction *)self runningDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(WFAction *)self runningDelegate];
  v6 = [v5 isTesting];

  return v6;
}

- (BOOL)takeSessionKitAssertionIfNeededWithError:(id *)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = getWFSessionKitLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315138;
    v15 = "[WFAction takeSessionKitAssertionIfNeededWithError:]";
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEBUG, "%s Trying to see if we should take a session assertion...", &v14, 0xCu);
  }

  v6 = [(WFAction *)self sessionKitSessionInvocationType];
  v7 = [v6 isEqualToString:@"Manual"];

  if (v7)
  {
    v8 = getWFSessionKitLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[WFAction takeSessionKitAssertionIfNeededWithError:]";
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEFAULT, "%s Action says it's going to take assertion itself...", &v14, 0xCu);
    }

LABEL_13:
    v11 = 1;
    goto LABEL_14;
  }

  v8 = [(WFAction *)self sessionKitSessionConfiguration];
  v9 = getWFSessionKitLogObject();
  v10 = v9;
  if (!v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315138;
      v15 = "[WFAction takeSessionKitAssertionIfNeededWithError:]";
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEBUG, "%s It doesn't look like we are dealing with a session here. See you later!", &v14, 0xCu);
    }

    v8 = 0;
    goto LABEL_13;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[WFAction takeSessionKitAssertionIfNeededWithError:]";
    _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEFAULT, "%s Found a session configuration! Taking it...", &v14, 0xCu);
  }

  v11 = [(WFAction *)self allowSessionKitSessionsIfNeededWithConfiguration:v8 isManualInvocation:0 error:a3];
LABEL_14:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)allowSessionKitSessionsIfNeededWithConfiguration:(id)a3 isManualInvocation:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v36 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (!v9)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"WFAction.m" lineNumber:2917 description:{@"Invalid parameter not satisfying: %@", @"sessionConfiguration"}];
  }

  v10 = [(WFAction *)self sessionKitAssertion];

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v12 = [(WFAction *)self sessionKitSessionInvocationType];
    v13 = v12;
    if (v12)
    {
      if (v6 && ([v12 isEqualToString:@"Manual"] & 1) == 0)
      {
        v14 = getWFSessionKitLogObject();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v33 = "[WFAction allowSessionKitSessionsIfNeededWithConfiguration:isManualInvocation:error:]";
          _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_FAULT, "%s Tried to manually invoke a session, but the session invocation type is not manual?", buf, 0xCu);
        }

        v11 = 0;
      }

      else
      {
        v14 = [v9 bundleIdentifier];
        v15 = getWFSessionKitLogObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v33 = "[WFAction allowSessionKitSessionsIfNeededWithConfiguration:isManualInvocation:error:]";
          v34 = 2112;
          v35 = v14;
          _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_DEFAULT, "%s Attempting to take SessionKit assertion for %@...", buf, 0x16u);
        }

        v16 = [[WFActionWillTakeSessionKitAssertionTestingEvent alloc] initWithAction:self sessionConfiguration:v9];
        if ([(WFAction *)self synchronouslyHandleTestingEvent:v16 error:a5])
        {
          v17 = [[WFSessionKitAssertion alloc] initWithBundleIdentifier:v14];
          v18 = [(WFAction *)self runningDelegate];
          objc_initWeak(buf, self);
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __86__WFAction_allowSessionKitSessionsIfNeededWithConfiguration_isManualInvocation_error___block_invoke;
          v27[3] = &unk_1E8375330;
          objc_copyWeak(v31, buf);
          v19 = v18;
          v28 = v19;
          v29 = v14;
          v31[1] = a2;
          v30 = v9;
          [(WFSessionKitAssertion *)v17 setResultHandler:v27];
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __86__WFAction_allowSessionKitSessionsIfNeededWithConfiguration_isManualInvocation_error___block_invoke_586;
          v24[3] = &unk_1E8377C00;
          objc_copyWeak(&v26, buf);
          v20 = v19;
          v25 = v20;
          [(WFSessionKitAssertion *)v17 setFailureHandler:v24];
          v11 = [(WFSessionKitAssertion *)v17 takeWithError:a5];
          [(WFAction *)self setSessionKitAssertion:v17];
          [(WFAction *)self setExtendedOperation:v17];

          objc_destroyWeak(&v26);
          objc_destroyWeak(v31);
          objc_destroyWeak(buf);
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v11;
}

void __86__WFAction_allowSessionKitSessionsIfNeededWithConfiguration_isManualInvocation_error___block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setSessionKitAssertion:0];
  [*(a1 + 32) action:WeakRetained didDecideRunningProgressIsAllowed:a3 ^ 1u];
  v10 = getWFSessionKitLogObject();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if ((a3 & 1) == 0)
  {
    if (v11)
    {
      v15 = *(a1 + 40);
      *buf = 136315394;
      v38 = "[WFAction allowSessionKitSessionsIfNeededWithConfiguration:isManualInvocation:error:]_block_invoke";
      v39 = 2112;
      v40 = v15;
      v12 = "%s SessionKit assertion was granted, but %@ did not start a session. Bummer!";
      v13 = v10;
      v14 = OS_LOG_TYPE_DEFAULT;
      v16 = 22;
LABEL_13:
      _os_log_impl(&dword_1CA256000, v13, v14, v12, buf, v16);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  if (v11)
  {
    *buf = 136315138;
    v38 = "[WFAction allowSessionKitSessionsIfNeededWithConfiguration:isManualInvocation:error:]_block_invoke";
    _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEFAULT, "%s SessionKit session started, have fun!", buf, 0xCu);
  }

  if (![v7 count])
  {
    v10 = getWFSessionKitLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v38 = "[WFAction allowSessionKitSessionsIfNeededWithConfiguration:isManualInvocation:error:]_block_invoke";
      v12 = "%s Session started, but we don't have an identifier for it?";
      v13 = v10;
      v14 = OS_LOG_TYPE_FAULT;
      goto LABEL_12;
    }

LABEL_14:

    v8[2](v8);
    goto LABEL_15;
  }

  if ([v7 count] >= 2)
  {
    v10 = getWFSessionKitLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v38 = "[WFAction allowSessionKitSessionsIfNeededWithConfiguration:isManualInvocation:error:]_block_invoke";
      v12 = "%s We allowed the app to start a session, but it started multiple. We don't know which one to toast!";
      v13 = v10;
      v14 = OS_LOG_TYPE_DEFAULT;
LABEL_12:
      v16 = 12;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if ([v7 count] != 1)
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:*(a1 + 64) object:WeakRetained file:@"WFAction.m" lineNumber:2974 description:@"Should have only one session identifier"];
  }

  v18 = [v7 firstObject];
  v19 = *MEMORY[0x1E69E1428];
  v20 = [WeakRetained runningDelegate];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    v22 = [WeakRetained runningDelegate];
    v23 = [v22 currentRunningContextForAction:WeakRetained];

    v24 = [v23 runSource];
    v25 = v24;
    if (v24)
    {
      v26 = v24;

      v19 = v26;
    }
  }

  [*(a1 + 48) toastDurationForRunSource:v19];
  v28 = v27;
  v29 = getWFSessionKitLogObject();
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
  if (v28 == 0.0)
  {
    if (v30)
    {
      v32 = [WeakRetained identifier];
      *buf = 136315650;
      v38 = "[WFAction allowSessionKitSessionsIfNeededWithConfiguration:isManualInvocation:error:]_block_invoke_2";
      v39 = 2112;
      v40 = v18;
      v41 = 2114;
      v42 = v32;
      _os_log_impl(&dword_1CA256000, v29, OS_LOG_TYPE_DEFAULT, "%s We'd toast the session %@, but the action is asking for no toasting (see SessionConfiguration#ToastDuration key in the action definition %{public}@)", buf, 0x20u);
    }
  }

  else
  {
    if (v30)
    {
      v31 = [WeakRetained identifier];
      *buf = 136315650;
      v38 = "[WFAction allowSessionKitSessionsIfNeededWithConfiguration:isManualInvocation:error:]_block_invoke";
      v39 = 2112;
      v40 = v18;
      v41 = 2114;
      v42 = v31;
      _os_log_impl(&dword_1CA256000, v29, OS_LOG_TYPE_DEFAULT, "%s Asking the daemon to toast the session %@ for action %{public}@", buf, 0x20u);
    }

    if (v28 == -1.0)
    {
      v29 = 0;
    }

    else
    {
      v29 = [MEMORY[0x1E696AD98] numberWithDouble:v28];
    }

    v33 = [MEMORY[0x1E69E0938] standardClient];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __86__WFAction_allowSessionKitSessionsIfNeededWithConfiguration_isManualInvocation_error___block_invoke_583;
    v35[3] = &unk_1E837BA78;
    v36 = v8;
    [v33 toastSessionKitSessionWithIdentifier:v18 forDuration:v29 completion:v35];
  }

LABEL_15:
  v17 = *MEMORY[0x1E69E9840];
}

void __86__WFAction_allowSessionKitSessionsIfNeededWithConfiguration_isManualInvocation_error___block_invoke_586(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setSessionKitAssertion:0];
  v5 = getWFSessionKitLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[WFAction allowSessionKitSessionsIfNeededWithConfiguration:isManualInvocation:error:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Failed to start SessionKit session: %@", &v7, 0x16u);
  }

  [*(a1 + 32) action:WeakRetained didDecideRunningProgressIsAllowed:1];
  [WeakRetained finishRunningWithError:v3];

  v6 = *MEMORY[0x1E69E9840];
}

- (NSString)externalMetricsBundleIdentifier
{
  v2 = [(WFAction *)self displayableAppDescriptor];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (WFContactStore)contactStore
{
  v2 = [(WFAction *)self contentPermissionRequestor];
  v3 = [v2 contactStore];

  return v3;
}

- (void)setDefaultCoercionOptionsOnInputs
{
  v16 = *MEMORY[0x1E69E9840];
  [(WFAction *)self setDefaultCoercionOptionsOnContentCollection:self->_input];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(WFAction *)self processedParameters];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(WFAction *)self setDefaultCoercionOptionsOnContentCollection:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setDefaultCoercionOptionsOnContentCollection:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E6996CE8];
  v10 = *MEMORY[0x1E6997010];
  v5 = a3;
  v6 = [(WFAction *)self contentPermissionRequestor];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v4 optionsWithDictionary:v7];

  [v5 setDefaultCoercionOptions:v8];
  v9 = *MEMORY[0x1E69E9840];
}

- (id)minimumSupportedClientVersion
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(WFAction *)self containedVariables];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = @"411";
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(v2);
      }

      if ([*(*(&v10 + 1) + 8 * v7) requiresModernVariableSupport])
      {
        break;
      }

      if (v4 == ++v7)
      {
        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        v6 = @"0";
        break;
      }
    }
  }

  else
  {
    v6 = @"0";
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)runningViaSpotlight
{
  v3 = [(WFAction *)self runningDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(WFAction *)self runningDelegate];
  v6 = [v5 currentRunningContextForAction:self];

  v7 = [v6 runSource];
  v8 = [v7 isEqualToString:*MEMORY[0x1E69E1410]];

  return v8;
}

- (BOOL)runningInStepWiseExecutor
{
  v3 = [(WFAction *)self runningDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(WFAction *)self runningDelegate];
  v6 = [v5 currentRunningContextForAction:self];

  LOBYTE(v5) = [v6 isStepwise];
  return v5;
}

- (BOOL)requiresUserInteractionWhenRunWithInput:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self resourceManager];
  v6 = ([v5 currentlyRequiresResourceOfClass:objc_opt_class()] & 1) != 0 || !objc_msgSend(v5, "resourcesAvailable") || -[WFAction showsImplicitChooseFromListWhenRunWithInput:](self, "showsImplicitChooseFromListWhenRunWithInput:", v4);

  return v6;
}

- (BOOL)showsImplicitChooseFromListWhenRunWithInput:(id)a3
{
  if ([a3 numberOfItems] < 2 || -[WFAction inputsMultipleItems](self, "inputsMultipleItems"))
  {
    return 0;
  }

  v5 = [(WFAction *)self inputContentClasses];
  v4 = [v5 count] != 0;

  return v4;
}

- (NSArray)supportedAppIdentifiers
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [(WFAction *)self appDescriptor];
  v3 = [v2 bundleIdentifier];
  if (v3)
  {
    v4 = [v2 bundleIdentifier];
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)unlockAppProtectionWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self appDescriptor];
  v6 = [v5 bundleIdentifier];

  v7 = [(WFAction *)self userInterface];
  v8 = [v7 isRunningWithExternalUI];

  if (v8)
  {
    v9 = [(WFAction *)self userInterface];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__WFAction_unlockAppProtectionWithCompletionHandler___block_invoke;
    v15[3] = &unk_1E837EE10;
    v15[4] = self;
    v16 = v4;
    v10 = v4;
    [v9 handleAppProtectionRequestWithBundleIdentifier:v6 completionHandler:v15];
  }

  else
  {
    v10 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:v6];
    v11 = [MEMORY[0x1E698B0D8] sharedGuard];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__WFAction_unlockAppProtectionWithCompletionHandler___block_invoke_2;
    v13[3] = &unk_1E837F0F0;
    v14 = v4;
    v12 = v4;
    [v11 authenticateForSubject:v10 completion:v13];
  }
}

uint64_t __53__WFAction_unlockAppProtectionWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    [*(a1 + 32) finishRunningWithError:?];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (id)smartPromptSubtitleWithPreviousContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v8 = MEMORY[0x1E696AEC0];
    if (v7)
    {
      v9 = WFLocalizedString(@"Previously this shortcut was allowed to share %1$@ with “%2$@”.");
      [v8 localizedStringWithFormat:v9, v6, v7];
    }

    else
    {
      v9 = WFLocalizedString(@"Previously this shortcut was allowed to share %1$@.");
      [v8 localizedStringWithFormat:v9, v6, v12];
    }
    v10 = ;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = getWFSecurityLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    v12 = [(WFAction *)self identifier];
    *buf = 136315394;
    v22 = "[WFAction smartPromptWithContentDescription:contentDestination:workflowName:]";
    v23 = 2114;
    v24 = v12;
    _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_FAULT, "%s Action %{public}@ is presenting a smart prompt, but it does not have a custom smart prompt string.", buf, 0x16u);
  }

  if (v8)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = WFLocalizedString(@"Allow “%@” to share %@ with “%@”?");
    [v13 localizedStringWithFormat:v14, v10, v8, v9];
  }

  else
  {
    v15 = MEMORY[0x1E696AEC0];
    if (v9)
    {
      v14 = WFLocalizedString(@"Allow “%@” to access “%@”?");
      [v15 localizedStringWithFormat:v14, v10, v9, v20];
    }

    else
    {
      v14 = WFLocalizedString(@"Allow “%@” to access another app?");
      [v15 localizedStringWithFormat:v14, v10, v19, v20];
    }
  }
  v16 = ;

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)getContentDestinationWithCompletionHandler:(id)a3
{
  v7 = 0;
  v4 = a3;
  v5 = [(WFAction *)self contentDestinationWithError:&v7];
  v6 = v7;
  v4[2](v4, v5, v6);
}

- (id)contentDestinationWithError:(id *)a3
{
  v4 = [(WFAction *)self appDescriptor];
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = v4;
  v6 = [(WFAction *)self appDescriptor];
  v7 = [v6 bundleIdentifier];
  WFMCIsAppAccountBasedSourceForOpenIn(v7);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_3:
    v10 = [(WFAction *)self appDescriptor];
    if (!v10)
    {
      goto LABEL_10;
    }

    v11 = [(WFAction *)self locallyProcessesData];

    if (!v11)
    {
      v12 = [(WFAction *)self highRisk];
      v13 = MEMORY[0x1E6996C90];
      v14 = [(WFAction *)self appDescriptor];
      if (v12)
      {
        [v13 locationWithAppDescriptor:v14 promptingBehaviour:1];
      }

      else
      {
        [v13 locationWithAppDescriptor:v14];
      }
      v10 = ;

      goto LABEL_10;
    }
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (id)actionForAppIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self displayableAppDescriptor];
  v6 = [v5 bundleIdentifier];

  LODWORD(v5) = [v6 isEqualToString:v4];
  if (v5)
  {
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)snapInputParameterToVariable:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WFAction *)self inputParameter];
  if (!v5 || ![(WFAction *)self inputParameterUnlocked])
  {
    goto LABEL_18;
  }

  v6 = [v5 key];
  v7 = [(WFAction *)self parameterStateForKey:v6 fallingBackToDefaultValue:0];

  if (!v4)
  {
    goto LABEL_14;
  }

  v8 = getWFGeneralLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315650;
    v18 = "[WFAction snapInputParameterToVariable:]";
    v19 = 2114;
    v20 = v4;
    v21 = 2114;
    v22 = self;
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEFAULT, "%s Found input variable: %{public}@, for action: %{public}@", &v17, 0x20u);
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v9 = v7;
    v10 = [v9 variable];
    v11 = [v9 stateByReplacingVariable:v10 withVariable:v4];

    if (v11)
    {
      goto LABEL_15;
    }
  }

  v12 = [v5 stateClass];
  if (![(objc_class *)v12 instancesRespondToSelector:sel_initWithVariable_])
  {
    v13 = getWFGeneralLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromClass(v12);
      v17 = 136315394;
      v18 = "[WFAction snapInputParameterToVariable:]";
      v19 = 2114;
      v20 = v14;
      _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s Unsupported parameter state type for input variable: %{public}@", &v17, 0x16u);
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  v11 = [[v12 alloc] initWithVariable:v4];
LABEL_15:
  if (([v7 isEqual:v11] & 1) == 0)
  {
    v15 = [v5 key];
    [(WFAction *)self setParameterState:v11 forKey:v15];

    [(WFAction *)self setInputParameterUnlocked:1];
  }

LABEL_18:
  v16 = *MEMORY[0x1E69E9840];
}

- (void)snapInputParameterIfNecessary
{
  v3 = [(WFAction *)self inputParameter];
  if (v3)
  {
    v7 = v3;
    v4 = [(WFAction *)self inputParameterUnlocked];
    v3 = v7;
    if (v4)
    {
      v5 = [(WFAction *)self workflow];
      v6 = [(WFAction *)self inheritedInputVariableInWorkflow:v5];

      [(WFAction *)self snapInputParameterToVariable:v6];
      v3 = v7;
    }
  }
}

- (void)lockInputParameter
{
  v9 = *MEMORY[0x1E69E9840];
  if ([(WFAction *)self inputParameterUnlocked])
  {
    v3 = getWFGeneralLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[WFAction lockInputParameter]";
      v7 = 2114;
      v8 = self;
      _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_DEFAULT, "%s Locking input parameter of action: %{public}@", &v5, 0x16u);
    }

    [(WFAction *)self setInputParameterUnlocked:0];
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)unlockInputParameter
{
  if (![(WFAction *)self inputParameterUnlocked])
  {
    v3 = [(WFAction *)self inputParameter];
    if (v3)
    {
      v4 = v3;
      [(WFAction *)self setInputParameterUnlocked:1];
      v3 = v4;
    }
  }
}

- (BOOL)isLastAction
{
  v3 = [(WFAction *)self workflow];
  v4 = [v3 actions];

  if (v4)
  {
    v5 = [v4 indexOfObject:self];
    v6 = v5 == [v4 count] - 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isDisabledWhenRunOnDevice:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WFAction *)self resourceManager];
  v6 = [v5 resourceObjectsOfClass:objc_opt_class()];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (![*(*(&v29 + 1) + 8 * i) isAvailable])
        {
          v22 = 1;
          v14 = v7;
          goto LABEL_26;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = [(WFAction *)self resourceManager];
  v13 = [v12 resourceObjectsOfClass:objc_opt_class()];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    while (2)
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        if (![*(*(&v25 + 1) + 8 * j) isAvailable])
        {
          v22 = 1;
          v19 = v14;
          goto LABEL_25;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v19 = [(WFAction *)self disabledOnPlatforms];
  if ([v19 count])
  {
    v20 = [v4 idiom];
    if (v20 >= 7)
    {
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v21 = off_1E8378E58[v20];
      v22 = [v19 containsObject:v21];
    }
  }

  else
  {
    v22 = 0;
  }

LABEL_25:

LABEL_26:
  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (BOOL)requiresHandoffWhenRunWithUserInterfaceType:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self userInterface];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(WFAction *)self userInterface];
    v7 = [v6 shouldNotHandoff];

    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v8 = [(WFAction *)self resourceManager];
  v9 = [v8 currentlyRequiresResourceOfClass:objc_opt_class()];

  if (!v9)
  {
LABEL_8:
    LOBYTE(v11) = 0;
    goto LABEL_13;
  }

  v10 = [(WFAction *)self userInterfaceTypes];
  if ([v10 count])
  {
    v11 = [v10 containsObject:v4] ^ 1;
  }

  else if (v4)
  {
    LOBYTE(v11) = [v4 isEqualToString:*MEMORY[0x1E6997160]];
  }

  else
  {
    LOBYTE(v11) = 1;
  }

LABEL_13:
  return v11;
}

- (id)inheritedInputVariableInWorkflow:(id)a3 ignoringInputTypes:(BOOL)a4
{
  v5 = a3;
  v6 = [v5 inputAction];
  if (v6)
  {
    v7 = [v5 effectiveInputClasses];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 actionTree];
  v9 = [v8 inheritedInputVariableForAction:self workflowInputTypes:v7 ignoreInputTypes:0];

  return v9;
}

- (id)outputVariableWithVariableProvider:(id)a3 UUIDProvider:(id)a4
{
  v5 = a3;
  if ([(WFAction *)self isEligibleForOutputVariable])
  {
    v6 = [[WFActionOutputVariable alloc] initWithAction:self variableProvider:v5 aggrandizements:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEligibleForOutputVariable
{
  v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"is.workflow.actions.getvariable", @"is.workflow.actions.setvariable", @"is.workflow.actions.appendvariable", 0}];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = [(WFAction *)self mode]== 2;
  }

  else
  {
    v5 = [(WFAction *)self identifier];
    if (([v3 containsObject:v5] & 1) != 0 || -[WFAction inputPassthrough](self, "inputPassthrough"))
    {
      v4 = 0;
    }

    else
    {
      v6 = [(WFAction *)self outputContentClasses];
      v4 = [v6 count] != 0;
    }
  }

  return v4;
}

- (BOOL)canHandleInputOfContentClasses:(id)a3 withSupportedClasses:(id)a4 includingCoercedTypes:(BOOL)a5
{
  v5 = a5;
  v60 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v8 = a4;
  v9 = [v8 countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v53;
    v34 = *v53;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v53 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v52 + 1) + 8 * i);
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v14 = v7;
        v38 = [v14 countByEnumeratingWithState:&v48 objects:v58 count:16];
        if (!v38)
        {
          goto LABEL_41;
        }

        v39 = *v49;
        v35 = v10;
        while (2)
        {
          for (j = 0; j != v38; ++j)
          {
            if (*v49 != v39)
            {
              objc_enumerationMutation(v14);
            }

            v16 = *(*(&v48 + 1) + 8 * j);
            if (([v16 isSubclassOfClass:v13] & 1) != 0 || v16 == objc_opt_class())
            {
              goto LABEL_45;
            }

            if (v16 == objc_opt_class())
            {
              v46 = 0u;
              v47 = 0u;
              v44 = 0u;
              v45 = 0u;
              v19 = [v13 supportedTypes];
              v20 = [v19 countByEnumeratingWithState:&v44 objects:v57 count:16];
              if (v20)
              {
                v21 = v20;
                v33 = v5;
                v36 = v8;
                v37 = v7;
                v22 = *v45;
LABEL_20:
                v23 = 0;
                while (1)
                {
                  if (*v45 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = *(*(&v44 + 1) + 8 * v23);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass() & 1) != 0 && ([v24 isDeclared])
                  {
                    goto LABEL_44;
                  }

                  if (v21 == ++v23)
                  {
                    v21 = [v19 countByEnumeratingWithState:&v44 objects:v57 count:16];
                    if (v21)
                    {
                      goto LABEL_20;
                    }

LABEL_37:
                    v8 = v36;
                    v7 = v37;
                    v5 = v33;
                    goto LABEL_38;
                  }
                }
              }

              goto LABEL_38;
            }

            if (v13 == objc_opt_class())
            {
              v42 = 0u;
              v43 = 0u;
              v40 = 0u;
              v41 = 0u;
              v19 = [v16 allSupportedTypes];
              v25 = [v19 countByEnumeratingWithState:&v40 objects:v56 count:16];
              if (v25)
              {
                v26 = v25;
                v33 = v5;
                v36 = v8;
                v37 = v7;
                v27 = *v41;
LABEL_30:
                v28 = 0;
                while (1)
                {
                  if (*v41 != v27)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v29 = *(*(&v40 + 1) + 8 * v28);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass() & 1) != 0 && ([v29 isDeclared])
                  {
                    break;
                  }

                  if (v26 == ++v28)
                  {
                    v26 = [v19 countByEnumeratingWithState:&v40 objects:v56 count:16];
                    if (v26)
                    {
                      goto LABEL_30;
                    }

                    goto LABEL_37;
                  }
                }

LABEL_44:

                v8 = v36;
                v7 = v37;
LABEL_45:

                v30 = 1;
                goto LABEL_47;
              }

LABEL_38:

              continue;
            }

            if (v5)
            {
              v17 = [v16 supportedItemClasses];
              v18 = [v17 containsObject:v13];

              if (v18)
              {
                goto LABEL_45;
              }
            }
          }

          v11 = v34;
          v10 = v35;
          v38 = [v14 countByEnumeratingWithState:&v48 objects:v58 count:16];
          if (v38)
          {
            continue;
          }

          break;
        }

LABEL_41:
      }

      v10 = [v8 countByEnumeratingWithState:&v52 objects:v59 count:16];
      v30 = 0;
      if (!v10)
      {
        goto LABEL_47;
      }
    }
  }

  v30 = 0;
LABEL_47:

  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

- (BOOL)legacyBehaviorIgnoresOutputFromAction:(id)a3 inWorkflow:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 actions];
  v9 = [v8 indexOfObject:self];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v11 = [(WFAction *)self inputContentClasses];
    if ([(WFAction *)self containsVariableOfType:@"Input"]|| !v9 && [(WFAction *)self containsVariableOfType:@"ExtensionInput"])
    {
      LOBYTE(v10) = 0;
    }

    else
    {
      v27 = v11;
      v28 = v7;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v12 = [(WFAction *)self containedVariablesOfClass:objc_opt_class()];
      v13 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v30;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v30 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [*(*(&v29 + 1) + 8 * i) outputUUID];
            v18 = [v6 UUID];
            v19 = [v17 isEqualToString:v18];

            if (v19)
            {
              LOBYTE(v10) = 0;
              v11 = v27;
              v7 = v28;
              goto LABEL_18;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      if ([(WFAction *)self inputRequired])
      {
        LOBYTE(v10) = 0;
        v11 = v27;
        v7 = v28;
      }

      else
      {
        v7 = v28;
        v22 = [v28 actions];
        v11 = v27;
        if (v9 >= [v22 count] - 1)
        {
          v12 = 0;
        }

        else
        {
          v23 = [v28 actions];
          v12 = [v23 objectAtIndex:v9 + 1];
        }

        if (-[WFAction inputPassthrough](self, "inputPassthrough") && ![v12 legacyBehaviorIgnoresOutputFromAction:self inWorkflow:v28])
        {
          LOBYTE(v10) = 0;
        }

        else if ([v27 count])
        {
          if (v9)
          {
            v24 = [(WFAction *)self actionTree];
            v25 = [v24 possibleContentClassesForAction:v6];
          }

          else
          {
            v25 = [v28 effectiveInputClasses];
          }

          v26 = [(WFAction *)self inputContentClasses];
          v10 = ![(WFAction *)self canHandleInputOfContentClasses:v25 withSupportedClasses:v26];
        }

        else
        {
          LOBYTE(v10) = 1;
        }

LABEL_18:
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v10;
}

- (NSArray)outputContentClasses
{
  if ([(WFAction *)self inputPassthrough])
  {
    v3 = [(WFAction *)self inputContentClasses];
  }

  else
  {
    if ([(WFAction *)self isSubclassThatOverridesSelector:sel_outputTypes]|| (v4 = self->_outputContentClasses) == 0)
    {
      v5 = [(WFAction *)self outputTypes];
      v6 = [(WFAction *)self classesForTypeArray:v5 includeAllOutputTypes:0];
      outputContentClasses = self->_outputContentClasses;
      self->_outputContentClasses = v6;

      v4 = self->_outputContentClasses;
    }

    v3 = v4;
  }

  return v3;
}

- (NSArray)inputContentClasses
{
  inputContentClasses = self->_inputContentClasses;
  if (!inputContentClasses)
  {
    v4 = [(WFAction *)self inputTypes];
    v5 = [(WFAction *)self classesForTypeArray:v4 includeAllOutputTypes:1];
    v6 = self->_inputContentClasses;
    self->_inputContentClasses = v5;

    inputContentClasses = self->_inputContentClasses;
  }

  return inputContentClasses;
}

- (NSArray)specifiedOutputContentClasses
{
  if ([(WFAction *)self inputPassthrough])
  {
    [(WFAction *)self specifiedInputContentClasses];
  }

  else
  {
    [(WFAction *)self outputContentClasses];
  }
  v3 = ;

  return v3;
}

- (NSArray)specifiedInputContentClasses
{
  v3 = [(WFAction *)self inputTypes];
  v4 = [(WFAction *)self classesForTypeArray:v3 includeAllOutputTypes:0];

  return v4;
}

- (id)classesForTypeArray:(id)a3 includeAllOutputTypes:(BOOL)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v35 = [MEMORY[0x1E695DFA0] orderedSet];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    v9 = 0x1E6996000uLL;
    v10 = 0x1E6996000uLL;
    v11 = 0x1E6996000uLL;
    do
    {
      v12 = 0;
      v33 = v7;
      do
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v36 + 1) + 8 * v12);
        v14 = NSClassFromString(v13);
        if (v14)
        {
          v15 = v14;
          if ([(objc_class *)v14 isSubclassOfClass:objc_opt_class()])
          {
            [v35 addObject:v15];
            goto LABEL_18;
          }

          v16 = [MEMORY[0x1E6996ED0] typeWithClass:v15];
        }

        else
        {
          v16 = [MEMORY[0x1E69E0AF8] typeWithString:v13];
        }

        v17 = v16;
        v18 = [*(v9 + 3432) sharedRegistry];
        v19 = [v18 contentItemClassForType:v17];

        v20 = *(v10 + 3936);
        if (v19 == objc_opt_class() || (v21 = *(v11 + 3664), v19 == objc_opt_class()) || !a4)
        {
          if (v19)
          {
            [v35 addObject:v19];
          }
        }

        else
        {
          v22 = [*(v9 + 3432) sharedRegistry];
          v23 = [v22 contentItemClassesSupportingType:v17];
          v24 = v8;
          v25 = v11;
          v26 = v5;
          v27 = v9;
          v28 = v10;
          v29 = [v23 mutableCopy];

          [v29 removeObject:NSClassFromString(&cfstr_Wfworkflowcont.isa)];
          [v29 removeObject:objc_opt_class()];
          [v35 unionSet:v29];

          v10 = v28;
          v9 = v27;
          v5 = v26;
          v11 = v25;
          v8 = v24;
          v7 = v33;
        }

LABEL_18:
        ++v12;
      }

      while (v7 != v12);
      v7 = [v5 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v7);
  }

  v30 = [v35 array];

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

- (Class)contentItemClass
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"WFContentItemClass"];
  v4 = NSClassFromString(v3);

  return v4;
}

- (void)wasRemovedFromWorkflow:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  v5 = [(WFAction *)self resourceManager];
  v6 = [v5 resourceObjectsConformingToProtocol:&unk_1F4A9CC28];
  [v4 unionSet:v6];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [(WFAction *)self parameters];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [v12 resourceManager];
        v14 = [v13 resourceObjectsConformingToProtocol:&unk_1F4A9CC28];
        [v4 unionSet:v14];

        [v12 setActionResources:0];
        [v12 wasRemovedFromWorkflow];
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = v4;
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v21 + 1) + 8 * j) setWorkflow:{0, v21}];
      }

      v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v17);
  }

  [(WFAction *)self resetOutput];
  objc_storeWeak(&self->_workflow, 0);

  v20 = *MEMORY[0x1E69E9840];
}

- (void)wasAddedToWorkflow:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v24 = a3;
  if (!self->_parameters)
  {
    [(WFAction *)self initializeParametersWithLock];
  }

  v4 = objc_opt_new();
  v5 = [(WFAction *)self resourceManager];
  v6 = [v5 resourceObjectsConformingToProtocol:&unk_1F4A9CC28];
  [v4 unionSet:v6];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(WFAction *)self parameters];
  v7 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v12 = [v11 resourceManager];
        v13 = [v12 resourceObjectsConformingToProtocol:&unk_1F4A9CC28];
        [v4 unionSet:v13];

        [v11 wasAddedToWorkflow];
        v14 = [(WFAction *)self resourceManager];
        v15 = [objc_opt_class() referencedActionResourceClasses];
        v16 = [v14 resourceObjectsOfClasses:v15];

        [v11 setActionResources:v16];
        if ([v11 conformsToProtocol:&unk_1F4A9CC28])
        {
          [v4 addObject:v11];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v8);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = v4;
  v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
  v19 = v24;
  if (v18)
  {
    v20 = v18;
    v21 = *v27;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v26 + 1) + 8 * j) setWorkflow:{v19, v24}];
      }

      v20 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v20);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)wasAddedToWorkflowByUser:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = getWFGeneralLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[WFAction wasAddedToWorkflowByUser:]";
    v10 = 2114;
    v11 = self;
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEFAULT, "%s User added action %{public}@ to workflow", &v8, 0x16u);
  }

  v5 = [(WFAction *)self inputParameterKey];
  if (v5)
  {
    v6 = [(WFAction *)self parameterStateForKey:v5 fallingBackToDefaultValue:0];

    if (!v6)
    {
      [(WFAction *)self unlockInputParameter];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)configureResourcesForParameter:(id)a3
{
  v4 = [a3 resourceManager];
  WFConfigureParameterRelationResources(v4, self);
}

- (void)setGroupingIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self groupingIdentifier];
  v8 = v4;
  v6 = v5;
  if (v6 == v8)
  {

    goto LABEL_9;
  }

  if (!v8 || !v6)
  {

    goto LABEL_8;
  }

  v7 = [v8 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    [(WFAction *)self setSupplementalParameterValue:v8 forKey:@"GroupingIdentifier"];
  }

LABEL_9:
}

- (NSString)groupingIdentifier
{
  v3 = objc_opt_class();

  return [(WFAction *)self supplementalParameterValueForKey:@"GroupingIdentifier" ofClass:v3];
}

- (BOOL)outputIsRenamed
{
  v2 = [(WFAction *)self customOutputName];
  v3 = v2 != 0;

  return v3;
}

- (void)setOutputName:(id)a3
{
  [(WFAction *)self setSupplementalParameterValue:a3 forKey:@"CustomOutputName"];

  [(WFAction *)self nameUpdated];
}

- (NSString)outputName
{
  v3 = [(WFAction *)self customOutputName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(WFAction *)self localizedDefaultOutputName];
  }

  v6 = v5;

  return v6;
}

- (NSString)customOutputName
{
  v3 = objc_opt_class();

  return [(WFAction *)self supplementalParameterValueForKey:@"CustomOutputName" ofClass:v3];
}

- (id)generateUUIDIfNecessaryWithUUIDProvider:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self UUID];
  if (!v5)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = self;
    }

    v7 = v6;
    v5 = [(WFAction *)v7 generateOutputUUIDForAction:self];
    [(WFAction *)self setUUID:v5];
  }

  return v5;
}

- (void)setUUID:(id)a3
{
  v4 = [a3 copy];
  [(WFAction *)self setSupplementalParameterValue:v4 forKey:@"UUID"];
}

- (NSString)UUID
{
  v3 = objc_opt_class();

  return [(WFAction *)self supplementalParameterValueForKey:@"UUID" ofClass:v3];
}

- (void)setActionTree:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_actionTree != v5)
  {
    objc_storeStrong(&self->_actionTree, a3);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(WFAction *)self containedVariables];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v12 + 1) + 8 * i) variableProviderDidInvalidateOutputDetails:self];
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (WFWorkflowActionTree)actionTree
{
  actionTree = self->_actionTree;
  if (actionTree)
  {
    v3 = actionTree;
  }

  else
  {
    v4 = [(WFAction *)self workflow];
    v3 = [v4 actionTree];
  }

  return v3;
}

- (void)removeVariableObserver:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self actionTree];
  [v5 removeVariableObserver:v4];
}

- (void)addVariableObserver:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self actionTree];
  [v5 addVariableObserver:v4];
}

- (NSArray)workflowInputClasses
{
  WeakRetained = objc_loadWeakRetained(&self->_workflow);
  v3 = [WeakRetained effectiveInputClasses];

  return v3;
}

- (id)possibleContentClassesForVariableNamed:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self actionTree];
  v6 = [v5 indexOfAction:self];

  v7 = MEMORY[0x1E695DFB8];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = objc_opt_new();
  }

  else
  {
    v9 = [(WFAction *)self actionTree];
    v10 = [v9 possibleContentClassesForVariableNamed:v4 atIndex:v6];
    v8 = [v7 orderedSetWithArray:v10];
  }

  return v8;
}

- (id)actionsProvidingVariableName:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self actionTree];
  v6 = [v5 indexOfAction:self];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(WFAction *)self actionTree];
    v7 = [v8 actionsProvidingVariableNamed:v4 atIndex:v6];
  }

  return v7;
}

- (id)possibleContentClassesForVariableWithOutputUUID:(id)a3
{
  v4 = [(WFAction *)self actionProvidingVariableWithOutputUUID:a3];
  v5 = MEMORY[0x1E695DFB8];
  if (v4)
  {
    v6 = [(WFAction *)self actionTree];
    v7 = [v6 possibleContentClassesForAction:v4];
    v8 = [v5 orderedSetWithArray:v7];
  }

  else
  {
    v8 = objc_opt_new();
  }

  return v8;
}

- (id)actionProvidingVariableWithOutputUUID:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self actionTree];
  v6 = [v5 outputActionWithID:v4];

  return v6;
}

- (BOOL)isVariableWithOutputUUIDAvailable:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self actionTree];
  v6 = [v5 indexOfAction:self];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(WFAction *)self actionTree];
    v7 = [v8 isActionOutputWithIDAvailable:v4 atIndex:v6];
  }

  return v7;
}

- (BOOL)isVariableWithNameAvailable:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self actionTree];
  v6 = [v5 indexOfAction:self];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = [(WFAction *)self actionTree];
    v7 = [v8 isVariableNameAvailable:v4 atIndex:v6];
  }

  return v7;
}

- (BOOL)hasAvailableActionOutputVariables
{
  v2 = [(WFAction *)self availableOutputActions];
  v3 = [v2 count] != 0;

  return v3;
}

- (NSArray)availableOutputActions
{
  v3 = [(WFAction *)self actionTree];
  v4 = [v3 indexOfAction:self];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v6 = [(WFAction *)self actionTree];
    v5 = [v6 availableOutputActionsAtIndex:v4];
  }

  return v5;
}

- (NSArray)availableVariableNames
{
  v3 = [(WFAction *)self actionTree];
  v4 = [v3 indexOfAction:self];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v6 = [(WFAction *)self actionTree];
    v5 = [v6 availableVariableNamesAtIndex:v4];
  }

  return v5;
}

- (id)generateOutputUUIDForAction:(id)a3
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];

  return v4;
}

- (void)iconUpdated
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __23__WFAction_iconUpdated__block_invoke;
  v2[3] = &unk_1E8374EA0;
  v2[4] = self;
  [(WFAction *)self enumerateObservers:v2];
}

void __23__WFAction_iconUpdated__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 actionIconDidChange:*(a1 + 32)];
  }
}

- (void)enumerateObservers:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_observersLock);
  v5 = [(WFAction *)self eventObservers];
  v6 = [v5 allObjects];

  os_unfair_lock_unlock(&self->_observersLock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v4[2](v4, *(*(&v13 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)removeEventObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_observersLock);
  v5 = [(WFAction *)self eventObservers];
  [v5 removeObject:v4];

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)addEventObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_observersLock);
  v5 = [(WFAction *)self eventObservers];
  [v5 addObject:v4];

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)visibleParametersUpdated
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __36__WFAction_visibleParametersUpdated__block_invoke;
  v2[3] = &unk_1E8374EA0;
  v2[4] = self;
  [(WFAction *)self enumerateObservers:v2];
}

void __36__WFAction_visibleParametersUpdated__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 actionVisibleParametersDidChange:*(a1 + 32)];
  }
}

- (void)reloadAuxiliaryButton
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __33__WFAction_reloadAuxiliaryButton__block_invoke;
  v2[3] = &unk_1E8374EA0;
  v2[4] = self;
  [(WFAction *)self enumerateObservers:v2];
}

void __33__WFAction_reloadAuxiliaryButton__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 actionReloadAuxiliaryButton:*(a1 + 32)];
  }
}

- (void)outputDetailsUpdated
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __32__WFAction_outputDetailsUpdated__block_invoke;
  v2[3] = &unk_1E8374EA0;
  v2[4] = self;
  [(WFAction *)self enumerateObservers:v2];
}

void __32__WFAction_outputDetailsUpdated__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 actionOutputDetailsDidChange:*(a1 + 32)];
  }
}

- (void)nameUpdated
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __23__WFAction_nameUpdated__block_invoke;
  v2[3] = &unk_1E8374EA0;
  v2[4] = self;
  [(WFAction *)self enumerateObservers:v2];
}

void __23__WFAction_nameUpdated__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 actionNameDidChange:*(a1 + 32)];
  }
}

- (BOOL)prefersActionAttribution
{
  v3 = [(WFAction *)self appDefinition];
  if (v3)
  {
    v4 = [(WFAction *)self appDefinition];
    v5 = [v4 objectForKey:*MEMORY[0x1E69E0908]];
    v6 = [v5 isEqualToString:*MEMORY[0x1E69E0FB0]] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)requestInterfacePresentationWithCompletionHandler:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WFAction *)self userInterfaceClasses];
  if (![v5 count])
  {
    goto LABEL_8;
  }

  v6 = [(WFAction *)self userInterface];
  v7 = [v6 isRunningWithSiriUI];

  if (!v7)
  {
    v10 = [(WFAction *)self userInterface];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(WFAction *)self userInterface];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __62__WFAction_requestInterfacePresentationWithCompletionHandler___block_invoke;
      v16[3] = &unk_1E83752B8;
      v16[4] = self;
      v17 = v4;
      [v12 requestActionInterfacePresentationForActionClassName:v14 classNamesByType:v5 completionHandler:v16];

      goto LABEL_9;
    }

LABEL_8:
    (*(v4 + 2))(v4, 0, 0);
    goto LABEL_9;
  }

  v8 = getWFWorkflowExecutionLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[WFAction requestInterfacePresentationWithCompletionHandler:]";
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEFAULT, "%s Action running in Siri needs to display UI, punching to Shortcuts", buf, 0xCu);
  }

  v9 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
  (*(v4 + 2))(v4, 0, v9);

LABEL_9:
  v15 = *MEMORY[0x1E69E9840];
}

void __62__WFAction_requestInterfacePresentationWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) isRunning])
  {
    [*(a1 + 32) setActionUserInterface:v5];
    v7 = [*(a1 + 32) workQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__WFAction_requestInterfacePresentationWithCompletionHandler___block_invoke_467;
    block[3] = &unk_1E837ECE0;
    v15 = *(a1 + 40);
    v13 = v5;
    v14 = v6;
    dispatch_async(v7, block);

    v8 = v15;
  }

  else
  {
    v9 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[WFAction requestInterfacePresentationWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_DEFAULT, "%s Action is not running during the completion of a UI presentation request, returning with user cancelled error", buf, 0xCu);
    }

    v10 = *(a1 + 40);
    v8 = [MEMORY[0x1E696ABC0] userCancelledError];
    (*(v10 + 16))(v10, 0, v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setOutput:(id)a3 onVariableSource:(id)a4
{
  v13 = a3;
  v6 = a4;
  if ([(WFAction *)self runningInStepWiseExecutor])
  {
    v7 = [(WFAction *)self generateUUIDIfNecessaryWithUUIDProvider:0];
    [(WFAction *)self setUUID:v7];

    v8 = [(WFAction *)self UUID];
    v9 = v8;
LABEL_6:
    v12 = [v8 stringByAppendingString:@"-output"];
    [v6 setContent:v13 forVariableWithName:v12];

    goto LABEL_7;
  }

  v9 = [(WFAction *)self UUID];
  if (v9)
  {
    v10 = [(WFAction *)self actionTree];
    v11 = [v10 outputActionWithID:v9];

    if (v11)
    {
      v8 = v9;
      goto LABEL_6;
    }
  }

LABEL_7:
}

- (WFContentAttributionTracker)contentAttributionTracker
{
  contentAttributionTracker = self->_contentAttributionTracker;
  if (!contentAttributionTracker)
  {
    v4 = objc_alloc_init(WFContentAttributionTracker);
    v5 = self->_contentAttributionTracker;
    self->_contentAttributionTracker = v4;

    contentAttributionTracker = self->_contentAttributionTracker;
  }

  return contentAttributionTracker;
}

- (WFContentCollection)output
{
  output = self->_output;
  if (!output)
  {
    v4 = objc_opt_new();
    v5 = self->_output;
    self->_output = v4;

    output = self->_output;
  }

  return output;
}

- (void)resetOutput
{
  [(WFAction *)self setOutput:0];

  [(WFAction *)self setProgress:0];
}

- (void)cancel
{
  v3 = [MEMORY[0x1E696ABC0] userCancelledError];
  [(WFAction *)self finishRunningWithError:v3];
}

- (void)dismissPresentedContentWithCompletionHandler:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getWFGeneralLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[WFAction dismissPresentedContentWithCompletionHandler:]";
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Dismissing presented content", &v10, 0xCu);
  }

  v6 = [(WFAction *)self userInterface];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(WFAction *)self userInterface];
    [v8 dismissPresentedContentWithCompletionHandler:v4];
  }

  else
  {
    v4[2](v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_finishRunningWithError:(id)a3
{
  v77[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WFAction *)self effectiveWorkQueue];
  dispatch_assert_queue_V2(v5);

  if ([(WFAction *)self isRunning])
  {
    v6 = [v4 domain];
    v7 = *MEMORY[0x1E6997158];
    if ([v6 isEqualToString:*MEMORY[0x1E6997158]])
    {
      v8 = [v4 code];

      if (!v8)
      {
        v9 = objc_opt_new();
        v10 = WFLocalizedString(@"This action could not be run with the current user interface.");
        [v9 setObject:v10 forKey:*MEMORY[0x1E696A578]];

        v11 = [(WFAction *)self input];
        [v9 setValue:v11 forKey:@"ActionInput"];

        v12 = [(WFAction *)self processedParameters];
        [v9 setValue:v12 forKey:@"ActionProcessedParameters"];

        v13 = MEMORY[0x1E696ABC0];
        v14 = v7;
        v15 = 0;
LABEL_13:
        v31 = [v13 errorWithDomain:v14 code:v15 userInfo:v9];
LABEL_14:
        v25 = v31;
LABEL_15:

        v4 = v25;
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
    }

    if ([v4 wf_isUnsupportedOnPlatformError])
    {
      v16 = [v4 userInfo];
      v9 = [v16 mutableCopy];

      v17 = *MEMORY[0x1E696A578];
      v18 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696A578]];

      if (!v18)
      {
        v19 = [(WFAction *)self localizedName];
        v20 = [v4 wf_localizedErrorStringWithActionName:v19];
        [v9 setValue:v20 forKey:v17];

        v21 = [(WFAction *)self input];
        [v9 setValue:v21 forKey:@"ActionInput"];

        v22 = [(WFAction *)self processedParameters];
        [v9 setValue:v22 forKey:@"ActionProcessedParameters"];
      }

      v23 = MEMORY[0x1E696ABC0];
      v24 = [v4 domain];
      v25 = [v23 errorWithDomain:v24 code:objc_msgSend(v4 userInfo:{"code"), v9}];

      v4 = v24;
      goto LABEL_15;
    }

    v26 = [v4 domain];
    if ([v26 isEqualToString:@"WFActionErrorDomain"])
    {
      v27 = [v4 code];

      if (v27 == 2)
      {
        v9 = objc_opt_new();
        v28 = WFLocalizedString(@"This action cannot be run in the current environment.");
        [v9 setObject:v28 forKey:*MEMORY[0x1E696A578]];

        v29 = [(WFAction *)self input];
        [v9 setValue:v29 forKey:@"ActionInput"];

        v30 = [(WFAction *)self processedParameters];
        [v9 setValue:v30 forKey:@"ActionProcessedParameters"];

        v13 = MEMORY[0x1E696ABC0];
        v14 = @"WFActionErrorDomain";
        v15 = 2;
        goto LABEL_13;
      }
    }

    else
    {
    }

    v9 = [v4 domain];
    if (![v9 isEqual:*MEMORY[0x1E6997038]])
    {
      goto LABEL_16;
    }

    v56 = [v4 code];

    if (v56)
    {
LABEL_17:
      [(WFAction *)self setRunning:0];
      [(WFAction *)self setActionUserInterface:0];
      effectiveWorkQueue = self->_effectiveWorkQueue;
      self->_effectiveWorkQueue = 0;

      v33 = [(WFAction *)self sessionKitAssertion];

      if (v33)
      {
        v34 = getWFSessionKitLogObject();
        v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
        if (v4)
        {
          if (v35)
          {
            *buf = 136315138;
            v73 = "[WFAction _finishRunningWithError:]";
            _os_log_impl(&dword_1CA256000, v34, OS_LOG_TYPE_DEFAULT, "%s We finished with an error, and we were holding a SessionKit assertion. Letting it go.", buf, 0xCu);
          }

          [(WFAction *)self setSessionKitAssertion:0];
        }

        else
        {
          if (v35)
          {
            *buf = 136315138;
            v73 = "[WFAction _finishRunningWithError:]";
            _os_log_impl(&dword_1CA256000, v34, OS_LOG_TYPE_DEFAULT, "%s Action finished running, and we seem to be holding a SessionKit assertion. Starting a timeout to invalidate it if we're still waiting on the app...", buf, 0xCu);
          }

          v36 = [(WFAction *)self sessionKitAssertion];
          [v36 startTimeoutTimer];
        }
      }

      if (([objc_opt_class() outputIsExemptFromTaintTrackingInheritance] & 1) != 0 || -[WFAction inputPassthrough](self, "inputPassthrough"))
      {
        goto LABEL_40;
      }

      v37 = [(WFAction *)self contentAttributionTracker];
      v38 = [v37 trackedAttributionSet];

      v39 = [(WFAction *)self appDescriptor];

      if (v39)
      {
        v40 = [(WFAction *)self appDescriptor];
        v41 = [v40 bundleIdentifier];
        WFMCIsAppAccountBasedSourceForOpenIn(v41);
        v43 = v42;

        if ((v43 & 1) == 0)
        {
          v44 = MEMORY[0x1E6996D38];
          v77[0] = v38;
          v45 = MEMORY[0x1E6996D30];
          v46 = [(WFAction *)self outputDisclosureLevel];
          v47 = MEMORY[0x1E6996C90];
          v48 = [(WFAction *)self appDescriptor];
          v67 = [v47 locationWithAppDescriptor:v48];
          v49 = MEMORY[0x1E695DFB8];
          v69 = [(WFAction *)self output];
          v68 = [v69 items];
          v66 = [v68 if_map:&__block_literal_global_459];
          v50 = [v49 orderedSetWithArray:v66];
          v51 = [v45 attributionWithDisclosureLevel:v46 origin:v67 originalItemIdentifiers:v50];
          v76 = v51;
          v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
          v53 = [v44 attributionSetWithAttributions:v52];
          v77[1] = v53;
          v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];
          v55 = [v44 attributionSetByMergingAttributionSets:v54];

          v38 = v55;
LABEL_38:
        }
      }

      else
      {
        v48 = [(WFAction *)self output];
        if (![v48 numberOfItems])
        {
          goto LABEL_38;
        }

        v58 = [(WFAction *)self outputDisclosureLevel];

        if (v58 == 1)
        {
          v48 = getWFWorkflowExecutionLogObject();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
          {
            v59 = [(WFAction *)self identifier];
            *buf = 136315394;
            v73 = "[WFAction _finishRunningWithError:]";
            v74 = 2112;
            v75 = v59;
            _os_log_impl(&dword_1CA256000, v48, OS_LOG_TYPE_FAULT, "%s Action %@ produces private output and is not exempt from taint tracking, but is missing an appIdentifier", buf, 0x16u);
          }

          goto LABEL_38;
        }
      }

      v60 = [(WFAction *)self output];
      v61 = [v60 collectionByMergingAttributionSet:v38];
      [(WFAction *)self setOutput:v61];

LABEL_40:
      v62 = [(WFAction *)self output];
      [(WFAction *)self setDefaultCoercionOptionsOnContentCollection:v62];

      v63 = [(WFAction *)self output];
      v64 = [(WFAction *)self variableSource];
      [(WFAction *)self setOutput:v63 onVariableSource:v64];

      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __36__WFAction__finishRunningWithError___block_invoke_460;
      v70[3] = &unk_1E837F870;
      v70[4] = self;
      v4 = v4;
      v71 = v4;
      [(WFAction *)self dismissPresentedContentWithCompletionHandler:v70];

      goto LABEL_41;
    }

    v57 = MEMORY[0x1E6996D58];
    v9 = [(WFAction *)self localizedName];
    v31 = [v57 populateBadCoercionError:v4 withResponsibleComponent:v9];
    goto LABEL_14;
  }

LABEL_41:

  v65 = *MEMORY[0x1E69E9840];
}

void __36__WFAction__finishRunningWithError___block_invoke_460(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__WFAction__finishRunningWithError___block_invoke_2;
  block[3] = &unk_1E837F870;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v3;
  dispatch_async(v2, block);

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__WFAction__finishRunningWithError___block_invoke_3;
  v4[3] = &unk_1E837FA70;
  v4[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

void __36__WFAction__finishRunningWithError___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[29];
  if (v3)
  {
    v4 = [v2 output];
    (*(v3 + 16))(v3, v4, *(a1 + 40));

    v2 = *(a1 + 32);
    v5 = v2[29];
  }

  else
  {
    v5 = 0;
  }

  v2[29] = 0;
}

uint64_t __36__WFAction__finishRunningWithError___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__WFAction__finishRunningWithError___block_invoke_4;
  v3[3] = &unk_1E8374EA0;
  v3[4] = v1;
  return [v1 enumerateObservers:v3];
}

void __36__WFAction__finishRunningWithError___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 actionRunningStateDidChange:*(a1 + 32)];
  }
}

- (void)finishRunningWithError:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self effectiveWorkQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__WFAction_finishRunningWithError___block_invoke;
  v7[3] = &unk_1E837F870;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (id)parameterValueForKey:(id)a3 ofClass:(Class)a4
{
  v6 = a3;
  v7 = [(WFAction *)self processedParameters];
  v8 = [v7 objectForKey:v6];

  v9 = WFEnforceClass_8714(v8, a4);

  return v9;
}

- (void)prepareToProcessWithCompletionHandler:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__WFAction_prepareToProcessWithCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E837FA10;
  aBlock[4] = self;
  v11 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__WFAction_prepareToProcessWithCompletionHandler___block_invoke_3;
  v8[3] = &unk_1E837FA10;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(WFAction *)self resolveAppDescriptorIfNecessary:v8];
}

void __50__WFAction_prepareToProcessWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__WFAction_prepareToProcessWithCompletionHandler___block_invoke_2;
  v7[3] = &unk_1E837E1F8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __50__WFAction_prepareToProcessWithCompletionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50__WFAction_prepareToProcessWithCompletionHandler___block_invoke_4;
    v6[3] = &unk_1E837BE38;
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    [v5 preloadDefaultParameterStatesIfNecessaryWithCompletionHandler:v6];
  }
}

- (void)checkUserInterfaceAndRun
{
  if ([(WFAction *)self isRunning])
  {
    v3 = [(WFAction *)self effectiveWorkQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__WFAction_checkUserInterfaceAndRun__block_invoke;
    block[3] = &unk_1E837FA70;
    block[4] = self;
    dispatch_async(v3, block);
  }
}

void __36__WFAction_checkUserInterfaceAndRun__block_invoke(uint64_t a1)
{
  v27[1] = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) isRunning])
  {
    goto LABEL_5;
  }

  v2 = [*(a1 + 32) app];
  v3 = [v2 isRestricted];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A578];
    v6 = MEMORY[0x1E696AEC0];
    v7 = WFLocalizedString(@"This action could not be run because “%@” is restricted.");
    v8 = [*(a1 + 32) appDescriptor];
    v9 = [v8 localizedName];
    v10 = [v6 localizedStringWithFormat:v7, v9];
    v27[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v12 = [v5 errorWithDomain:@"WFActionErrorDomain" code:7 userInfo:v11];
    [v4 finishRunningWithError:v12];

LABEL_4:
LABEL_5:
    v13 = *MEMORY[0x1E69E9840];
    return;
  }

  if (![*(a1 + 32) highRisk] || +[WFShortcutsSecuritySettings areScriptingActionsEnabled](WFShortcutsSecuritySettings, "areScriptingActionsEnabled") || (objc_msgSend(*(a1 + 32), "requiresRemoteExecution") & 1) != 0 || (objc_msgSend(*(a1 + 32), "runningViaSpotlight") & 1) != 0)
  {
    v14 = [*(a1 + 32) requiresRemoteExecution];
    v15 = *(a1 + 32);
    if (!v14)
    {
      v17 = [*(a1 + 32) userInterface];
      v7 = [v17 userInterfaceType];

      if ([*(a1 + 32) requiresHandoffWhenRunWithUserInterfaceType:v7])
      {
        v18 = *(a1 + 32);
        v19 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
        [v18 finishRunningWithError:v19];
      }

      else
      {
        v20 = *(a1 + 32);
        v21 = [v20 effectiveWorkQueue];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __36__WFAction_checkUserInterfaceAndRun__block_invoke_2;
        v25[3] = &unk_1E837FA70;
        v25[4] = *(a1 + 32);
        [WFActionRateLimiter performAction:v20 onQueue:v21 withBlock:v25];
      }

      goto LABEL_4;
    }

    v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFActionErrorDomain" code:2 userInfo:0];
    [v15 finishRunningWithError:?];
  }

  else
  {
    v22 = *(a1 + 32);
    v24 = [v22 localizedName];
    v23 = [WFShortcutsSecuritySettings scripingActionDisabledErrorWithActionName:?];
    [v22 finishRunningWithError:v23];
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __36__WFAction_checkUserInterfaceAndRun__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__WFAction_checkUserInterfaceAndRun__block_invoke_3;
  v3[3] = &unk_1E8379BE0;
  v3[4] = v1;
  return [v1 requestUnlockIfNeeded:v3];
}

void __36__WFAction_checkUserInterfaceAndRun__block_invoke_3(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = [v3 runningDelegate];
    if ([*(a1 + 32) mightSuppressRunningProgress] & 1) == 0 && (objc_opt_respondsToSelector())
    {
      [v4 action:*(a1 + 32) didDecideRunningProgressIsAllowed:1];
    }

    v5 = *(a1 + 32);
    v9 = 0;
    v6 = [v5 takeSessionKitAssertionIfNeededWithError:&v9];
    v7 = v9;
    v8 = *(a1 + 32);
    if (v6)
    {
      [v8 runAsynchronouslyWithInput:v8[18]];
    }

    else
    {
      [v8 finishRunningWithError:v7];
    }
  }

  else
  {

    [v3 finishRunningWithError:?];
  }
}

- (void)performDataAndHardwareAccessChecksAndRun
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __52__WFAction_performDataAndHardwareAccessChecksAndRun__block_invoke;
  v2[3] = &unk_1E837CAA0;
  v2[4] = self;
  [(WFAction *)self promptForAudioRecordingPermissionIfNeededWithCompletionBlock:v2];
}

void __52__WFAction_performDataAndHardwareAccessChecksAndRun__block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v4 = [*(a1 + 32) userInterface];
    v5 = [*(a1 + 32) runningDelegate];
    v6 = [v5 contentItemCache];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52__WFAction_performDataAndHardwareAccessChecksAndRun__block_invoke_2;
    v8[3] = &unk_1E837E5E0;
    v8[4] = *(a1 + 32);
    [v2 performDataAccessChecksWithUserInterface:v4 contentItemCache:v6 completionHandler:v8];
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] userCancelledError];
    [v2 finishRunningWithError:v7];
  }
}

void __52__WFAction_performDataAndHardwareAccessChecksAndRun__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    if ([v3 code] == 3)
    {
      v4 = 0;
    }

    else
    {
      v4 = v5;
    }

    [*(a1 + 32) finishRunningWithError:v4];
  }

  else
  {
    [*(a1 + 32) setDefaultCoercionOptionsOnInputs];
    [*(a1 + 32) checkUserInterfaceAndRun];
  }
}

- (void)promptForAudioRecordingPermissionIfNeededWithCompletionBlock:(id)a3
{
  v4 = a3;
  if ([(WFAction *)self mightStartAudioRecording])
  {
    v5 = [(WFAction *)self runningDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(WFAction *)self runningDelegate];
      v8 = [v7 currentRunningContextForAction:self];

      if (v8)
      {
        v9 = [(WFAction *)self userInterface];

        if (v9)
        {
          v10 = [v8 automationType];

          if (v10)
          {
            v11 = [MEMORY[0x1E6996C70] alertWithPreferredStyle:0];
            v12 = [(WFAction *)self localizedName];
            [v11 setTitle:v12];

            v13 = MEMORY[0x1E696AEC0];
            v14 = WFLocalizedString(@"Allow “%@” to start an audio recording?");
            v15 = [(WFAction *)self localizedName];
            v16 = [v13 localizedStringWithFormat:v14, v15];
            [v11 setMessage:v16];

            v17 = MEMORY[0x1E6996C78];
            v26[0] = MEMORY[0x1E69E9820];
            v26[1] = 3221225472;
            v26[2] = __73__WFAction_promptForAudioRecordingPermissionIfNeededWithCompletionBlock___block_invoke;
            v26[3] = &unk_1E837F4E8;
            v18 = v4;
            v27 = v18;
            v19 = [v17 cancelButtonWithHandler:v26];
            [v11 addButton:v19];

            v20 = MEMORY[0x1E6996C78];
            v21 = WFLocalizedString(@"Allow");
            v24[0] = MEMORY[0x1E69E9820];
            v24[1] = 3221225472;
            v24[2] = __73__WFAction_promptForAudioRecordingPermissionIfNeededWithCompletionBlock___block_invoke_2;
            v24[3] = &unk_1E837F4E8;
            v25 = v18;
            v22 = [v20 buttonWithTitle:v21 style:0 preferred:1 handler:v24];
            [v11 addButton:v22];

            v23 = [(WFAction *)self userInterface];
            [v23 presentAlert:v11];
          }

          else
          {
            (*(v4 + 2))(v4, 1);
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    (*(v4 + 2))(v4, 0);
LABEL_10:

    goto LABEL_11;
  }

  (*(v4 + 2))(v4, 1);
LABEL_11:
}

- (void)performDeletionAuthorizationChecksWithUserInterface:(id)a3 contentItemCache:(id)a4 completionHandler:(id)a5
{
  v68 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  if (![(WFAction *)self shouldDisableSmartPromptChecks])
  {
    if (![(WFAction *)self deletesInput])
    {
      goto LABEL_12;
    }

    if ([(WFAction *)self deletesInput]&& ![(WFAction *)self contentItemClass])
    {
      v9 = getWFSecurityLogObject();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_5;
      }

      *buf = 136315138;
      v67 = "[WFAction performDeletionAuthorizationChecksWithUserInterface:contentItemCache:completionHandler:]";
      v10 = "%s deletesInput was set to YES, but no contentItemClass was specified";
      v11 = v9;
      v12 = OS_LOG_TYPE_FAULT;
      goto LABEL_4;
    }

    v13 = [(WFAction *)self itemsBeingDeleted];
    v14 = [v13 numberOfItems];
    if (!v14)
    {
      v8[2](v8, 0);
LABEL_53:

      goto LABEL_54;
    }

    v15 = v14;
    v60 = v7;
    v61 = v13;
    v16 = [(WFAction *)self workflow];
    v17 = [v16 reference];
    if (v17)
    {
      v18 = [(WFAction *)self workflow];
      v19 = [v18 reference];
    }

    else
    {
      v18 = +[WFDatabaseProxy defaultDatabase];
      v20 = [(WFAction *)self workflow];
      v21 = [v20 workflowID];
      v19 = [v18 referenceForWorkflowID:v21];
    }

    v22 = +[WFDatabaseProxy defaultDatabase];
    v23 = NSStringFromClass([(WFAction *)self contentItemClass]);
    v24 = [(WFAction *)self UUID];
    v25 = [(WFAction *)self identifier];
    v26 = [(WFAction *)self workflow];
    v27 = [v26 actions];
    v65 = 0;
    v62 = v19;
    v28 = [v22 currentDeletionAuthorizationStatusWithContentItemClassName:v23 actionUUID:v24 actionIdentifier:v25 actionIndex:objc_msgSend(v27 count:"indexOfObject:" reference:self) error:{v15, v19, &v65}];
    v59 = v65;

    v29 = [v28 actionUUID];
    [(WFAction *)self setUUID:v29];

    v30 = [v28 status];
    LODWORD(v25) = [v30 isEqualToString:@"Restricted"];

    if (v25)
    {
      v31 = getWFSecurityLogObject();
      v7 = v60;
      v13 = v61;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v67 = "[WFAction performDeletionAuthorizationChecksWithUserInterface:contentItemCache:completionHandler:]";
        _os_log_impl(&dword_1CA256000, v31, OS_LOG_TYPE_INFO, "%s Stopping action because exfiltration is restricted", buf, 0xCu);
      }

      v32 = [v28 localizedExfiltrationRestrictedError];
LABEL_28:
      v40 = v32;
      v8[2](v8, v32);

      v36 = v62;
LABEL_52:

      goto LABEL_53;
    }

    v7 = v60;
    v13 = v61;
    if (+[WFShortcutsSecuritySettings allowsDeletingWithoutConfirmation])
    {
      v33 = [v28 status];
      v34 = [v33 isEqualToString:@"Allow"];

      if (v34)
      {
        v35 = getWFSecurityLogObject();
        v36 = v62;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v67 = "[WFAction performDeletionAuthorizationChecksWithUserInterface:contentItemCache:completionHandler:]";
          _os_log_impl(&dword_1CA256000, v35, OS_LOG_TYPE_DEBUG, "%s Executing action because flag in Preferences is on and deletion authorization was previously approved", buf, 0xCu);
        }

        v8[2](v8, 0);
        goto LABEL_52;
      }
    }

    v37 = [v28 status];
    v38 = [v37 isEqualToString:@"Disallow"];

    if (v38)
    {
      v39 = getWFSecurityLogObject();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v67 = "[WFAction performDeletionAuthorizationChecksWithUserInterface:contentItemCache:completionHandler:]";
        _os_log_impl(&dword_1CA256000, v39, OS_LOG_TYPE_INFO, "%s Stopping action because deletion authorization was previously denied", buf, 0xCu);
      }

      v32 = [v28 deniedPermissionsError];
      goto LABEL_28;
    }

    v41 = @"Shortcut";
    v42 = @"Shortcut";
    v36 = v62;
    if ([(WFAction *)self isRunningInSiriUserInterface])
    {
      v43 = getWFSecurityLogObject();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v67 = "[WFAction performDeletionAuthorizationChecksWithUserInterface:contentItemCache:completionHandler:]";
        _os_log_impl(&dword_1CA256000, v43, OS_LOG_TYPE_DEBUG, "%s Deletion authorization prompt is being presented in Siri", buf, 0xCu);
      }

      v41 = @"Siri";
      v44 = @"Siri";
    }

    v45 = [[WFSmartPromptConfiguration alloc] initWithDeletionAuthorizationState:v28 contentCollection:v61 action:self reference:v62 source:v41];
    if (!v45)
    {
      v52 = getWFWorkflowExecutionLogObject();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v67 = "[WFAction performDeletionAuthorizationChecksWithUserInterface:contentItemCache:completionHandler:]";
        _os_log_impl(&dword_1CA256000, v52, OS_LOG_TYPE_ERROR, "%s Failed to init WFSmartPromptConfiguration for deletion authorization", buf, 0xCu);
      }

      v53 = [(WFAction *)self workflow];
      v54 = [v53 name];
      v55 = WFRunnerFailureErrorMessage(v54);
      (v8)[2](v8, v55);

      v13 = v61;
      goto LABEL_50;
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v56 = getWFSecurityLogObject();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v67 = "[WFAction performDeletionAuthorizationChecksWithUserInterface:contentItemCache:completionHandler:]";
        _os_log_impl(&dword_1CA256000, v56, OS_LOG_TYPE_ERROR, "%s Current UI does not support setting deletion authorizations", buf, 0xCu);
      }

      v57 = +[WFSmartPromptState localizedUnsupportedEnvironmentError];
      (v8)[2](v8, v57);

      goto LABEL_51;
    }

    v46 = [(WFAction *)self userInterface];
    if (objc_opt_respondsToSelector())
    {
      v47 = [(WFAction *)self userInterface];
      v48 = [v47 requestedFromAnotherDevice];

      if (v48)
      {
        v49 = [(WFAction *)self userInterface];
        v50 = objc_opt_respondsToSelector();

        if (v50)
        {
          v51 = [(WFAction *)self userInterface];
          v64[0] = MEMORY[0x1E69E9820];
          v64[1] = 3221225472;
          v64[2] = __99__WFAction_performDeletionAuthorizationChecksWithUserInterface_contentItemCache_completionHandler___block_invoke;
          v64[3] = &unk_1E8375270;
          v64[4] = self;
          v64[5] = v8;
          [v51 presentAlertWithSmartPromptConfiguration:v45 completionHandler:v64];
LABEL_49:

LABEL_50:
          v36 = v62;
LABEL_51:

          goto LABEL_52;
        }
      }
    }

    else
    {
    }

    v51 = [(WFAction *)self userInterface];
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __99__WFAction_performDeletionAuthorizationChecksWithUserInterface_contentItemCache_completionHandler___block_invoke_418;
    v63[3] = &unk_1E8375270;
    v63[4] = self;
    v63[5] = v8;
    [v51 requestAuthorizationWithConfiguration:v45 completionHandler:v63];
    goto LABEL_49;
  }

  v9 = getWFSecurityLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v67 = "[WFAction performDeletionAuthorizationChecksWithUserInterface:contentItemCache:completionHandler:]";
    v11 = v9;
    v12 = OS_LOG_TYPE_DEBUG;
LABEL_4:
    _os_log_impl(&dword_1CA256000, v11, v12, v10, buf, 0xCu);
  }

LABEL_5:

LABEL_12:
  v8[2](v8, 0);
LABEL_54:

  v58 = *MEMORY[0x1E69E9840];
}

void __99__WFAction_performDeletionAuthorizationChecksWithUserInterface_contentItemCache_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2 == 5)
  {
    v3 = getWFSecurityLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[WFAction performDeletionAuthorizationChecksWithUserInterface:contentItemCache:completionHandler:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_DEFAULT, "%s User selected Don't Delete at deletion authorization", &v10, 0xCu);
    }

    v4 = *(a1 + 40);
    v5 = +[WFDeletionAuthorizationState dontDeleteErrorForContentItemClass:](WFDeletionAuthorizationState, "dontDeleteErrorForContentItemClass:", [*(a1 + 32) contentItemClass]);
    (*(v4 + 16))(v4, v5);

    v6 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(*(a1 + 40) + 16);
    v9 = *MEMORY[0x1E69E9840];

    v8();
  }
}

void __99__WFAction_performDeletionAuthorizationChecksWithUserInterface_contentItemCache_completionHandler___block_invoke_418(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2 == 5)
  {
    v3 = getWFSecurityLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[WFAction performDeletionAuthorizationChecksWithUserInterface:contentItemCache:completionHandler:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_DEFAULT, "%s User selected Don't Delete at deletion authorization", &v10, 0xCu);
    }

    v4 = *(a1 + 40);
    v5 = +[WFDeletionAuthorizationState dontDeleteErrorForContentItemClass:](WFDeletionAuthorizationState, "dontDeleteErrorForContentItemClass:", [*(a1 + 32) contentItemClass]);
    (*(v4 + 16))(v4, v5);

    v6 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = *(*(a1 + 40) + 16);
    v9 = *MEMORY[0x1E69E9840];

    v8();
  }
}

- (id)itemsBeingDeleted
{
  if ([(WFAction *)self deletesInput])
  {
    v3 = [(WFAction *)self input];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isRunningInCarPlay
{
  v3 = [(WFAction *)self runningDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WFAction *)self runningDelegate];
    v6 = [v5 currentRunningContextForAction:self];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 runSource];
  if ([v7 length])
  {
    if ([v7 isEqualToString:*MEMORY[0x1E69E13F0]])
    {
      v8 = 1;
    }

    else
    {
      v8 = [v7 isEqualToString:*MEMORY[0x1E69E1370]];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isRunningInSiriUserInterface
{
  v2 = [(WFAction *)self userInterface];
  v3 = [v2 isRunningWithSiriUI];

  return v3;
}

- (void)logDataTransmissionForSmartPromptApprovalResult:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = [a3 allowedStates];
  v5 = [v4 if_compactMap:&__block_literal_global_409];
  v6 = [v3 setWithArray:v5];

  [v6 enumerateObjectsUsingBlock:&__block_literal_global_412];
}

id __60__WFAction_logDataTransmissionForSmartPromptApprovalResult___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 contentDestination];
  if (WFActionGreenTeaContentDestinationMayLeaveDevice_onceToken != -1)
  {
    dispatch_once(&WFActionGreenTeaContentDestinationMayLeaveDevice_onceToken, &__block_literal_global_1163);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = WFActionGreenTeaContentDestinationMayLeaveDevice_dataLeavingContentDestination;
      v12 = [v3 identifier];
      LOBYTE(v11) = [v11 containsObject:v12];

      if (v11)
      {
        goto LABEL_15;
      }

LABEL_12:
      v13 = 0;
      goto LABEL_32;
    }

LABEL_14:

    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_14;
  }

  v4 = v3;
  v5 = [v4 app];
  v6 = [v5 bundleIdentifier];
  v7 = [v6 hasPrefix:@"com.apple."];

  if ((v7 & 1) == 0)
  {

    goto LABEL_14;
  }

  if (WFActionGreenTeaContentDestinationMayLeaveDevice_onceToken_1168 != -1)
  {
    dispatch_once(&WFActionGreenTeaContentDestinationMayLeaveDevice_onceToken_1168, &__block_literal_global_1170);
  }

  v8 = WFActionGreenTeaContentDestinationMayLeaveDevice_exfiltratingAppBundleIdentifier;
  v9 = [v4 app];
  v10 = [v9 bundleIdentifier];
  LOBYTE(v8) = [v8 containsObject:v10];

  if ((v8 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v14 = [v2 sourceContentAttribution];
  v15 = [v14 origin];
  v16 = [v15 identifier];

  if (v16)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v15 app];
      v18 = [v17 bundleIdentifier];
    }

    else
    {
      v18 = [v15 identifier];
    }

    if ([v18 isEqualToString:*MEMORY[0x1E69E0EF0]])
    {
      v19 = MEMORY[0x1E6997098];
    }

    else if ([v18 isEqualToString:*MEMORY[0x1E69E0E58]])
    {
      v19 = MEMORY[0x1E6997090];
    }

    else
    {
      if (([v18 isEqualToString:*MEMORY[0x1E69E0F98]] & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", @"com.apple.shortcuts.microphoneDestination") & 1) == 0 && (objc_msgSend(v18, "isEqualToString:", *MEMORY[0x1E69E0ED0]) & 1) == 0 && !objc_msgSend(v18, "isEqualToString:", *MEMORY[0x1E69E0ED8]))
      {
        v13 = 0;
        goto LABEL_30;
      }

      v19 = MEMORY[0x1E6997088];
    }

    v13 = *v19;
LABEL_30:

    goto LABEL_31;
  }

  v13 = 0;
LABEL_31:

LABEL_32:

  return v13;
}

- (void)presentSmartPromptAuthorizationWithConfiguration:(id)a3 userInterface:(id)a4 databaseApprovalResult:(id)a5 contentDestination:(id)a6 completionHandler:(id)a7
{
  v33 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (objc_opt_respondsToSelector() & 1) != 0 && [v13 requestedFromAnotherDevice] && (objc_opt_respondsToSelector())
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __135__WFAction_presentSmartPromptAuthorizationWithConfiguration_userInterface_databaseApprovalResult_contentDestination_completionHandler___block_invoke;
    v26[3] = &unk_1E8375208;
    v30 = v16;
    v27 = v15;
    v28 = self;
    v29 = v14;
    [v13 presentAlertWithSmartPromptConfiguration:v12 completionHandler:v26];

    v17 = v27;
LABEL_7:

    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __135__WFAction_presentSmartPromptAuthorizationWithConfiguration_userInterface_databaseApprovalResult_contentDestination_completionHandler___block_invoke_406;
    v21[3] = &unk_1E8375208;
    v25 = v16;
    v22 = v15;
    v23 = self;
    v24 = v14;
    [v13 requestAuthorizationWithConfiguration:v12 completionHandler:v21];

    v17 = v22;
    goto LABEL_7;
  }

  v18 = getWFSecurityLogObject();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v32 = "[WFAction presentSmartPromptAuthorizationWithConfiguration:userInterface:databaseApprovalResult:contentDestination:completionHandler:]";
    _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_ERROR, "%s Current UI does not support setting smart prompts", buf, 0xCu);
  }

  v19 = +[WFSmartPromptState localizedUnsupportedEnvironmentError];
  v16[2](v16, v19);

LABEL_11:
  v20 = *MEMORY[0x1E69E9840];
}

void __135__WFAction_presentSmartPromptAuthorizationWithConfiguration_userInterface_databaseApprovalResult_contentDestination_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  switch(a2)
  {
    case 3:
      v11 = *(a1 + 56);
      v16 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
      (*(v11 + 16))(v11);
      v12 = *MEMORY[0x1E69E9840];

      break;
    case 2:
      v6 = getWFSecurityLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v18 = "[WFAction presentSmartPromptAuthorizationWithConfiguration:userInterface:databaseApprovalResult:contentDestination:completionHandler:]_block_invoke";
        _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_DEFAULT, "%s User selected Allow Once at smart prompt", buf, 0xCu);
      }

      v7 = MEMORY[0x1E695DFD8];
      v8 = [*(a1 + 48) undefinedStates];
      v9 = [v7 setWithArray:v8];
      [*(a1 + 40) setAllowedOnceSmartPromptStates:v9];

      (*(*(a1 + 56) + 16))();
      goto LABEL_10;
    case 0:
      v3 = getWFSecurityLogObject();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v18 = "[WFAction presentSmartPromptAuthorizationWithConfiguration:userInterface:databaseApprovalResult:contentDestination:completionHandler:]_block_invoke";
        _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_DEFAULT, "%s User selected Deny at smart prompt", buf, 0xCu);
      }

      v4 = *(a1 + 56);
      v5 = [WFSmartPromptState localizedDeniedPermissionsErrorWithContentDestination:*(a1 + 32)];
      (*(v4 + 16))(v4, v5);

LABEL_10:
      v10 = *MEMORY[0x1E69E9840];
      return;
    default:
      v13 = *(a1 + 56);
      v14 = *(*(a1 + 56) + 16);
      v15 = *MEMORY[0x1E69E9840];

      v14();
      break;
  }
}

void __135__WFAction_presentSmartPromptAuthorizationWithConfiguration_userInterface_databaseApprovalResult_contentDestination_completionHandler___block_invoke_406(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  switch(a2)
  {
    case 3:
      v11 = *(a1 + 56);
      v16 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
      (*(v11 + 16))(v11);
      v12 = *MEMORY[0x1E69E9840];

      break;
    case 2:
      v6 = getWFSecurityLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v18 = "[WFAction presentSmartPromptAuthorizationWithConfiguration:userInterface:databaseApprovalResult:contentDestination:completionHandler:]_block_invoke";
        _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_DEFAULT, "%s User selected Allow Once at smart prompt", buf, 0xCu);
      }

      v7 = MEMORY[0x1E695DFD8];
      v8 = [*(a1 + 48) undefinedStates];
      v9 = [v7 setWithArray:v8];
      [*(a1 + 40) setAllowedOnceSmartPromptStates:v9];

      (*(*(a1 + 56) + 16))();
      goto LABEL_10;
    case 0:
      v3 = getWFSecurityLogObject();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v18 = "[WFAction presentSmartPromptAuthorizationWithConfiguration:userInterface:databaseApprovalResult:contentDestination:completionHandler:]_block_invoke";
        _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_DEFAULT, "%s User selected Deny at smart prompt", buf, 0xCu);
      }

      v4 = *(a1 + 56);
      v5 = [WFSmartPromptState localizedDeniedPermissionsErrorWithContentDestination:*(a1 + 32)];
      (*(v4 + 16))(v4, v5);

LABEL_10:
      v10 = *MEMORY[0x1E69E9840];
      return;
    default:
      v13 = *(a1 + 56);
      v14 = *(*(a1 + 56) + 16);
      v15 = *MEMORY[0x1E69E9840];

      v14();
      break;
  }
}

- (void)performSmartPromptChecksWithUserInterface:(id)a3 contentDestination:(id)a4 contentItemCache:(id)a5 isWebpageCoercion:(BOOL)a6 completionHandler:(id)a7
{
  v147 = *MEMORY[0x1E69E9840];
  v109 = a3;
  v111 = a4;
  v110 = a5;
  v108 = a7;
  v12 = +[WFDatabaseProxy defaultDatabase];

  if (v12)
  {
    if ([(WFAction *)self shouldDisableSmartPromptChecks])
    {
      v13 = getWFSecurityLogObject();
      v14 = v109;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v139 = "[WFAction performSmartPromptChecksWithUserInterface:contentDestination:contentItemCache:isWebpageCoercion:completionHandler:]";
LABEL_11:
        _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_DEBUG, v15, buf, 0xCu);
        goto LABEL_12;
      }

      goto LABEL_12;
    }

    if ([(WFAction *)self requiresRemoteExecution])
    {
      v13 = getWFSecurityLogObject();
      v14 = v109;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v139 = "[WFAction performSmartPromptChecksWithUserInterface:contentDestination:contentItemCache:isWebpageCoercion:completionHandler:]";
        v15 = "%s Not performing smart prompt checks because action is executed remotely.";
        goto LABEL_11;
      }

LABEL_12:

      v17 = v108;
      (*(v108 + 2))(v108, 0);
      goto LABEL_26;
    }

    v106 = a6;
    v18 = [(WFAction *)self workflow];
    v19 = [v18 actions];
    v20 = [v19 indexOfObject:self];

    v21 = [MEMORY[0x1E695DF70] array];
    v22 = [(WFAction *)self contentAttributionTracker];
    v23 = [v22 trackedAttributionSet];
    [v21 if_addObjectIfNonNil:v23];

    v24 = [(WFAction *)self runningDelegate];
    v25 = [v24 flowTracker];
    v26 = [v25 attributionSetForCurrentScope];
    [v21 if_addObjectIfNonNil:v26];

    v107 = v21;
    v27 = [MEMORY[0x1E6996D38] attributionSetByMergingAttributionSets:v21];
    v28 = [(WFAction *)self runningDelegate];
    v29 = [v28 exfiltrationLogger];
    v30 = [(WFAction *)self UUID];
    v114 = v27;
    v31 = [v29 attributionSetByRewritingSetWithLoggedCounts:v27 forExfiltratingActionUUID:v30];

    v32 = +[WFDatabaseProxy defaultDatabase];
    v33 = [(WFAction *)self UUID];
    v34 = [(WFAction *)self identifier];
    v35 = [(WFAction *)self workflow];
    v36 = [v35 reference];
    v115 = self;
    v37 = [(WFAction *)self allowedOnceSmartPromptStates];
    v38 = v37;
    if (!v37)
    {
      v38 = [MEMORY[0x1E695DFD8] set];
    }

    v136 = 0;
    v39 = [v32 approvalResultForContentAttributionSet:v31 contentDestination:v111 actionUUID:v33 actionIdentifier:v34 actionIndex:v20 reference:v36 allowedOnceStates:v38 error:&v136];
    v40 = v136;
    if (!v37)
    {
    }

    v41 = v115;
    [(WFAction *)v115 setAllowedOnceSmartPromptStates:0];
    [v39 actionUUID];
    v43 = v42 = v39;
    [(WFAction *)v115 setUUID:v43];

    if (v40)
    {
      v17 = v108;
      (*(v108 + 2))(v108, v40);
      v14 = v109;
LABEL_25:

      goto LABEL_26;
    }

    v44 = [v42 restrictedStates];
    v45 = [v44 count];

    if (v45)
    {
      v46 = [v42 restrictedStates];
      v47 = [v46 firstObject];
      v48 = [v47 localizedExfiltrationRestrictedError];
    }

    else
    {
      v49 = [v42 deniedStates];
      v50 = [v49 count];

      if (!v50)
      {
        v134 = 0u;
        v135 = 0u;
        v132 = 0u;
        v133 = 0u;
        v105 = v42;
        obj = [v42 allowedStates];
        v118 = [obj countByEnumeratingWithState:&v132 objects:v146 count:16];
        if (v118)
        {
          v116 = *v133;
          v113 = v31;
          do
          {
            for (i = 0; i != v118; ++i)
            {
              if (*v133 != v116)
              {
                objc_enumerationMutation(obj);
              }

              v54 = *(*(&v132 + 1) + 8 * i);
              v55 = getWFSecurityLogObject();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
              {
                v56 = [v54 sourceContentAttribution];
                v57 = [v56 count];
                v58 = [v54 sourceContentAttribution];
                v59 = [v58 origin];
                v60 = [(WFAction *)v41 UUID];
                *buf = 136315906;
                v139 = "[WFAction performSmartPromptChecksWithUserInterface:contentDestination:contentItemCache:isWebpageCoercion:completionHandler:]";
                v140 = 2048;
                v141 = v57;
                v142 = 2112;
                v143 = v59;
                v144 = 2112;
                v145 = v60;
                _os_log_impl(&dword_1CA256000, v55, OS_LOG_TYPE_DEBUG, "%s Logging allowed exfiltration of %lu items from %@ by action %@", buf, 0x2Au);
              }

              v61 = [v54 sourceContentAttribution];
              if (v61)
              {
                v120 = i;
                v62 = [MEMORY[0x1E695DFA8] set];
                v128 = 0u;
                v129 = 0u;
                v130 = 0u;
                v131 = 0u;
                v63 = [v114 attributions];
                v64 = [v63 countByEnumeratingWithState:&v128 objects:v137 count:16];
                if (v64)
                {
                  v65 = v64;
                  v66 = *v129;
                  do
                  {
                    for (j = 0; j != v65; ++j)
                    {
                      if (*v129 != v66)
                      {
                        objc_enumerationMutation(v63);
                      }

                      v68 = *(*(&v128 + 1) + 8 * j);
                      v69 = [v68 origin];
                      v70 = [v61 origin];
                      v71 = [v69 matches:v70];

                      if (v71)
                      {
                        v72 = [v68 privateItemIdentifiers];
                        v73 = [v72 set];
                        if (v73)
                        {
                          [v62 unionSet:v73];
                        }

                        else
                        {
                          v74 = [MEMORY[0x1E695DFD8] set];
                          [v62 unionSet:v74];
                        }
                      }
                    }

                    v65 = [v63 countByEnumeratingWithState:&v128 objects:v137 count:16];
                  }

                  while (v65);
                }

                v41 = v115;
                v75 = [(WFAction *)v115 runningDelegate];
                v76 = [v75 exfiltrationLogger];
                v77 = [(WFAction *)v115 UUID];
                v78 = [v61 origin];
                [v76 logExfiltratedItems:v62 actionUUID:v77 contentOrigin:v78];

                v31 = v113;
                i = v120;
              }
            }

            v118 = [obj countByEnumeratingWithState:&v132 objects:v146 count:16];
          }

          while (v118);
        }

        v42 = v105;
        v79 = [v105 undefinedStates];
        v80 = [v79 count];

        if (v80)
        {
          v81 = @"Shortcut";
          v82 = @"Shortcut";
          if ([(WFAction *)v41 isRunningInSiriUserInterface])
          {
            v83 = getWFSecurityLogObject();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315138;
              v139 = "[WFAction performSmartPromptChecksWithUserInterface:contentDestination:contentItemCache:isWebpageCoercion:completionHandler:]";
              _os_log_impl(&dword_1CA256000, v83, OS_LOG_TYPE_DEBUG, "%s Smart prompt is being presented in Siri", buf, 0xCu);
            }

            v81 = @"Siri";
            v84 = @"Siri";
          }

          v119 = [WFSmartPromptConfiguration alloc];
          v117 = [v105 undefinedStates];
          v85 = [(WFAction *)v41 contentAttributionTracker];
          v86 = [v85 trackedAttributionSet];
          v87 = [v105 previousAttributions];
          v88 = [(WFAction *)v41 workflow];
          v89 = [v88 reference];
          v90 = [(WFAction *)v41 workflow];
          v91 = [v90 name];
          LOBYTE(v104) = v106;
          v92 = [(WFSmartPromptConfiguration *)v119 initWithSmartPromptStates:v117 attributionSet:v86 previousAttributions:v87 contentItemCache:v110 action:v41 contentDestination:v111 reference:v89 workflowName:v91 source:v81 isWebpageCoercion:v104];

          if (v92)
          {
            v93 = getWFSecurityLogObject();
            if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315138;
              v139 = "[WFAction performSmartPromptChecksWithUserInterface:contentDestination:contentItemCache:isWebpageCoercion:completionHandler:]";
              _os_log_impl(&dword_1CA256000, v93, OS_LOG_TYPE_DEBUG, "%s Requiring device unlock before presenting smart prompt", buf, 0xCu);
            }

            v14 = v109;
            v94 = v81;
            if ([(WFAction *)v115 isRunningInCarPlay])
            {
              v95 = getWFSecurityLogObject();
              if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315138;
                v139 = "[WFAction performSmartPromptChecksWithUserInterface:contentDestination:contentItemCache:isWebpageCoercion:completionHandler:]";
                _os_log_impl(&dword_1CA256000, v95, OS_LOG_TYPE_DEBUG, "%s CarPlay run: presenting permission prompt immediately", buf, 0xCu);
              }

              v17 = v108;
              [(WFAction *)v115 presentSmartPromptAuthorizationWithConfiguration:v92 userInterface:v109 databaseApprovalResult:v105 contentDestination:v111 completionHandler:v108];
            }

            else
            {
              if ([(WFAction *)v115 isRunningInSiriUserInterface])
              {
                v100 = getWFSecurityLogObject();
                if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315138;
                  v139 = "[WFAction performSmartPromptChecksWithUserInterface:contentDestination:contentItemCache:isWebpageCoercion:completionHandler:]";
                  _os_log_impl(&dword_1CA256000, v100, OS_LOG_TYPE_DEBUG, "%s Requesting Siri punch-out to present permission UI with private content", buf, 0xCu);
                }

                v101 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
                v102 = v108;
                (*(v108 + 2))(v108, v101);
              }

              else
              {
                v103 = objc_alloc_init(WFCompactUnlockService);
                v121[0] = MEMORY[0x1E69E9820];
                v121[1] = 3221225472;
                v121[2] = __126__WFAction_performSmartPromptChecksWithUserInterface_contentDestination_contentItemCache_isWebpageCoercion_completionHandler___block_invoke;
                v121[3] = &unk_1E83751E0;
                v121[4] = v115;
                v122 = v92;
                v123 = v109;
                v124 = v105;
                v102 = v108;
                v126 = v103;
                v127 = v108;
                v125 = v111;
                v101 = v103;
                [(WFCompactUnlockService *)v101 requestUnlockIfNeeded:v121];
              }

              v17 = v102;
            }
          }

          else
          {
            v96 = getWFWorkflowExecutionLogObject();
            if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v139 = "[WFAction performSmartPromptChecksWithUserInterface:contentDestination:contentItemCache:isWebpageCoercion:completionHandler:]";
              _os_log_impl(&dword_1CA256000, v96, OS_LOG_TYPE_ERROR, "%s Failed to init WFSmartPromptConfiguration for smart prompt.", buf, 0xCu);
            }

            v97 = [(WFAction *)v115 workflow];
            v98 = [v97 name];
            v99 = WFRunnerFailureErrorMessage(v98);
            (*(v108 + 2))(v108, v99);

            v17 = v108;
            v14 = v109;
            v94 = v81;
          }

          v42 = v105;
          v40 = 0;
          goto LABEL_25;
        }

        [(WFAction *)v41 logDataTransmissionForSmartPromptApprovalResult:v105];
        v17 = v108;
        (*(v108 + 2))(v108, 0);
        goto LABEL_24;
      }

      v46 = [v42 deniedStates];
      v47 = [v46 firstObject];
      v48 = [v47 localizedDeniedPermissionsError];
    }

    v51 = v48;

    v17 = v108;
    (*(v108 + 2))(v108, v51);

LABEL_24:
    v14 = v109;
    v40 = 0;
    goto LABEL_25;
  }

  v16 = getWFSecurityLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v139 = "[WFAction performSmartPromptChecksWithUserInterface:contentDestination:contentItemCache:isWebpageCoercion:completionHandler:]";
    _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_FAULT, "%s Not performing smart prompt checks because database access is not available.", buf, 0xCu);
  }

  v17 = v108;
  (*(v108 + 2))(v108, 0);
  v14 = v109;
LABEL_26:

  v52 = *MEMORY[0x1E69E9840];
}

void __126__WFAction_performSmartPromptChecksWithUserInterface_contentDestination_contentItemCache_isWebpageCoercion_completionHandler___block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = getWFSecurityLogObject();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315138;
      v10 = "[WFAction performSmartPromptChecksWithUserInterface:contentDestination:contentItemCache:isWebpageCoercion:completionHandler:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEBUG, "%s Device unlocked successfully, or was already unlocked", &v9, 0xCu);
    }

    [*(a1 + 32) presentSmartPromptAuthorizationWithConfiguration:*(a1 + 40) userInterface:*(a1 + 48) databaseApprovalResult:*(a1 + 56) contentDestination:*(a1 + 64) completionHandler:*(a1 + 80)];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[WFAction performSmartPromptChecksWithUserInterface:contentDestination:contentItemCache:isWebpageCoercion:completionHandler:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_INFO, "%s Did not succeed unlocking the device, interrupting execution.", &v9, 0xCu);
    }

    v6 = *(a1 + 80);
    v7 = +[WFSmartPromptState localizedUnlockedDeviceRequiredError];
    (*(v6 + 16))(v6, v7);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)performDataAccessChecksWithUserInterface:(id)a3 contentItemCache:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__WFAction_performDataAccessChecksWithUserInterface_contentItemCache_completionHandler___block_invoke;
  v14[3] = &unk_1E83751B8;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v9;
  v12 = v8;
  v13 = v10;
  [(WFAction *)self getContentDestinationWithCompletionHandler:v14];
}

void __88__WFAction_performDataAccessChecksWithUserInterface_contentItemCache_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = getWFSecurityLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) identifier];
      *buf = 136315650;
      v21 = "[WFAction performDataAccessChecksWithUserInterface:contentItemCache:completionHandler:]_block_invoke";
      v22 = 2114;
      v23 = v8;
      v24 = 2114;
      v25 = v6;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s Failed to get content destination for action %{public}@: %{public}@", buf, 0x20u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __88__WFAction_performDataAccessChecksWithUserInterface_contentItemCache_completionHandler___block_invoke_389;
    v13[3] = &unk_1E8375190;
    v14 = 0;
    v9 = *(a1 + 56);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v19 = v9;
    v15 = v10;
    v16 = v11;
    v17 = *(a1 + 48);
    v18 = v5;
    [WFScreenTimeHelper isContentDestinationAllowedByScreenTimeSettings:v18 completionHandler:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __88__WFAction_performDataAccessChecksWithUserInterface_contentItemCache_completionHandler___block_invoke_389(uint64_t a1, char a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v12 = getWFSecurityLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 136315394;
      v21 = "[WFAction performDataAccessChecksWithUserInterface:contentItemCache:completionHandler:]_block_invoke";
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_ERROR, "%s WFScreenTimeHelper will block execution with error %@", buf, 0x16u);
    }

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __88__WFAction_performDataAccessChecksWithUserInterface_contentItemCache_completionHandler___block_invoke_390;
    v16[3] = &unk_1E83767B8;
    v19 = *(a1 + 72);
    v9 = *(a1 + 64);
    v15 = *(a1 + 40);
    v10 = v15.i64[1];
    v11.i64[0] = *(a1 + 56);
    v11.i64[1] = v9;
    v18 = vextq_s8(v15, v11, 8uLL);
    v17 = vextq_s8(v11, v15, 8uLL);
    [v6 performDeletionAuthorizationChecksWithUserInterface:v7 contentItemCache:v8 completionHandler:v16];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __88__WFAction_performDataAccessChecksWithUserInterface_contentItemCache_completionHandler___block_invoke_390(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(*(a1 + 64) + 16);
LABEL_3:
    v4();
    goto LABEL_10;
  }

  if (!*(a1 + 32))
  {
    v4 = *(*(a1 + 64) + 16);
    goto LABEL_3;
  }

  v5 = [[WFMDMVerifier alloc] initWithAction:*(a1 + 40)];
  v6 = *(a1 + 32);
  v9 = 0;
  v7 = [(WFMDMVerifier *)v5 canSendDataToContentDestination:v6 error:&v9];
  v8 = v9;
  if (v7)
  {
    [*(a1 + 40) performSmartPromptChecksWithUserInterface:*(a1 + 48) contentDestination:*(a1 + 32) contentItemCache:*(a1 + 56) isWebpageCoercion:0 completionHandler:*(a1 + 64)];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }

LABEL_10:
}

- (BOOL)isSubclassThatOverridesSelector:(SEL)a3
{
  v5 = objc_opt_class();
  v6 = [(WFAction *)self methodForSelector:a3];
  return v6 != [v5 instanceMethodForSelector:a3];
}

- (BOOL)shouldDisableSmartPromptChecks
{
  v14 = *MEMORY[0x1E69E9840];
  if (![MEMORY[0x1E695E000] smartPromptsExplicitlyDisabled])
  {
    v8 = [(WFAction *)self runningDelegate];
    if (objc_opt_respondsToSelector())
    {
      v9 = [(WFAction *)self runningDelegate];
      v10 = [v9 shouldDisablePrivacyPrompts];

      if (v10)
      {
        v3 = getWFSecurityLogObject();
        if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_5;
        }

        v12 = 136315138;
        v13 = "[WFAction shouldDisableSmartPromptChecks]";
        v4 = "%s Exempting action from smart prompts due to workflow controller flag.";
        v5 = v3;
        v6 = OS_LOG_TYPE_DEBUG;
        goto LABEL_4;
      }
    }

    else
    {
    }

    result = 0;
    goto LABEL_12;
  }

  v3 = getWFSecurityLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v12 = 136315138;
    v13 = "[WFAction shouldDisableSmartPromptChecks]";
    v4 = "%s ‼️ Smart Prompts are currently disabled through defaults, bypassing checks. If you did not set this explicitly, your device is in an unexpected and unsupported state.";
    v5 = v3;
    v6 = OS_LOG_TYPE_ERROR;
LABEL_4:
    _os_log_impl(&dword_1CA256000, v5, v6, v4, &v12, 0xCu);
  }

LABEL_5:

  result = 1;
LABEL_12:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = a3;
  if ([(WFAction *)self isSubclassThatOverridesSelector:sel_runWithInput_completionHandler_])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __39__WFAction_runAsynchronouslyWithInput___block_invoke;
    v11[3] = &unk_1E837E5E0;
    v11[4] = self;
    [(WFAction *)self runWithInput:v4 completionHandler:v11];
  }

  else
  {
    v5 = [(WFAction *)self userInterfaceClasses];
    v6 = [v5 count];

    if (v6)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __39__WFAction_runAsynchronouslyWithInput___block_invoke_3;
      v9[3] = &unk_1E8375168;
      v9[4] = self;
      v10 = v4;
      [(WFAction *)self requestInterfacePresentationWithCompletionHandler:v9];
    }

    else
    {
      v8 = 0;
      [(WFAction *)self runWithInput:v4 error:&v8];
      v7 = v8;
      [(WFAction *)self finishRunningWithError:v7];
    }
  }
}

void __39__WFAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) effectiveWorkQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__WFAction_runAsynchronouslyWithInput___block_invoke_2;
  v6[3] = &unk_1E837F870;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __39__WFAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    return [v3 runWithRemoteUserInterface:a2 input:*(a1 + 40)];
  }

  else
  {
    return [v3 finishRunningWithError:?];
  }
}

- (void)runWithInput:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v6 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A578];
    v7 = MEMORY[0x1E696AEC0];
    v8 = WFLocalizedString(@"The action being run (%@) is missing an implementation.");
    v9 = [(WFAction *)self localizedName];
    v10 = [v7 localizedStringWithFormat:v8, v9, v13];
    v14[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *a4 = [v6 errorWithDomain:@"WFActionErrorDomain" code:3 userInfo:v11];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (OS_dispatch_queue)effectiveWorkQueue
{
  v11[2] = *MEMORY[0x1E69E9840];
  effectiveWorkQueue = self->_effectiveWorkQueue;
  if (!effectiveWorkQueue)
  {
    v4 = [(WFAction *)self resourceManager];
    v11[0] = objc_opt_class();
    v11[1] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    [v4 refreshAvailabilityOfRequiredResourcesOfClasses:v5];
    if ([v4 currentlyRequiresResourceOfClasses:v5])
    {
      v6 = MEMORY[0x1E69E96A0];
      v7 = MEMORY[0x1E69E96A0];
    }

    else
    {
      v6 = [(WFAction *)self workQueue];
    }

    v8 = self->_effectiveWorkQueue;
    self->_effectiveWorkQueue = v6;

    effectiveWorkQueue = self->_effectiveWorkQueue;
  }

  v9 = *MEMORY[0x1E69E9840];

  return effectiveWorkQueue;
}

- (NSSet)ignoredParameterKeysForProcessing
{
  ignoredParameterKeysForProcessing = self->_ignoredParameterKeysForProcessing;
  if (!ignoredParameterKeysForProcessing)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    v5 = self->_ignoredParameterKeysForProcessing;
    self->_ignoredParameterKeysForProcessing = v4;

    ignoredParameterKeysForProcessing = self->_ignoredParameterKeysForProcessing;
  }

  return ignoredParameterKeysForProcessing;
}

- (id)parametersRequiringUserInputAlongsideParameter:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [(WFAction *)self parameters];
  v5 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    v24 = *v32;
    do
    {
      v8 = 0;
      v25 = v6;
      do
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v31 + 1) + 8 * v8);
        if (v9 != v4)
        {
          v10 = [*(*(&v31 + 1) + 8 * v8) resourceManager];
          v11 = [v10 resourcesRequiredForDisplayAvailable];

          if ((v11 & 1) == 0)
          {
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            v12 = [v9 resourceManager];
            v13 = [v12 resourceObjectsOfClass:objc_opt_class()];

            v14 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v28;
              while (2)
              {
                for (i = 0; i != v15; ++i)
                {
                  if (*v28 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v18 = [*(*(&v27 + 1) + 8 * i) parameterKey];
                  v19 = [v4 key];
                  v20 = [v18 isEqualToString:v19];

                  if (v20)
                  {
                    [v23 addObject:v9];
                    goto LABEL_18;
                  }
                }

                v15 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
                if (v15)
                {
                  continue;
                }

                break;
              }
            }

LABEL_18:

            v7 = v24;
            v6 = v25;
          }
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v6);
  }

  v21 = *MEMORY[0x1E69E9840];

  return v23;
}

- (void)askForValuesOfParameters:(id)a3 withDefaultStates:(id)a4 prompts:(id)a5 input:(id)a6 workQueue:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a5;
  v19 = a4;
  v20 = [(WFAction *)self inputParameter];
  LODWORD(a4) = [v14 containsObject:v20];

  if (a4)
  {

    v15 = 0;
  }

  v21 = [(WFAction *)self runningDelegate];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __97__WFAction_askForValuesOfParameters_withDefaultStates_prompts_input_workQueue_completionHandler___block_invoke;
  v25[3] = &unk_1E8375140;
  v25[4] = self;
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v22 = v16;
  v23 = v15;
  v24 = v17;
  [v21 action:self provideInputForParameters:v14 withDefaultStates:v19 prompts:v18 completionHandler:v25];
}

void __97__WFAction_askForValuesOfParameters_withDefaultStates_prompts_input_workQueue_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (a3)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __97__WFAction_askForValuesOfParameters_withDefaultStates_prompts_input_workQueue_completionHandler___block_invoke_2;
    v11[3] = &unk_1E8375118;
    v11[4] = v8;
    v10 = *(a1 + 48);
    v13 = *(a1 + 56);
    v12 = v7;
    [v8 processParameterStates:a2 withInput:v9 skippingHiddenParameters:0 askForValuesIfNecessary:1 workQueue:v10 completionHandler:v11];
  }
}

void __97__WFAction_askForValuesOfParameters_withDefaultStates_prompts_input_workQueue_completionHandler___block_invoke_2(void *a1, void *a2, id obj, void *a4)
{
  objc_storeStrong((a1[4] + 144), obj);
  v8 = obj;
  v9 = a4;
  v11 = a2;
  v10 = a1[5];
  (*(a1[6] + 16))();
}

- (void)processValueForParameter:(id)a3 withToolKitInvocation:(id)a4 completionHandler:(id)a5
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(WFAction *)self toolkitValueClassForParameter:v11];
  if (!v12)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"WFAction.m" lineNumber:1155 description:@"The parameter state doesn't define processing value classes"];

    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFAction.m" lineNumber:1156 description:{@"Invalid parameter not satisfying: %@", @"toolInvocation"}];

    goto LABEL_3;
  }

  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = [(WFAction *)self variableSource];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __77__WFAction_processValueForParameter_withToolKitInvocation_completionHandler___block_invoke;
  v17[3] = &unk_1E8376328;
  v18 = v9;
  v14 = v9;
  [v10 valueForParameter:v11 ofClass:v12 variableSource:v13 completionHandler:v17];
}

void __77__WFAction_processValueForParameter_withToolKitInvocation_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [v5 domain];
  v7 = +[WFToolInvocation errorDomain];
  if ([v6 isEqualToString:v7])
  {
    v8 = [v5 code];

    if (v8 == 1)
    {
      v9 = *(*(a1 + 32) + 16);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v9 = *(*(a1 + 32) + 16);
LABEL_6:
  v9();
}

- (void)processEncodedValue:(id)a3 withToolKitInvocation:(id)a4 forParameter:(id)a5 completionHandler:(id)a6
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [(WFAction *)self toolkitValueClassForParameter:v12];
  if (v15)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFAction.m" lineNumber:1141 description:@"The parameter state doesn't define processing value classes"];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"WFAction.m" lineNumber:1142 description:{@"Invalid parameter not satisfying: %@", @"toolInvocation"}];

LABEL_3:
  v18 = [(WFAction *)self variableSource];
  [v13 processedValueFromEncodedValue:v14 forParameter:v12 ofClass:v15 variableSource:v18 completionHandler:v11];
}

- (void)_processParameterStates:(id)a3 withInput:(id)a4 skippingHiddenParameters:(BOOL)a5 askForValuesIfNecessary:(BOOL)a6 workQueue:(id)a7 completionHandler:(id)a8
{
  v54 = a3;
  v12 = a4;
  v59 = a7;
  v57 = a8;
  v53 = objc_opt_new();
  v52 = objc_opt_new();
  v51 = objc_opt_new();
  v13 = [(WFAction *)self processedParameters];
  v14 = [v13 mutableCopy];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = objc_opt_new();
  }

  v50 = v16;

  v82 = 0;
  v83 = &v82;
  v84 = 0x3032000000;
  v85 = __Block_byref_object_copy__8610;
  v86 = __Block_byref_object_dispose__8611;
  v87 = 0;
  v49 = [(WFAction *)self inputParameter];
  v48 = [(WFAction *)self populatesInputFromInputParameter];
  if (v12)
  {
    objc_storeStrong(v83 + 5, a4);
  }

  v17 = [(WFAction *)self parameters];
  v18 = [(WFAction *)self prioritizedParameterKeysForRemoteExecution];
  v19 = [v18 count];

  if (v19)
  {
    v20 = [(WFAction *)self parameters];
    v21 = [v20 mutableCopy];

    for (i = 0; ; ++i)
    {
      v23 = [(WFAction *)self prioritizedParameterKeysForRemoteExecution];
      v24 = [v23 count];

      if (i >= v24)
      {
        break;
      }

      v25 = [(WFAction *)self prioritizedParameterKeysForRemoteExecution];
      v26 = [v25 objectAtIndex:i];

      for (j = 0; ; ++j)
      {
        v28 = [(WFAction *)self parameters];
        v29 = [v28 count];

        if (j >= v29)
        {
          break;
        }

        v30 = [(WFAction *)self parameters];
        v31 = [v30 objectAtIndex:j];

        v32 = [v31 key];
        v33 = [v32 isEqualToString:v26];

        if (v33)
        {
          v34 = [v21 objectAtIndex:j];
          [v21 removeObjectAtIndex:j];
          [v21 insertObject:v34 atIndex:i];

          break;
        }
      }

      v35 = v21;

      v17 = v35;
    }
  }

  v47 = v12;
  v36 = [(WFAction *)self visibleParametersWithProcessing:1];
  v37 = [(WFAction *)self copyParameterStates];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __123__WFAction__processParameterStates_withInput_skippingHiddenParameters_askForValuesIfNecessary_workQueue_completionHandler___block_invoke;
  v70[3] = &unk_1E8375078;
  v70[4] = self;
  v55 = v54;
  v71 = v55;
  v46 = v37;
  v72 = v46;
  v38 = v36;
  v73 = v38;
  v80 = a5;
  v74 = v53;
  v75 = v52;
  v76 = v51;
  v77 = v50;
  v39 = v49;
  v81 = v48;
  v78 = v39;
  v79 = &v82;
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __123__WFAction__processParameterStates_withInput_skippingHiddenParameters_askForValuesIfNecessary_workQueue_completionHandler___block_invoke_5;
  v60[3] = &unk_1E83750F0;
  v40 = v74;
  v61 = v40;
  v69 = a6;
  v41 = v57;
  v67 = v41;
  v42 = v77;
  v68 = &v82;
  v62 = v42;
  v63 = self;
  v43 = v75;
  v64 = v43;
  v44 = v76;
  v65 = v44;
  v45 = v59;
  v66 = v45;
  [v17 if_enumerateAsynchronouslyInSequenceOnQueue:v45 block:v70 completionHandler:v60];

  _Block_object_dispose(&v82, 8);
}

void __123__WFAction__processParameterStates_withInput_skippingHiddenParameters_askForValuesIfNecessary_workQueue_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [v6 key];
  v9 = [*(a1 + 32) toolInvocation];
  if (v9)
  {
    v10 = [*(a1 + 32) toolInvocation];
    v11 = [v6 key];
    v12 = [v10 containsParameterValueForKey:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 40);
  v14 = [v6 key];
  v15 = [v13 objectForKeyedSubscript:v14];
  v16 = *(a1 + 48);
  v17 = [v6 key];
  v18 = [v16 objectForKeyedSubscript:v17];
  v19 = v15;
  v20 = v18;
  v21 = v20;
  if (v19 == v20)
  {
    v22 = 1;
  }

  else
  {
    v22 = 0;
    if (v19 && v20)
    {
      v22 = [v19 isEqual:v20];
    }
  }

  v23 = [*(a1 + 56) containsObject:v6];
  if (*(a1 + 112) != 1 || (v23 & 1) != 0)
  {
    v24 = v8;
    v25 = v12 & v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __123__WFAction__processParameterStates_withInput_skippingHiddenParameters_askForValuesIfNecessary_workQueue_completionHandler___block_invoke_2;
    aBlock[3] = &unk_1E8375028;
    v74 = v23;
    aBlock[4] = *(a1 + 32);
    v26 = v6;
    v68 = v26;
    v69 = *(a1 + 64);
    v70 = *(a1 + 72);
    v57 = v24;
    v27 = v24;
    v71 = v27;
    v72 = *(a1 + 80);
    v28 = v7;
    v73 = v28;
    v29 = _Block_copy(aBlock);
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __123__WFAction__processParameterStates_withInput_skippingHiddenParameters_askForValuesIfNecessary_workQueue_completionHandler___block_invoke_3;
    v63[3] = &unk_1E837DA10;
    v64 = *(a1 + 88);
    v30 = v27;
    v65 = v30;
    v31 = v28;
    v66 = v31;
    v32 = _Block_copy(v63);
    if (v25 == 1)
    {
      v33 = *(a1 + 32);
      v34 = [v33 toolInvocation];
      [v33 processValueForParameter:v26 withToolKitInvocation:v34 completionHandler:v32];
LABEL_19:
      v8 = v57;
LABEL_35:

      goto LABEL_36;
    }

    v34 = [*(a1 + 40) objectForKeyedSubscript:v30];
    if (!v34)
    {
LABEL_18:
      (*(v31 + 2))(v31, 0);
      goto LABEL_19;
    }

    if (*(a1 + 96) == v26 && (*(a1 + 113) & 1) != 0)
    {
      if (*(*(*(a1 + 104) + 8) + 40))
      {
        goto LABEL_18;
      }

      v50 = v30;
      v51 = v31;
      v52 = v32;
      v53 = v29;
      v54 = v7;
      v49 = 0x100000001;
      v55 = 1;
    }

    else
    {
      v52 = v32;
      v35 = v26;
      v51 = v31;
      if (v35)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v36 = v35;
        }

        else
        {
          v36 = 0;
        }
      }

      else
      {
        v36 = 0;
      }

      v50 = v30;
      v53 = v29;
      v54 = v7;
      v37 = v36;

      HIDWORD(v49) = [v37 processesIntoContentItems];
      v55 = 0;
      LODWORD(v49) = 0;
    }

    v38 = [WFParameterStateProcessingContext alloc];
    v39 = [*(a1 + 32) variableSource];
    v40 = [*(a1 + 32) workflow];
    v41 = [v40 environment];
    v42 = [*(a1 + 32) contentAttributionTracker];
    v43 = [*(a1 + 32) widgetSizeClass];
    v56 = [(WFParameterStateProcessingContext *)v38 initWithVariableSource:v39 parameter:v26 isInputParameter:v55 environment:v41 contentAttributionTracker:v42 widgetSizeClass:v43];

    v32 = v52;
    v29 = v53;
    if (HIDWORD(v49))
    {
      v44 = [v34 containedVariables];
      v45 = NSStringFromSelector(sel_type);
      v46 = [v44 filteredArrayForKey:v45 value:@"Ask"];

      if (![v46 count])
      {
        v47 = *(a1 + 32);
        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 3221225472;
        v58[2] = __123__WFAction__processParameterStates_withInput_skippingHiddenParameters_askForValuesIfNecessary_workQueue_completionHandler___block_invoke_4;
        v58[3] = &unk_1E8375050;
        v62 = v49;
        v61 = *(a1 + 104);
        v59 = v51;
        v60 = v52;
        LOBYTE(v47) = [v47 getInputContentFromVariablesInParameterState:v34 context:v56 completionHandler:v58];

        if (v47)
        {
          v7 = v54;
          v48 = v56;
          v8 = v57;
LABEL_34:

          goto LABEL_35;
        }
      }
    }

    v46 = [*(a1 + 88) objectForKey:{v50, v49}];
    v7 = v54;
    v8 = v57;
    if (v46)
    {
      v51[2](v51, 0);
      v48 = v56;
    }

    else
    {
      v48 = v56;
      [v34 processWithContext:v56 userInputRequiredHandler:v53 valueHandler:v52];
    }

    goto LABEL_34;
  }

  (*(v7 + 2))(v7, 0);
LABEL_36:
}

void __123__WFAction__processParameterStates_withInput_skippingHiddenParameters_askForValuesIfNecessary_workQueue_completionHandler___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v74 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([*(a1 + 32) count] && (*(a1 + 96) & 1) != 0)
  {
    v5 = [*(a1 + 48) runningDelegate];

    if (v5)
    {
      v6 = [*(a1 + 48) runningDelegate];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v8 = *(a1 + 32);
        v9 = [v8 countByEnumeratingWithState:&v67 objects:v73 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v68;
          while (2)
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v68 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v67 + 1) + 8 * i);
              v14 = [*(a1 + 48) runningDelegate];
              LOBYTE(v13) = [v14 action:*(a1 + 48) canProvideInputForParameter:v13];

              if ((v13 & 1) == 0)
              {
                v36 = *(a1 + 80);
                v37 = *(*(*(a1 + 88) + 8) + 40);
                v38 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
                (*(v36 + 16))(v36, 0, v37, v38);

                goto LABEL_29;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v67 objects:v73 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }
      }

      v15 = [*(a1 + 48) parameters];
      v16 = *(a1 + 32);
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __123__WFAction__processParameterStates_withInput_skippingHiddenParameters_askForValuesIfNecessary_workQueue_completionHandler___block_invoke_6;
      v65[3] = &unk_1E83750A0;
      v17 = v15;
      v66 = v17;
      [v16 sortUsingComparator:v65];
      if ([*(a1 + 48) requiresRemoteExecution])
      {
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v18 = *(a1 + 32);
        v19 = [v18 countByEnumeratingWithState:&v61 objects:v72 count:16];
        v52 = v17;
        v53 = v4;
        if (v19)
        {
          v20 = v19;
          v21 = 0;
          v22 = *v62;
          do
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v62 != v22)
              {
                objc_enumerationMutation(v18);
              }

              v24 = *(*(&v61 + 1) + 8 * j);
              v25 = objc_opt_class();
              if ([v25 isSubclassOfClass:objc_opt_class()])
              {
                v26 = objc_opt_class();
                if (v26 != objc_opt_class())
                {
                  v27 = [*(a1 + 48) ignoredParameterKeysForProcessing];
                  v28 = [v27 mutableCopy];

                  v29 = [v24 key];
                  [v28 addObject:v29];

                  [*(a1 + 48) setIgnoredParameterKeysForProcessing:v28];
                  if (!v21)
                  {
                    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  }

                  [v21 addObject:{v24, v52}];
                }
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v61 objects:v72 count:16];
          }

          while (v20);
        }

        else
        {
          v21 = 0;
        }

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v39 = v21;
        v40 = [v39 countByEnumeratingWithState:&v57 objects:v71 count:16];
        v4 = v53;
        if (v40)
        {
          v41 = v40;
          v42 = *v58;
          do
          {
            for (k = 0; k != v41; ++k)
            {
              if (*v58 != v42)
              {
                objc_enumerationMutation(v39);
              }

              [*(a1 + 32) removeObject:{*(*(&v57 + 1) + 8 * k), v52}];
            }

            v41 = [v39 countByEnumeratingWithState:&v57 objects:v71 count:16];
          }

          while (v41);
        }

        v17 = v52;
      }

      if ([*(a1 + 32) count])
      {
        v44 = *(a1 + 48);
        v45 = *(a1 + 56);
        v46 = *(*(*(a1 + 88) + 8) + 40);
        v47 = *(a1 + 64);
        v48 = *(a1 + 72);
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __123__WFAction__processParameterStates_withInput_skippingHiddenParameters_askForValuesIfNecessary_workQueue_completionHandler___block_invoke_7;
        v54[3] = &unk_1E83750C8;
        v49 = *(a1 + 32);
        v55 = *(a1 + 40);
        v56 = *(a1 + 80);
        [v44 askForValuesOfParameters:v49 withDefaultStates:v45 prompts:v47 input:v46 workQueue:v48 completionHandler:v54];
      }

      else
      {
        v50 = *(a1 + 40);
        v51 = *(*(*(a1 + 88) + 8) + 40);
        (*(*(a1 + 80) + 16))();
      }
    }

    else
    {
      v33 = *(a1 + 80);
      v34 = *(*(*(a1 + 88) + 8) + 40);
      v35 = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
      (*(v33 + 16))(v33, 0, v34, v35);
    }
  }

  else
  {
    v30 = *(a1 + 40);
    v31 = *(*(*(a1 + 88) + 8) + 40);
    (*(*(a1 + 80) + 16))();
  }

LABEL_29:

  v32 = *MEMORY[0x1E69E9840];
}

uint64_t __123__WFAction__processParameterStates_withInput_skippingHiddenParameters_askForValuesIfNecessary_workQueue_completionHandler___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "indexOfObject:", a2)}];
  v9 = MEMORY[0x1E696AD98];
  v10 = [*(a1 + 32) indexOfObject:v7];

  v11 = [v9 numberWithUnsignedInteger:v10];
  v12 = [v8 compare:v11];

  return v12;
}

void __123__WFAction__processParameterStates_withInput_skippingHiddenParameters_askForValuesIfNecessary_workQueue_completionHandler___block_invoke_7(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v10 = a3;
  [v7 addEntriesFromDictionary:a2];
  v9 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void __123__WFAction__processParameterStates_withInput_skippingHiddenParameters_askForValuesIfNecessary_workQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if (*(a1 + 88) == 1)
  {
    v6 = [*(a1 + 32) ignoredParameterKeysForProcessing];
    v7 = [*(a1 + 40) key];
    v8 = [v6 containsObject:v7];

    if ((v8 & 1) == 0)
    {
      [*(a1 + 48) addObject:*(a1 + 40)];
      v9 = *(a1 + 48);
      v10 = [*(a1 + 32) parametersRequiringUserInputAlongsideParameter:*(a1 + 40)];
      v11 = [v10 allObjects];
      [v9 addObjectsFromArray:v11];

      [*(a1 + 56) setValue:v5 forKey:*(a1 + 64)];
      v12 = *(a1 + 72);
      v13 = [[WFParameterPrompt alloc] initWithPrompt:v14 linkDialog:0];
      [v12 setValue:v13 forKey:*(a1 + 64)];
    }
  }

  (*(*(a1 + 80) + 16))();
}

void __123__WFAction__processParameterStates_withInput_skippingHiddenParameters_askForValuesIfNecessary_workQueue_completionHandler___block_invoke_3(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = a3;
  [v5 setValue:a2 forKey:v6];
  (*(a1[6] + 16))();
}

void __123__WFAction__processParameterStates_withInput_skippingHiddenParameters_askForValuesIfNecessary_workQueue_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  if (*(a1 + 56) == 1)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    v6 = a3;
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), v7, a3);
  }
}

- (BOOL)usesLegacyInputBehavior
{
  v3 = [(WFAction *)self inputTypes];
  if ([v3 count] || -[WFAction inputPassthrough](self, "inputPassthrough"))
  {
    v4 = [(WFAction *)self inputParameter];
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __122__WFAction_processParameterStates_withInput_skippingHiddenParameters_askForValuesIfNecessary_workQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    if ([*(a1 + 32) populatesInputFromInputParameter])
    {
      v8 = [*(a1 + 32) populatedInputWithProcessedParameterValues:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  v10 = getWFWorkflowExecutionLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v13 = 136315650;
    v14 = "[WFAction processParameterStates:withInput:skippingHiddenParameters:askForValuesIfNecessary:workQueue:completionHandler:]_block_invoke";
    v15 = 2114;
    v16 = v11;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEFAULT, "%s Action %{public}@ finished processing parameter states. Values: %@", &v13, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  v12 = *MEMORY[0x1E69E9840];
}

- (id)copyParameterStatesWithFallingBackToDefaultValue:(BOOL)a3
{
  v5 = [(WFAction *)self parametersByKey];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__WFAction_copyParameterStatesWithFallingBackToDefaultValue___block_invoke;
  v8[3] = &unk_1E8374FD8;
  v8[4] = self;
  v9 = a3;
  v6 = [v5 if_compactMap:v8];

  return v6;
}

void __61__WFAction_copyParameterStatesWithFallingBackToDefaultValue___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = [*(a1 + 32) parameterStateForKey:a2 fallingBackToDefaultValue:*(a1 + 40)];
  *a5 = [v6 copyWithZone:MEMORY[0x1CCAA2CE0]()];
}

- (id)populatedInputWithProcessedParameterValues:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WFAction *)self inputParameterKey];
  v6 = [v4 wf_popObjectForKey:v5];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v6;
      }

      else
      {
        v13[0] = v6;
        v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      }

      v9 = v8;
      v10 = [v8 if_compactMap:&__block_literal_global_348_8812];
      v7 = [MEMORY[0x1E6996D40] collectionWithItems:v10];
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v7;
}

id __55__WFAction_populatedInputWithProcessedParameterValues___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [MEMORY[0x1E6996D58] itemWithFile:v2];
  }

  else
  {
    [MEMORY[0x1E6996D58] itemWithObject:v2];
  }
  v3 = ;

  return v3;
}

- (BOOL)getInputContentFromVariablesInParameterState:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v41[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v8 variableString];
    v12 = [v9 parameter];
    v13 = [v12 definition];
    v14 = [v13 objectForKey:@"PrefersAttributedString"];
    v15 = [v14 BOOLValue];

    if (v15)
    {
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __83__WFAction_getInputContentFromVariablesInParameterState_context_completionHandler___block_invoke;
      v38[3] = &unk_1E837DC20;
      v39 = v10;
      [v11 processIntoContentItemsWithContext:v9 completionHandler:v38];
      v16 = v39;
    }

    else
    {
      v20 = [v9 parameter];
      if (v20)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      v27 = v21;

      v28 = [v27 processesIntoContentItems];
      if (v28)
      {
        v29 = MEMORY[0x1E6996CE8];
        v40 = *MEMORY[0x1E6997010];
        v30 = [[WFActionContentPermissionRequestor alloc] initWithAction:self];
        v41[0] = v30;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
        v16 = [v29 optionsWithDictionary:v31];

        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __83__WFAction_getInputContentFromVariablesInParameterState_context_completionHandler___block_invoke_2;
        v36[3] = &unk_1E837DC20;
        v37 = v10;
        [v11 processIntoStringsAndAttachmentsWithContext:v9 options:v16 completionHandler:v36];
      }

      else
      {
        if (![v11 representsSingleContentVariable])
        {
          v19 = 0;
          goto LABEL_24;
        }

        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __83__WFAction_getInputContentFromVariablesInParameterState_context_completionHandler___block_invoke_3;
        v34[3] = &unk_1E837DC20;
        v35 = v10;
        [v11 processIntoContentItemsWithContext:v9 completionHandler:v34];
        v16 = v35;
      }
    }

    v19 = 1;
LABEL_24:

    goto LABEL_28;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v8;
    v17 = [v11 variable];

    if (v17)
    {
      v18 = [v11 variable];
      [v18 getContentWithContext:v9 completionHandler:v10];
      v19 = 1;
LABEL_17:

      goto LABEL_24;
    }

    v24 = [v11 parameterStates];
    v25 = [v24 count];

    if (v25 == 1)
    {
      v18 = [v11 parameterStates];
      v26 = [v18 firstObject];
      v19 = [(WFAction *)self getInputContentFromVariablesInParameterState:v26 context:v9 completionHandler:v10];

      goto LABEL_17;
    }

LABEL_27:
    v19 = 0;
    goto LABEL_28;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v22 = [v8 containedVariables];
  v23 = [v22 firstObject];

  if (!v23)
  {
    goto LABEL_27;
  }

  [v23 getContentWithContext:v9 completionHandler:v10];

  v19 = 1;
LABEL_28:

  v32 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)previousAction
{
  v3 = [(WFAction *)self workflow];
  v4 = [v3 actions];

  v5 = [v4 indexOfObject:self];
  v6 = 0;
  if (v5 && v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [v4 objectAtIndex:v5 - 1];
  }

  return v6;
}

- (void)runWithInput:(id)a3 userInterface:(id)a4 runningDelegate:(id)a5 variableSource:(id)a6 workQueue:(id)a7 completionHandler:(id)a8
{
  v45 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (self->_running)
  {
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:37 userInfo:{0, v32}];
    v18[2](v18, 0, v19);
  }

  else
  {
    v20 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(WFAction *)self description];
      *buf = 136315394;
      v42 = "[WFAction runWithInput:userInterface:runningDelegate:variableSource:workQueue:completionHandler:]";
      v43 = 2114;
      v44 = v21;
      _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_DEFAULT, "%s Action %{public}@ started running", buf, 0x16u);
    }

    v22 = getWFRunningLifecycleLogObject();
    v23 = os_signpost_id_generate(v22);

    v24 = getWFRunningLifecycleLogObject();
    v25 = v24;
    if ((v23 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      v26 = [(WFAction *)self identifier];
      *buf = 138543362;
      v42 = v26;
      _os_signpost_emit_with_name_impl(&dword_1CA256000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "RunAction", " enableTelemetry=YES actionID=%{signpost.telemetry:string1,public}@", buf, 0xCu);
    }

    [(WFAction *)self setRunning:1];
    [(WFAction *)self setUserInterface:v14];
    [(WFAction *)self setRunningDelegate:v15];
    [(WFAction *)self setVariableSource:v16];
    [(WFAction *)self setWorkQueue:v17];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __98__WFAction_runWithInput_userInterface_runningDelegate_variableSource_workQueue_completionHandler___block_invoke;
    block[3] = &unk_1E837FA70;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __98__WFAction_runWithInput_userInterface_runningDelegate_variableSource_workQueue_completionHandler___block_invoke_3;
    aBlock[3] = &unk_1E8374EC8;
    objc_copyWeak(v39, buf);
    v39[1] = v23;
    v38 = v18;
    v27 = _Block_copy(aBlock);
    completionHandler = self->_completionHandler;
    self->_completionHandler = v27;

    v29 = [MEMORY[0x1E69E0A90] currentDevice];
    if ([(WFAction *)self isDisabledWhenRunOnDevice:v29])
    {
      v30 = [MEMORY[0x1E696ABC0] wf_unsupportedActionErrorWithType:@"NotAvailableOnSpecifiedPlatform" platformIdiom:{objc_msgSend(v29, "idiom")}];
      [(WFAction *)self finishRunningWithError:v30];
    }

    else
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __98__WFAction_runWithInput_userInterface_runningDelegate_variableSource_workQueue_completionHandler___block_invoke_321;
      v33[3] = &unk_1E8374F90;
      v34 = v17;
      v35 = self;
      v36 = v32;
      [(WFAction *)self prepareToProcessWithCompletionHandler:v33];

      v30 = v34;
    }

    objc_destroyWeak(v39);
    objc_destroyWeak(buf);
  }

  v31 = *MEMORY[0x1E69E9840];
}

uint64_t __98__WFAction_runWithInput_userInterface_runningDelegate_variableSource_workQueue_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __98__WFAction_runWithInput_userInterface_runningDelegate_variableSource_workQueue_completionHandler___block_invoke_2;
  v3[3] = &unk_1E8374EA0;
  v3[4] = v1;
  return [v1 enumerateObservers:v3];
}

void __98__WFAction_runWithInput_userInterface_runningDelegate_variableSource_workQueue_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (!v6)
  {
    v11 = [WeakRetained requiresPrivateOutputLogging];
    v9 = getWFWorkflowExecutionLogObject();
    v12 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (!v12)
      {
        goto LABEL_10;
      }

      v13 = [v5 numberOfItems];
      v14 = [v5 items];
      v15 = [v14 firstObject];
      v24 = 136315907;
      v25 = "[WFAction runWithInput:userInterface:runningDelegate:variableSource:workQueue:completionHandler:]_block_invoke";
      v26 = 2114;
      v27 = v8;
      v28 = 2048;
      v29 = v13;
      v30 = 2113;
      v31 = v15;
      v16 = "%s Action %{public}@ finished with output of %ld items and first item: %{private}@";
    }

    else
    {
      if (!v12)
      {
        goto LABEL_10;
      }

      v17 = [v5 numberOfItems];
      v14 = [v5 items];
      v15 = [v14 firstObject];
      v24 = 136315906;
      v25 = "[WFAction runWithInput:userInterface:runningDelegate:variableSource:workQueue:completionHandler:]_block_invoke";
      v26 = 2114;
      v27 = v8;
      v28 = 2048;
      v29 = v17;
      v30 = 2112;
      v31 = v15;
      v16 = "%s Action %{public}@ finished with output of %ld items and first item: %@";
    }

    _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_DEFAULT, v16, &v24, 0x2Au);

    goto LABEL_10;
  }

  v9 = getWFWorkflowExecutionLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = [v6 domain];
    v24 = 136316162;
    v25 = "[WFAction runWithInput:userInterface:runningDelegate:variableSource:workQueue:completionHandler:]_block_invoke_3";
    v26 = 2114;
    v27 = v8;
    v28 = 2114;
    v29 = v10;
    v30 = 2048;
    v31 = [v6 code];
    v32 = 2112;
    v33 = v6;
    _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_ERROR, "%s Action %{public}@ finished with error {domain: %{public}@, code: %ld}. %@", &v24, 0x34u);
  }

LABEL_10:

  v18 = getWFRunningLifecycleLogObject();
  v19 = v18;
  v20 = *(a1 + 48);
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    LOWORD(v24) = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v19, OS_SIGNPOST_INTERVAL_END, v20, "RunAction", " enableTelemetry=YES ", &v24, 2u);
  }

  [v8 setUserInterface:0];
  [v8 setProcessedParameters:0];
  [v8 setIgnoredParameterKeysForProcessing:0];
  [v8 setRunningDelegate:0];
  [v8 setVariableSource:0];
  [v8 setContentAttributionTracker:0];
  [v8 setContentPermissionRequestor:0];
  v21 = v8[18];
  v8[18] = 0;

  v22 = *(a1 + 32);
  if (v22)
  {
    (*(v22 + 16))(v22, v5, v6);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __98__WFAction_runWithInput_userInterface_runningDelegate_variableSource_workQueue_completionHandler___block_invoke_321(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(*(a1 + 32));
  v4 = *(a1 + 40);
  if (v3)
  {
    [v4 finishRunningWithError:v3];
  }

  else
  {
    v5 = [v4 resourceManager];
    v6 = [*(a1 + 40) userInterface];
    v7 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __98__WFAction_runWithInput_userInterface_runningDelegate_variableSource_workQueue_completionHandler___block_invoke_2_322;
    v11[3] = &unk_1E8374F68;
    v8 = v7;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = v8;
    v13 = v9;
    v14 = v10;
    [v5 makeAccessResourcesAvailableWithUserInterface:v6 completionQueue:v8 completionHandler:v11];
  }
}

void __98__WFAction_runWithInput_userInterface_runningDelegate_variableSource_workQueue_completionHandler___block_invoke_2_322(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = a2;
  dispatch_assert_queue_V2(*(a1 + 32));
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v49;
    v8 = *MEMORY[0x1E6997158];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v49 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v48 + 1) + 8 * i);
        v11 = [v10 domain];
        if ([v11 isEqualToString:v8])
        {
          v12 = [v10 code];

          if (!v12)
          {
            [*(a1 + 40) finishRunningWithError:v10];
            v24 = v4;
            goto LABEL_30;
          }
        }

        else
        {
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v6);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v13 = [*(a1 + 40) resourceManager];
  v24 = [v13 unavailableResources];

  v14 = [v24 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = v14;
  v16 = *v45;
  while (2)
  {
    for (j = 0; j != v15; ++j)
    {
      if (*v45 != v16)
      {
        objc_enumerationMutation(v24);
      }

      v18 = *(*(&v44 + 1) + 8 * j);
      v19 = [v18 availabilityError];

      if (v19)
      {
        v25 = [v18 availabilityError];
        v26 = [v25 wf_isUnsupportedOnPlatformError];

        if (v26)
        {
          v27 = *(a1 + 40);
          v28 = [v18 availabilityError];
          [v27 finishRunningWithError:v28];
LABEL_29:

          goto LABEL_30;
        }

        v28 = [v18 availabilityError];
        v29 = objc_opt_new();
        v30 = MEMORY[0x1E696AEC0];
        v31 = WFLocalizedString(@"Could not run “%@”");
        v32 = [*(a1 + 40) localizedName];
        v33 = [v30 localizedStringWithFormat:v31, v32];
        [v29 setObject:v33 forKeyedSubscript:*MEMORY[0x1E696A588]];

        v34 = [v28 localizedFailureReason];

        if (v34)
        {
          v35 = [v28 localizedFailureReason];
        }

        else
        {
          v36 = [v28 localizedDescription];

          if (!v36)
          {
LABEL_28:
            v38 = *(a1 + 40);
            v39 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFActionErrorDomain" code:1 userInfo:v29];
            [v38 finishRunningWithError:v39];

            goto LABEL_29;
          }

          v35 = [v28 localizedDescription];
        }

        v37 = v35;
        [v29 setObject:v35 forKeyedSubscript:*MEMORY[0x1E696A578]];

        goto LABEL_28;
      }
    }

    v15 = [v24 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_20:

  [*(a1 + 40) willBeginProcessingParameterStates];
  v24 = [*(a1 + 40) copyParameterStates];
  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  v22 = [v20 skipsProcessingHiddenParameters];
  v23 = [*(a1 + 40) shouldAskForValuesWhileProcessingParameterStates];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __98__WFAction_runWithInput_userInterface_runningDelegate_variableSource_workQueue_completionHandler___block_invoke_3_329;
  v42[3] = &unk_1E8374F40;
  v41 = *(a1 + 32);
  v43 = vextq_s8(v41, v41, 8uLL);
  [v20 processParameterStates:v24 withInput:v21 skippingHiddenParameters:v22 askForValuesIfNecessary:v23 workQueue:v41.i64[0] completionHandler:v42];

LABEL_30:
  v40 = *MEMORY[0x1E69E9840];
}

void __98__WFAction_runWithInput_userInterface_runningDelegate_variableSource_workQueue_completionHandler___block_invoke_3_329(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    [*(a1 + 32) finishRunningWithError:v9];
  }

  else
  {
    v10 = v8;
    if (!v8)
    {
      v10 = objc_opt_new();
    }

    objc_storeStrong((*(a1 + 32) + 144), v10);
    if (!v8)
    {
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __98__WFAction_runWithInput_userInterface_runningDelegate_variableSource_workQueue_completionHandler___block_invoke_4;
    v19[3] = &unk_1E8374EF0;
    v19[4] = *(a1 + 32);
    v11 = [v7 if_compactMap:v19];
    [*(a1 + 32) setProcessedParameters:v11];

    v12 = [WFActionDidProcessParametersTestingEvent alloc];
    v13 = *(a1 + 32);
    v14 = [v13 processedParameters];
    v15 = [(WFActionDidProcessParametersTestingEvent *)v12 initWithAction:v13 processedParameters:v14];

    v16 = *(a1 + 32);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __98__WFAction_runWithInput_userInterface_runningDelegate_variableSource_workQueue_completionHandler___block_invoke_5;
    v17[3] = &unk_1E837C698;
    v17[4] = v16;
    v18 = *(a1 + 40);
    [v16 handleTestingEvent:v15 completionHandler:v17];
  }
}

void __98__WFAction_runWithInput_userInterface_runningDelegate_variableSource_workQueue_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v11 = a3;
  v8 = [*(a1 + 32) parameterForKey:a2];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v8)
  {
    v9 = [*(a1 + 32) contentAttributionTracker];
    v10 = [v9 attributionSetForParameter:v8];

    *a5 = [v11 collectionByMergingAttributionSet:v10];
  }
}

void __98__WFAction_runWithInput_userInterface_runningDelegate_variableSource_workQueue_completionHandler___block_invoke_5(uint64_t a1, char a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = [v3 inputPassthrough];
    v5 = *(a1 + 32);
    if (v4 && !v5[19])
    {
      v6 = [v5 input];
      v7 = [v6 copy];
      v8 = *(a1 + 32);
      v9 = *(v8 + 152);
      *(v8 + 152) = v7;

      v5 = *(a1 + 32);
    }

    v10 = [v5 inputParameterKey];

    if (!v10)
    {
      v11 = [*(a1 + 32) previousAction];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v12 = [*(a1 + 32) containedVariablesOfClass:objc_opt_class()];
      v13 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v36;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v36 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [*(*(&v35 + 1) + 8 * i) outputUUID];
            v18 = [v11 UUID];
            v19 = [v17 isEqualToString:v18];

            if (v19)
            {
              v20 = 0;
              goto LABEL_19;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v20 = 1;
LABEL_19:

      v22 = [*(a1 + 32) inputRequired];
      if ((v20 & 1) == 0 && (v22 & 1) == 0)
      {
        v23 = objc_opt_new();
        v24 = *(a1 + 32);
        v25 = *(v24 + 144);
        *(v24 + 144) = v23;
      }
    }

    if ([*(a1 + 32) showsImplicitChooseFromListWhenRunWithInput:*(*(a1 + 32) + 144)])
    {
      v26 = objc_opt_class();
      v27 = *(a1 + 32);
      v28 = v27[18];
      v29 = [v27 userInterface];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __98__WFAction_runWithInput_userInterface_runningDelegate_variableSource_workQueue_completionHandler___block_invoke_6;
      v33[3] = &unk_1E837FA70;
      v30 = *(a1 + 40);
      v34 = *(a1 + 32);
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __98__WFAction_runWithInput_userInterface_runningDelegate_variableSource_workQueue_completionHandler___block_invoke_7;
      v32[3] = &unk_1E8374F18;
      v32[4] = v34;
      [v26 showImplicitChooseFromListWithInput:v28 userInterface:v29 workQueue:v30 cancelHandler:v33 selectionHandler:v32];
    }

    else
    {
      [*(a1 + 32) performDataAndHardwareAccessChecksAndRun];
    }

    v31 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v21 = *MEMORY[0x1E69E9840];

    [v3 finishRunningWithError:?];
  }
}

void __98__WFAction_runWithInput_userInterface_runningDelegate_variableSource_workQueue_completionHandler___block_invoke_7(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 144), a2);
  v7 = a2;
  v4 = [*(a1 + 32) contentAttributionTracker];
  v5 = [v7 attributionSet];
  v6 = [*(a1 + 32) inputParameter];
  [v4 replaceAttributionSet:v5 forParameter:v6];

  [*(a1 + 32) performDataAndHardwareAccessChecksAndRun];
}

void __98__WFAction_runWithInput_userInterface_runningDelegate_variableSource_workQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 actionRunningStateDidChange:*(a1 + 32)];
  }
}

- (id)generatedResourceNodes
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(WFAction *)self appResource];

  if (v4)
  {
    v5 = [(WFAction *)self appResource];
    [v5 setDelegate:self];

    v6 = [WFResourceNode alloc];
    v7 = [(WFAction *)self appResource];
    v8 = [(WFResourceNode *)v6 initWithResource:v7];

    [v3 addObject:v8];
  }

  v9 = [(WFAction *)self displayableAppDescriptor];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 bundleIdentifier];
    if (!v11)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v15 = [(WFAction *)self appDescriptor];
  v11 = [v15 bundleIdentifier];

  if (v11)
  {
LABEL_5:
    v12 = [[WFAppProtectionAccessResource alloc] initWithAssociatedAppBundleIdentifier:v11];
    v13 = [[WFResourceNode alloc] initWithResource:v12];
    [v3 addObject:v13];
  }

LABEL_6:

  return v3;
}

- (void)recreateGeneratedResourcesIfNeeded
{
  v3 = [(WFAction *)self generatedResourceNodes];
  [(WFAction *)self setCurrentGeneratedResourceNodes:v3];
}

- (void)recreateUnevaluatedResourcesIfNeeded
{
  v3 = [(WFAction *)self requiredResources];
  v6 = [WFResourceNode nodesWithDefinitions:v3];

  v4 = [(WFAction *)self currentGeneratedResourceNodes];
  v5 = [v6 arrayByAddingObjectsFromArray:v4];
  [(WFAction *)self setCurrentUnevaluatedResourceNodes:v5];
}

- (void)recreateResourcesIfNeeded
{
  [(WFAction *)self recreateGeneratedResourcesIfNeeded];

  [(WFAction *)self recreateUnevaluatedResourcesIfNeeded];
}

- (id)unevaluatedResourceNodes
{
  currentUnevaluatedResourceNodes = self->_currentUnevaluatedResourceNodes;
  if (!currentUnevaluatedResourceNodes)
  {
    [(WFAction *)self recreateUnevaluatedResourcesIfNeeded];
    currentUnevaluatedResourceNodes = self->_currentUnevaluatedResourceNodes;
  }

  return currentUnevaluatedResourceNodes;
}

- (id)unevaluatedResourceObjectsOfClasses:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(WFAction *)self unevaluatedResourceNodes];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v13 + 1) + 8 * i) addResourceObjectsOfClassesOrProtocols:v4 toSet:v5];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)unevaluatedResourceObjectsOfClass:(Class)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:a3];
  v5 = [(WFAction *)self unevaluatedResourceObjectsOfClasses:v4];

  return v5;
}

- (void)setCurrentGeneratedResourceNodes:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = self->_resourceManager;
  v7 = v6;
  p_currentGeneratedResourceNodes = &self->_currentGeneratedResourceNodes;
  v31 = v6;
  if (self->_currentGeneratedResourceNodes)
  {
    v30 = v5;
    [(WFResourceManager *)v6 removeResourceNodes:?];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v9 = *p_currentGeneratedResourceNodes;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v37;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v37 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v36 + 1) + 8 * i) resource];
          v15 = v14;
          if (v14)
          {
            if ([v14 conformsToProtocol:&unk_1F4A9CC28])
            {
              v16 = v15;
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {
            v16 = 0;
          }

          v17 = v16;

          [v17 setWorkflow:0];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v11);
    }

    v5 = v30;
    v7 = v31;
  }

  objc_storeStrong(&self->_currentGeneratedResourceNodes, a3);
  if (*p_currentGeneratedResourceNodes)
  {
    [(WFResourceManager *)v7 addResourceNodes:?];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v18 = *p_currentGeneratedResourceNodes;
    v19 = [(NSArray *)v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v33;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v32 + 1) + 8 * j);
          v24 = [(WFAction *)self workflow];
          v25 = [v23 resource];
          v26 = v25;
          if (v25)
          {
            if ([v25 conformsToProtocol:&unk_1F4A9CC28])
            {
              v27 = v26;
            }

            else
            {
              v27 = 0;
            }
          }

          else
          {
            v27 = 0;
          }

          v28 = v27;

          [v28 setWorkflow:v24];
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v20);
    }

    v7 = v31;
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (id)createResourceManager
{
  v3 = [WFResourceManager alloc];
  v4 = [(WFAction *)self requiredResources];
  v5 = [(WFResourceManager *)v3 initWithDefinitions:v4];

  return v5;
}

- (WFResourceManager)resourceManager
{
  v21 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_resourceManagerLock);
  if (!self->_resourceManager)
  {
    v3 = getWFGeneralLogObject();
    v4 = os_signpost_id_generate(v3);

    v5 = getWFGeneralLogObject();
    v6 = v5;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      v7 = [(WFAction *)self identifier];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v17 = 138412546;
      v18 = v7;
      v19 = 2112;
      v20 = v9;
      _os_signpost_emit_with_name_impl(&dword_1CA256000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "CreateResourceManager", "identifier=%{signpost.description:attribute}@,class=%{signpost.description:attribute}@", &v17, 0x16u);
    }

    v10 = [(WFAction *)self createResourceManager];
    resourceManager = self->_resourceManager;
    self->_resourceManager = v10;

    [(WFAction *)self recreateResourcesIfNeeded];
    WFConfigureParameterRelationResources(self->_resourceManager, self);
    v12 = getWFGeneralLogObject();
    v13 = v12;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_with_name_impl(&dword_1CA256000, v13, OS_SIGNPOST_INTERVAL_END, v4, "CreateResourceManager", "", &v17, 2u);
    }
  }

  os_unfair_lock_unlock(&self->_resourceManagerLock);
  v14 = self->_resourceManager;
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)parameterDefaultSerializedRepresentationDidChange:(id)a3
{
  v9 = a3;
  os_unfair_lock_lock(&self->_defaultParametersCacheLock);
  v4 = [(WFAction *)self cachedDefaultParameterStates];
  v5 = [v9 key];
  [v4 removeObjectForKey:v5];

  os_unfair_lock_unlock(&self->_defaultParametersCacheLock);
  v6 = [v9 key];
  v7 = [(WFAction *)self parameterStateForKey:v6 fallingBackToDefaultValue:0];

  if (!v7 || ([v9 parameterStateIsValid:v7] & 1) == 0)
  {
    v8 = [v9 key];
    [(WFAction *)self notifyEventObserversParameterStateDidChangeForKey:v8];
  }
}

- (void)parameterStateValidityCriteriaDidChange:(id)a3
{
  v4 = [a3 key];
  [(WFAction *)self notifyEventObserversParameterStateDidChangeForKey:v4];
}

- (void)updateParameterSummaryIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self parameterSummary];

  if (v5)
  {
    v6 = [(WFAction *)self parameterSummary];
    v4[2](v4, v6, 0);
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFActionErrorDomain" code:16 userInfo:0];
    (v4)[2](v4, 0, v6);
  }
}

- (BOOL)shouldInsertExpandingParameterForParameter:(id)a3
{
  v3 = a3;
  if ([v3 allowsMultipleValues])
  {
    v4 = [v3 displaysMultipleValueEditor];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)notifyEventObserversParameterStateDidChangeForKey:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_observersLock);
  v5 = [(WFAction *)self eventObservers];
  v6 = [v5 allObjects];
  v7 = [v6 sortedArrayUsingComparator:&__block_literal_global_8842];

  os_unfair_lock_unlock(&self->_observersLock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 action:self parameterStateDidChangeForKey:{v4, v15}];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __62__WFAction_notifyEventObserversParameterStateDidChangeForKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = __62__WFAction_notifyEventObserversParameterStateDidChangeForKey___block_invoke_2(a3);
  v6 = __62__WFAction_notifyEventObserversParameterStateDidChangeForKey___block_invoke_2(v4);

  v7 = [v5 compare:v6];
  return v7;
}

id __62__WFAction_notifyEventObserversParameterStateDidChangeForKey___block_invoke_2(void *a1)
{
  v1 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v3 = &unk_1F4A9A1B0;
  }

  else
  {
    v3 = &unk_1F4A9A1C8;
  }

  return v3;
}

- (id)supplementalParameterValueForKey:(id)a3 ofClass:(Class)a4
{
  v6 = a3;
  v7 = [(WFAction *)self encodedSerializedParameters];
  v8 = [v7 objectForKey:v6];

  v9 = WFEnforceClass_8714(v8, a4);

  return v9;
}

- (void)setSupplementalParameterValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFAction *)self encodedSerializedParameters];
  v9 = v8;
  if (v6)
  {
    [v8 setObject:v6 forKey:v7];
  }

  else
  {
    [v8 removeObjectForKey:v7];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__WFAction_setSupplementalParameterValue_forKey___block_invoke;
  v11[3] = &unk_1E8374E78;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [(WFAction *)self enumerateObservers:v11];
}

void __49__WFAction_setSupplementalParameterValue_forKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 action:*(a1 + 32) supplementalParameterValueDidChangeForKey:*(a1 + 40)];
  }
}

void __32__WFAction_serializedParameters__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  v5 = [*(a1 + 32) parameterForKey:a2];
  v6 = *(a1 + 40);
  v7 = [v12 serializedRepresentation];
  v8 = [v5 keyForSerialization];
  [v6 setValue:v7 forKey:v8];

  if (objc_opt_respondsToSelector())
  {
    v9 = [v5 legacyKey];
    if (v9)
    {
      v10 = *(a1 + 40);
      v11 = [v12 legacySerializedRepresentation];
      [v10 setValue:v11 forKey:v9];
    }
  }
}

- (id)createStateForParameter:(id)a3 fromSerializedRepresentation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_alloc(objc_msgSend(v7 "stateClass"))];

  return v8;
}

- (BOOL)setParameterStateToVariable:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFAction.m" lineNumber:444 description:{@"Invalid parameter not satisfying: %@", @"variable"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_9:
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"WFAction.m" lineNumber:445 description:{@"Invalid parameter not satisfying: %@", @"key"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_3:
  v10 = [(WFAction *)self parameterForKey:v9];
  v11 = v10;
  if (v10 && (v12 = [v10 stateClass], -[objc_class instancesRespondToSelector:](v12, "instancesRespondToSelector:", sel_initWithVariable_)))
  {
    v13 = [[v12 alloc] initWithVariable:v7];
    v14 = [(WFAction *)self setParameterState:v13 forKey:v9];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)setParameterState:(id)a3 forKey:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = getWFGeneralLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v26 = 136316162;
    v27 = "[WFAction setParameterState:forKey:]";
    v28 = 2114;
    v29 = self;
    v30 = 2114;
    v31 = v10;
    v32 = 2114;
    v33 = v7;
    v34 = 2112;
    v35 = v6;
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEFAULT, "%s Action: %{public}@ setting parameter state: %{public}@, key:%{public}@, value:%@", &v26, 0x34u);
  }

  v11 = [(WFAction *)self parameterForKey:v7];
  v12 = [(WFAction *)self inputParameterKey];
  v13 = [v7 isEqualToString:v12];

  if (v13)
  {
    [(WFAction *)self lockInputParameter];
  }

  if (v11)
  {
    [v11 stateClass];
    isKindOfClass = objc_opt_isKindOfClass();
    if (v6 && (isKindOfClass & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_12:
    v23 = [(WFAction *)self decodedParameterStates];
    [v23 setValue:v6 forKey:v7];

    [(WFAction *)self notifyEventObserversParameterStateDidChangeForKey:v7];
    v22 = 1;
    goto LABEL_13;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

LABEL_8:
  v15 = getWFGeneralLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    v16 = objc_opt_class();
    v17 = v16;
    v18 = objc_opt_class();
    v19 = v18;
    v20 = [v11 stateClass];
    v26 = 136315906;
    v27 = "[WFAction setParameterState:forKey:]";
    v28 = 2112;
    v29 = v16;
    v30 = 2112;
    v31 = v18;
    v32 = 2112;
    v33 = v20;
    v21 = v20;
    _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_FAULT, "%s Warning: Attempted to set a parameter state of class %@ when %@ requires %@", &v26, 0x2Au);
  }

  v22 = 0;
LABEL_13:

  v24 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)serializedParameterStateForKey:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self decodedParameterStates];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [v6 serializedRepresentation];
  }

  else
  {
    v8 = [(WFAction *)self encodedSerializedParameters];
    v7 = [v8 objectForKey:v4];
  }

  return v7;
}

- (id)parameterStateForKey:(id)a3 fallingBackToDefaultValue:(BOOL)a4
{
  v4 = a4;
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(WFAction *)self parameterForKey:v6];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_26;
  }

  os_unfair_lock_lock(&self->_parameterStateDeserializationLock);
  v8 = [(WFAction *)self decodedParameterStates];
  v9 = [v8 objectForKey:v6];

  if (v9)
  {
    os_unfair_lock_unlock(&self->_parameterStateDeserializationLock);
  }

  else
  {
    v11 = [v7 keyForSerialization];
    v12 = objc_alloc(MEMORY[0x1E695DEC8]);
    v13 = [v7 legacyKey];
    v14 = [v12 initWithObjects:{v11, v13, 0}];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = v14;
    v9 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v9)
    {
      v26 = v11;
      v16 = *v28;
LABEL_7:
      v17 = 0;
      while (1)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v15);
        }

        v18 = *(*(&v27 + 1) + 8 * v17);
        v19 = [(WFAction *)self encodedSerializedParameters];
        v20 = [v19 objectForKey:v18];

        if (v20)
        {
          break;
        }

        if (v9 == ++v17)
        {
          v9 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v9)
          {
            goto LABEL_7;
          }

          v21 = v15;
          v11 = v26;
          goto LABEL_17;
        }
      }

      v9 = [(WFAction *)self createStateForParameter:v7 fromSerializedRepresentation:v20];

      if (v9)
      {
        v22 = [(WFAction *)self decodedParameterStates];
        [v22 setObject:v9 forKey:v6];

        v21 = [(WFAction *)self encodedSerializedParameters];
        v11 = v26;
        [v21 removeObjectForKey:v26];
        goto LABEL_17;
      }

      v11 = v26;
    }

    else
    {
      v21 = v15;
LABEL_17:
    }

    os_unfair_lock_unlock(&self->_parameterStateDeserializationLock);
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (([v7 parameterStateIsValid:v9] & 1) == 0)
  {

    v9 = 0;
  }

LABEL_22:
  if (v4 && !v9)
  {
    v23 = [(WFAction *)self defaultParameterStateForKey:v6];
  }

  else
  {
    v23 = v9;
  }

  v10 = v23;

LABEL_26:
  v24 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)defaultParameterStateForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_defaultParametersCacheLock);
  v5 = [(WFAction *)self cachedDefaultParameterStates];
  v6 = [v5 objectForKey:v4];

  os_unfair_lock_unlock(&self->_defaultParametersCacheLock);
  if (!v6)
  {
    v7 = [(WFAction *)self parameterForKey:v4];
    v8 = [v7 defaultSerializedRepresentation];
    if (v8)
    {
      v6 = [(WFAction *)self createStateForParameter:v7 fromSerializedRepresentation:v8];
      if (v6)
      {
        os_unfair_lock_lock(&self->_defaultParametersCacheLock);
        v9 = [(WFAction *)self cachedDefaultParameterStates];
        [v9 setObject:v6 forKey:v4];

        os_unfair_lock_unlock(&self->_defaultParametersCacheLock);
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)parameterForKey:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self parametersByKey];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v7 = [(WFAction *)self visibleParametersWithProcessing:0];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __28__WFAction_parameterForKey___block_invoke;
    v9[3] = &unk_1E8374E28;
    v10 = v4;
    v6 = [v7 if_firstObjectPassingTest:v9];
  }

  return v6;
}

uint64_t __28__WFAction_parameterForKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 key];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)preloadDefaultParameterStatesIfNecessaryWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self parameters];
  if (v5 && (v6 = v5, v7 = [(WFAction *)self requiresRemoteExecution], v6, !v7))
  {
    v8 = [(WFAction *)self parameters];
    v9 = [(WFAction *)self workQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __74__WFAction_preloadDefaultParameterStatesIfNecessaryWithCompletionHandler___block_invoke;
    v12[3] = &unk_1E8374E00;
    v12[4] = self;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__WFAction_preloadDefaultParameterStatesIfNecessaryWithCompletionHandler___block_invoke_3;
    v10[3] = &unk_1E83766E8;
    v11 = v4;
    [v8 if_enumerateAsynchronouslyOnQueue:v9 block:v12 completionHandler:v10];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

void __74__WFAction_preloadDefaultParameterStatesIfNecessaryWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [*(a1 + 32) workQueue];

  if (v10)
  {
    v11 = [*(a1 + 32) workQueue];
    [v9 setCompletionQueue:v11];
  }

  if (!v9)
  {
    goto LABEL_11;
  }

  if (![v9 loadsDefaultStateAsynchronously])
  {
    goto LABEL_11;
  }

  v12 = [*(a1 + 32) serializedParameters];
  v13 = [v6 key];
  v14 = [v12 objectForKeyedSubscript:v13];

  if (!v14)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __74__WFAction_preloadDefaultParameterStatesIfNecessaryWithCompletionHandler___block_invoke_2;
    v15[3] = &unk_1E8376328;
    v16 = v7;
    [v9 loadDefaultSerializedRepresentationWithCompletionHandler:v15];
  }

  else
  {
LABEL_11:
    (*(v7 + 2))(v7, 0);
  }
}

- (id)copyForDuplicating
{
  v3 = [(WFAction *)self serializedParameters];
  v4 = [v3 mutableCopy];

  [v4 removeObjectForKey:@"UUID"];
  [v4 removeObjectForKey:@"GroupingIdentifier"];
  v5 = [(WFAction *)self copyWithSerializedParameters:v4];

  return v5;
}

- (id)copyForProcessing
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [(WFAction *)self copy];
  v4 = [(WFAction *)self runningDelegate];
  [v3 setRunningDelegate:v4];

  v5 = [(WFAction *)self variableSource];
  [v3 setVariableSource:v5];

  v6 = [(WFAction *)self toolInvocation];
  v32 = v3;
  [v3 setToolInvocation:v6];

  if ([(WFAction *)self requiresRemoteExecution])
  {
    v7 = [(WFAction *)self parameters];
    v8 = [v7 objectsMatchingClass:objc_opt_class()];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (!v10)
    {
      goto LABEL_33;
    }

    v11 = v10;
    v12 = *v34;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v33 + 1) + 8 * i);
        if (!v14)
        {
          v19 = 0;
          goto LABEL_31;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;

        v14 = v14;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v14;
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;

        if (v16)
        {
          v19 = v14;
          if ([v16 possibleStatesLoadingState] == 3)
          {
            v20 = [v16 key];
            v21 = [v32 parameterForKey:v20];

            if (v21)
            {
              v22 = off_1E836E2B8;
              goto LABEL_24;
            }

            v27 = 0;
            goto LABEL_30;
          }
        }

        else
        {
          v19 = 0;
        }

        if (!v18)
        {
          v14 = 0;
          goto LABEL_31;
        }

        v23 = [v18 possibleStates];
        v24 = [v23 count];

        if (!v24)
        {
          goto LABEL_31;
        }

        v25 = [v18 key];
        v21 = [v32 parameterForKey:v25];

        if (v21)
        {
          v22 = off_1E836E2F8;
          v16 = v18;
          v18 = v14;
          v14 = v19;
LABEL_24:
          v26 = *v22;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = v21;
          }

          else
          {
            v27 = 0;
          }

          goto LABEL_30;
        }

        v27 = 0;
        v16 = v18;
        v18 = v14;
        v14 = v19;
LABEL_30:
        v19 = v14;
        v28 = v27;

        v29 = [v16 possibleStates];
        [v28 setPossibleStatesFromRemoteSource:v29];

        v14 = v18;
LABEL_31:
      }

      v11 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (!v11)
      {
LABEL_33:

        break;
      }
    }
  }

  v30 = *MEMORY[0x1E69E9840];
  return v32;
}

- (id)copyWithDefinition:(id)a3 serializedParameters:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc(objc_opt_class());
  v9 = [(WFAction *)self identifier];
  v10 = [v8 initWithIdentifier:v9 definition:v7 serializedParameters:v6];

  return v10;
}

- (id)copyWithSerializedParameters:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(WFAction *)self identifier];
  v7 = [(WFAction *)self definition];
  v8 = [v5 initWithIdentifier:v6 definition:v7 serializedParameters:v4];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(WFAction *)self serializedParameters];
  v5 = [(WFAction *)self copyWithSerializedParameters:v4];

  return v5;
}

- (WFAppInstalledResource)appResource
{
  v3 = [(WFAction *)self appDescriptor];

  if (v3)
  {
    appResource = self->_appResource;
    if (!appResource)
    {
      v5 = [WFAppInstalledResource alloc];
      v6 = [(WFAction *)self appDescriptor];
      v7 = [(WFAppInstalledResource *)v5 initWithAppDescriptor:v6 requiresAppToBeInstalled:[(WFAction *)self appResourceRequiresAppInstall]];
      v8 = self->_appResource;
      self->_appResource = v7;

      [(WFAppInstalledResource *)self->_appResource setDelegate:self];
      appResource = self->_appResource;
    }

    v9 = appResource;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)appResourceRequiresAppInstall
{
  v2 = [(WFAction *)self appDefinition];
  v3 = [v2 objectForKey:@"ActionRequiresAppInstallation"];

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

  v6 = [v5 BOOLValue];
  return v6;
}

- (id)missingAppError
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v9[0] = *MEMORY[0x1E696A580];
  v3 = WFLocalizedString(@"Missing App");
  v10[0] = v3;
  v9[1] = *MEMORY[0x1E696A578];
  v4 = WFLocalizedString(@"This action requires an app that may not be installed.");
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v6 = [v2 errorWithDomain:@"WFActionErrorDomain" code:10 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)resolveAppDescriptorIfNecessary:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self appDescriptor];
  v6 = [v5 requiresUserConfirmation];

  if (v6)
  {
    v7 = [(WFAction *)self userInterface];
    if (v7 && (v8 = v7, [(WFAction *)self userInterface], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_opt_respondsToSelector(), v9, v8, (v10 & 1) != 0))
    {
      v11 = [(WFAction *)self userInterface];
      v12 = [(WFAction *)self appDescriptor];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __44__WFAction_resolveAppDescriptorIfNecessary___block_invoke;
      v14[3] = &unk_1E8374DD8;
      v14[4] = self;
      v15 = v4;
      [v11 resolveDescriptor:v12 completionHandler:v14];
    }

    else
    {
      v13 = [(WFAction *)self missingAppError];
      (*(v4 + 2))(v4, v13);
    }
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

void __44__WFAction_resolveAppDescriptorIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    [*(a1 + 32) updateAppDescriptorInDatabaseWithSelectedApp:v3];
    [*(a1 + 32) updateAppDescriptorWithSelectedApp:v6];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) missingAppError];
    (*(v4 + 16))(v4, v5);
  }
}

- (void)updateAppDescriptorWithSelectedApp:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  [(WFAction *)self setAppDescriptor:a3];
  [(WFAction *)self setAppResource:0];
  [(WFAction *)self recreateResourcesIfNeeded];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(WFAction *)self resourceManager];
  v5 = [v4 resourceObjectsOfClass:objc_opt_class()];

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

        [*(*(&v11 + 1) + 8 * v9++) refreshAvailabilityWithNotification];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (INAppDescriptor)appDescriptor
{
  v3 = [(WFAction *)self appDefinition];
  if (v3)
  {
    appDescriptor = self->_appDescriptor;
    if (!appDescriptor)
    {
      v5 = [objc_alloc(MEMORY[0x1E696E720]) initWithSerializedRepresentation:v3];
      v6 = [MEMORY[0x1E696E748] sharedResolver];
      v7 = [v6 resolvedAppMatchingDescriptor:v5];
      v8 = self->_appDescriptor;
      self->_appDescriptor = v7;

      appDescriptor = self->_appDescriptor;
    }

    v9 = appDescriptor;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFAction *)self identifier];
  v7 = [(WFAction *)self inputParameter];
  v8 = [(WFAction *)self parameters];
  v9 = [(WFAction *)self definition];
  v10 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, inputParameter: %@, parameters: %@, definition: %@>", v5, self, v6, v7, v8, v9];

  return v10;
}

- (WFAction)initWithIdentifier:(id)a3 definition:(id)a4 serializedParameters:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"WFAction.m" lineNumber:140 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v12 = objc_opt_class();
  if (v12 == objc_opt_class())
  {
    v18 = [v10 objectForKey:@"ActionClass"];
    v19 = NSClassFromString(v18);

    if ([(objc_class *)v19 isSubclassOfClass:objc_opt_class()])
    {
      v20 = [[v19 alloc] initWithIdentifier:v9 definition:v10 serializedParameters:v11];
LABEL_12:
      v21 = v20;
      goto LABEL_13;
    }
  }

  else
  {
    v33.receiver = self;
    v33.super_class = WFAction;
    self = [(WFAction *)&v33 init];
    if (self)
    {
      v13 = [v9 copy];
      identifier = self->_identifier;
      self->_identifier = v13;

      objc_storeStrong(&self->_definition, a4);
      v15 = [v11 mutableCopy];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = objc_opt_new();
      }

      encodedSerializedParameters = self->_encodedSerializedParameters;
      self->_encodedSerializedParameters = v17;

      v23 = objc_opt_new();
      cachedDefaultParameterStates = self->_cachedDefaultParameterStates;
      self->_cachedDefaultParameterStates = v23;

      v25 = objc_opt_new();
      decodedParameterStates = self->_decodedParameterStates;
      self->_decodedParameterStates = v25;

      v27 = objc_opt_new();
      expandingParameters = self->_expandingParameters;
      self->_expandingParameters = v27;

      v29 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      eventObservers = self->_eventObservers;
      self->_eventObservers = v29;

      *&self->_parameterInitializationLock._os_unfair_lock_opaque = 0;
      self->_didRunRemotely = 0;
      objc_storeStrong(&self->_widgetSizeClass, *MEMORY[0x1E696E540]);
      *&self->_observersLock._os_unfair_lock_opaque = 0;
      self->_defaultParametersCacheLock._os_unfair_lock_opaque = 0;
      v20 = self;
      self = v20;
      goto LABEL_12;
    }
  }

  v21 = 0;
LABEL_13:

  return v21;
}

+ (void)showImplicitChooseFromListWithInput:(id)a3 userInterface:(id)a4 workQueue:(id)a5 cancelHandler:(id)a6 selectionHandler:(id)a7
{
  v37[1] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v36 = @"WFChooseFromListActionPrompt";
  v18 = WFLocalizedString(@"Choose an Item");
  v37[0] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];

  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__8610;
  v34 = __Block_byref_object_dispose__8611;
  v20 = +[WFActionRegistry sharedRegistry];
  v35 = [v20 createActionWithIdentifier:@"is.workflow.actions.choosefromlist" serializedParameters:v19];

  v21 = v31[5];
  if (!v21)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:a1 file:@"WFAction.m" lineNumber:2795 description:@"Choose from list action expected to load from registry"];

    v21 = v31[5];
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __103__WFAction_showImplicitChooseFromListWithInput_userInterface_workQueue_cancelHandler_selectionHandler___block_invoke;
  v26[3] = &unk_1E8375308;
  v22 = v16;
  v27 = v22;
  v23 = v17;
  v28 = v23;
  v29 = &v30;
  [v21 runWithInput:v13 userInterface:v14 runningDelegate:0 variableSource:0 workQueue:v15 completionHandler:v26];

  _Block_object_dispose(&v30, 8);
  v24 = *MEMORY[0x1E69E9840];
}

void __103__WFAction_showImplicitChooseFromListWithInput_userInterface_workQueue_cancelHandler_selectionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v7 = a2;
  if ([a3 wf_isUserCancelledError])
  {
    (*(a1[4] + 16))();
  }

  else
  {
    (*(a1[5] + 16))();
    v5 = *(a1[6] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

+ (id)userInterfaceXPCInterface
{
  v2 = [a1 userInterfaceProtocol];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isOutputExpandedInEditor
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    v4 = [(WFAction *)self supplementalParameterValueForKey:@"OutputExpandedInEditor" ofClass:objc_opt_class()];
    v5 = [v4 BOOLValue];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (id)visibleParametersWithProcessing:(BOOL)a3
{
  v5 = [(WFAction *)self parameters];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__WFAction_Display__visibleParametersWithProcessing___block_invoke;
  v11[3] = &unk_1E837D8B0;
  v11[4] = self;
  v6 = [v5 if_flatMap:v11];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__WFAction_Display__visibleParametersWithProcessing___block_invoke_2;
  v9[3] = &unk_1E83753A8;
  v10 = a3;
  v9[4] = self;
  v7 = [v6 if_objectsPassingTest:v9];

  return v7;
}

id __53__WFAction_Display__visibleParametersWithProcessing___block_invoke(uint64_t a1, void *a2)
{
  v38[5] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (![*(a1 + 32) shouldInsertExpandingParameterForParameter:v3])
  {
    goto LABEL_12;
  }

  v4 = [*(a1 + 32) expandingParameters];
  v5 = [v3 key];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    goto LABEL_11;
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = [v3 key];
  v9 = [v7 stringWithFormat:@"Show-%@", v8];

  v10 = [WFParameterDefinition alloc];
  v38[0] = v9;
  v37[0] = @"Key";
  v37[1] = @"Label";
  v11 = [v3 localizedLabel];
  v12 = v11;
  if (!v11)
  {
    v13 = [v3 localizedPlaceholder];
    v12 = &stru_1F4A1C408;
    v32 = v13;
    if (v13)
    {
      v12 = v13;
    }
  }

  v38[1] = v12;
  v37[2] = @"MultipleValueParameterKey";
  v14 = [v3 key];
  v38[2] = v14;
  v37[3] = @"RequiredResources";
  v15 = [v3 definition];
  v16 = [v15 objectForKey:@"RequiredResources"];
  v17 = v16;
  v18 = MEMORY[0x1E695E0F0];
  if (v16)
  {
    v18 = v16;
  }

  v37[4] = @"DefaultValue";
  v19 = MEMORY[0x1E695E118];
  v38[3] = v18;
  v38[4] = MEMORY[0x1E695E118];
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:5];
  v21 = [(WFParameterDefinition *)v10 initWithDictionary:v20];

  if (!v11)
  {
  }

  v6 = [[WFMultipleValueExpandingParameter alloc] initWithDefinition:v21];
  v35[0] = @"WFParameterKey";
  v35[1] = @"WFParameterValue";
  v36[0] = v9;
  v36[1] = v19;
  v35[2] = @"WFResourceClass";
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  v36[2] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];

  v25 = [(WFResource *)[WFParameterRelationResource alloc] initWithDefinition:v24];
  [(WFParameterRelationResource *)v25 setupWithAction:*(a1 + 32) parameter:v6];
  v26 = [v3 resourceManager];
  [v26 addResource:v25];

  [(WFParameter *)v6 addEventObserver:*(a1 + 32)];
  [*(a1 + 32) configureResourcesForParameter:v6];
  v27 = [*(a1 + 32) expandingParameters];
  v28 = [v3 key];
  [v27 setObject:v6 forKey:v28];

  if (v6)
  {
LABEL_11:
    v34[0] = v6;
    v34[1] = v3;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  }

  else
  {
LABEL_12:
    v33 = v3;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
  }

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

uint64_t __53__WFAction_Display__visibleParametersWithProcessing___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isHidden])
  {
    goto LABEL_2;
  }

  v5 = [v3 resourceManager];
  v6 = [v5 resourcesAvailable];

  if (v6)
  {
LABEL_4:
    v4 = 1;
    goto LABEL_5;
  }

  if (*(a1 + 40) == 1)
  {
    v8 = [*(a1 + 32) expandingParameters];
    v9 = [v3 key];
    v10 = [v8 objectForKey:v9];
    if (v10)
    {
      v11 = v10;
      v12 = [v3 resourceManager];
      v13 = [v12 unavailableResources];
      v14 = [v13 count];

      if (v14 == 1)
      {
        goto LABEL_4;
      }
    }

    else
    {
    }
  }

LABEL_2:
  v4 = 0;
LABEL_5:

  return v4;
}

- (BOOL)containsVariableOfType:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [(WFAction *)self parameters];
  v22 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v22)
  {
    v6 = *v28;
    v21 = *v28;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v9 = [v8 key];
        v10 = [(WFAction *)self parameterStateForKey:v9];
        v11 = [v10 containedVariables];

        v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v24;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v24 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [*(*(&v23 + 1) + 8 * j) type];
              v17 = [v16 isEqualToString:v4];

              if (v17)
              {

                v18 = 1;
                goto LABEL_19;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v6 = v21;
      }

      v18 = 0;
      v22 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v22);
  }

  else
  {
    v18 = 0;
  }

LABEL_19:

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)containedVariablesOfClass:(Class)a3
{
  v4 = [(WFAction *)self containedVariables];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__WFAction_Convenience__containedVariablesOfClass___block_invoke;
  v7[3] = &__block_descriptor_40_e35___WFVariable_24__0__WFVariable_8Q16lu32l8;
  v7[4] = a3;
  v5 = [v4 if_compactMap:v7];

  return v5;
}

void *__51__WFAction_Convenience__containedVariablesOfClass___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)containedVariables
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(WFAction *)self parameters];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) key];
        v10 = [(WFAction *)self parameterStateForKey:v9 fallingBackToDefaultValue:0];
        v11 = [v10 containedVariables];
        [v3 addObjectsFromArray:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)promptForArchiveVerificationIfNecessary:(id)a3 completionHandler:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 fileURL];
  v9 = [v8 path];

  v10 = WFSupportedArchiveFormats();
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __91__WFAction_ArchiveVerification__promptForArchiveVerificationIfNecessary_completionHandler___block_invoke;
  v35[3] = &unk_1E837AB68;
  v11 = v9;
  v36 = v11;
  v12 = [v10 if_firstObjectPassingTest:v35];

  if (v12)
  {
    v34 = 0;
    v13 = [MEMORY[0x1E6996CB0] checkArchiveForDisallowedContent:v6 error:&v34];
    v14 = v34;
    v15 = getWFActionsLogObject();
    v16 = v15;
    if (v13)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v38 = "[WFAction(ArchiveVerification) promptForArchiveVerificationIfNecessary:completionHandler:]";
        _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_DEBUG, "%s Archive file successfully passed security validation", buf, 0xCu);
      }

      v7[2](v7, 0);
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = [v14 description];
        *buf = 136315394;
        v38 = "[WFAction(ArchiveVerification) promptForArchiveVerificationIfNecessary:completionHandler:]";
        v39 = 2112;
        v40 = v17;
        _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_ERROR, "%s Found shell config files in file to be opened: %@", buf, 0x16u);
      }

      v18 = [MEMORY[0x1E6996C70] alertWithPreferredStyle:0];
      v19 = WFLocalizedString(@"Allow this shortcut to open an archive containing shell configuration files?");
      [v18 setTitle:v19];

      v20 = WFLocalizedString(@"Opening this archive may automatically extract it and install a potentially malicious shell configuration. This may damage your device, or put your personal data at risk.");
      [v18 setMessage:v20];

      v21 = MEMORY[0x1E6996C78];
      v22 = WFLocalizedString(@"Don’t Allow");
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __91__WFAction_ArchiveVerification__promptForArchiveVerificationIfNecessary_completionHandler___block_invoke_181;
      v32[3] = &unk_1E837F4E8;
      v23 = v7;
      v33 = v23;
      v24 = [v21 buttonWithTitle:v22 style:1 handler:v32];
      [v18 addButton:v24];

      v25 = MEMORY[0x1E6996C78];
      v26 = WFLocalizedString(@"OK");
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __91__WFAction_ArchiveVerification__promptForArchiveVerificationIfNecessary_completionHandler___block_invoke_2;
      v30[3] = &unk_1E837F4E8;
      v31 = v23;
      v27 = [v25 buttonWithTitle:v26 style:2 preferred:1 handler:v30];
      [v18 addButton:v27];

      v28 = [(WFAction *)self userInterface];
      [v28 presentAlert:v18];
    }
  }

  else
  {
    v7[2](v7, 0);
  }

  v29 = *MEMORY[0x1E69E9840];
}

uint64_t __91__WFAction_ArchiveVerification__promptForArchiveVerificationIfNecessary_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 pathExtension];
  v5 = [v4 isEqualToString:v3];

  return v5;
}

void __91__WFAction_ArchiveVerification__promptForArchiveVerificationIfNecessary_completionHandler___block_invoke_181(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] userCancelledError];
  (*(v1 + 16))(v1, v2);
}

- (NSString)sessionKitSessionInvocationType
{
  v3 = [(WFAction *)self sessionKitSessionConfiguration];

  if (v3)
  {
    v4 = @"Automatic";
    v5 = @"Automatic";
  }

  else
  {
    v6 = [(WFAction *)self sessionKitSessionConfigurationDefinition];
    v7 = [v6 objectForKeyedSubscript:@"InvocationType"];
    v8 = objc_opt_class();
    v4 = WFEnforceClass_37066(v7, v8);
  }

  return v4;
}

- (WFActionSessionKitSessionConfiguration)sessionKitSessionConfiguration
{
  v3 = [(WFAction *)self sessionKitSessionConfigurationDefinition];
  v4 = [v3 objectForKeyedSubscript:@"BundleIdentifier"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(WFAction *)self appDescriptor];
    v6 = [v7 bundleIdentifier];
  }

  v8 = 0;
  if (v3 && v6)
  {
    v9 = [(WFAction *)self sessionKitToastDurationsPerRunSourceDefinition];
    v8 = [[WFActionSessionKitSessionConfiguration alloc] initWithBundleIdentifier:v6 toastDurationPerRunSource:v9];
  }

  return v8;
}

- (NSDictionary)sessionKitToastDurationsPerRunSourceDefinition
{
  v2 = [(WFAction *)self sessionKitSessionConfigurationDefinition];
  v3 = [v2 objectForKeyedSubscript:@"ToastDuration"];
  v4 = objc_opt_class();
  v5 = WFEnforceClass_37066(v3, v4);

  return v5;
}

- (NSDictionary)sessionKitSessionConfigurationDefinition
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"SessionConfiguration"];
  v4 = objc_opt_class();
  v5 = WFEnforceClass_37066(v3, v4);

  return v5;
}

- (BOOL)mightStartAudioRecording
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"MightStartAudioRecording"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)mightSuppressRunningProgress
{
  v3 = [(WFAction *)self sessionKitSessionConfiguration];

  if (v3)
  {
    return 1;
  }

  v5 = [(WFAction *)self definition];
  v6 = [v5 objectForKey:@"MightSuppressRunningProgress"];
  v7 = [v6 BOOLValue];

  return v7;
}

- (unint64_t)appearance
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"Appearance"];

  if (v3 && ([v3 isEqualToString:@"Normal"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"Comment"])
    {
      v4 = 2;
    }

    else
    {
      v4 = [v3 isEqualToString:@"Input"];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)deletesInput
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"DeletesInput"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)locallyProcessesData
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"LocallyProcessesData"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)requiresUnlock
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"RequiresUnlock"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (unint64_t)parameterCollapsingBehavior
{
  v3 = [(WFAction *)self parameterSummary];
  if (!v3)
  {
    return 2;
  }

  v4 = v3;
  v5 = [(WFAction *)self displaysParameterSummary];

  if (!v5)
  {
    return 2;
  }

  v6 = [(WFAction *)self definition];
  v7 = [v6 objectForKey:@"ParameterCollapsingBehavior"];

  if ([v7 isEqualToString:@"DefaultBeginExpanded"])
  {
    v8 = 1;
  }

  else if ([v7 isEqualToString:@"Never"])
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSArray)additionalParameterSummaries
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"AdditionalParameterSummaries"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (WFActionParameterSummary)parameterSummary
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"ParameterSummary"];

  return v3;
}

- (int64_t)rateLimitDelay
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"RateLimit"];
  v4 = [v3 objectForKey:@"Delay"];
  v5 = objc_opt_class();
  v6 = WFEnforceClass_37066(v4, v5);
  v7 = [v6 integerValue];

  return v7;
}

- (int64_t)rateLimitTimeout
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"RateLimit"];
  v4 = [v3 objectForKey:@"Timeout"];
  v5 = objc_opt_class();
  v6 = WFEnforceClass_37066(v4, v5);
  v7 = [v6 integerValue];

  return v7;
}

- (int64_t)rateLimitThreshold
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"RateLimit"];
  v4 = [v3 objectForKey:@"Threshold"];
  v5 = objc_opt_class();
  v6 = WFEnforceClass_37066(v4, v5);
  v7 = [v6 integerValue];

  return v7;
}

- (int64_t)initialSuggestionBehavior
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"SuggestedAsInitialAction"];

  if (v3)
  {
    if ([v3 BOOLValue])
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)highRisk
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"HighRisk"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (unint64_t)outputDisclosureLevel
{
  v2 = [(WFAction *)self outputDictionary];
  v3 = [v2 objectForKey:@"DisclosureLevel"];

  v4 = [v3 isEqualToString:@"Public"] ^ 1;
  return v4;
}

- (BOOL)outputsMultipleItems
{
  if ([(WFAction *)self inputPassthrough])
  {

    return [(WFAction *)self inputsMultipleItems];
  }

  else
  {
    v4 = [(WFAction *)self outputDictionary];
    v5 = [v4 objectForKey:@"Multiple"];
    v6 = [v5 BOOLValue];

    return v6;
  }
}

- (BOOL)inputsMultipleItems
{
  v2 = [(WFAction *)self inputDictionary];
  v3 = [v2 objectForKey:@"Multiple"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (NSArray)outputTypes
{
  v2 = [(WFAction *)self outputDictionary];
  v3 = [v2 objectForKey:@"Types"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (NSArray)inputTypes
{
  v2 = [(WFAction *)self inputDictionary];
  v3 = [v2 objectForKey:@"Types"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (BOOL)inputTypeDeterminesOutputType
{
  v2 = [(WFAction *)self inputDictionary];
  v3 = [v2 objectForKey:@"InputTypeDeterminesOutputType"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)snappingPassthrough
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"SnappingPassthrough"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)blocksSnapping
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"BlocksSnapping"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)inputPassthrough
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"InputPassthrough"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)inputRequired
{
  v2 = [(WFAction *)self inputDictionary];
  v3 = [v2 objectForKey:@"Required"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)shouldBeIncludedInAppsList
{
  v3 = [(WFAction *)self app];
  if ([v3 isInstalled])
  {
    v4 = ![(WFAction *)self isDiscontinued];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)localizedCategoryWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self definition];
  v6 = [v5 objectForKey:@"Category"];

  if (v6)
  {
    v7 = [v4 localize:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)localizedCategory
{
  v3 = [(WFAction *)self defaultLocalizationContext];
  v4 = [(WFAction *)self localizedCategoryWithContext:v3];

  return v4;
}

- (WFInterchangeApp)app
{
  v2 = [(WFAction *)self appDescriptor];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = +[WFInterchangeAppRegistry sharedRegistry];
    v5 = [v4 appWithIdentifier:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)fillingProvider
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"FillingProvider"];

  return v3;
}

- (NSDictionary)userInterfaceClasses
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"UserInterfaceClasses"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  v6 = v5;

  return v5;
}

- (NSArray)requiredResources
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"RequiredResources"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (NSArray)userInterfaceTypes
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"UserInterfaces"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (BOOL)requiresRemoteExecution
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(WFAction *)self remoteExecuteOnPlatforms];
  if (v3)
  {
    v4 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = "[WFAction(Definition) requiresRemoteExecution]";
      v14 = 2114;
      v15 = self;
      v16 = 2114;
      v17 = v3;
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEFAULT, "%s %{public}@ definition requires remote execution on platforms: %{public}@", &v12, 0x20u);
    }
  }

  if ([(__CFString *)v3 count])
  {
    v5 = [MEMORY[0x1E69E0A90] currentDevice];
    v6 = [v5 idiom];
    if (v6 >= 7)
    {
      v9 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 136315394;
        v13 = "[WFAction(Definition) requiresRemoteExecution]";
        v14 = 2114;
        v15 = v5;
        _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_ERROR, "%s Current platform is unspecified for device: %{public}@", &v12, 0x16u);
      }

      v7 = 0;
      v8 = 0;
    }

    else
    {
      v7 = off_1E8378E58[v6];
      v8 = [(__CFString *)v3 containsObject:v7];
      v9 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = "[WFAction(Definition) requiresRemoteExecution]";
        v14 = 2114;
        v15 = self;
        v16 = 2114;
        v17 = v7;
        _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@ definition requires remote execution for current platform (%{public}@)", &v12, 0x20u);
      }
    }
  }

  else
  {
    v5 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[WFAction(Definition) requiresRemoteExecution]";
      v14 = 2114;
      v15 = self;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s %{public}@ definition doesn't require remote execution", &v12, 0x16u);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (NSArray)remoteExecuteOnPlatforms
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"RemoteExecuteOnPlatforms"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (BOOL)isResidentCompatible
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"ResidentCompatible"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)visibleForUse:(int64_t)a3
{
  if ([(WFAction *)self isDiscontinued])
  {
    return 0;
  }

  v5 = [(WFAction *)self definition];
  v6 = [v5 objectForKey:@"Discoverable"];

  if (v6)
  {
    v4 = [v6 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)localizedDiscontinuedDescriptionWithContext:(id)a3
{
  v4 = a3;
  if ([(WFAction *)self isDiscontinued])
  {
    v5 = [(WFAction *)self displayableAppDescriptor];
    v6 = [v5 localizedName];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v10 = WFLocalizedStringResourceWithKey(@"Shortcuts", @"Shortcuts");
      v8 = [v4 localize:v10];
    }

    v11 = MEMORY[0x1E696AEC0];
    v12 = WFLocalizedStringResourceWithKey(@"This action won’t be supported in future versions of %@.", @"This action won’t be supported in future versions of %@.");
    v13 = [v4 localize:v12];
    v9 = [v11 localizedStringWithFormat:v13, v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)localizedDiscontinuedDescription
{
  v3 = [(WFAction *)self defaultLocalizationContext];
  v4 = [(WFAction *)self localizedDiscontinuedDescriptionWithContext:v3];

  return v4;
}

- (BOOL)isDiscontinued
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"Discontinued"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (NSArray)disabledOnPlatforms
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"DisabledOnPlatforms"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (id)localizedKeywordsWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self definition];
  v6 = [v5 objectForKey:@"ActionKeywords"];

  if (v6)
  {
    v7 = [v4 localize:v6];
    v8 = [v7 componentsSeparatedByString:@"|"];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (NSArray)localizedKeywords
{
  v3 = [(WFAction *)self defaultLocalizationContext];
  v4 = [(WFAction *)self localizedKeywordsWithContext:v3];

  return v4;
}

- (id)localizedDescriptionAttributionMarkdownStringWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self descriptionDefinition];
  v6 = [v5 objectForKey:@"DescriptionAttribution"];

  if (v6)
  {
    v7 = [v4 localize:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)localizedDescriptionAttributionMarkdownString
{
  v3 = [(WFAction *)self defaultLocalizationContext];
  v4 = [(WFAction *)self localizedDescriptionAttributionMarkdownStringWithContext:v3];

  return v4;
}

- (id)localizedDescriptionRequiresWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self descriptionDefinition];
  v6 = [v5 objectForKey:@"DescriptionRequires"];

  if (v6)
  {
    v7 = [v4 localize:v6];
  }

  else
  {
    v8 = [(WFAction *)self unevaluatedResourceObjectsOfClass:objc_opt_class()];
    v9 = [v8 allObjects];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __64__WFAction_Definition__localizedDescriptionRequiresWithContext___block_invoke;
    v21 = &unk_1E8378D18;
    v10 = v4;
    v22 = v10;
    v11 = [v9 if_compactMap:&v18];

    if ([v11 count])
    {
      v12 = [v11 sortedArrayUsingSelector:sel_localizedStandardCompare_];
      v13 = [v12 componentsJoinedByString:{@", "}];
      v14 = MEMORY[0x1E696AEC0];
      v15 = WFLocalizedStringResourceWithKey(@"Access to %@", @"Access to %@");
      v16 = [v10 localize:v15];
      v7 = [v14 localizedStringWithFormat:v16, v13, v18, v19, v20, v21];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NSString)localizedDescriptionRequires
{
  v3 = [(WFAction *)self defaultLocalizationContext];
  v4 = [(WFAction *)self localizedDescriptionRequiresWithContext:v3];

  return v4;
}

- (id)localizedFocusFilterDescriptionWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self descriptionDefinition];
  v6 = [v5 objectForKey:@"FocusFilterDescription"];

  if (v6)
  {
    v7 = [v4 localize:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)localizedFocusFilterDescription
{
  v3 = [(WFAction *)self defaultLocalizationContext];
  v4 = [(WFAction *)self localizedFocusFilterDescriptionWithContext:v3];

  return v4;
}

- (id)localizedDescriptionNoteWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self descriptionDefinition];
  v6 = [v5 objectForKey:@"DescriptionNote"];

  if (v6)
  {
    v7 = [v4 localize:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)localizedDescriptionNote
{
  v3 = [(WFAction *)self defaultLocalizationContext];
  v4 = [(WFAction *)self localizedDescriptionNoteWithContext:v3];

  return v4;
}

- (id)localizedDescriptionResultWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self descriptionDefinition];
  v6 = [v5 objectForKey:@"DescriptionResult"];

  if (v6)
  {
    v7 = [v4 localize:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)localizedDescriptionResult
{
  v3 = [(WFAction *)self defaultLocalizationContext];
  v4 = [(WFAction *)self localizedDescriptionResultWithContext:v3];

  if ([(WFAction *)self descriptionInputIncludesSupportingItemClasses])
  {
    [(WFAction *)self outputContentClasses];
  }

  else
  {
    [(WFAction *)self specifiedOutputContentClasses];
  }
  v5 = ;
  if ([(WFAction *)self inputPassthrough]&& !v4)
  {
    if ([v5 count])
    {
      v4 = WFLocalizedString(@"The input");
    }

    else
    {
      v4 = 0;
    }
  }

  v6 = [(WFAction *)self typeDescriptionWithTypes:v5 explanationText:v4 multiple:[(WFAction *)self outputsMultipleItems] optional:0];

  return v6;
}

- (id)localizedDescriptionInputWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self descriptionDefinition];
  v6 = [v5 objectForKey:@"DescriptionInput"];

  if (v6)
  {
    v7 = [v4 localize:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)localizedDescriptionInput
{
  v3 = [(WFAction *)self defaultLocalizationContext];
  v4 = [(WFAction *)self localizedDescriptionInputWithContext:v3];

  if ([(WFAction *)self descriptionInputIncludesSupportingItemClasses])
  {
    [(WFAction *)self inputContentClasses];
  }

  else
  {
    [(WFAction *)self specifiedInputContentClasses];
  }
  v5 = ;
  v6 = [(WFAction *)self typeDescriptionWithTypes:v5 explanationText:v4 multiple:[(WFAction *)self inputsMultipleItems] optional:[(WFAction *)self inputRequired]^ 1];

  return v6;
}

- (id)descriptionInput
{
  v2 = [(WFAction *)self descriptionDefinition];
  v3 = [v2 objectForKey:@"DescriptionInput"];

  return v3;
}

- (id)typeDescriptionWithTypes:(id)a3 explanationText:(id)a4 multiple:(BOOL)a5 optional:(BOOL)a6
{
  v6 = a6;
  v34 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        if (a5)
        {
          [v17 localizedPluralTypeDescription];
        }

        else
        {
          [v17 localizedTypeDescription];
        }
        v18 = ;
        if (v18)
        {
          [v11 addObject:v18];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v14);
  }

  v19 = WFLocalizedString(@", ");
  v20 = [v11 componentsJoinedByString:v19];

  if (!v6)
  {
    v21 = 0;
    if (!v10)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v21 = [v20 length] != 0;
  if (v10)
  {
LABEL_17:
    v22 = MEMORY[0x1E696AEC0];
    v23 = WFLocalizedString(@"(%@) %@");
    v24 = [v22 localizedStringWithFormat:v23, v20, v10, v29];

    v20 = v24;
  }

LABEL_18:
  if (v21)
  {
    v25 = WFLocalizedString(@" (optional)");
    v26 = [v20 stringByAppendingString:v25];

    v20 = v26;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v20;
}

- (BOOL)descriptionInputIncludesSupportingItemClasses
{
  v2 = [(WFAction *)self descriptionDefinition];
  v3 = [v2 objectForKey:@"InputIncludesSupportingItemClassesKey"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)localizedDescriptionSummaryWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self descriptionDefinition];
  v6 = [v5 objectForKey:@"DescriptionSummary"];

  if (v6)
  {
    v7 = [v4 localize:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSDictionary)outputDictionary
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"Output"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  v6 = v5;

  return v5;
}

- (WFActionDescriptionDefinition)descriptionDefinition
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 descriptionDefinition];

  return v3;
}

- (WFColor)iconColor
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"IconSymbolColor"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [MEMORY[0x1E69E09E0] colorForName:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (WFIcon)icon
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(WFAction *)self iconName];
  if (!v3)
  {
    v6 = [(WFAction *)self iconSymbolName];
    v8 = [(WFAction *)self iconBackgroundColorName];
    v9 = [(WFAction *)self iconSymbolColorName];
    v10 = v9;
    if (!v6 || !v8)
    {
      v12 = [(WFAction *)self displayableAppDescriptor];
      v13 = [v12 bundleIdentifier];

      if (v13)
      {
        v7 = [objc_alloc(MEMORY[0x1E69E0960]) initWithBundleIdentifier:v13];
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_28;
    }

    if ([v9 length])
    {
      [MEMORY[0x1E69E09E0] colorForName:v10];
    }

    else
    {
      [MEMORY[0x1E69E09E0] whiteColor];
    }
    v13 = ;
    if (v13)
    {
      if ([v8 isEqualToString:@"Tint"])
      {
        [MEMORY[0x1E69E09E0] tintedColorForName:v10];
      }

      else
      {
        [MEMORY[0x1E69E09E0] colorForName:v8];
      }
      v14 = ;
      if (v14)
      {
        v15 = [objc_alloc(MEMORY[0x1E69E0B48]) initWithColor:v14];
        v7 = [objc_alloc(MEMORY[0x1E69E0D70]) initWithSymbolName:v6 symbolColor:v13 background:v15];

LABEL_27:
LABEL_28:

        goto LABEL_29;
      }

      v16 = getWFGeneralLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v19 = 136315394;
        v20 = "[WFAction(Definition) icon]";
        v21 = 2112;
        v22 = v8;
        _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_ERROR, "%s A custom icon color was specified (%@) but we could not find the color in the assets", &v19, 0x16u);
      }

      v14 = 0;
    }

    else
    {
      v14 = getWFGeneralLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v19 = 136315394;
        v20 = "[WFAction(Definition) icon]";
        v21 = 2112;
        v22 = v8;
        _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_ERROR, "%s A custom icon symbol color was specified (%@) but we could not find the color in the assets", &v19, 0x16u);
      }
    }

    v7 = 0;
    goto LABEL_27;
  }

  v4 = MEMORY[0x1E69E0B58];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v4 imageNamed:v3 inBundle:v5];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E69E0B60]) initWithImage:v6];
  }

  else
  {
    v11 = getWFGeneralLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "[WFAction(Definition) icon]";
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, "%s A custom icon was specified (%@) but we could not find the icon in our image assets", &v19, 0x16u);
    }

    v6 = 0;
    v7 = 0;
  }

LABEL_29:

  v17 = *MEMORY[0x1E69E9840];

  return v7;
}

- (NSString)iconSymbolColorName
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"IconSymbolColor"];

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

  return v4;
}

- (NSString)iconBackgroundColorName
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"IconColor"];

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

  return v4;
}

- (NSString)iconSymbolName
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"IconSymbol"];

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

  return v4;
}

- (NSString)iconName
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"IconName"];

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

  return v4;
}

- (NSDictionary)displayableAppDefinition
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"DisplayableAppDefinition"];

  return v3;
}

- (NSDictionary)appDefinition
{
  v2 = [(WFAction *)self definition];
  v3 = [v2 objectForKey:@"AppDefinition"];

  return v3;
}

- (NSString)localizedAppName
{
  v3 = [(WFAction *)self appDescriptor];
  v4 = [v3 localizedName];

  if ([v4 length])
  {
    v5 = v4;
    goto LABEL_10;
  }

  v6 = [(WFAction *)self resourceManager];
  v7 = [v6 resourceObjectsOfClass:objc_opt_class()];
  v8 = [v7 anyObject];

  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v8 = 0;
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  v9 = [v8 descriptor];
  v10 = [v9 localizedName];
  v11 = [v10 length];

  if (!v11)
  {
    v14 = [v8 appName];
    v15 = [v14 length];

    if (v15)
    {
      v5 = [v8 appName];
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = [v8 descriptor];
  v5 = [v12 localizedName];

LABEL_9:
LABEL_10:

  return v5;
}

- (id)localizedDefaultOutputNameWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self outputDictionary];
  v6 = [v5 objectForKey:@"OutputName"];

  if (v6)
  {
    v7 = [v4 localize:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)localizedDefaultOutputName
{
  v3 = [(WFAction *)self defaultLocalizationContext];
  v4 = [(WFAction *)self localizedDefaultOutputNameWithContext:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(WFAction *)self localizedName];
  }

  v7 = v6;

  return v7;
}

- (NSAttributedString)attributedLocalizedName
{
  v3 = objc_alloc(MEMORY[0x1E696AAB0]);
  v4 = [(WFAction *)self localizedName];
  v5 = [v3 initWithString:v4];

  return v5;
}

- (id)localizedNameWithContext:(id)a3
{
  v4 = a3;
  v5 = [(WFAction *)self definition];
  v6 = [v5 name];

  if (v6)
  {
    v7 = [v4 localize:v6];
  }

  else
  {
    v8 = WFLocalizedStringResourceWithKey(@"Unknown Action", @"Unknown Action");
    v7 = [v4 localize:v8];
  }

  return v7;
}

+ (id)iconCache
{
  if (iconCache_onceToken != -1)
  {
    dispatch_once(&iconCache_onceToken, &__block_literal_global_37141);
  }

  v3 = iconCache_iconCache;

  return v3;
}

void __33__WFAction_Definition__iconCache__block_invoke()
{
  v0 = objc_opt_new();
  v1 = iconCache_iconCache;
  iconCache_iconCache = v0;
}

- (NSString)appBundleIdentifier
{
  v2 = [(WFAction *)self app];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (id)deviceLockedError
{
  v19[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v18[0] = *MEMORY[0x1E696A578];
  v4 = [MEMORY[0x1E69E0A90] currentDevice];
  v5 = [v4 idiom];

  if (v5 <= 1)
  {
    if (!v5)
    {
      v6 = @"DEVICE_LOCKED_ERROR_PHONE";
      v7 = @"This shortcut requires your iPhone to be unlocked.";
      goto LABEL_13;
    }

    if (v5 == 1)
    {
      v6 = @"DEVICE_LOCKED_ERROR_PAD";
      v7 = @"This shortcut requires your iPad to be unlocked.";
      goto LABEL_13;
    }
  }

  else
  {
    switch(v5)
    {
      case 2:
        v6 = @"DEVICE_LOCKED_ERROR_MAC";
        v7 = @"This shortcut requires your Mac to be unlocked.";
        goto LABEL_13;
      case 3:
        v6 = @"DEVICE_LOCKED_ERROR_WATCH";
        v7 = @"This shortcut requires your Apple Watch to be unlocked.";
        goto LABEL_13;
      case 4:
        v6 = @"DEVICE_LOCKED_ERROR_POD";
        v7 = @"This shortcut requires your iPod to be unlocked.";
        goto LABEL_13;
    }
  }

  v6 = @"DEVICE_LOCKED_ERROR_UNSPECIFIED";
  v7 = @"This shortcut requires your device to be unlocked.";
LABEL_13:
  v8 = WFLocalizedStringWithKey(v6, v7);
  v19[0] = v8;
  v18[1] = *MEMORY[0x1E696A588];
  v9 = MEMORY[0x1E696AEC0];
  v10 = WFLocalizedString(@"Couldn’t run “%@”");
  v11 = [(WFAction *)self workflow];
  v12 = [v11 name];
  v13 = [v9 localizedStringWithFormat:v10, v12];
  v19[1] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v15 = [v3 errorWithDomain:@"WFActionErrorDomain" code:17 userInfo:v14];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)requestUnlock:(id)a3
{
  v4 = a3;
  if (VCIsDeviceLocked())
  {
    v5 = objc_opt_new();
    [v5 setPreferredStyle:1];
    v6 = [(WFAction *)self localizedName];
    [v5 setTitle:v6];

    v7 = +[WFDatabaseProxy defaultDatabase];
    v8 = [(WFAction *)self workflow];
    v9 = [v8 workflowID];
    v10 = [v7 configuredTriggersForWorkflowID:v9 error:0];

    v11 = [v10 firstObject];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 trigger];
      v14 = [v13 localizedDescriptionWithConfigurationSummary];
      [v5 setTitle:v14];

      v15 = [MEMORY[0x1E69E0A98] attributionWithAppBundleIdentifier:*MEMORY[0x1E69E0FB0]];
      [v5 setAttribution:v15];
    }

    else
    {
      v15 = [(WFAction *)self workflow];
      v16 = objc_alloc(MEMORY[0x1E69E0A98]);
      v17 = [v15 attributionTitle];
      v18 = [v15 attributionIcon];
      v19 = [v15 icon];
      v20 = [v16 initWithTitle:v17 icon:v18 workflowIcon:v19];
      [v5 setAttribution:v20];
    }

    v21 = MEMORY[0x1E696AEC0];
    v22 = WFLocalizedStringWithKey(@"TapToRunAction", @"Tap to run “%@”");
    v23 = [(WFAction *)self localizedName];
    v24 = [v21 stringWithFormat:v22, v23];
    [v5 setMessage:v24];

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __41__WFAction_RequestUnlock__requestUnlock___block_invoke;
    v32[3] = &unk_1E837F4E8;
    v25 = v4;
    v33 = v25;
    [v5 setCancellationHandler:v32];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __41__WFAction_RequestUnlock__requestUnlock___block_invoke_2;
    v30[3] = &unk_1E837F4E8;
    v26 = v25;
    v31 = v26;
    [v5 setSuccessHandler:v30];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __41__WFAction_RequestUnlock__requestUnlock___block_invoke_3;
    v28[3] = &unk_1E837E1F8;
    v28[4] = self;
    v29 = v26;
    [v5 setFailureHandler:v28];
    v27 = [(WFAction *)self userInterface];
    [v27 presentAlert:v5];
  }

  else
  {
    (*(v4 + 2))(v4, 1, 0);
  }
}

void __41__WFAction_RequestUnlock__requestUnlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] userCancelledError];
  (*(v1 + 16))(v1, 0, v2);
}

void __41__WFAction_RequestUnlock__requestUnlock___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) deviceLockedError];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)requestUnlockIfNeeded:(id)a3
{
  v4 = a3;
  if ([(WFAction *)self requiresUnlock])
  {
    if ([(WFAction *)self usesCompactUnlockService])
    {
      v5 = objc_alloc_init(WFCompactUnlockService);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __49__WFAction_RequestUnlock__requestUnlockIfNeeded___block_invoke;
      v7[3] = &unk_1E837D770;
      v8 = v5;
      v9 = v4;
      v6 = v5;
      [(WFCompactUnlockService *)v6 requestUnlockIfNeeded:v7];
    }

    else
    {
      [(WFAction *)self requestUnlock:v4];
    }
  }

  else
  {
    (*(v4 + 2))(v4, 1, 0);
  }
}

void __49__WFAction_RequestUnlock__requestUnlockIfNeeded___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 40);

    v3(v4, 1, 0);
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] userCancelledError];
    (*(v2 + 16))(v2, 0, v5);
  }
}

- (BOOL)usesCompactUnlockService
{
  v3 = [(WFAction *)self runningDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(WFAction *)self runningDelegate];
  v6 = [v5 currentRunningContextForAction:self];

  v7 = [v6 runSource];
  v8 = [v7 isEqualToString:*MEMORY[0x1E69E13A8]];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v10 = [v6 runSource];
    v9 = [v10 isEqualToString:*MEMORY[0x1E69E1368]];
  }

  return v9;
}

- (NSDictionary)serializedRepresentation
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"WFWorkflowActionIdentifier";
  v3 = [(WFAction *)self identifier];
  v8[1] = @"WFWorkflowActionParameters";
  v9[0] = v3;
  v4 = [(WFAction *)self serializedParameters];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)actionsFromSerializedRepresentations:(id)a3 actionRegistry:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 valueForKey:@"WFWorkflowActionIdentifier"];
  v8 = [v6 if_map:&__block_literal_global_69352];

  v9 = [v5 createActionsWithIdentifiers:v7 serializedParameterArray:v8];

  return v9;
}

void *__79__WFAction_Serialization__actionsFromSerializedRepresentations_actionRegistry___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKey:@"WFWorkflowActionParameters"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v5 = v4;

  return v4;
}

+ (id)actionFromSerializedRepresentation:(id)a3 actionRegistry:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v14 count:1];

  v10 = [a1 actionsFromSerializedRepresentations:v9 actionRegistry:{v7, v14, v15}];

  v11 = [v10 firstObject];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end