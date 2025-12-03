@interface WFAction
+ (id)actionFromSerializedRepresentation:(id)representation actionRegistry:(id)registry;
+ (id)actionsFromSerializedRepresentations:(id)representations actionRegistry:(id)registry;
+ (id)iconCache;
+ (id)userInterfaceXPCInterface;
+ (void)showImplicitChooseFromListWithInput:(id)input userInterface:(id)interface workQueue:(id)queue cancelHandler:(id)handler selectionHandler:(id)selectionHandler;
- (BOOL)allowSessionKitSessionsIfNeededWithConfiguration:(id)configuration isManualInvocation:(BOOL)invocation error:(id *)error;
- (BOOL)appResourceRequiresAppInstall;
- (BOOL)blocksSnapping;
- (BOOL)canHandleInputOfContentClasses:(id)classes withSupportedClasses:(id)supportedClasses includingCoercedTypes:(BOOL)types;
- (BOOL)containsVariableOfType:(id)type;
- (BOOL)deletesInput;
- (BOOL)descriptionInputIncludesSupportingItemClasses;
- (BOOL)getInputContentFromVariablesInParameterState:(id)state context:(id)context completionHandler:(id)handler;
- (BOOL)hasAvailableActionOutputVariables;
- (BOOL)highRisk;
- (BOOL)inputPassthrough;
- (BOOL)inputRequired;
- (BOOL)inputTypeDeterminesOutputType;
- (BOOL)inputsMultipleItems;
- (BOOL)isDisabledWhenRunOnDevice:(id)device;
- (BOOL)isDiscontinued;
- (BOOL)isEligibleForOutputVariable;
- (BOOL)isLastAction;
- (BOOL)isOutputExpandedInEditor;
- (BOOL)isResidentCompatible;
- (BOOL)isRunningInCarPlay;
- (BOOL)isRunningInSiriUserInterface;
- (BOOL)isSubclassThatOverridesSelector:(SEL)selector;
- (BOOL)isTesting;
- (BOOL)isVariableWithNameAvailable:(id)available;
- (BOOL)isVariableWithOutputUUIDAvailable:(id)available;
- (BOOL)legacyBehaviorIgnoresOutputFromAction:(id)action inWorkflow:(id)workflow;
- (BOOL)locallyProcessesData;
- (BOOL)mightStartAudioRecording;
- (BOOL)mightSuppressRunningProgress;
- (BOOL)outputIsRenamed;
- (BOOL)outputsMultipleItems;
- (BOOL)prefersActionAttribution;
- (BOOL)requiresHandoffWhenRunWithUserInterfaceType:(id)type;
- (BOOL)requiresRemoteExecution;
- (BOOL)requiresUnlock;
- (BOOL)requiresUserInteractionWhenRunWithInput:(id)input;
- (BOOL)runningInStepWiseExecutor;
- (BOOL)runningInToolKit;
- (BOOL)runningViaSpotlight;
- (BOOL)setParameterState:(id)state forKey:(id)key;
- (BOOL)setParameterStateToVariable:(id)variable forKey:(id)key;
- (BOOL)shouldBeIncludedInAppsList;
- (BOOL)shouldDisableSmartPromptChecks;
- (BOOL)shouldInsertExpandingParameterForParameter:(id)parameter;
- (BOOL)showsImplicitChooseFromListWhenRunWithInput:(id)input;
- (BOOL)snappingPassthrough;
- (BOOL)synchronouslyHandleTestingEvent:(id)event error:(id *)error;
- (BOOL)takeSessionKitAssertionIfNeededWithError:(id *)error;
- (BOOL)usesCompactUnlockService;
- (BOOL)usesLegacyInputBehavior;
- (BOOL)visibleForUse:(int64_t)use;
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
- (WFAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters;
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
- (id)actionForAppIdentifier:(id)identifier;
- (id)actionProvidingVariableWithOutputUUID:(id)d;
- (id)actionsProvidingVariableName:(id)name;
- (id)classesForTypeArray:(id)array includeAllOutputTypes:(BOOL)types;
- (id)containedVariables;
- (id)containedVariablesOfClass:(Class)class;
- (id)contentDestinationWithError:(id *)error;
- (id)copyForDuplicating;
- (id)copyForProcessing;
- (id)copyParameterStatesWithFallingBackToDefaultValue:(BOOL)value;
- (id)copyWithDefinition:(id)definition serializedParameters:(id)parameters;
- (id)copyWithSerializedParameters:(id)parameters;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createResourceManager;
- (id)createStateForParameter:(id)parameter fromSerializedRepresentation:(id)representation;
- (id)defaultParameterStateForKey:(id)key;
- (id)descriptionInput;
- (id)deviceLockedError;
- (id)generateOutputUUIDForAction:(id)action;
- (id)generateUUIDIfNecessaryWithUUIDProvider:(id)provider;
- (id)generatedResourceNodes;
- (id)inheritedInputVariableInWorkflow:(id)workflow ignoringInputTypes:(BOOL)types;
- (id)itemsBeingDeleted;
- (id)localizedCategoryWithContext:(id)context;
- (id)localizedDefaultOutputNameWithContext:(id)context;
- (id)localizedDescriptionAttributionMarkdownStringWithContext:(id)context;
- (id)localizedDescriptionInputWithContext:(id)context;
- (id)localizedDescriptionNoteWithContext:(id)context;
- (id)localizedDescriptionRequiresWithContext:(id)context;
- (id)localizedDescriptionResultWithContext:(id)context;
- (id)localizedDescriptionSummaryWithContext:(id)context;
- (id)localizedDiscontinuedDescriptionWithContext:(id)context;
- (id)localizedErrorWithLinkError:(id)error;
- (id)localizedFocusFilterDescriptionWithContext:(id)context;
- (id)localizedKeywordsWithContext:(id)context;
- (id)localizedNameWithContext:(id)context;
- (id)minimumSupportedClientVersion;
- (id)missingAppError;
- (id)outputVariableWithVariableProvider:(id)provider UUIDProvider:(id)dProvider;
- (id)parameterForKey:(id)key;
- (id)parameterStateForKey:(id)key fallingBackToDefaultValue:(BOOL)value;
- (id)parameterValueForKey:(id)key ofClass:(Class)class;
- (id)parametersRequiringUserInputAlongsideParameter:(id)parameter;
- (id)populatedInputWithProcessedParameterValues:(id)values;
- (id)possibleContentClassesForVariableNamed:(id)named;
- (id)possibleContentClassesForVariableWithOutputUUID:(id)d;
- (id)previousAction;
- (id)serializedParameterStateForKey:(id)key;
- (id)serializedParameters;
- (id)smartPromptSubtitleWithPreviousContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name;
- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name;
- (id)supplementalParameterValueForKey:(id)key ofClass:(Class)class;
- (id)systemEntityCollectionIdentifierForDisambiguatingParameterWithKey:(id)key;
- (id)typeDescriptionWithTypes:(id)types explanationText:(id)text multiple:(BOOL)multiple optional:(BOOL)optional;
- (id)unevaluatedResourceNodes;
- (id)unevaluatedResourceObjectsOfClass:(Class)class;
- (id)unevaluatedResourceObjectsOfClasses:(id)classes;
- (id)userVisibleStringsForUseCase:(unint64_t)case;
- (id)visibleParametersWithProcessing:(BOOL)processing;
- (int64_t)initialSuggestionBehavior;
- (int64_t)rateLimitDelay;
- (int64_t)rateLimitThreshold;
- (int64_t)rateLimitTimeout;
- (unint64_t)appearance;
- (unint64_t)outputDisclosureLevel;
- (unint64_t)parameterCollapsingBehavior;
- (void)_finishRunningWithError:(id)error;
- (void)_processParameterStates:(id)states withInput:(id)input skippingHiddenParameters:(BOOL)parameters askForValuesIfNecessary:(BOOL)necessary workQueue:(id)queue completionHandler:(id)handler;
- (void)addEventObserver:(id)observer;
- (void)addVariableObserver:(id)observer;
- (void)askForValuesOfParameters:(id)parameters withDefaultStates:(id)states prompts:(id)prompts input:(id)input workQueue:(id)queue completionHandler:(id)handler;
- (void)cancel;
- (void)checkUserInterfaceAndRun;
- (void)configureResourcesForParameter:(id)parameter;
- (void)dismissPresentedContentWithCompletionHandler:(id)handler;
- (void)enumerateObservers:(id)observers;
- (void)fetchSuggestedEntitiesForParameterWithKey:(id)key completionHandler:(id)handler;
- (void)finishRunningWithError:(id)error;
- (void)getContentDestinationWithCompletionHandler:(id)handler;
- (void)handleTestingEvent:(id)event completionHandler:(id)handler;
- (void)iconUpdated;
- (void)initializeParameters;
- (void)initializeParametersWithLock;
- (void)lockInputParameter;
- (void)logDataTransmissionForSmartPromptApprovalResult:(id)result;
- (void)nameUpdated;
- (void)notifyEventObserversParameterStateDidChangeForKey:(id)key;
- (void)outputDetailsUpdated;
- (void)parameterDefaultSerializedRepresentationDidChange:(id)change;
- (void)parameterStateValidityCriteriaDidChange:(id)change;
- (void)performDataAccessChecksWithUserInterface:(id)interface contentItemCache:(id)cache completionHandler:(id)handler;
- (void)performDataAndHardwareAccessChecksAndRun;
- (void)performDeletionAuthorizationChecksWithUserInterface:(id)interface contentItemCache:(id)cache completionHandler:(id)handler;
- (void)performSmartPromptChecksWithUserInterface:(id)interface contentDestination:(id)destination contentItemCache:(id)cache isWebpageCoercion:(BOOL)coercion completionHandler:(id)handler;
- (void)preloadDefaultParameterStatesIfNecessaryWithCompletionHandler:(id)handler;
- (void)prepareToProcessWithCompletionHandler:(id)handler;
- (void)presentSmartPromptAuthorizationWithConfiguration:(id)configuration userInterface:(id)interface databaseApprovalResult:(id)result contentDestination:(id)destination completionHandler:(id)handler;
- (void)processEncodedValue:(id)value withToolKitInvocation:(id)invocation forParameter:(id)parameter completionHandler:(id)handler;
- (void)processValueForParameter:(id)parameter withToolKitInvocation:(id)invocation completionHandler:(id)handler;
- (void)promptForArchiveVerificationIfNecessary:(id)necessary completionHandler:(id)handler;
- (void)promptForAudioRecordingPermissionIfNeededWithCompletionBlock:(id)block;
- (void)recreateGeneratedResourcesIfNeeded;
- (void)recreateResourcesIfNeeded;
- (void)recreateUnevaluatedResourcesIfNeeded;
- (void)reloadAuxiliaryButton;
- (void)removeEventObserver:(id)observer;
- (void)removeVariableObserver:(id)observer;
- (void)requestInterfacePresentationWithCompletionHandler:(id)handler;
- (void)requestUnlock:(id)unlock;
- (void)requestUnlockIfNeeded:(id)needed;
- (void)resetOutput;
- (void)resolveAppDescriptorIfNecessary:(id)necessary;
- (void)rewriteWithStrings:(id)strings;
- (void)runAsynchronouslyWithInput:(id)input;
- (void)runWithInput:(WFContentCollection *)input completionHandler:(id)handler;
- (void)runWithInput:(id)input error:(id *)error;
- (void)runWithInput:(id)input userInterface:(id)interface runningDelegate:(id)delegate variableSource:(id)source workQueue:(id)queue completionHandler:(id)handler;
- (void)setActionTree:(id)tree;
- (void)setCurrentGeneratedResourceNodes:(id)nodes;
- (void)setDefaultCoercionOptionsOnContentCollection:(id)collection;
- (void)setDefaultCoercionOptionsOnInputs;
- (void)setGroupingIdentifier:(id)identifier;
- (void)setOutput:(id)output onVariableSource:(id)source;
- (void)setOutputName:(id)name;
- (void)setSupplementalParameterValue:(id)value forKey:(id)key;
- (void)setUUID:(id)d;
- (void)snapInputParameterIfNecessary;
- (void)snapInputParameterToVariable:(id)variable;
- (void)unlockAppProtectionWithCompletionHandler:(id)handler;
- (void)unlockInputParameter;
- (void)updateAppDescriptorWithSelectedApp:(id)app;
- (void)updateParameterSummaryIfNeeded:(id)needed;
- (void)visibleParametersUpdated;
- (void)wasAddedToWorkflow:(id)workflow;
- (void)wasAddedToWorkflowByUser:(id)user;
- (void)wasRemovedFromWorkflow:(id)workflow;
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
      identifier = [(WFAction *)self identifier];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138412546;
      v38 = identifier;
      v39 = 2112;
      v40 = v10;
      _os_signpost_emit_with_name_impl(&dword_1CA256000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "InitializeActionParameters", "identifier=%{signpost.description:attribute}@,class=%{signpost.description:attribute}@", buf, 0x16u);
    }

    parameterDefinitions = [(WFAction *)self parameterDefinitions];
    v12 = parameterDefinitions;
    v13 = MEMORY[0x1E695E0F0];
    if (parameterDefinitions)
    {
      v13 = parameterDefinitions;
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
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"Parameters"];
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
  encodedSerializedParameters = [(WFAction *)self encodedSerializedParameters];
  v4 = [encodedSerializedParameters mutableCopy];

  decodedParameterStates = [(WFAction *)self decodedParameterStates];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __32__WFAction_serializedParameters__block_invoke;
  v10[3] = &unk_1E8374E50;
  v10[4] = self;
  v6 = v4;
  v11 = v6;
  [decodedParameterStates enumerateKeysAndObjectsUsingBlock:v10];

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
  defaultLocalizationContext = [(WFAction *)self defaultLocalizationContext];
  v4 = [(WFAction *)self localizedNameWithContext:defaultLocalizationContext];

  return v4;
}

- (NSString)localizedDescriptionSummary
{
  defaultLocalizationContext = [(WFAction *)self defaultLocalizationContext];
  v4 = [(WFAction *)self localizedDescriptionSummaryWithContext:defaultLocalizationContext];

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(WFAction *)self identifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, identifier: %@>", v5, self, identifier];

  return v7;
}

- (WFParameter)inputParameter
{
  inputParameterKey = [(WFAction *)self inputParameterKey];
  if (inputParameterKey)
  {
    parametersByKey = [(WFAction *)self parametersByKey];
    v5 = [parametersByKey objectForKey:inputParameterKey];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)inputParameterKey
{
  inputDictionary = [(WFAction *)self inputDictionary];
  v3 = [inputDictionary objectForKey:@"ParameterKey"];

  return v3;
}

- (NSDictionary)inputDictionary
{
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"Input"];
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
  runningDelegate = [(WFAction *)self runningDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  runningDelegate2 = [(WFAction *)self runningDelegate];
  v6 = [runningDelegate2 currentRunningContextForAction:self];

  runSource = [v6 runSource];
  IsToolKit = WFRunSourceIsToolKit();

  return IsToolKit;
}

- (void)runWithInput:(WFContentCollection *)input completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = input;
  v7[3] = v6;
  v7[4] = self;
  inputCopy = input;
  selfCopy = self;

  sub_1CA67052C(&unk_1CA98E280, v7);
}

- (WFUserVisibleString)customOutputString
{
  selfCopy = self;
  v3 = sub_1CA61ED8C();

  return v3;
}

- (id)userVisibleStringsForUseCase:(unint64_t)case
{
  selfCopy = self;
  sub_1CA61EE08(case);

  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v5 = sub_1CA94C8E8();

  return v5;
}

- (void)rewriteWithStrings:(id)strings
{
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v4 = sub_1CA94C1C8();
  selfCopy = self;
  sub_1CA61F0AC(v4);
}

- (id)localizedErrorWithLinkError:(id)error
{
  v88[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (!errorCopy)
  {
    userCancelledError = 0;
    goto LABEL_83;
  }

  v5 = errorCopy;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = WFLocalizedString(@"There was a problem applying the Focus filter.");
  appDescriptor = [(WFAction *)self appDescriptor];
  localizedName = [appDescriptor localizedName];
  v10 = [localizedName length];

  if (v10)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = WFLocalizedString(@"There was a problem communicating with the “%@” app.");
    appDescriptor2 = [(WFAction *)self appDescriptor];
    localizedName2 = [appDescriptor2 localizedName];
    v15 = [v11 localizedStringWithFormat:v12, localizedName2];
  }

  else
  {
    v15 = WFLocalizedString(@"There was a problem communicating with the app.");
  }

  userInfo = [v5 userInfo];
  v18 = [userInfo objectForKey:*MEMORY[0x1E69ACB28]];

  if (v18)
  {
    v19 = v18;

    v5 = v19;
  }

  domain = [v5 domain];
  v21 = [domain isEqualToString:*MEMORY[0x1E69ACB58]];

  if (v21)
  {
    code = [v5 code];
    if (code <= 1006)
    {
      if (code <= 1002)
      {
        if (code != 1001)
        {
          if (code == 1002)
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

      if ((code - 1003) >= 3)
      {
        if (code == 1006)
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
        localizedDescription3 = v15;
        v15 = localizedDescription3;
        goto LABEL_70;
      }

      v41 = MEMORY[0x1E696AEC0];
      v42 = @"The action “%1$@” could not run because the “%2$@” app quit unexpectedly.";
    }

    else
    {
      if (code <= 1099)
      {
        if ((code - 1007) < 7)
        {
          goto LABEL_12;
        }

        goto LABEL_68;
      }

      if (code <= 1399)
      {
        if (code == 1100 || code == 1200)
        {
          if ((isKindOfClass & 1) == 0)
          {
            v45 = MEMORY[0x1E696AEC0];
            v46 = @"The action “%@” could not run because Shortcuts couldn't communicate with the app.";
            goto LABEL_41;
          }

          goto LABEL_69;
        }

        if (code != 1300)
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

      switch(code)
      {
        case 1400:
          goto LABEL_12;
        case 1700:
          appDescriptor3 = [(WFAction *)self appDescriptor];
          localizedName3 = [appDescriptor3 localizedName];
          v52 = [localizedName3 length];

          if (!v52)
          {
            if ((isKindOfClass & 1) == 0)
            {
              v45 = MEMORY[0x1E696AEC0];
              v46 = @"The action “%@” could not run. Open the app to continue.";
              goto LABEL_41;
            }

            localizedDescription3 = WFLocalizedString(@"Focus filter could not be applied. Open the app to continue.");
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
            appDescriptor4 = [(WFAction *)self appDescriptor];
            localizedName4 = [appDescriptor4 localizedName];
            v56 = [v41 localizedStringWithFormat:v53, localizedName4];

            localizedDescription = 0;
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
    localizedName5 = [(WFAction *)self localizedName];
    appDescriptor5 = [(WFAction *)self appDescriptor];
    localizedName6 = [appDescriptor5 localizedName];
    localizedDescription = [v41 localizedStringWithFormat:v47, localizedName5, localizedName6];

    goto LABEL_42;
  }

  domain2 = [v5 domain];
  v24 = [domain2 isEqualToString:*MEMORY[0x1E69ACC68]];

  if (!v24)
  {
    domain3 = [v5 domain];
    v32 = [domain3 isEqualToString:*MEMORY[0x1E69ACB90]];

    if (!v32)
    {
      localizedDescription = 0;
      goto LABEL_71;
    }

    selfCopy = self;
    if (selfCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if ([v5 code] == 1)
      {
        v34 = MEMORY[0x1E696AEC0];
        v35 = WFLocalizedString(@"Unable to load options due to the %@ parameter not being set.");
        metadata = [(WFAction *)selfCopy metadata];
        parameters = [metadata parameters];
        v85[0] = MEMORY[0x1E69E9820];
        v85[1] = 3221225472;
        v85[2] = __61__WFAction_LinkLocalizedErrors__localizedErrorWithLinkError___block_invoke;
        v85[3] = &unk_1E837CB40;
        v86 = v5;
        v36 = [parameters if_firstObjectPassingTest:v85];
        title = [v36 title];
        wf_localizedString = [title wf_localizedString];
        v39 = v34;
        v40 = v35;
        localizedDescription = [v39 localizedStringWithFormat:v35, wf_localizedString];

LABEL_45:
        goto LABEL_71;
      }
    }

    else
    {

      selfCopy = 0;
    }

    localizedDescription = 0;
    goto LABEL_45;
  }

  code2 = [v5 code];
  if (code2 <= 2005)
  {
    if ((code2 - 2001) >= 4)
    {
      if (code2 != 2000)
      {
        if (code2 == 2005)
        {
          userInfo2 = [v5 userInfo];
          v27 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E69ACC78]];

          v28 = [(WFAction *)self parameterForKey:v27];
          localizedLabel = [v28 localizedLabel];

          if (isKindOfClass)
          {
            localizedDescription = v7;
          }

          else
          {
            v74 = MEMORY[0x1E696AEC0];
            v75 = WFLocalizedString(@"The action “%1$@” could not run because a value was not provided for the “%2$@” parameter.");
            localizedName7 = [(WFAction *)self localizedName];
            v77 = localizedName7;
            if (localizedLabel)
            {
              v78 = localizedLabel;
            }

            else
            {
              v78 = v27;
            }

            localizedDescription = [v74 localizedStringWithFormat:v75, localizedName7, v78];
          }

LABEL_71:
          ln_staticDeferredLocalizedString = [v5 ln_staticDeferredLocalizedString];
          v58 = ln_staticDeferredLocalizedString;
          if (ln_staticDeferredLocalizedString)
          {
            [ln_staticDeferredLocalizedString localizedStringForLocaleIdentifier:0];
            localizedDescription = v59 = localizedDescription;
          }

          else
          {
            if (!VCIsInternalBuild())
            {
              goto LABEL_74;
            }

            userInfo3 = [v5 userInfo];
            v59 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x1E696A578]];

            if (v59 && ([localizedDescription isEqualToString:v59] & 1) == 0)
            {
              v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ [Internal Only: %@]", localizedDescription, v59];

              localizedDescription = v66;
            }
          }

LABEL_74:
          if (localizedDescription)
          {
            userInfo4 = [v5 userInfo];
            v87 = *MEMORY[0x1E696A578];
            v88[0] = localizedDescription;
            v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:&v87 count:1];
            v62 = [userInfo4 if_dictionaryByAddingEntriesFromDictionary:v61];

            v63 = MEMORY[0x1E696ABC0];
            domain4 = [v5 domain];
            userCancelledError = [v63 errorWithDomain:domain4 code:objc_msgSend(v5 userInfo:{"code"), v62}];
          }

          else
          {
            userCancelledError = v5;
          }

          goto LABEL_82;
        }

        goto LABEL_99;
      }

      v69 = LNPerformActionErrorCodeAsString();
      v70 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ", v69];
      localizedDescription = [v5 localizedDescription];
      if ([localizedDescription length])
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
          localizedDescription3 = v7;
LABEL_70:
          localizedDescription = localizedDescription3;
          goto LABEL_71;
        }

        localizedDescription2 = [v5 localizedDescription];
        localizedDescription = [localizedDescription2 substringFromIndex:{objc_msgSend(v70, "length")}];

        if ([localizedDescription length])
        {

          goto LABEL_71;
        }
      }

      goto LABEL_98;
    }

    goto LABEL_38;
  }

  v43 = code2 + 40;
  if ((code2 - 2008) <= 6)
  {
    if (((1 << v43) & 0x39) == 0)
    {
      if (((1 << v43) & 0x42) == 0)
      {
        v45 = MEMORY[0x1E696AEC0];
        v46 = @"The action “%@” could not run because it was cancelled.";
        goto LABEL_41;
      }

      localizedDescription3 = [v5 localizedDescription];
      goto LABEL_70;
    }

    goto LABEL_38;
  }

  if (code2 == 2006)
  {
LABEL_38:
    if ((isKindOfClass & 1) == 0)
    {
LABEL_40:
      v45 = MEMORY[0x1E696AEC0];
      v46 = @"The action “%@” could not run because an internal error occurred.";
LABEL_41:
      v47 = WFLocalizedString(v46);
      localizedName8 = [(WFAction *)self localizedName];
      localizedDescription = [v45 localizedStringWithFormat:v47, localizedName8];

LABEL_42:
      goto LABEL_71;
    }

    goto LABEL_39;
  }

  if (code2 != 2007)
  {
    goto LABEL_99;
  }

  userCancelledError = [MEMORY[0x1E696ABC0] userCancelledError];
  localizedDescription = 0;
LABEL_82:

LABEL_83:
  v67 = *MEMORY[0x1E69E9840];

  return userCancelledError;
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

- (void)fetchSuggestedEntitiesForParameterWithKey:(id)key completionHandler:(id)handler
{
  v13[2] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
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

  handlerCopy[2](handlerCopy, 0, v10);
  v11 = *MEMORY[0x1E69E9840];
}

- (id)systemEntityCollectionIdentifierForDisambiguatingParameterWithKey:(id)key
{
  v3 = [(WFAction *)self parameterStateForKey:key];
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
  variable = [v5 variable];

  if (variable)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = variable;
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

  collectionFilter = [v8 collectionFilter];

  systemEntityCollectionIdentifier = [collectionFilter systemEntityCollectionIdentifier];

  return systemEntityCollectionIdentifier;
}

- (BOOL)synchronouslyHandleTestingEvent:(id)event error:(id *)error
{
  eventCopy = event;
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
    [(WFAction *)self handleTestingEvent:eventCopy completionHandler:v11];
    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    if (error)
    {
      *error = v16[5];
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

- (void)handleTestingEvent:(id)event completionHandler:(id)handler
{
  eventCopy = event;
  handlerCopy = handler;
  runningDelegate = [(WFAction *)self runningDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    runningDelegate2 = [(WFAction *)self runningDelegate];
    [runningDelegate2 action:self handleTestingEvent:eventCopy completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }
}

- (BOOL)isTesting
{
  runningDelegate = [(WFAction *)self runningDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  runningDelegate2 = [(WFAction *)self runningDelegate];
  isTesting = [runningDelegate2 isTesting];

  return isTesting;
}

- (BOOL)takeSessionKitAssertionIfNeededWithError:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = getWFSessionKitLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315138;
    v15 = "[WFAction takeSessionKitAssertionIfNeededWithError:]";
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEBUG, "%s Trying to see if we should take a session assertion...", &v14, 0xCu);
  }

  sessionKitSessionInvocationType = [(WFAction *)self sessionKitSessionInvocationType];
  v7 = [sessionKitSessionInvocationType isEqualToString:@"Manual"];

  if (v7)
  {
    sessionKitSessionConfiguration = getWFSessionKitLogObject();
    if (os_log_type_enabled(sessionKitSessionConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[WFAction takeSessionKitAssertionIfNeededWithError:]";
      _os_log_impl(&dword_1CA256000, sessionKitSessionConfiguration, OS_LOG_TYPE_DEFAULT, "%s Action says it's going to take assertion itself...", &v14, 0xCu);
    }

LABEL_13:
    v11 = 1;
    goto LABEL_14;
  }

  sessionKitSessionConfiguration = [(WFAction *)self sessionKitSessionConfiguration];
  v9 = getWFSessionKitLogObject();
  v10 = v9;
  if (!sessionKitSessionConfiguration)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315138;
      v15 = "[WFAction takeSessionKitAssertionIfNeededWithError:]";
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEBUG, "%s It doesn't look like we are dealing with a session here. See you later!", &v14, 0xCu);
    }

    sessionKitSessionConfiguration = 0;
    goto LABEL_13;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[WFAction takeSessionKitAssertionIfNeededWithError:]";
    _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEFAULT, "%s Found a session configuration! Taking it...", &v14, 0xCu);
  }

  v11 = [(WFAction *)self allowSessionKitSessionsIfNeededWithConfiguration:sessionKitSessionConfiguration isManualInvocation:0 error:error];
LABEL_14:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)allowSessionKitSessionsIfNeededWithConfiguration:(id)configuration isManualInvocation:(BOOL)invocation error:(id *)error
{
  invocationCopy = invocation;
  v36 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFAction.m" lineNumber:2917 description:{@"Invalid parameter not satisfying: %@", @"sessionConfiguration"}];
  }

  sessionKitAssertion = [(WFAction *)self sessionKitAssertion];

  if (sessionKitAssertion)
  {
    v11 = 1;
  }

  else
  {
    sessionKitSessionInvocationType = [(WFAction *)self sessionKitSessionInvocationType];
    v13 = sessionKitSessionInvocationType;
    if (sessionKitSessionInvocationType)
    {
      if (invocationCopy && ([sessionKitSessionInvocationType isEqualToString:@"Manual"] & 1) == 0)
      {
        bundleIdentifier = getWFSessionKitLogObject();
        if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v33 = "[WFAction allowSessionKitSessionsIfNeededWithConfiguration:isManualInvocation:error:]";
          _os_log_impl(&dword_1CA256000, bundleIdentifier, OS_LOG_TYPE_FAULT, "%s Tried to manually invoke a session, but the session invocation type is not manual?", buf, 0xCu);
        }

        v11 = 0;
      }

      else
      {
        bundleIdentifier = [configurationCopy bundleIdentifier];
        v15 = getWFSessionKitLogObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v33 = "[WFAction allowSessionKitSessionsIfNeededWithConfiguration:isManualInvocation:error:]";
          v34 = 2112;
          v35 = bundleIdentifier;
          _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_DEFAULT, "%s Attempting to take SessionKit assertion for %@...", buf, 0x16u);
        }

        v16 = [[WFActionWillTakeSessionKitAssertionTestingEvent alloc] initWithAction:self sessionConfiguration:configurationCopy];
        if ([(WFAction *)self synchronouslyHandleTestingEvent:v16 error:error])
        {
          v17 = [[WFSessionKitAssertion alloc] initWithBundleIdentifier:bundleIdentifier];
          runningDelegate = [(WFAction *)self runningDelegate];
          objc_initWeak(buf, self);
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __86__WFAction_allowSessionKitSessionsIfNeededWithConfiguration_isManualInvocation_error___block_invoke;
          v27[3] = &unk_1E8375330;
          objc_copyWeak(v31, buf);
          v19 = runningDelegate;
          v28 = v19;
          v29 = bundleIdentifier;
          v31[1] = a2;
          v30 = configurationCopy;
          [(WFSessionKitAssertion *)v17 setResultHandler:v27];
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __86__WFAction_allowSessionKitSessionsIfNeededWithConfiguration_isManualInvocation_error___block_invoke_586;
          v24[3] = &unk_1E8377C00;
          objc_copyWeak(&v26, buf);
          v20 = v19;
          v25 = v20;
          [(WFSessionKitAssertion *)v17 setFailureHandler:v24];
          v11 = [(WFSessionKitAssertion *)v17 takeWithError:error];
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
  displayableAppDescriptor = [(WFAction *)self displayableAppDescriptor];
  bundleIdentifier = [displayableAppDescriptor bundleIdentifier];

  return bundleIdentifier;
}

- (WFContactStore)contactStore
{
  contentPermissionRequestor = [(WFAction *)self contentPermissionRequestor];
  contactStore = [contentPermissionRequestor contactStore];

  return contactStore;
}

- (void)setDefaultCoercionOptionsOnInputs
{
  v16 = *MEMORY[0x1E69E9840];
  [(WFAction *)self setDefaultCoercionOptionsOnContentCollection:self->_input];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  processedParameters = [(WFAction *)self processedParameters];
  allValues = [processedParameters allValues];

  v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allValues);
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
      v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setDefaultCoercionOptionsOnContentCollection:(id)collection
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E6996CE8];
  v10 = *MEMORY[0x1E6997010];
  collectionCopy = collection;
  contentPermissionRequestor = [(WFAction *)self contentPermissionRequestor];
  v11[0] = contentPermissionRequestor;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v4 optionsWithDictionary:v7];

  [collectionCopy setDefaultCoercionOptions:v8];
  v9 = *MEMORY[0x1E69E9840];
}

- (id)minimumSupportedClientVersion
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  containedVariables = [(WFAction *)self containedVariables];
  v3 = [containedVariables countByEnumeratingWithState:&v10 objects:v14 count:16];
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
        objc_enumerationMutation(containedVariables);
      }

      if ([*(*(&v10 + 1) + 8 * v7) requiresModernVariableSupport])
      {
        break;
      }

      if (v4 == ++v7)
      {
        v4 = [containedVariables countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  runningDelegate = [(WFAction *)self runningDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  runningDelegate2 = [(WFAction *)self runningDelegate];
  v6 = [runningDelegate2 currentRunningContextForAction:self];

  runSource = [v6 runSource];
  v8 = [runSource isEqualToString:*MEMORY[0x1E69E1410]];

  return v8;
}

- (BOOL)runningInStepWiseExecutor
{
  runningDelegate = [(WFAction *)self runningDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  runningDelegate2 = [(WFAction *)self runningDelegate];
  v6 = [runningDelegate2 currentRunningContextForAction:self];

  LOBYTE(runningDelegate2) = [v6 isStepwise];
  return runningDelegate2;
}

- (BOOL)requiresUserInteractionWhenRunWithInput:(id)input
{
  inputCopy = input;
  resourceManager = [(WFAction *)self resourceManager];
  v6 = ([resourceManager currentlyRequiresResourceOfClass:objc_opt_class()] & 1) != 0 || !objc_msgSend(resourceManager, "resourcesAvailable") || -[WFAction showsImplicitChooseFromListWhenRunWithInput:](self, "showsImplicitChooseFromListWhenRunWithInput:", inputCopy);

  return v6;
}

- (BOOL)showsImplicitChooseFromListWhenRunWithInput:(id)input
{
  if ([input numberOfItems] < 2 || -[WFAction inputsMultipleItems](self, "inputsMultipleItems"))
  {
    return 0;
  }

  inputContentClasses = [(WFAction *)self inputContentClasses];
  v4 = [inputContentClasses count] != 0;

  return v4;
}

- (NSArray)supportedAppIdentifiers
{
  v8[1] = *MEMORY[0x1E69E9840];
  appDescriptor = [(WFAction *)self appDescriptor];
  bundleIdentifier = [appDescriptor bundleIdentifier];
  if (bundleIdentifier)
  {
    bundleIdentifier2 = [appDescriptor bundleIdentifier];
    v8[0] = bundleIdentifier2;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)unlockAppProtectionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  appDescriptor = [(WFAction *)self appDescriptor];
  bundleIdentifier = [appDescriptor bundleIdentifier];

  userInterface = [(WFAction *)self userInterface];
  isRunningWithExternalUI = [userInterface isRunningWithExternalUI];

  if (isRunningWithExternalUI)
  {
    userInterface2 = [(WFAction *)self userInterface];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__WFAction_unlockAppProtectionWithCompletionHandler___block_invoke;
    v15[3] = &unk_1E837EE10;
    v15[4] = self;
    v16 = handlerCopy;
    v10 = handlerCopy;
    [userInterface2 handleAppProtectionRequestWithBundleIdentifier:bundleIdentifier completionHandler:v15];
  }

  else
  {
    v10 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:bundleIdentifier];
    mEMORY[0x1E698B0D8] = [MEMORY[0x1E698B0D8] sharedGuard];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__WFAction_unlockAppProtectionWithCompletionHandler___block_invoke_2;
    v13[3] = &unk_1E837F0F0;
    v14 = handlerCopy;
    v12 = handlerCopy;
    [mEMORY[0x1E698B0D8] authenticateForSubject:v10 completion:v13];
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

- (id)smartPromptSubtitleWithPreviousContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name
{
  descriptionCopy = description;
  destinationCopy = destination;
  if ([descriptionCopy length])
  {
    v8 = MEMORY[0x1E696AEC0];
    if (destinationCopy)
    {
      v9 = WFLocalizedString(@"Previously this shortcut was allowed to share %1$@ with “%2$@”.");
      [v8 localizedStringWithFormat:v9, descriptionCopy, destinationCopy];
    }

    else
    {
      v9 = WFLocalizedString(@"Previously this shortcut was allowed to share %1$@.");
      [v8 localizedStringWithFormat:v9, descriptionCopy, v12];
    }
    v10 = ;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)smartPromptWithContentDescription:(id)description contentDestination:(id)destination workflowName:(id)name
{
  v25 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  destinationCopy = destination;
  nameCopy = name;
  v11 = getWFSecurityLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    identifier = [(WFAction *)self identifier];
    *buf = 136315394;
    v22 = "[WFAction smartPromptWithContentDescription:contentDestination:workflowName:]";
    v23 = 2114;
    v24 = identifier;
    _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_FAULT, "%s Action %{public}@ is presenting a smart prompt, but it does not have a custom smart prompt string.", buf, 0x16u);
  }

  if (descriptionCopy)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = WFLocalizedString(@"Allow “%@” to share %@ with “%@”?");
    [v13 localizedStringWithFormat:v14, nameCopy, descriptionCopy, destinationCopy];
  }

  else
  {
    v15 = MEMORY[0x1E696AEC0];
    if (destinationCopy)
    {
      v14 = WFLocalizedString(@"Allow “%@” to access “%@”?");
      [v15 localizedStringWithFormat:v14, nameCopy, destinationCopy, v20];
    }

    else
    {
      v14 = WFLocalizedString(@"Allow “%@” to access another app?");
      [v15 localizedStringWithFormat:v14, nameCopy, v19, v20];
    }
  }
  v16 = ;

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)getContentDestinationWithCompletionHandler:(id)handler
{
  v7 = 0;
  handlerCopy = handler;
  v5 = [(WFAction *)self contentDestinationWithError:&v7];
  v6 = v7;
  handlerCopy[2](handlerCopy, v5, v6);
}

- (id)contentDestinationWithError:(id *)error
{
  appDescriptor = [(WFAction *)self appDescriptor];
  if (!appDescriptor)
  {
    goto LABEL_3;
  }

  v5 = appDescriptor;
  appDescriptor2 = [(WFAction *)self appDescriptor];
  bundleIdentifier = [appDescriptor2 bundleIdentifier];
  WFMCIsAppAccountBasedSourceForOpenIn(bundleIdentifier);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_3:
    appDescriptor3 = [(WFAction *)self appDescriptor];
    if (!appDescriptor3)
    {
      goto LABEL_10;
    }

    locallyProcessesData = [(WFAction *)self locallyProcessesData];

    if (!locallyProcessesData)
    {
      highRisk = [(WFAction *)self highRisk];
      v13 = MEMORY[0x1E6996C90];
      appDescriptor4 = [(WFAction *)self appDescriptor];
      if (highRisk)
      {
        [v13 locationWithAppDescriptor:appDescriptor4 promptingBehaviour:1];
      }

      else
      {
        [v13 locationWithAppDescriptor:appDescriptor4];
      }
      appDescriptor3 = ;

      goto LABEL_10;
    }
  }

  appDescriptor3 = 0;
LABEL_10:

  return appDescriptor3;
}

- (id)actionForAppIdentifier:(id)identifier
{
  identifierCopy = identifier;
  displayableAppDescriptor = [(WFAction *)self displayableAppDescriptor];
  bundleIdentifier = [displayableAppDescriptor bundleIdentifier];

  LODWORD(displayableAppDescriptor) = [bundleIdentifier isEqualToString:identifierCopy];
  if (displayableAppDescriptor)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)snapInputParameterToVariable:(id)variable
{
  v23 = *MEMORY[0x1E69E9840];
  variableCopy = variable;
  inputParameter = [(WFAction *)self inputParameter];
  if (!inputParameter || ![(WFAction *)self inputParameterUnlocked])
  {
    goto LABEL_18;
  }

  v6 = [inputParameter key];
  v7 = [(WFAction *)self parameterStateForKey:v6 fallingBackToDefaultValue:0];

  if (!variableCopy)
  {
    goto LABEL_14;
  }

  v8 = getWFGeneralLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315650;
    v18 = "[WFAction snapInputParameterToVariable:]";
    v19 = 2114;
    v20 = variableCopy;
    v21 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEFAULT, "%s Found input variable: %{public}@, for action: %{public}@", &v17, 0x20u);
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v9 = v7;
    variable = [v9 variable];
    v11 = [v9 stateByReplacingVariable:variable withVariable:variableCopy];

    if (v11)
    {
      goto LABEL_15;
    }
  }

  stateClass = [inputParameter stateClass];
  if (![(objc_class *)stateClass instancesRespondToSelector:sel_initWithVariable_])
  {
    v13 = getWFGeneralLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromClass(stateClass);
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

  v11 = [[stateClass alloc] initWithVariable:variableCopy];
LABEL_15:
  if (([v7 isEqual:v11] & 1) == 0)
  {
    v15 = [inputParameter key];
    [(WFAction *)self setParameterState:v11 forKey:v15];

    [(WFAction *)self setInputParameterUnlocked:1];
  }

LABEL_18:
  v16 = *MEMORY[0x1E69E9840];
}

- (void)snapInputParameterIfNecessary
{
  inputParameter = [(WFAction *)self inputParameter];
  if (inputParameter)
  {
    v7 = inputParameter;
    inputParameterUnlocked = [(WFAction *)self inputParameterUnlocked];
    inputParameter = v7;
    if (inputParameterUnlocked)
    {
      workflow = [(WFAction *)self workflow];
      v6 = [(WFAction *)self inheritedInputVariableInWorkflow:workflow];

      [(WFAction *)self snapInputParameterToVariable:v6];
      inputParameter = v7;
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
      selfCopy = self;
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
    inputParameter = [(WFAction *)self inputParameter];
    if (inputParameter)
    {
      v4 = inputParameter;
      [(WFAction *)self setInputParameterUnlocked:1];
      inputParameter = v4;
    }
  }
}

- (BOOL)isLastAction
{
  workflow = [(WFAction *)self workflow];
  actions = [workflow actions];

  if (actions)
  {
    v5 = [actions indexOfObject:self];
    v6 = v5 == [actions count] - 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isDisabledWhenRunOnDevice:(id)device
{
  v35 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  resourceManager = [(WFAction *)self resourceManager];
  v6 = [resourceManager resourceObjectsOfClass:objc_opt_class()];

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

  resourceManager2 = [(WFAction *)self resourceManager];
  v13 = [resourceManager2 resourceObjectsOfClass:objc_opt_class()];

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
          disabledOnPlatforms = v14;
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

  disabledOnPlatforms = [(WFAction *)self disabledOnPlatforms];
  if ([disabledOnPlatforms count])
  {
    idiom = [deviceCopy idiom];
    if (idiom >= 7)
    {
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v21 = off_1E8378E58[idiom];
      v22 = [disabledOnPlatforms containsObject:v21];
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

- (BOOL)requiresHandoffWhenRunWithUserInterfaceType:(id)type
{
  typeCopy = type;
  userInterface = [(WFAction *)self userInterface];
  if (objc_opt_respondsToSelector())
  {
    userInterface2 = [(WFAction *)self userInterface];
    shouldNotHandoff = [userInterface2 shouldNotHandoff];

    if (shouldNotHandoff)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  resourceManager = [(WFAction *)self resourceManager];
  v9 = [resourceManager currentlyRequiresResourceOfClass:objc_opt_class()];

  if (!v9)
  {
LABEL_8:
    LOBYTE(v11) = 0;
    goto LABEL_13;
  }

  userInterfaceTypes = [(WFAction *)self userInterfaceTypes];
  if ([userInterfaceTypes count])
  {
    v11 = [userInterfaceTypes containsObject:typeCopy] ^ 1;
  }

  else if (typeCopy)
  {
    LOBYTE(v11) = [typeCopy isEqualToString:*MEMORY[0x1E6997160]];
  }

  else
  {
    LOBYTE(v11) = 1;
  }

LABEL_13:
  return v11;
}

- (id)inheritedInputVariableInWorkflow:(id)workflow ignoringInputTypes:(BOOL)types
{
  workflowCopy = workflow;
  inputAction = [workflowCopy inputAction];
  if (inputAction)
  {
    effectiveInputClasses = [workflowCopy effectiveInputClasses];
  }

  else
  {
    effectiveInputClasses = 0;
  }

  actionTree = [workflowCopy actionTree];
  v9 = [actionTree inheritedInputVariableForAction:self workflowInputTypes:effectiveInputClasses ignoreInputTypes:0];

  return v9;
}

- (id)outputVariableWithVariableProvider:(id)provider UUIDProvider:(id)dProvider
{
  providerCopy = provider;
  if ([(WFAction *)self isEligibleForOutputVariable])
  {
    v6 = [[WFActionOutputVariable alloc] initWithAction:self variableProvider:providerCopy aggrandizements:0];
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
    identifier = [(WFAction *)self identifier];
    if (([v3 containsObject:identifier] & 1) != 0 || -[WFAction inputPassthrough](self, "inputPassthrough"))
    {
      v4 = 0;
    }

    else
    {
      outputContentClasses = [(WFAction *)self outputContentClasses];
      v4 = [outputContentClasses count] != 0;
    }
  }

  return v4;
}

- (BOOL)canHandleInputOfContentClasses:(id)classes withSupportedClasses:(id)supportedClasses includingCoercedTypes:(BOOL)types
{
  typesCopy = types;
  v60 = *MEMORY[0x1E69E9840];
  classesCopy = classes;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  supportedClassesCopy = supportedClasses;
  v9 = [supportedClassesCopy countByEnumeratingWithState:&v52 objects:v59 count:16];
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
          objc_enumerationMutation(supportedClassesCopy);
        }

        v13 = *(*(&v52 + 1) + 8 * i);
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v14 = classesCopy;
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
              supportedTypes = [v13 supportedTypes];
              v20 = [supportedTypes countByEnumeratingWithState:&v44 objects:v57 count:16];
              if (v20)
              {
                v21 = v20;
                v33 = typesCopy;
                v36 = supportedClassesCopy;
                v37 = classesCopy;
                v22 = *v45;
LABEL_20:
                v23 = 0;
                while (1)
                {
                  if (*v45 != v22)
                  {
                    objc_enumerationMutation(supportedTypes);
                  }

                  v24 = *(*(&v44 + 1) + 8 * v23);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass() & 1) != 0 && ([v24 isDeclared])
                  {
                    goto LABEL_44;
                  }

                  if (v21 == ++v23)
                  {
                    v21 = [supportedTypes countByEnumeratingWithState:&v44 objects:v57 count:16];
                    if (v21)
                    {
                      goto LABEL_20;
                    }

LABEL_37:
                    supportedClassesCopy = v36;
                    classesCopy = v37;
                    typesCopy = v33;
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
              supportedTypes = [v16 allSupportedTypes];
              v25 = [supportedTypes countByEnumeratingWithState:&v40 objects:v56 count:16];
              if (v25)
              {
                v26 = v25;
                v33 = typesCopy;
                v36 = supportedClassesCopy;
                v37 = classesCopy;
                v27 = *v41;
LABEL_30:
                v28 = 0;
                while (1)
                {
                  if (*v41 != v27)
                  {
                    objc_enumerationMutation(supportedTypes);
                  }

                  v29 = *(*(&v40 + 1) + 8 * v28);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass() & 1) != 0 && ([v29 isDeclared])
                  {
                    break;
                  }

                  if (v26 == ++v28)
                  {
                    v26 = [supportedTypes countByEnumeratingWithState:&v40 objects:v56 count:16];
                    if (v26)
                    {
                      goto LABEL_30;
                    }

                    goto LABEL_37;
                  }
                }

LABEL_44:

                supportedClassesCopy = v36;
                classesCopy = v37;
LABEL_45:

                v30 = 1;
                goto LABEL_47;
              }

LABEL_38:

              continue;
            }

            if (typesCopy)
            {
              supportedItemClasses = [v16 supportedItemClasses];
              v18 = [supportedItemClasses containsObject:v13];

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

      v10 = [supportedClassesCopy countByEnumeratingWithState:&v52 objects:v59 count:16];
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

- (BOOL)legacyBehaviorIgnoresOutputFromAction:(id)action inWorkflow:(id)workflow
{
  v34 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  workflowCopy = workflow;
  actions = [workflowCopy actions];
  v9 = [actions indexOfObject:self];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    inputContentClasses = [(WFAction *)self inputContentClasses];
    if ([(WFAction *)self containsVariableOfType:@"Input"]|| !v9 && [(WFAction *)self containsVariableOfType:@"ExtensionInput"])
    {
      LOBYTE(v10) = 0;
    }

    else
    {
      v27 = inputContentClasses;
      v28 = workflowCopy;
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

            outputUUID = [*(*(&v29 + 1) + 8 * i) outputUUID];
            uUID = [actionCopy UUID];
            v19 = [outputUUID isEqualToString:uUID];

            if (v19)
            {
              LOBYTE(v10) = 0;
              inputContentClasses = v27;
              workflowCopy = v28;
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
        inputContentClasses = v27;
        workflowCopy = v28;
      }

      else
      {
        workflowCopy = v28;
        actions2 = [v28 actions];
        inputContentClasses = v27;
        if (v9 >= [actions2 count] - 1)
        {
          v12 = 0;
        }

        else
        {
          actions3 = [v28 actions];
          v12 = [actions3 objectAtIndex:v9 + 1];
        }

        if (-[WFAction inputPassthrough](self, "inputPassthrough") && ![v12 legacyBehaviorIgnoresOutputFromAction:self inWorkflow:v28])
        {
          LOBYTE(v10) = 0;
        }

        else if ([v27 count])
        {
          if (v9)
          {
            actionTree = [(WFAction *)self actionTree];
            effectiveInputClasses = [actionTree possibleContentClassesForAction:actionCopy];
          }

          else
          {
            effectiveInputClasses = [v28 effectiveInputClasses];
          }

          inputContentClasses2 = [(WFAction *)self inputContentClasses];
          v10 = ![(WFAction *)self canHandleInputOfContentClasses:effectiveInputClasses withSupportedClasses:inputContentClasses2];
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
    inputContentClasses = [(WFAction *)self inputContentClasses];
  }

  else
  {
    if ([(WFAction *)self isSubclassThatOverridesSelector:sel_outputTypes]|| (v4 = self->_outputContentClasses) == 0)
    {
      outputTypes = [(WFAction *)self outputTypes];
      v6 = [(WFAction *)self classesForTypeArray:outputTypes includeAllOutputTypes:0];
      outputContentClasses = self->_outputContentClasses;
      self->_outputContentClasses = v6;

      v4 = self->_outputContentClasses;
    }

    inputContentClasses = v4;
  }

  return inputContentClasses;
}

- (NSArray)inputContentClasses
{
  inputContentClasses = self->_inputContentClasses;
  if (!inputContentClasses)
  {
    inputTypes = [(WFAction *)self inputTypes];
    v5 = [(WFAction *)self classesForTypeArray:inputTypes includeAllOutputTypes:1];
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
  inputTypes = [(WFAction *)self inputTypes];
  v4 = [(WFAction *)self classesForTypeArray:inputTypes includeAllOutputTypes:0];

  return v4;
}

- (id)classesForTypeArray:(id)array includeAllOutputTypes:(BOOL)types
{
  v41 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = arrayCopy;
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
            [orderedSet addObject:v15];
            goto LABEL_18;
          }

          v16 = [MEMORY[0x1E6996ED0] typeWithClass:v15];
        }

        else
        {
          v16 = [MEMORY[0x1E69E0AF8] typeWithString:v13];
        }

        v17 = v16;
        sharedRegistry = [*(v9 + 3432) sharedRegistry];
        v19 = [sharedRegistry contentItemClassForType:v17];

        v20 = *(v10 + 3936);
        if (v19 == objc_opt_class() || (v21 = *(v11 + 3664), v19 == objc_opt_class()) || !types)
        {
          if (v19)
          {
            [orderedSet addObject:v19];
          }
        }

        else
        {
          sharedRegistry2 = [*(v9 + 3432) sharedRegistry];
          v23 = [sharedRegistry2 contentItemClassesSupportingType:v17];
          v24 = v8;
          v25 = v11;
          v26 = v5;
          v27 = v9;
          v28 = v10;
          v29 = [v23 mutableCopy];

          [v29 removeObject:NSClassFromString(&cfstr_Wfworkflowcont.isa)];
          [v29 removeObject:objc_opt_class()];
          [orderedSet unionSet:v29];

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

  array = [orderedSet array];

  v31 = *MEMORY[0x1E69E9840];

  return array;
}

- (Class)contentItemClass
{
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"WFContentItemClass"];
  v4 = NSClassFromString(v3);

  return v4;
}

- (void)wasRemovedFromWorkflow:(id)workflow
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  resourceManager = [(WFAction *)self resourceManager];
  v6 = [resourceManager resourceObjectsConformingToProtocol:&unk_1F4A9CC28];
  [v4 unionSet:v6];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  parameters = [(WFAction *)self parameters];
  v8 = [parameters countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(parameters);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        resourceManager2 = [v12 resourceManager];
        v14 = [resourceManager2 resourceObjectsConformingToProtocol:&unk_1F4A9CC28];
        [v4 unionSet:v14];

        [v12 setActionResources:0];
        [v12 wasRemovedFromWorkflow];
      }

      v9 = [parameters countByEnumeratingWithState:&v25 objects:v30 count:16];
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

- (void)wasAddedToWorkflow:(id)workflow
{
  v36 = *MEMORY[0x1E69E9840];
  workflowCopy = workflow;
  if (!self->_parameters)
  {
    [(WFAction *)self initializeParametersWithLock];
  }

  v4 = objc_opt_new();
  resourceManager = [(WFAction *)self resourceManager];
  v6 = [resourceManager resourceObjectsConformingToProtocol:&unk_1F4A9CC28];
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
        resourceManager2 = [v11 resourceManager];
        v13 = [resourceManager2 resourceObjectsConformingToProtocol:&unk_1F4A9CC28];
        [v4 unionSet:v13];

        [v11 wasAddedToWorkflow];
        resourceManager3 = [(WFAction *)self resourceManager];
        referencedActionResourceClasses = [objc_opt_class() referencedActionResourceClasses];
        v16 = [resourceManager3 resourceObjectsOfClasses:referencedActionResourceClasses];

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
  v19 = workflowCopy;
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

        [*(*(&v26 + 1) + 8 * j) setWorkflow:{v19, workflowCopy}];
      }

      v20 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v20);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)wasAddedToWorkflowByUser:(id)user
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = getWFGeneralLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[WFAction wasAddedToWorkflowByUser:]";
    v10 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEFAULT, "%s User added action %{public}@ to workflow", &v8, 0x16u);
  }

  inputParameterKey = [(WFAction *)self inputParameterKey];
  if (inputParameterKey)
  {
    v6 = [(WFAction *)self parameterStateForKey:inputParameterKey fallingBackToDefaultValue:0];

    if (!v6)
    {
      [(WFAction *)self unlockInputParameter];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)configureResourcesForParameter:(id)parameter
{
  resourceManager = [parameter resourceManager];
  WFConfigureParameterRelationResources(resourceManager, self);
}

- (void)setGroupingIdentifier:(id)identifier
{
  identifierCopy = identifier;
  groupingIdentifier = [(WFAction *)self groupingIdentifier];
  v8 = identifierCopy;
  v6 = groupingIdentifier;
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
  customOutputName = [(WFAction *)self customOutputName];
  v3 = customOutputName != 0;

  return v3;
}

- (void)setOutputName:(id)name
{
  [(WFAction *)self setSupplementalParameterValue:name forKey:@"CustomOutputName"];

  [(WFAction *)self nameUpdated];
}

- (NSString)outputName
{
  customOutputName = [(WFAction *)self customOutputName];
  v4 = customOutputName;
  if (customOutputName)
  {
    localizedDefaultOutputName = customOutputName;
  }

  else
  {
    localizedDefaultOutputName = [(WFAction *)self localizedDefaultOutputName];
  }

  v6 = localizedDefaultOutputName;

  return v6;
}

- (NSString)customOutputName
{
  v3 = objc_opt_class();

  return [(WFAction *)self supplementalParameterValueForKey:@"CustomOutputName" ofClass:v3];
}

- (id)generateUUIDIfNecessaryWithUUIDProvider:(id)provider
{
  providerCopy = provider;
  uUID = [(WFAction *)self UUID];
  if (!uUID)
  {
    if (providerCopy)
    {
      selfCopy = providerCopy;
    }

    else
    {
      selfCopy = self;
    }

    v7 = selfCopy;
    uUID = [(WFAction *)v7 generateOutputUUIDForAction:self];
    [(WFAction *)self setUUID:uUID];
  }

  return uUID;
}

- (void)setUUID:(id)d
{
  v4 = [d copy];
  [(WFAction *)self setSupplementalParameterValue:v4 forKey:@"UUID"];
}

- (NSString)UUID
{
  v3 = objc_opt_class();

  return [(WFAction *)self supplementalParameterValueForKey:@"UUID" ofClass:v3];
}

- (void)setActionTree:(id)tree
{
  v17 = *MEMORY[0x1E69E9840];
  treeCopy = tree;
  if (self->_actionTree != treeCopy)
  {
    objc_storeStrong(&self->_actionTree, tree);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    containedVariables = [(WFAction *)self containedVariables];
    v7 = [containedVariables countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(containedVariables);
          }

          [*(*(&v12 + 1) + 8 * i) variableProviderDidInvalidateOutputDetails:self];
        }

        v8 = [containedVariables countByEnumeratingWithState:&v12 objects:v16 count:16];
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
    actionTree = actionTree;
  }

  else
  {
    workflow = [(WFAction *)self workflow];
    actionTree = [workflow actionTree];
  }

  return actionTree;
}

- (void)removeVariableObserver:(id)observer
{
  observerCopy = observer;
  actionTree = [(WFAction *)self actionTree];
  [actionTree removeVariableObserver:observerCopy];
}

- (void)addVariableObserver:(id)observer
{
  observerCopy = observer;
  actionTree = [(WFAction *)self actionTree];
  [actionTree addVariableObserver:observerCopy];
}

- (NSArray)workflowInputClasses
{
  WeakRetained = objc_loadWeakRetained(&self->_workflow);
  effectiveInputClasses = [WeakRetained effectiveInputClasses];

  return effectiveInputClasses;
}

- (id)possibleContentClassesForVariableNamed:(id)named
{
  namedCopy = named;
  actionTree = [(WFAction *)self actionTree];
  v6 = [actionTree indexOfAction:self];

  v7 = MEMORY[0x1E695DFB8];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = objc_opt_new();
  }

  else
  {
    actionTree2 = [(WFAction *)self actionTree];
    v10 = [actionTree2 possibleContentClassesForVariableNamed:namedCopy atIndex:v6];
    v8 = [v7 orderedSetWithArray:v10];
  }

  return v8;
}

- (id)actionsProvidingVariableName:(id)name
{
  nameCopy = name;
  actionTree = [(WFAction *)self actionTree];
  v6 = [actionTree indexOfAction:self];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    actionTree2 = [(WFAction *)self actionTree];
    v7 = [actionTree2 actionsProvidingVariableNamed:nameCopy atIndex:v6];
  }

  return v7;
}

- (id)possibleContentClassesForVariableWithOutputUUID:(id)d
{
  v4 = [(WFAction *)self actionProvidingVariableWithOutputUUID:d];
  v5 = MEMORY[0x1E695DFB8];
  if (v4)
  {
    actionTree = [(WFAction *)self actionTree];
    v7 = [actionTree possibleContentClassesForAction:v4];
    v8 = [v5 orderedSetWithArray:v7];
  }

  else
  {
    v8 = objc_opt_new();
  }

  return v8;
}

- (id)actionProvidingVariableWithOutputUUID:(id)d
{
  dCopy = d;
  actionTree = [(WFAction *)self actionTree];
  v6 = [actionTree outputActionWithID:dCopy];

  return v6;
}

- (BOOL)isVariableWithOutputUUIDAvailable:(id)available
{
  availableCopy = available;
  actionTree = [(WFAction *)self actionTree];
  v6 = [actionTree indexOfAction:self];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    actionTree2 = [(WFAction *)self actionTree];
    v7 = [actionTree2 isActionOutputWithIDAvailable:availableCopy atIndex:v6];
  }

  return v7;
}

- (BOOL)isVariableWithNameAvailable:(id)available
{
  availableCopy = available;
  actionTree = [(WFAction *)self actionTree];
  v6 = [actionTree indexOfAction:self];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    actionTree2 = [(WFAction *)self actionTree];
    v7 = [actionTree2 isVariableNameAvailable:availableCopy atIndex:v6];
  }

  return v7;
}

- (BOOL)hasAvailableActionOutputVariables
{
  availableOutputActions = [(WFAction *)self availableOutputActions];
  v3 = [availableOutputActions count] != 0;

  return v3;
}

- (NSArray)availableOutputActions
{
  actionTree = [(WFAction *)self actionTree];
  v4 = [actionTree indexOfAction:self];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    actionTree2 = [(WFAction *)self actionTree];
    v5 = [actionTree2 availableOutputActionsAtIndex:v4];
  }

  return v5;
}

- (NSArray)availableVariableNames
{
  actionTree = [(WFAction *)self actionTree];
  v4 = [actionTree indexOfAction:self];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    actionTree2 = [(WFAction *)self actionTree];
    v5 = [actionTree2 availableVariableNamesAtIndex:v4];
  }

  return v5;
}

- (id)generateOutputUUIDForAction:(id)action
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
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

- (void)enumerateObservers:(id)observers
{
  v18 = *MEMORY[0x1E69E9840];
  observersCopy = observers;
  os_unfair_lock_lock(&self->_observersLock);
  eventObservers = [(WFAction *)self eventObservers];
  allObjects = [eventObservers allObjects];

  os_unfair_lock_unlock(&self->_observersLock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = allObjects;
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

        observersCopy[2](observersCopy, *(*(&v13 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)removeEventObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observersLock);
  eventObservers = [(WFAction *)self eventObservers];
  [eventObservers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)addEventObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_observersLock);
  eventObservers = [(WFAction *)self eventObservers];
  [eventObservers addObject:observerCopy];

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
  appDefinition = [(WFAction *)self appDefinition];
  if (appDefinition)
  {
    appDefinition2 = [(WFAction *)self appDefinition];
    v5 = [appDefinition2 objectForKey:*MEMORY[0x1E69E0908]];
    v6 = [v5 isEqualToString:*MEMORY[0x1E69E0FB0]] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)requestInterfacePresentationWithCompletionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  userInterfaceClasses = [(WFAction *)self userInterfaceClasses];
  if (![userInterfaceClasses count])
  {
    goto LABEL_8;
  }

  userInterface = [(WFAction *)self userInterface];
  isRunningWithSiriUI = [userInterface isRunningWithSiriUI];

  if (!isRunningWithSiriUI)
  {
    userInterface2 = [(WFAction *)self userInterface];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      userInterface3 = [(WFAction *)self userInterface];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __62__WFAction_requestInterfacePresentationWithCompletionHandler___block_invoke;
      v16[3] = &unk_1E83752B8;
      v16[4] = self;
      v17 = handlerCopy;
      [userInterface3 requestActionInterfacePresentationForActionClassName:v14 classNamesByType:userInterfaceClasses completionHandler:v16];

      goto LABEL_9;
    }

LABEL_8:
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
    goto LABEL_9;
  }

  v8 = getWFWorkflowExecutionLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[WFAction requestInterfacePresentationWithCompletionHandler:]";
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEFAULT, "%s Action running in Siri needs to display UI, punching to Shortcuts", buf, 0xCu);
  }

  wfUnsupportedUserInterfaceError = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
  (*(handlerCopy + 2))(handlerCopy, 0, wfUnsupportedUserInterfaceError);

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

- (void)setOutput:(id)output onVariableSource:(id)source
{
  outputCopy = output;
  sourceCopy = source;
  if ([(WFAction *)self runningInStepWiseExecutor])
  {
    v7 = [(WFAction *)self generateUUIDIfNecessaryWithUUIDProvider:0];
    [(WFAction *)self setUUID:v7];

    uUID = [(WFAction *)self UUID];
    uUID2 = uUID;
LABEL_6:
    v12 = [uUID stringByAppendingString:@"-output"];
    [sourceCopy setContent:outputCopy forVariableWithName:v12];

    goto LABEL_7;
  }

  uUID2 = [(WFAction *)self UUID];
  if (uUID2)
  {
    actionTree = [(WFAction *)self actionTree];
    v11 = [actionTree outputActionWithID:uUID2];

    if (v11)
    {
      uUID = uUID2;
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
  userCancelledError = [MEMORY[0x1E696ABC0] userCancelledError];
  [(WFAction *)self finishRunningWithError:userCancelledError];
}

- (void)dismissPresentedContentWithCompletionHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = getWFGeneralLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[WFAction dismissPresentedContentWithCompletionHandler:]";
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Dismissing presented content", &v10, 0xCu);
  }

  userInterface = [(WFAction *)self userInterface];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    userInterface2 = [(WFAction *)self userInterface];
    [userInterface2 dismissPresentedContentWithCompletionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_finishRunningWithError:(id)error
{
  v77[2] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  effectiveWorkQueue = [(WFAction *)self effectiveWorkQueue];
  dispatch_assert_queue_V2(effectiveWorkQueue);

  if ([(WFAction *)self isRunning])
  {
    domain = [errorCopy domain];
    v7 = *MEMORY[0x1E6997158];
    if ([domain isEqualToString:*MEMORY[0x1E6997158]])
    {
      code = [errorCopy code];

      if (!code)
      {
        domain4 = objc_opt_new();
        v10 = WFLocalizedString(@"This action could not be run with the current user interface.");
        [domain4 setObject:v10 forKey:*MEMORY[0x1E696A578]];

        input = [(WFAction *)self input];
        [domain4 setValue:input forKey:@"ActionInput"];

        processedParameters = [(WFAction *)self processedParameters];
        [domain4 setValue:processedParameters forKey:@"ActionProcessedParameters"];

        v13 = MEMORY[0x1E696ABC0];
        v14 = v7;
        v15 = 0;
LABEL_13:
        v31 = [v13 errorWithDomain:v14 code:v15 userInfo:domain4];
LABEL_14:
        v25 = v31;
LABEL_15:

        errorCopy = v25;
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
    }

    if ([errorCopy wf_isUnsupportedOnPlatformError])
    {
      userInfo = [errorCopy userInfo];
      domain4 = [userInfo mutableCopy];

      v17 = *MEMORY[0x1E696A578];
      v18 = [domain4 objectForKeyedSubscript:*MEMORY[0x1E696A578]];

      if (!v18)
      {
        localizedName = [(WFAction *)self localizedName];
        v20 = [errorCopy wf_localizedErrorStringWithActionName:localizedName];
        [domain4 setValue:v20 forKey:v17];

        input2 = [(WFAction *)self input];
        [domain4 setValue:input2 forKey:@"ActionInput"];

        processedParameters2 = [(WFAction *)self processedParameters];
        [domain4 setValue:processedParameters2 forKey:@"ActionProcessedParameters"];
      }

      v23 = MEMORY[0x1E696ABC0];
      domain2 = [errorCopy domain];
      v25 = [v23 errorWithDomain:domain2 code:objc_msgSend(errorCopy userInfo:{"code"), domain4}];

      errorCopy = domain2;
      goto LABEL_15;
    }

    domain3 = [errorCopy domain];
    if ([domain3 isEqualToString:@"WFActionErrorDomain"])
    {
      code2 = [errorCopy code];

      if (code2 == 2)
      {
        domain4 = objc_opt_new();
        v28 = WFLocalizedString(@"This action cannot be run in the current environment.");
        [domain4 setObject:v28 forKey:*MEMORY[0x1E696A578]];

        input3 = [(WFAction *)self input];
        [domain4 setValue:input3 forKey:@"ActionInput"];

        processedParameters3 = [(WFAction *)self processedParameters];
        [domain4 setValue:processedParameters3 forKey:@"ActionProcessedParameters"];

        v13 = MEMORY[0x1E696ABC0];
        v14 = @"WFActionErrorDomain";
        v15 = 2;
        goto LABEL_13;
      }
    }

    else
    {
    }

    domain4 = [errorCopy domain];
    if (![domain4 isEqual:*MEMORY[0x1E6997038]])
    {
      goto LABEL_16;
    }

    code3 = [errorCopy code];

    if (code3)
    {
LABEL_17:
      [(WFAction *)self setRunning:0];
      [(WFAction *)self setActionUserInterface:0];
      effectiveWorkQueue = self->_effectiveWorkQueue;
      self->_effectiveWorkQueue = 0;

      sessionKitAssertion = [(WFAction *)self sessionKitAssertion];

      if (sessionKitAssertion)
      {
        v34 = getWFSessionKitLogObject();
        v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
        if (errorCopy)
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

          sessionKitAssertion2 = [(WFAction *)self sessionKitAssertion];
          [sessionKitAssertion2 startTimeoutTimer];
        }
      }

      if (([objc_opt_class() outputIsExemptFromTaintTrackingInheritance] & 1) != 0 || -[WFAction inputPassthrough](self, "inputPassthrough"))
      {
        goto LABEL_40;
      }

      contentAttributionTracker = [(WFAction *)self contentAttributionTracker];
      trackedAttributionSet = [contentAttributionTracker trackedAttributionSet];

      appDescriptor = [(WFAction *)self appDescriptor];

      if (appDescriptor)
      {
        appDescriptor2 = [(WFAction *)self appDescriptor];
        bundleIdentifier = [appDescriptor2 bundleIdentifier];
        WFMCIsAppAccountBasedSourceForOpenIn(bundleIdentifier);
        v43 = v42;

        if ((v43 & 1) == 0)
        {
          v44 = MEMORY[0x1E6996D38];
          v77[0] = trackedAttributionSet;
          v45 = MEMORY[0x1E6996D30];
          outputDisclosureLevel = [(WFAction *)self outputDisclosureLevel];
          v47 = MEMORY[0x1E6996C90];
          appDescriptor3 = [(WFAction *)self appDescriptor];
          v67 = [v47 locationWithAppDescriptor:appDescriptor3];
          v49 = MEMORY[0x1E695DFB8];
          output = [(WFAction *)self output];
          items = [output items];
          v66 = [items if_map:&__block_literal_global_459];
          v50 = [v49 orderedSetWithArray:v66];
          v51 = [v45 attributionWithDisclosureLevel:outputDisclosureLevel origin:v67 originalItemIdentifiers:v50];
          v76 = v51;
          v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
          v53 = [v44 attributionSetWithAttributions:v52];
          v77[1] = v53;
          v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];
          v55 = [v44 attributionSetByMergingAttributionSets:v54];

          trackedAttributionSet = v55;
LABEL_38:
        }
      }

      else
      {
        appDescriptor3 = [(WFAction *)self output];
        if (![appDescriptor3 numberOfItems])
        {
          goto LABEL_38;
        }

        outputDisclosureLevel2 = [(WFAction *)self outputDisclosureLevel];

        if (outputDisclosureLevel2 == 1)
        {
          appDescriptor3 = getWFWorkflowExecutionLogObject();
          if (os_log_type_enabled(appDescriptor3, OS_LOG_TYPE_FAULT))
          {
            identifier = [(WFAction *)self identifier];
            *buf = 136315394;
            v73 = "[WFAction _finishRunningWithError:]";
            v74 = 2112;
            v75 = identifier;
            _os_log_impl(&dword_1CA256000, appDescriptor3, OS_LOG_TYPE_FAULT, "%s Action %@ produces private output and is not exempt from taint tracking, but is missing an appIdentifier", buf, 0x16u);
          }

          goto LABEL_38;
        }
      }

      output2 = [(WFAction *)self output];
      v61 = [output2 collectionByMergingAttributionSet:trackedAttributionSet];
      [(WFAction *)self setOutput:v61];

LABEL_40:
      output3 = [(WFAction *)self output];
      [(WFAction *)self setDefaultCoercionOptionsOnContentCollection:output3];

      output4 = [(WFAction *)self output];
      variableSource = [(WFAction *)self variableSource];
      [(WFAction *)self setOutput:output4 onVariableSource:variableSource];

      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __36__WFAction__finishRunningWithError___block_invoke_460;
      v70[3] = &unk_1E837F870;
      v70[4] = self;
      errorCopy = errorCopy;
      v71 = errorCopy;
      [(WFAction *)self dismissPresentedContentWithCompletionHandler:v70];

      goto LABEL_41;
    }

    v57 = MEMORY[0x1E6996D58];
    domain4 = [(WFAction *)self localizedName];
    v31 = [v57 populateBadCoercionError:errorCopy withResponsibleComponent:domain4];
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

- (void)finishRunningWithError:(id)error
{
  errorCopy = error;
  effectiveWorkQueue = [(WFAction *)self effectiveWorkQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__WFAction_finishRunningWithError___block_invoke;
  v7[3] = &unk_1E837F870;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(effectiveWorkQueue, v7);
}

- (id)parameterValueForKey:(id)key ofClass:(Class)class
{
  keyCopy = key;
  processedParameters = [(WFAction *)self processedParameters];
  v8 = [processedParameters objectForKey:keyCopy];

  v9 = WFEnforceClass_8714(v8, class);

  return v9;
}

- (void)prepareToProcessWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__WFAction_prepareToProcessWithCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E837FA10;
  aBlock[4] = self;
  v11 = handlerCopy;
  v5 = handlerCopy;
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
    effectiveWorkQueue = [(WFAction *)self effectiveWorkQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__WFAction_checkUserInterfaceAndRun__block_invoke;
    block[3] = &unk_1E837FA70;
    block[4] = self;
    dispatch_async(effectiveWorkQueue, block);
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

- (void)promptForAudioRecordingPermissionIfNeededWithCompletionBlock:(id)block
{
  blockCopy = block;
  if ([(WFAction *)self mightStartAudioRecording])
  {
    runningDelegate = [(WFAction *)self runningDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      runningDelegate2 = [(WFAction *)self runningDelegate];
      v8 = [runningDelegate2 currentRunningContextForAction:self];

      if (v8)
      {
        userInterface = [(WFAction *)self userInterface];

        if (userInterface)
        {
          automationType = [v8 automationType];

          if (automationType)
          {
            v11 = [MEMORY[0x1E6996C70] alertWithPreferredStyle:0];
            localizedName = [(WFAction *)self localizedName];
            [v11 setTitle:localizedName];

            v13 = MEMORY[0x1E696AEC0];
            v14 = WFLocalizedString(@"Allow “%@” to start an audio recording?");
            localizedName2 = [(WFAction *)self localizedName];
            v16 = [v13 localizedStringWithFormat:v14, localizedName2];
            [v11 setMessage:v16];

            v17 = MEMORY[0x1E6996C78];
            v26[0] = MEMORY[0x1E69E9820];
            v26[1] = 3221225472;
            v26[2] = __73__WFAction_promptForAudioRecordingPermissionIfNeededWithCompletionBlock___block_invoke;
            v26[3] = &unk_1E837F4E8;
            v18 = blockCopy;
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

            userInterface2 = [(WFAction *)self userInterface];
            [userInterface2 presentAlert:v11];
          }

          else
          {
            (*(blockCopy + 2))(blockCopy, 1);
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    (*(blockCopy + 2))(blockCopy, 0);
LABEL_10:

    goto LABEL_11;
  }

  (*(blockCopy + 2))(blockCopy, 1);
LABEL_11:
}

- (void)performDeletionAuthorizationChecksWithUserInterface:(id)interface contentItemCache:(id)cache completionHandler:(id)handler
{
  v68 = *MEMORY[0x1E69E9840];
  interfaceCopy = interface;
  handlerCopy = handler;
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

    itemsBeingDeleted = [(WFAction *)self itemsBeingDeleted];
    numberOfItems = [itemsBeingDeleted numberOfItems];
    if (!numberOfItems)
    {
      handlerCopy[2](handlerCopy, 0);
LABEL_53:

      goto LABEL_54;
    }

    v15 = numberOfItems;
    v60 = interfaceCopy;
    v61 = itemsBeingDeleted;
    workflow = [(WFAction *)self workflow];
    reference = [workflow reference];
    if (reference)
    {
      workflow2 = [(WFAction *)self workflow];
      reference2 = [workflow2 reference];
    }

    else
    {
      workflow2 = +[WFDatabaseProxy defaultDatabase];
      workflow3 = [(WFAction *)self workflow];
      workflowID = [workflow3 workflowID];
      reference2 = [workflow2 referenceForWorkflowID:workflowID];
    }

    v22 = +[WFDatabaseProxy defaultDatabase];
    v23 = NSStringFromClass([(WFAction *)self contentItemClass]);
    uUID = [(WFAction *)self UUID];
    identifier = [(WFAction *)self identifier];
    workflow4 = [(WFAction *)self workflow];
    actions = [workflow4 actions];
    v65 = 0;
    v62 = reference2;
    v28 = [v22 currentDeletionAuthorizationStatusWithContentItemClassName:v23 actionUUID:uUID actionIdentifier:identifier actionIndex:objc_msgSend(actions count:"indexOfObject:" reference:self) error:{v15, reference2, &v65}];
    v59 = v65;

    actionUUID = [v28 actionUUID];
    [(WFAction *)self setUUID:actionUUID];

    status = [v28 status];
    LODWORD(identifier) = [status isEqualToString:@"Restricted"];

    if (identifier)
    {
      v31 = getWFSecurityLogObject();
      interfaceCopy = v60;
      itemsBeingDeleted = v61;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v67 = "[WFAction performDeletionAuthorizationChecksWithUserInterface:contentItemCache:completionHandler:]";
        _os_log_impl(&dword_1CA256000, v31, OS_LOG_TYPE_INFO, "%s Stopping action because exfiltration is restricted", buf, 0xCu);
      }

      localizedExfiltrationRestrictedError = [v28 localizedExfiltrationRestrictedError];
LABEL_28:
      v40 = localizedExfiltrationRestrictedError;
      handlerCopy[2](handlerCopy, localizedExfiltrationRestrictedError);

      v36 = v62;
LABEL_52:

      goto LABEL_53;
    }

    interfaceCopy = v60;
    itemsBeingDeleted = v61;
    if (+[WFShortcutsSecuritySettings allowsDeletingWithoutConfirmation])
    {
      status2 = [v28 status];
      v34 = [status2 isEqualToString:@"Allow"];

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

        handlerCopy[2](handlerCopy, 0);
        goto LABEL_52;
      }
    }

    status3 = [v28 status];
    v38 = [status3 isEqualToString:@"Disallow"];

    if (v38)
    {
      v39 = getWFSecurityLogObject();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v67 = "[WFAction performDeletionAuthorizationChecksWithUserInterface:contentItemCache:completionHandler:]";
        _os_log_impl(&dword_1CA256000, v39, OS_LOG_TYPE_INFO, "%s Stopping action because deletion authorization was previously denied", buf, 0xCu);
      }

      localizedExfiltrationRestrictedError = [v28 deniedPermissionsError];
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

      workflow5 = [(WFAction *)self workflow];
      name = [workflow5 name];
      v55 = WFRunnerFailureErrorMessage(name);
      (handlerCopy)[2](handlerCopy, v55);

      itemsBeingDeleted = v61;
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
      (handlerCopy)[2](handlerCopy, v57);

      goto LABEL_51;
    }

    userInterface = [(WFAction *)self userInterface];
    if (objc_opt_respondsToSelector())
    {
      userInterface2 = [(WFAction *)self userInterface];
      requestedFromAnotherDevice = [userInterface2 requestedFromAnotherDevice];

      if (requestedFromAnotherDevice)
      {
        userInterface3 = [(WFAction *)self userInterface];
        v50 = objc_opt_respondsToSelector();

        if (v50)
        {
          userInterface4 = [(WFAction *)self userInterface];
          v64[0] = MEMORY[0x1E69E9820];
          v64[1] = 3221225472;
          v64[2] = __99__WFAction_performDeletionAuthorizationChecksWithUserInterface_contentItemCache_completionHandler___block_invoke;
          v64[3] = &unk_1E8375270;
          v64[4] = self;
          v64[5] = handlerCopy;
          [userInterface4 presentAlertWithSmartPromptConfiguration:v45 completionHandler:v64];
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

    userInterface4 = [(WFAction *)self userInterface];
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __99__WFAction_performDeletionAuthorizationChecksWithUserInterface_contentItemCache_completionHandler___block_invoke_418;
    v63[3] = &unk_1E8375270;
    v63[4] = self;
    v63[5] = handlerCopy;
    [userInterface4 requestAuthorizationWithConfiguration:v45 completionHandler:v63];
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
  handlerCopy[2](handlerCopy, 0);
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
    input = [(WFAction *)self input];
  }

  else
  {
    input = 0;
  }

  return input;
}

- (BOOL)isRunningInCarPlay
{
  runningDelegate = [(WFAction *)self runningDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    runningDelegate2 = [(WFAction *)self runningDelegate];
    v6 = [runningDelegate2 currentRunningContextForAction:self];
  }

  else
  {
    v6 = 0;
  }

  runSource = [v6 runSource];
  if ([runSource length])
  {
    if ([runSource isEqualToString:*MEMORY[0x1E69E13F0]])
    {
      v8 = 1;
    }

    else
    {
      v8 = [runSource isEqualToString:*MEMORY[0x1E69E1370]];
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
  userInterface = [(WFAction *)self userInterface];
  isRunningWithSiriUI = [userInterface isRunningWithSiriUI];

  return isRunningWithSiriUI;
}

- (void)logDataTransmissionForSmartPromptApprovalResult:(id)result
{
  v3 = MEMORY[0x1E695DFD8];
  allowedStates = [result allowedStates];
  v5 = [allowedStates if_compactMap:&__block_literal_global_409];
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

- (void)presentSmartPromptAuthorizationWithConfiguration:(id)configuration userInterface:(id)interface databaseApprovalResult:(id)result contentDestination:(id)destination completionHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  interfaceCopy = interface;
  resultCopy = result;
  destinationCopy = destination;
  handlerCopy = handler;
  if (objc_opt_respondsToSelector() & 1) != 0 && [interfaceCopy requestedFromAnotherDevice] && (objc_opt_respondsToSelector())
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __135__WFAction_presentSmartPromptAuthorizationWithConfiguration_userInterface_databaseApprovalResult_contentDestination_completionHandler___block_invoke;
    v26[3] = &unk_1E8375208;
    v30 = handlerCopy;
    v27 = destinationCopy;
    selfCopy = self;
    v29 = resultCopy;
    [interfaceCopy presentAlertWithSmartPromptConfiguration:configurationCopy completionHandler:v26];

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
    v25 = handlerCopy;
    v22 = destinationCopy;
    selfCopy2 = self;
    v24 = resultCopy;
    [interfaceCopy requestAuthorizationWithConfiguration:configurationCopy completionHandler:v21];

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
  handlerCopy[2](handlerCopy, v19);

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

- (void)performSmartPromptChecksWithUserInterface:(id)interface contentDestination:(id)destination contentItemCache:(id)cache isWebpageCoercion:(BOOL)coercion completionHandler:(id)handler
{
  v147 = *MEMORY[0x1E69E9840];
  interfaceCopy = interface;
  destinationCopy = destination;
  cacheCopy = cache;
  handlerCopy = handler;
  v12 = +[WFDatabaseProxy defaultDatabase];

  if (v12)
  {
    if ([(WFAction *)self shouldDisableSmartPromptChecks])
    {
      v13 = getWFSecurityLogObject();
      v14 = interfaceCopy;
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
      v14 = interfaceCopy;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v139 = "[WFAction performSmartPromptChecksWithUserInterface:contentDestination:contentItemCache:isWebpageCoercion:completionHandler:]";
        v15 = "%s Not performing smart prompt checks because action is executed remotely.";
        goto LABEL_11;
      }

LABEL_12:

      v17 = handlerCopy;
      (*(handlerCopy + 2))(handlerCopy, 0);
      goto LABEL_26;
    }

    coercionCopy = coercion;
    workflow = [(WFAction *)self workflow];
    actions = [workflow actions];
    v20 = [actions indexOfObject:self];

    array = [MEMORY[0x1E695DF70] array];
    contentAttributionTracker = [(WFAction *)self contentAttributionTracker];
    trackedAttributionSet = [contentAttributionTracker trackedAttributionSet];
    [array if_addObjectIfNonNil:trackedAttributionSet];

    runningDelegate = [(WFAction *)self runningDelegate];
    flowTracker = [runningDelegate flowTracker];
    attributionSetForCurrentScope = [flowTracker attributionSetForCurrentScope];
    [array if_addObjectIfNonNil:attributionSetForCurrentScope];

    v107 = array;
    v27 = [MEMORY[0x1E6996D38] attributionSetByMergingAttributionSets:array];
    runningDelegate2 = [(WFAction *)self runningDelegate];
    exfiltrationLogger = [runningDelegate2 exfiltrationLogger];
    uUID = [(WFAction *)self UUID];
    v114 = v27;
    v31 = [exfiltrationLogger attributionSetByRewritingSetWithLoggedCounts:v27 forExfiltratingActionUUID:uUID];

    v32 = +[WFDatabaseProxy defaultDatabase];
    uUID2 = [(WFAction *)self UUID];
    identifier = [(WFAction *)self identifier];
    workflow2 = [(WFAction *)self workflow];
    reference = [workflow2 reference];
    selfCopy = self;
    allowedOnceSmartPromptStates = [(WFAction *)self allowedOnceSmartPromptStates];
    v38 = allowedOnceSmartPromptStates;
    if (!allowedOnceSmartPromptStates)
    {
      v38 = [MEMORY[0x1E695DFD8] set];
    }

    v136 = 0;
    v39 = [v32 approvalResultForContentAttributionSet:v31 contentDestination:destinationCopy actionUUID:uUID2 actionIdentifier:identifier actionIndex:v20 reference:reference allowedOnceStates:v38 error:&v136];
    v40 = v136;
    if (!allowedOnceSmartPromptStates)
    {
    }

    v41 = selfCopy;
    [(WFAction *)selfCopy setAllowedOnceSmartPromptStates:0];
    [v39 actionUUID];
    v43 = v42 = v39;
    [(WFAction *)selfCopy setUUID:v43];

    if (v40)
    {
      v17 = handlerCopy;
      (*(handlerCopy + 2))(handlerCopy, v40);
      v14 = interfaceCopy;
LABEL_25:

      goto LABEL_26;
    }

    restrictedStates = [v42 restrictedStates];
    v45 = [restrictedStates count];

    if (v45)
    {
      restrictedStates2 = [v42 restrictedStates];
      firstObject = [restrictedStates2 firstObject];
      localizedExfiltrationRestrictedError = [firstObject localizedExfiltrationRestrictedError];
    }

    else
    {
      deniedStates = [v42 deniedStates];
      v50 = [deniedStates count];

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
                sourceContentAttribution = [v54 sourceContentAttribution];
                v57 = [sourceContentAttribution count];
                sourceContentAttribution2 = [v54 sourceContentAttribution];
                origin = [sourceContentAttribution2 origin];
                uUID3 = [(WFAction *)v41 UUID];
                *buf = 136315906;
                v139 = "[WFAction performSmartPromptChecksWithUserInterface:contentDestination:contentItemCache:isWebpageCoercion:completionHandler:]";
                v140 = 2048;
                v141 = v57;
                v142 = 2112;
                v143 = origin;
                v144 = 2112;
                v145 = uUID3;
                _os_log_impl(&dword_1CA256000, v55, OS_LOG_TYPE_DEBUG, "%s Logging allowed exfiltration of %lu items from %@ by action %@", buf, 0x2Au);
              }

              sourceContentAttribution3 = [v54 sourceContentAttribution];
              if (sourceContentAttribution3)
              {
                v120 = i;
                v62 = [MEMORY[0x1E695DFA8] set];
                v128 = 0u;
                v129 = 0u;
                v130 = 0u;
                v131 = 0u;
                attributions = [v114 attributions];
                v64 = [attributions countByEnumeratingWithState:&v128 objects:v137 count:16];
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
                        objc_enumerationMutation(attributions);
                      }

                      v68 = *(*(&v128 + 1) + 8 * j);
                      origin2 = [v68 origin];
                      origin3 = [sourceContentAttribution3 origin];
                      v71 = [origin2 matches:origin3];

                      if (v71)
                      {
                        privateItemIdentifiers = [v68 privateItemIdentifiers];
                        v73 = [privateItemIdentifiers set];
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

                    v65 = [attributions countByEnumeratingWithState:&v128 objects:v137 count:16];
                  }

                  while (v65);
                }

                v41 = selfCopy;
                runningDelegate3 = [(WFAction *)selfCopy runningDelegate];
                exfiltrationLogger2 = [runningDelegate3 exfiltrationLogger];
                uUID4 = [(WFAction *)selfCopy UUID];
                origin4 = [sourceContentAttribution3 origin];
                [exfiltrationLogger2 logExfiltratedItems:v62 actionUUID:uUID4 contentOrigin:origin4];

                v31 = v113;
                i = v120;
              }
            }

            v118 = [obj countByEnumeratingWithState:&v132 objects:v146 count:16];
          }

          while (v118);
        }

        v42 = v105;
        undefinedStates = [v105 undefinedStates];
        v80 = [undefinedStates count];

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
          undefinedStates2 = [v105 undefinedStates];
          contentAttributionTracker2 = [(WFAction *)v41 contentAttributionTracker];
          trackedAttributionSet2 = [contentAttributionTracker2 trackedAttributionSet];
          previousAttributions = [v105 previousAttributions];
          workflow3 = [(WFAction *)v41 workflow];
          reference2 = [workflow3 reference];
          workflow4 = [(WFAction *)v41 workflow];
          name = [workflow4 name];
          LOBYTE(v104) = coercionCopy;
          v92 = [(WFSmartPromptConfiguration *)v119 initWithSmartPromptStates:undefinedStates2 attributionSet:trackedAttributionSet2 previousAttributions:previousAttributions contentItemCache:cacheCopy action:v41 contentDestination:destinationCopy reference:reference2 workflowName:name source:v81 isWebpageCoercion:v104];

          if (v92)
          {
            v93 = getWFSecurityLogObject();
            if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315138;
              v139 = "[WFAction performSmartPromptChecksWithUserInterface:contentDestination:contentItemCache:isWebpageCoercion:completionHandler:]";
              _os_log_impl(&dword_1CA256000, v93, OS_LOG_TYPE_DEBUG, "%s Requiring device unlock before presenting smart prompt", buf, 0xCu);
            }

            v14 = interfaceCopy;
            v94 = v81;
            if ([(WFAction *)selfCopy isRunningInCarPlay])
            {
              v95 = getWFSecurityLogObject();
              if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315138;
                v139 = "[WFAction performSmartPromptChecksWithUserInterface:contentDestination:contentItemCache:isWebpageCoercion:completionHandler:]";
                _os_log_impl(&dword_1CA256000, v95, OS_LOG_TYPE_DEBUG, "%s CarPlay run: presenting permission prompt immediately", buf, 0xCu);
              }

              v17 = handlerCopy;
              [(WFAction *)selfCopy presentSmartPromptAuthorizationWithConfiguration:v92 userInterface:interfaceCopy databaseApprovalResult:v105 contentDestination:destinationCopy completionHandler:handlerCopy];
            }

            else
            {
              if ([(WFAction *)selfCopy isRunningInSiriUserInterface])
              {
                v100 = getWFSecurityLogObject();
                if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315138;
                  v139 = "[WFAction performSmartPromptChecksWithUserInterface:contentDestination:contentItemCache:isWebpageCoercion:completionHandler:]";
                  _os_log_impl(&dword_1CA256000, v100, OS_LOG_TYPE_DEBUG, "%s Requesting Siri punch-out to present permission UI with private content", buf, 0xCu);
                }

                wfUnsupportedUserInterfaceError = [MEMORY[0x1E696ABC0] wfUnsupportedUserInterfaceError];
                v102 = handlerCopy;
                (*(handlerCopy + 2))(handlerCopy, wfUnsupportedUserInterfaceError);
              }

              else
              {
                v103 = objc_alloc_init(WFCompactUnlockService);
                v121[0] = MEMORY[0x1E69E9820];
                v121[1] = 3221225472;
                v121[2] = __126__WFAction_performSmartPromptChecksWithUserInterface_contentDestination_contentItemCache_isWebpageCoercion_completionHandler___block_invoke;
                v121[3] = &unk_1E83751E0;
                v121[4] = selfCopy;
                v122 = v92;
                v123 = interfaceCopy;
                v124 = v105;
                v102 = handlerCopy;
                v126 = v103;
                v127 = handlerCopy;
                v125 = destinationCopy;
                wfUnsupportedUserInterfaceError = v103;
                [(WFCompactUnlockService *)wfUnsupportedUserInterfaceError requestUnlockIfNeeded:v121];
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

            workflow5 = [(WFAction *)selfCopy workflow];
            name2 = [workflow5 name];
            v99 = WFRunnerFailureErrorMessage(name2);
            (*(handlerCopy + 2))(handlerCopy, v99);

            v17 = handlerCopy;
            v14 = interfaceCopy;
            v94 = v81;
          }

          v42 = v105;
          v40 = 0;
          goto LABEL_25;
        }

        [(WFAction *)v41 logDataTransmissionForSmartPromptApprovalResult:v105];
        v17 = handlerCopy;
        (*(handlerCopy + 2))(handlerCopy, 0);
        goto LABEL_24;
      }

      restrictedStates2 = [v42 deniedStates];
      firstObject = [restrictedStates2 firstObject];
      localizedExfiltrationRestrictedError = [firstObject localizedDeniedPermissionsError];
    }

    v51 = localizedExfiltrationRestrictedError;

    v17 = handlerCopy;
    (*(handlerCopy + 2))(handlerCopy, v51);

LABEL_24:
    v14 = interfaceCopy;
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

  v17 = handlerCopy;
  (*(handlerCopy + 2))(handlerCopy, 0);
  v14 = interfaceCopy;
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

- (void)performDataAccessChecksWithUserInterface:(id)interface contentItemCache:(id)cache completionHandler:(id)handler
{
  interfaceCopy = interface;
  cacheCopy = cache;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__WFAction_performDataAccessChecksWithUserInterface_contentItemCache_completionHandler___block_invoke;
  v14[3] = &unk_1E83751B8;
  v14[4] = self;
  v15 = interfaceCopy;
  v16 = cacheCopy;
  v17 = handlerCopy;
  v11 = cacheCopy;
  v12 = interfaceCopy;
  v13 = handlerCopy;
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

- (BOOL)isSubclassThatOverridesSelector:(SEL)selector
{
  v5 = objc_opt_class();
  v6 = [(WFAction *)self methodForSelector:selector];
  return v6 != [v5 instanceMethodForSelector:selector];
}

- (BOOL)shouldDisableSmartPromptChecks
{
  v14 = *MEMORY[0x1E69E9840];
  if (![MEMORY[0x1E695E000] smartPromptsExplicitlyDisabled])
  {
    runningDelegate = [(WFAction *)self runningDelegate];
    if (objc_opt_respondsToSelector())
    {
      runningDelegate2 = [(WFAction *)self runningDelegate];
      shouldDisablePrivacyPrompts = [runningDelegate2 shouldDisablePrivacyPrompts];

      if (shouldDisablePrivacyPrompts)
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

- (void)runAsynchronouslyWithInput:(id)input
{
  inputCopy = input;
  if ([(WFAction *)self isSubclassThatOverridesSelector:sel_runWithInput_completionHandler_])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __39__WFAction_runAsynchronouslyWithInput___block_invoke;
    v11[3] = &unk_1E837E5E0;
    v11[4] = self;
    [(WFAction *)self runWithInput:inputCopy completionHandler:v11];
  }

  else
  {
    userInterfaceClasses = [(WFAction *)self userInterfaceClasses];
    v6 = [userInterfaceClasses count];

    if (v6)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __39__WFAction_runAsynchronouslyWithInput___block_invoke_3;
      v9[3] = &unk_1E8375168;
      v9[4] = self;
      v10 = inputCopy;
      [(WFAction *)self requestInterfacePresentationWithCompletionHandler:v9];
    }

    else
    {
      v8 = 0;
      [(WFAction *)self runWithInput:inputCopy error:&v8];
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

- (void)runWithInput:(id)input error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (error)
  {
    v6 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A578];
    v7 = MEMORY[0x1E696AEC0];
    v8 = WFLocalizedString(@"The action being run (%@) is missing an implementation.");
    localizedName = [(WFAction *)self localizedName];
    v10 = [v7 localizedStringWithFormat:v8, localizedName, v13];
    v14[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *error = [v6 errorWithDomain:@"WFActionErrorDomain" code:3 userInfo:v11];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (OS_dispatch_queue)effectiveWorkQueue
{
  v11[2] = *MEMORY[0x1E69E9840];
  effectiveWorkQueue = self->_effectiveWorkQueue;
  if (!effectiveWorkQueue)
  {
    resourceManager = [(WFAction *)self resourceManager];
    v11[0] = objc_opt_class();
    v11[1] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    [resourceManager refreshAvailabilityOfRequiredResourcesOfClasses:v5];
    if ([resourceManager currentlyRequiresResourceOfClasses:v5])
    {
      workQueue = MEMORY[0x1E69E96A0];
      v7 = MEMORY[0x1E69E96A0];
    }

    else
    {
      workQueue = [(WFAction *)self workQueue];
    }

    v8 = self->_effectiveWorkQueue;
    self->_effectiveWorkQueue = workQueue;

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

- (id)parametersRequiringUserInputAlongsideParameter:(id)parameter
{
  v37 = *MEMORY[0x1E69E9840];
  parameterCopy = parameter;
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
        if (v9 != parameterCopy)
        {
          resourceManager = [*(*(&v31 + 1) + 8 * v8) resourceManager];
          resourcesRequiredForDisplayAvailable = [resourceManager resourcesRequiredForDisplayAvailable];

          if ((resourcesRequiredForDisplayAvailable & 1) == 0)
          {
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            resourceManager2 = [v9 resourceManager];
            v13 = [resourceManager2 resourceObjectsOfClass:objc_opt_class()];

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

                  parameterKey = [*(*(&v27 + 1) + 8 * i) parameterKey];
                  v19 = [parameterCopy key];
                  v20 = [parameterKey isEqualToString:v19];

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

- (void)askForValuesOfParameters:(id)parameters withDefaultStates:(id)states prompts:(id)prompts input:(id)input workQueue:(id)queue completionHandler:(id)handler
{
  parametersCopy = parameters;
  inputCopy = input;
  queueCopy = queue;
  handlerCopy = handler;
  promptsCopy = prompts;
  statesCopy = states;
  inputParameter = [(WFAction *)self inputParameter];
  LODWORD(states) = [parametersCopy containsObject:inputParameter];

  if (states)
  {

    inputCopy = 0;
  }

  runningDelegate = [(WFAction *)self runningDelegate];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __97__WFAction_askForValuesOfParameters_withDefaultStates_prompts_input_workQueue_completionHandler___block_invoke;
  v25[3] = &unk_1E8375140;
  v25[4] = self;
  v26 = inputCopy;
  v27 = queueCopy;
  v28 = handlerCopy;
  v22 = queueCopy;
  v23 = inputCopy;
  v24 = handlerCopy;
  [runningDelegate action:self provideInputForParameters:parametersCopy withDefaultStates:statesCopy prompts:promptsCopy completionHandler:v25];
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

- (void)processValueForParameter:(id)parameter withToolKitInvocation:(id)invocation completionHandler:(id)handler
{
  handlerCopy = handler;
  invocationCopy = invocation;
  parameterCopy = parameter;
  v12 = [(WFAction *)self toolkitValueClassForParameter:parameterCopy];
  if (!v12)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFAction.m" lineNumber:1155 description:@"The parameter state doesn't define processing value classes"];

    if (invocationCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFAction.m" lineNumber:1156 description:{@"Invalid parameter not satisfying: %@", @"toolInvocation"}];

    goto LABEL_3;
  }

  if (!invocationCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  variableSource = [(WFAction *)self variableSource];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __77__WFAction_processValueForParameter_withToolKitInvocation_completionHandler___block_invoke;
  v17[3] = &unk_1E8376328;
  v18 = handlerCopy;
  v14 = handlerCopy;
  [invocationCopy valueForParameter:parameterCopy ofClass:v12 variableSource:variableSource completionHandler:v17];
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

- (void)processEncodedValue:(id)value withToolKitInvocation:(id)invocation forParameter:(id)parameter completionHandler:(id)handler
{
  handlerCopy = handler;
  parameterCopy = parameter;
  invocationCopy = invocation;
  valueCopy = value;
  v15 = [(WFAction *)self toolkitValueClassForParameter:parameterCopy];
  if (v15)
  {
    if (invocationCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFAction.m" lineNumber:1141 description:@"The parameter state doesn't define processing value classes"];

    if (invocationCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFAction.m" lineNumber:1142 description:{@"Invalid parameter not satisfying: %@", @"toolInvocation"}];

LABEL_3:
  variableSource = [(WFAction *)self variableSource];
  [invocationCopy processedValueFromEncodedValue:valueCopy forParameter:parameterCopy ofClass:v15 variableSource:variableSource completionHandler:handlerCopy];
}

- (void)_processParameterStates:(id)states withInput:(id)input skippingHiddenParameters:(BOOL)parameters askForValuesIfNecessary:(BOOL)necessary workQueue:(id)queue completionHandler:(id)handler
{
  statesCopy = states;
  inputCopy = input;
  queueCopy = queue;
  handlerCopy = handler;
  v53 = objc_opt_new();
  v52 = objc_opt_new();
  v51 = objc_opt_new();
  processedParameters = [(WFAction *)self processedParameters];
  v14 = [processedParameters mutableCopy];
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
  inputParameter = [(WFAction *)self inputParameter];
  populatesInputFromInputParameter = [(WFAction *)self populatesInputFromInputParameter];
  if (inputCopy)
  {
    objc_storeStrong(v83 + 5, input);
  }

  parameters = [(WFAction *)self parameters];
  prioritizedParameterKeysForRemoteExecution = [(WFAction *)self prioritizedParameterKeysForRemoteExecution];
  v19 = [prioritizedParameterKeysForRemoteExecution count];

  if (v19)
  {
    parameters2 = [(WFAction *)self parameters];
    v21 = [parameters2 mutableCopy];

    for (i = 0; ; ++i)
    {
      prioritizedParameterKeysForRemoteExecution2 = [(WFAction *)self prioritizedParameterKeysForRemoteExecution];
      v24 = [prioritizedParameterKeysForRemoteExecution2 count];

      if (i >= v24)
      {
        break;
      }

      prioritizedParameterKeysForRemoteExecution3 = [(WFAction *)self prioritizedParameterKeysForRemoteExecution];
      v26 = [prioritizedParameterKeysForRemoteExecution3 objectAtIndex:i];

      for (j = 0; ; ++j)
      {
        parameters3 = [(WFAction *)self parameters];
        v29 = [parameters3 count];

        if (j >= v29)
        {
          break;
        }

        parameters4 = [(WFAction *)self parameters];
        v31 = [parameters4 objectAtIndex:j];

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

      parameters = v35;
    }
  }

  v47 = inputCopy;
  v36 = [(WFAction *)self visibleParametersWithProcessing:1];
  copyParameterStates = [(WFAction *)self copyParameterStates];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __123__WFAction__processParameterStates_withInput_skippingHiddenParameters_askForValuesIfNecessary_workQueue_completionHandler___block_invoke;
  v70[3] = &unk_1E8375078;
  v70[4] = self;
  v55 = statesCopy;
  v71 = v55;
  v46 = copyParameterStates;
  v72 = v46;
  v38 = v36;
  v73 = v38;
  parametersCopy = parameters;
  v74 = v53;
  v75 = v52;
  v76 = v51;
  v77 = v50;
  v39 = inputParameter;
  v81 = populatesInputFromInputParameter;
  v78 = v39;
  v79 = &v82;
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __123__WFAction__processParameterStates_withInput_skippingHiddenParameters_askForValuesIfNecessary_workQueue_completionHandler___block_invoke_5;
  v60[3] = &unk_1E83750F0;
  v40 = v74;
  v61 = v40;
  necessaryCopy = necessary;
  v41 = handlerCopy;
  v67 = v41;
  v42 = v77;
  v68 = &v82;
  v62 = v42;
  selfCopy = self;
  v43 = v75;
  v64 = v43;
  v44 = v76;
  v65 = v44;
  v45 = queueCopy;
  v66 = v45;
  [parameters if_enumerateAsynchronouslyInSequenceOnQueue:v45 block:v70 completionHandler:v60];

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
  inputTypes = [(WFAction *)self inputTypes];
  if ([inputTypes count] || -[WFAction inputPassthrough](self, "inputPassthrough"))
  {
    inputParameter = [(WFAction *)self inputParameter];
    v5 = inputParameter == 0;
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

- (id)copyParameterStatesWithFallingBackToDefaultValue:(BOOL)value
{
  parametersByKey = [(WFAction *)self parametersByKey];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__WFAction_copyParameterStatesWithFallingBackToDefaultValue___block_invoke;
  v8[3] = &unk_1E8374FD8;
  v8[4] = self;
  valueCopy = value;
  v6 = [parametersByKey if_compactMap:v8];

  return v6;
}

void __61__WFAction_copyParameterStatesWithFallingBackToDefaultValue___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = [*(a1 + 32) parameterStateForKey:a2 fallingBackToDefaultValue:*(a1 + 40)];
  *a5 = [v6 copyWithZone:MEMORY[0x1CCAA2CE0]()];
}

- (id)populatedInputWithProcessedParameterValues:(id)values
{
  v13[1] = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  inputParameterKey = [(WFAction *)self inputParameterKey];
  v6 = [valuesCopy wf_popObjectForKey:inputParameterKey];

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

- (BOOL)getInputContentFromVariablesInParameterState:(id)state context:(id)context completionHandler:(id)handler
{
  v41[1] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  contextCopy = context;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    variableString = [stateCopy variableString];
    parameter = [contextCopy parameter];
    definition = [parameter definition];
    v14 = [definition objectForKey:@"PrefersAttributedString"];
    bOOLValue = [v14 BOOLValue];

    if (bOOLValue)
    {
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __83__WFAction_getInputContentFromVariablesInParameterState_context_completionHandler___block_invoke;
      v38[3] = &unk_1E837DC20;
      v39 = handlerCopy;
      [variableString processIntoContentItemsWithContext:contextCopy completionHandler:v38];
      v16 = v39;
    }

    else
    {
      parameter2 = [contextCopy parameter];
      if (parameter2)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = parameter2;
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

      processesIntoContentItems = [v27 processesIntoContentItems];
      if (processesIntoContentItems)
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
        v37 = handlerCopy;
        [variableString processIntoStringsAndAttachmentsWithContext:contextCopy options:v16 completionHandler:v36];
      }

      else
      {
        if (![variableString representsSingleContentVariable])
        {
          v19 = 0;
          goto LABEL_24;
        }

        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __83__WFAction_getInputContentFromVariablesInParameterState_context_completionHandler___block_invoke_3;
        v34[3] = &unk_1E837DC20;
        v35 = handlerCopy;
        [variableString processIntoContentItemsWithContext:contextCopy completionHandler:v34];
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
    variableString = stateCopy;
    variable = [variableString variable];

    if (variable)
    {
      variable2 = [variableString variable];
      [variable2 getContentWithContext:contextCopy completionHandler:handlerCopy];
      v19 = 1;
LABEL_17:

      goto LABEL_24;
    }

    parameterStates = [variableString parameterStates];
    v25 = [parameterStates count];

    if (v25 == 1)
    {
      variable2 = [variableString parameterStates];
      firstObject = [variable2 firstObject];
      v19 = [(WFAction *)self getInputContentFromVariablesInParameterState:firstObject context:contextCopy completionHandler:handlerCopy];

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

  containedVariables = [stateCopy containedVariables];
  firstObject2 = [containedVariables firstObject];

  if (!firstObject2)
  {
    goto LABEL_27;
  }

  [firstObject2 getContentWithContext:contextCopy completionHandler:handlerCopy];

  v19 = 1;
LABEL_28:

  v32 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)previousAction
{
  workflow = [(WFAction *)self workflow];
  actions = [workflow actions];

  v5 = [actions indexOfObject:self];
  v6 = 0;
  if (v5 && v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [actions objectAtIndex:v5 - 1];
  }

  return v6;
}

- (void)runWithInput:(id)input userInterface:(id)interface runningDelegate:(id)delegate variableSource:(id)source workQueue:(id)queue completionHandler:(id)handler
{
  v45 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  interfaceCopy = interface;
  delegateCopy = delegate;
  sourceCopy = source;
  queueCopy = queue;
  handlerCopy = handler;
  if (self->_running)
  {
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:37 userInfo:{0, inputCopy}];
    handlerCopy[2](handlerCopy, 0, v19);
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
      identifier = [(WFAction *)self identifier];
      *buf = 138543362;
      v42 = identifier;
      _os_signpost_emit_with_name_impl(&dword_1CA256000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "RunAction", " enableTelemetry=YES actionID=%{signpost.telemetry:string1,public}@", buf, 0xCu);
    }

    [(WFAction *)self setRunning:1];
    [(WFAction *)self setUserInterface:interfaceCopy];
    [(WFAction *)self setRunningDelegate:delegateCopy];
    [(WFAction *)self setVariableSource:sourceCopy];
    [(WFAction *)self setWorkQueue:queueCopy];
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
    v38 = handlerCopy;
    v27 = _Block_copy(aBlock);
    completionHandler = self->_completionHandler;
    self->_completionHandler = v27;

    currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
    if ([(WFAction *)self isDisabledWhenRunOnDevice:currentDevice])
    {
      v30 = [MEMORY[0x1E696ABC0] wf_unsupportedActionErrorWithType:@"NotAvailableOnSpecifiedPlatform" platformIdiom:{objc_msgSend(currentDevice, "idiom")}];
      [(WFAction *)self finishRunningWithError:v30];
    }

    else
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __98__WFAction_runWithInput_userInterface_runningDelegate_variableSource_workQueue_completionHandler___block_invoke_321;
      v33[3] = &unk_1E8374F90;
      v34 = queueCopy;
      selfCopy = self;
      v36 = inputCopy;
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
  appResource = [(WFAction *)self appResource];

  if (appResource)
  {
    appResource2 = [(WFAction *)self appResource];
    [appResource2 setDelegate:self];

    v6 = [WFResourceNode alloc];
    appResource3 = [(WFAction *)self appResource];
    v8 = [(WFResourceNode *)v6 initWithResource:appResource3];

    [v3 addObject:v8];
  }

  displayableAppDescriptor = [(WFAction *)self displayableAppDescriptor];
  v10 = displayableAppDescriptor;
  if (displayableAppDescriptor)
  {
    bundleIdentifier = [displayableAppDescriptor bundleIdentifier];
    if (!bundleIdentifier)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  appDescriptor = [(WFAction *)self appDescriptor];
  bundleIdentifier = [appDescriptor bundleIdentifier];

  if (bundleIdentifier)
  {
LABEL_5:
    v12 = [[WFAppProtectionAccessResource alloc] initWithAssociatedAppBundleIdentifier:bundleIdentifier];
    v13 = [[WFResourceNode alloc] initWithResource:v12];
    [v3 addObject:v13];
  }

LABEL_6:

  return v3;
}

- (void)recreateGeneratedResourcesIfNeeded
{
  generatedResourceNodes = [(WFAction *)self generatedResourceNodes];
  [(WFAction *)self setCurrentGeneratedResourceNodes:generatedResourceNodes];
}

- (void)recreateUnevaluatedResourcesIfNeeded
{
  requiredResources = [(WFAction *)self requiredResources];
  v6 = [WFResourceNode nodesWithDefinitions:requiredResources];

  currentGeneratedResourceNodes = [(WFAction *)self currentGeneratedResourceNodes];
  v5 = [v6 arrayByAddingObjectsFromArray:currentGeneratedResourceNodes];
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

- (id)unevaluatedResourceObjectsOfClasses:(id)classes
{
  v18 = *MEMORY[0x1E69E9840];
  classesCopy = classes;
  v5 = objc_opt_new();
  unevaluatedResourceNodes = [(WFAction *)self unevaluatedResourceNodes];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [unevaluatedResourceNodes countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(unevaluatedResourceNodes);
        }

        [*(*(&v13 + 1) + 8 * i) addResourceObjectsOfClassesOrProtocols:classesCopy toSet:v5];
      }

      v8 = [unevaluatedResourceNodes countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)unevaluatedResourceObjectsOfClass:(Class)class
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:class];
  v5 = [(WFAction *)self unevaluatedResourceObjectsOfClasses:v4];

  return v5;
}

- (void)setCurrentGeneratedResourceNodes:(id)nodes
{
  v42 = *MEMORY[0x1E69E9840];
  nodesCopy = nodes;
  v6 = self->_resourceManager;
  v7 = v6;
  p_currentGeneratedResourceNodes = &self->_currentGeneratedResourceNodes;
  v31 = v6;
  if (self->_currentGeneratedResourceNodes)
  {
    v30 = nodesCopy;
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

          resource = [*(*(&v36 + 1) + 8 * i) resource];
          v15 = resource;
          if (resource)
          {
            if ([resource conformsToProtocol:&unk_1F4A9CC28])
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

    nodesCopy = v30;
    v7 = v31;
  }

  objc_storeStrong(&self->_currentGeneratedResourceNodes, nodes);
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
          workflow = [(WFAction *)self workflow];
          resource2 = [v23 resource];
          v26 = resource2;
          if (resource2)
          {
            if ([resource2 conformsToProtocol:&unk_1F4A9CC28])
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

          [v28 setWorkflow:workflow];
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
  requiredResources = [(WFAction *)self requiredResources];
  v5 = [(WFResourceManager *)v3 initWithDefinitions:requiredResources];

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
      identifier = [(WFAction *)self identifier];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v17 = 138412546;
      v18 = identifier;
      v19 = 2112;
      v20 = v9;
      _os_signpost_emit_with_name_impl(&dword_1CA256000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "CreateResourceManager", "identifier=%{signpost.description:attribute}@,class=%{signpost.description:attribute}@", &v17, 0x16u);
    }

    createResourceManager = [(WFAction *)self createResourceManager];
    resourceManager = self->_resourceManager;
    self->_resourceManager = createResourceManager;

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

- (void)parameterDefaultSerializedRepresentationDidChange:(id)change
{
  changeCopy = change;
  os_unfair_lock_lock(&self->_defaultParametersCacheLock);
  cachedDefaultParameterStates = [(WFAction *)self cachedDefaultParameterStates];
  v5 = [changeCopy key];
  [cachedDefaultParameterStates removeObjectForKey:v5];

  os_unfair_lock_unlock(&self->_defaultParametersCacheLock);
  v6 = [changeCopy key];
  v7 = [(WFAction *)self parameterStateForKey:v6 fallingBackToDefaultValue:0];

  if (!v7 || ([changeCopy parameterStateIsValid:v7] & 1) == 0)
  {
    v8 = [changeCopy key];
    [(WFAction *)self notifyEventObserversParameterStateDidChangeForKey:v8];
  }
}

- (void)parameterStateValidityCriteriaDidChange:(id)change
{
  v4 = [change key];
  [(WFAction *)self notifyEventObserversParameterStateDidChangeForKey:v4];
}

- (void)updateParameterSummaryIfNeeded:(id)needed
{
  neededCopy = needed;
  parameterSummary = [(WFAction *)self parameterSummary];

  if (parameterSummary)
  {
    parameterSummary2 = [(WFAction *)self parameterSummary];
    neededCopy[2](neededCopy, parameterSummary2, 0);
  }

  else
  {
    parameterSummary2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFActionErrorDomain" code:16 userInfo:0];
    (neededCopy)[2](neededCopy, 0, parameterSummary2);
  }
}

- (BOOL)shouldInsertExpandingParameterForParameter:(id)parameter
{
  parameterCopy = parameter;
  if ([parameterCopy allowsMultipleValues])
  {
    displaysMultipleValueEditor = [parameterCopy displaysMultipleValueEditor];
  }

  else
  {
    displaysMultipleValueEditor = 0;
  }

  return displaysMultipleValueEditor;
}

- (void)notifyEventObserversParameterStateDidChangeForKey:(id)key
{
  v20 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  os_unfair_lock_lock(&self->_observersLock);
  eventObservers = [(WFAction *)self eventObservers];
  allObjects = [eventObservers allObjects];
  v7 = [allObjects sortedArrayUsingComparator:&__block_literal_global_8842];

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
          [v13 action:self parameterStateDidChangeForKey:{keyCopy, v15}];
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

- (id)supplementalParameterValueForKey:(id)key ofClass:(Class)class
{
  keyCopy = key;
  encodedSerializedParameters = [(WFAction *)self encodedSerializedParameters];
  v8 = [encodedSerializedParameters objectForKey:keyCopy];

  v9 = WFEnforceClass_8714(v8, class);

  return v9;
}

- (void)setSupplementalParameterValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  encodedSerializedParameters = [(WFAction *)self encodedSerializedParameters];
  v9 = encodedSerializedParameters;
  if (valueCopy)
  {
    [encodedSerializedParameters setObject:valueCopy forKey:keyCopy];
  }

  else
  {
    [encodedSerializedParameters removeObjectForKey:keyCopy];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__WFAction_setSupplementalParameterValue_forKey___block_invoke;
  v11[3] = &unk_1E8374E78;
  v11[4] = self;
  v12 = keyCopy;
  v10 = keyCopy;
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

- (id)createStateForParameter:(id)parameter fromSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  parameterCopy = parameter;
  v8 = [objc_alloc(objc_msgSend(parameterCopy "stateClass"))];

  return v8;
}

- (BOOL)setParameterStateToVariable:(id)variable forKey:(id)key
{
  variableCopy = variable;
  keyCopy = key;
  v9 = keyCopy;
  if (!variableCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFAction.m" lineNumber:444 description:{@"Invalid parameter not satisfying: %@", @"variable"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_9:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFAction.m" lineNumber:445 description:{@"Invalid parameter not satisfying: %@", @"key"}];

    goto LABEL_3;
  }

  if (!keyCopy)
  {
    goto LABEL_9;
  }

LABEL_3:
  v10 = [(WFAction *)self parameterForKey:v9];
  v11 = v10;
  if (v10 && (v12 = [v10 stateClass], -[objc_class instancesRespondToSelector:](v12, "instancesRespondToSelector:", sel_initWithVariable_)))
  {
    v13 = [[v12 alloc] initWithVariable:variableCopy];
    v14 = [(WFAction *)self setParameterState:v13 forKey:v9];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)setParameterState:(id)state forKey:(id)key
{
  v36 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  keyCopy = key;
  v8 = getWFGeneralLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v26 = 136316162;
    v27 = "[WFAction setParameterState:forKey:]";
    v28 = 2114;
    selfCopy = self;
    v30 = 2114;
    v31 = v10;
    v32 = 2114;
    v33 = keyCopy;
    v34 = 2112;
    v35 = stateCopy;
    _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEFAULT, "%s Action: %{public}@ setting parameter state: %{public}@, key:%{public}@, value:%@", &v26, 0x34u);
  }

  v11 = [(WFAction *)self parameterForKey:keyCopy];
  inputParameterKey = [(WFAction *)self inputParameterKey];
  v13 = [keyCopy isEqualToString:inputParameterKey];

  if (v13)
  {
    [(WFAction *)self lockInputParameter];
  }

  if (v11)
  {
    [v11 stateClass];
    isKindOfClass = objc_opt_isKindOfClass();
    if (stateCopy && (isKindOfClass & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_12:
    decodedParameterStates = [(WFAction *)self decodedParameterStates];
    [decodedParameterStates setValue:stateCopy forKey:keyCopy];

    [(WFAction *)self notifyEventObserversParameterStateDidChangeForKey:keyCopy];
    v22 = 1;
    goto LABEL_13;
  }

  if (!stateCopy)
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
    stateClass = [v11 stateClass];
    v26 = 136315906;
    v27 = "[WFAction setParameterState:forKey:]";
    v28 = 2112;
    selfCopy = v16;
    v30 = 2112;
    v31 = v18;
    v32 = 2112;
    v33 = stateClass;
    v21 = stateClass;
    _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_FAULT, "%s Warning: Attempted to set a parameter state of class %@ when %@ requires %@", &v26, 0x2Au);
  }

  v22 = 0;
LABEL_13:

  v24 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)serializedParameterStateForKey:(id)key
{
  keyCopy = key;
  decodedParameterStates = [(WFAction *)self decodedParameterStates];
  v6 = [decodedParameterStates objectForKey:keyCopy];

  if (v6)
  {
    serializedRepresentation = [v6 serializedRepresentation];
  }

  else
  {
    encodedSerializedParameters = [(WFAction *)self encodedSerializedParameters];
    serializedRepresentation = [encodedSerializedParameters objectForKey:keyCopy];
  }

  return serializedRepresentation;
}

- (id)parameterStateForKey:(id)key fallingBackToDefaultValue:(BOOL)value
{
  valueCopy = value;
  v32 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v7 = [(WFAction *)self parameterForKey:keyCopy];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_26;
  }

  os_unfair_lock_lock(&self->_parameterStateDeserializationLock);
  decodedParameterStates = [(WFAction *)self decodedParameterStates];
  v9 = [decodedParameterStates objectForKey:keyCopy];

  if (v9)
  {
    os_unfair_lock_unlock(&self->_parameterStateDeserializationLock);
  }

  else
  {
    keyForSerialization = [v7 keyForSerialization];
    v12 = objc_alloc(MEMORY[0x1E695DEC8]);
    legacyKey = [v7 legacyKey];
    v14 = [v12 initWithObjects:{keyForSerialization, legacyKey, 0}];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = v14;
    v9 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v9)
    {
      v26 = keyForSerialization;
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
        encodedSerializedParameters = [(WFAction *)self encodedSerializedParameters];
        v20 = [encodedSerializedParameters objectForKey:v18];

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

          encodedSerializedParameters2 = v15;
          keyForSerialization = v26;
          goto LABEL_17;
        }
      }

      v9 = [(WFAction *)self createStateForParameter:v7 fromSerializedRepresentation:v20];

      if (v9)
      {
        decodedParameterStates2 = [(WFAction *)self decodedParameterStates];
        [decodedParameterStates2 setObject:v9 forKey:keyCopy];

        encodedSerializedParameters2 = [(WFAction *)self encodedSerializedParameters];
        keyForSerialization = v26;
        [encodedSerializedParameters2 removeObjectForKey:v26];
        goto LABEL_17;
      }

      keyForSerialization = v26;
    }

    else
    {
      encodedSerializedParameters2 = v15;
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
  if (valueCopy && !v9)
  {
    v23 = [(WFAction *)self defaultParameterStateForKey:keyCopy];
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

- (id)defaultParameterStateForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_defaultParametersCacheLock);
  cachedDefaultParameterStates = [(WFAction *)self cachedDefaultParameterStates];
  v6 = [cachedDefaultParameterStates objectForKey:keyCopy];

  os_unfair_lock_unlock(&self->_defaultParametersCacheLock);
  if (!v6)
  {
    v7 = [(WFAction *)self parameterForKey:keyCopy];
    defaultSerializedRepresentation = [v7 defaultSerializedRepresentation];
    if (defaultSerializedRepresentation)
    {
      v6 = [(WFAction *)self createStateForParameter:v7 fromSerializedRepresentation:defaultSerializedRepresentation];
      if (v6)
      {
        os_unfair_lock_lock(&self->_defaultParametersCacheLock);
        cachedDefaultParameterStates2 = [(WFAction *)self cachedDefaultParameterStates];
        [cachedDefaultParameterStates2 setObject:v6 forKey:keyCopy];

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

- (id)parameterForKey:(id)key
{
  keyCopy = key;
  parametersByKey = [(WFAction *)self parametersByKey];
  v6 = [parametersByKey objectForKey:keyCopy];

  if (!v6)
  {
    v7 = [(WFAction *)self visibleParametersWithProcessing:0];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __28__WFAction_parameterForKey___block_invoke;
    v9[3] = &unk_1E8374E28;
    v10 = keyCopy;
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

- (void)preloadDefaultParameterStatesIfNecessaryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  parameters = [(WFAction *)self parameters];
  if (parameters && (v6 = parameters, v7 = [(WFAction *)self requiresRemoteExecution], v6, !v7))
  {
    parameters2 = [(WFAction *)self parameters];
    workQueue = [(WFAction *)self workQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __74__WFAction_preloadDefaultParameterStatesIfNecessaryWithCompletionHandler___block_invoke;
    v12[3] = &unk_1E8374E00;
    v12[4] = self;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__WFAction_preloadDefaultParameterStatesIfNecessaryWithCompletionHandler___block_invoke_3;
    v10[3] = &unk_1E83766E8;
    v11 = handlerCopy;
    [parameters2 if_enumerateAsynchronouslyOnQueue:workQueue block:v12 completionHandler:v10];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
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
  serializedParameters = [(WFAction *)self serializedParameters];
  v4 = [serializedParameters mutableCopy];

  [v4 removeObjectForKey:@"UUID"];
  [v4 removeObjectForKey:@"GroupingIdentifier"];
  v5 = [(WFAction *)self copyWithSerializedParameters:v4];

  return v5;
}

- (id)copyForProcessing
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [(WFAction *)self copy];
  runningDelegate = [(WFAction *)self runningDelegate];
  [v3 setRunningDelegate:runningDelegate];

  variableSource = [(WFAction *)self variableSource];
  [v3 setVariableSource:variableSource];

  toolInvocation = [(WFAction *)self toolInvocation];
  v32 = v3;
  [v3 setToolInvocation:toolInvocation];

  if ([(WFAction *)self requiresRemoteExecution])
  {
    parameters = [(WFAction *)self parameters];
    v8 = [parameters objectsMatchingClass:objc_opt_class()];

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

        possibleStates = [v18 possibleStates];
        v24 = [possibleStates count];

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

        possibleStates2 = [v16 possibleStates];
        [v28 setPossibleStatesFromRemoteSource:possibleStates2];

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

- (id)copyWithDefinition:(id)definition serializedParameters:(id)parameters
{
  parametersCopy = parameters;
  definitionCopy = definition;
  v8 = objc_alloc(objc_opt_class());
  identifier = [(WFAction *)self identifier];
  v10 = [v8 initWithIdentifier:identifier definition:definitionCopy serializedParameters:parametersCopy];

  return v10;
}

- (id)copyWithSerializedParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = objc_alloc(objc_opt_class());
  identifier = [(WFAction *)self identifier];
  definition = [(WFAction *)self definition];
  v8 = [v5 initWithIdentifier:identifier definition:definition serializedParameters:parametersCopy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  serializedParameters = [(WFAction *)self serializedParameters];
  v5 = [(WFAction *)self copyWithSerializedParameters:serializedParameters];

  return v5;
}

- (WFAppInstalledResource)appResource
{
  appDescriptor = [(WFAction *)self appDescriptor];

  if (appDescriptor)
  {
    appResource = self->_appResource;
    if (!appResource)
    {
      v5 = [WFAppInstalledResource alloc];
      appDescriptor2 = [(WFAction *)self appDescriptor];
      v7 = [(WFAppInstalledResource *)v5 initWithAppDescriptor:appDescriptor2 requiresAppToBeInstalled:[(WFAction *)self appResourceRequiresAppInstall]];
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
  appDefinition = [(WFAction *)self appDefinition];
  v3 = [appDefinition objectForKey:@"ActionRequiresAppInstallation"];

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

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
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

- (void)resolveAppDescriptorIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  appDescriptor = [(WFAction *)self appDescriptor];
  requiresUserConfirmation = [appDescriptor requiresUserConfirmation];

  if (requiresUserConfirmation)
  {
    userInterface = [(WFAction *)self userInterface];
    if (userInterface && (v8 = userInterface, [(WFAction *)self userInterface], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_opt_respondsToSelector(), v9, v8, (v10 & 1) != 0))
    {
      userInterface2 = [(WFAction *)self userInterface];
      appDescriptor2 = [(WFAction *)self appDescriptor];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __44__WFAction_resolveAppDescriptorIfNecessary___block_invoke;
      v14[3] = &unk_1E8374DD8;
      v14[4] = self;
      v15 = necessaryCopy;
      [userInterface2 resolveDescriptor:appDescriptor2 completionHandler:v14];
    }

    else
    {
      missingAppError = [(WFAction *)self missingAppError];
      (*(necessaryCopy + 2))(necessaryCopy, missingAppError);
    }
  }

  else
  {
    (*(necessaryCopy + 2))(necessaryCopy, 0);
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

- (void)updateAppDescriptorWithSelectedApp:(id)app
{
  v16 = *MEMORY[0x1E69E9840];
  [(WFAction *)self setAppDescriptor:app];
  [(WFAction *)self setAppResource:0];
  [(WFAction *)self recreateResourcesIfNeeded];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  resourceManager = [(WFAction *)self resourceManager];
  v5 = [resourceManager resourceObjectsOfClass:objc_opt_class()];

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
  appDefinition = [(WFAction *)self appDefinition];
  if (appDefinition)
  {
    appDescriptor = self->_appDescriptor;
    if (!appDescriptor)
    {
      v5 = [objc_alloc(MEMORY[0x1E696E720]) initWithSerializedRepresentation:appDefinition];
      mEMORY[0x1E696E748] = [MEMORY[0x1E696E748] sharedResolver];
      v7 = [mEMORY[0x1E696E748] resolvedAppMatchingDescriptor:v5];
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
  identifier = [(WFAction *)self identifier];
  inputParameter = [(WFAction *)self inputParameter];
  parameters = [(WFAction *)self parameters];
  definition = [(WFAction *)self definition];
  v10 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, inputParameter: %@, parameters: %@, definition: %@>", v5, self, identifier, inputParameter, parameters, definition];

  return v10;
}

- (WFAction)initWithIdentifier:(id)identifier definition:(id)definition serializedParameters:(id)parameters
{
  identifierCopy = identifier;
  definitionCopy = definition;
  parametersCopy = parameters;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFAction.m" lineNumber:140 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v12 = objc_opt_class();
  if (v12 == objc_opt_class())
  {
    v18 = [definitionCopy objectForKey:@"ActionClass"];
    v19 = NSClassFromString(v18);

    if ([(objc_class *)v19 isSubclassOfClass:objc_opt_class()])
    {
      selfCopy = [[v19 alloc] initWithIdentifier:identifierCopy definition:definitionCopy serializedParameters:parametersCopy];
LABEL_12:
      v21 = selfCopy;
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
      v13 = [identifierCopy copy];
      identifier = self->_identifier;
      self->_identifier = v13;

      objc_storeStrong(&self->_definition, definition);
      v15 = [parametersCopy mutableCopy];
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

      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      eventObservers = self->_eventObservers;
      self->_eventObservers = weakObjectsHashTable;

      *&self->_parameterInitializationLock._os_unfair_lock_opaque = 0;
      self->_didRunRemotely = 0;
      objc_storeStrong(&self->_widgetSizeClass, *MEMORY[0x1E696E540]);
      *&self->_observersLock._os_unfair_lock_opaque = 0;
      self->_defaultParametersCacheLock._os_unfair_lock_opaque = 0;
      selfCopy = self;
      self = selfCopy;
      goto LABEL_12;
    }
  }

  v21 = 0;
LABEL_13:

  return v21;
}

+ (void)showImplicitChooseFromListWithInput:(id)input userInterface:(id)interface workQueue:(id)queue cancelHandler:(id)handler selectionHandler:(id)selectionHandler
{
  v37[1] = *MEMORY[0x1E69E9840];
  inputCopy = input;
  interfaceCopy = interface;
  queueCopy = queue;
  handlerCopy = handler;
  selectionHandlerCopy = selectionHandler;
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFAction.m" lineNumber:2795 description:@"Choose from list action expected to load from registry"];

    v21 = v31[5];
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __103__WFAction_showImplicitChooseFromListWithInput_userInterface_workQueue_cancelHandler_selectionHandler___block_invoke;
  v26[3] = &unk_1E8375308;
  v22 = handlerCopy;
  v27 = v22;
  v23 = selectionHandlerCopy;
  v28 = v23;
  v29 = &v30;
  [v21 runWithInput:inputCopy userInterface:interfaceCopy runningDelegate:0 variableSource:0 workQueue:queueCopy completionHandler:v26];

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
  userInterfaceProtocol = [self userInterfaceProtocol];
  if (userInterfaceProtocol)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:userInterfaceProtocol];
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
    bOOLValue = [v4 BOOLValue];

    LOBYTE(v3) = bOOLValue;
  }

  return v3;
}

- (id)visibleParametersWithProcessing:(BOOL)processing
{
  parameters = [(WFAction *)self parameters];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__WFAction_Display__visibleParametersWithProcessing___block_invoke;
  v11[3] = &unk_1E837D8B0;
  v11[4] = self;
  v6 = [parameters if_flatMap:v11];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__WFAction_Display__visibleParametersWithProcessing___block_invoke_2;
  v9[3] = &unk_1E83753A8;
  processingCopy = processing;
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

- (BOOL)containsVariableOfType:(id)type
{
  v33 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  parameters = [(WFAction *)self parameters];
  v22 = [parameters countByEnumeratingWithState:&v27 objects:v32 count:16];
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
          objc_enumerationMutation(parameters);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v9 = [v8 key];
        v10 = [(WFAction *)self parameterStateForKey:v9];
        containedVariables = [v10 containedVariables];

        v12 = [containedVariables countByEnumeratingWithState:&v23 objects:v31 count:16];
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
                objc_enumerationMutation(containedVariables);
              }

              type = [*(*(&v23 + 1) + 8 * j) type];
              v17 = [type isEqualToString:typeCopy];

              if (v17)
              {

                v18 = 1;
                goto LABEL_19;
              }
            }

            v13 = [containedVariables countByEnumeratingWithState:&v23 objects:v31 count:16];
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
      v22 = [parameters countByEnumeratingWithState:&v27 objects:v32 count:16];
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

- (id)containedVariablesOfClass:(Class)class
{
  containedVariables = [(WFAction *)self containedVariables];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__WFAction_Convenience__containedVariablesOfClass___block_invoke;
  v7[3] = &__block_descriptor_40_e35___WFVariable_24__0__WFVariable_8Q16lu32l8;
  v7[4] = class;
  v5 = [containedVariables if_compactMap:v7];

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
  parameters = [(WFAction *)self parameters];
  v5 = [parameters countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(parameters);
        }

        v9 = [*(*(&v14 + 1) + 8 * i) key];
        v10 = [(WFAction *)self parameterStateForKey:v9 fallingBackToDefaultValue:0];
        containedVariables = [v10 containedVariables];
        [v3 addObjectsFromArray:containedVariables];
      }

      v6 = [parameters countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)promptForArchiveVerificationIfNecessary:(id)necessary completionHandler:(id)handler
{
  v41 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  handlerCopy = handler;
  fileURL = [necessaryCopy fileURL];
  path = [fileURL path];

  v10 = WFSupportedArchiveFormats();
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __91__WFAction_ArchiveVerification__promptForArchiveVerificationIfNecessary_completionHandler___block_invoke;
  v35[3] = &unk_1E837AB68;
  v11 = path;
  v36 = v11;
  v12 = [v10 if_firstObjectPassingTest:v35];

  if (v12)
  {
    v34 = 0;
    v13 = [MEMORY[0x1E6996CB0] checkArchiveForDisallowedContent:necessaryCopy error:&v34];
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

      handlerCopy[2](handlerCopy, 0);
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
      v23 = handlerCopy;
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

      userInterface = [(WFAction *)self userInterface];
      [userInterface presentAlert:v18];
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
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
  sessionKitSessionConfiguration = [(WFAction *)self sessionKitSessionConfiguration];

  if (sessionKitSessionConfiguration)
  {
    v4 = @"Automatic";
    v5 = @"Automatic";
  }

  else
  {
    sessionKitSessionConfigurationDefinition = [(WFAction *)self sessionKitSessionConfigurationDefinition];
    v7 = [sessionKitSessionConfigurationDefinition objectForKeyedSubscript:@"InvocationType"];
    v8 = objc_opt_class();
    v4 = WFEnforceClass_37066(v7, v8);
  }

  return v4;
}

- (WFActionSessionKitSessionConfiguration)sessionKitSessionConfiguration
{
  sessionKitSessionConfigurationDefinition = [(WFAction *)self sessionKitSessionConfigurationDefinition];
  v4 = [sessionKitSessionConfigurationDefinition objectForKeyedSubscript:@"BundleIdentifier"];
  v5 = v4;
  if (v4)
  {
    bundleIdentifier = v4;
  }

  else
  {
    appDescriptor = [(WFAction *)self appDescriptor];
    bundleIdentifier = [appDescriptor bundleIdentifier];
  }

  v8 = 0;
  if (sessionKitSessionConfigurationDefinition && bundleIdentifier)
  {
    sessionKitToastDurationsPerRunSourceDefinition = [(WFAction *)self sessionKitToastDurationsPerRunSourceDefinition];
    v8 = [[WFActionSessionKitSessionConfiguration alloc] initWithBundleIdentifier:bundleIdentifier toastDurationPerRunSource:sessionKitToastDurationsPerRunSourceDefinition];
  }

  return v8;
}

- (NSDictionary)sessionKitToastDurationsPerRunSourceDefinition
{
  sessionKitSessionConfigurationDefinition = [(WFAction *)self sessionKitSessionConfigurationDefinition];
  v3 = [sessionKitSessionConfigurationDefinition objectForKeyedSubscript:@"ToastDuration"];
  v4 = objc_opt_class();
  v5 = WFEnforceClass_37066(v3, v4);

  return v5;
}

- (NSDictionary)sessionKitSessionConfigurationDefinition
{
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"SessionConfiguration"];
  v4 = objc_opt_class();
  v5 = WFEnforceClass_37066(v3, v4);

  return v5;
}

- (BOOL)mightStartAudioRecording
{
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"MightStartAudioRecording"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)mightSuppressRunningProgress
{
  sessionKitSessionConfiguration = [(WFAction *)self sessionKitSessionConfiguration];

  if (sessionKitSessionConfiguration)
  {
    return 1;
  }

  definition = [(WFAction *)self definition];
  v6 = [definition objectForKey:@"MightSuppressRunningProgress"];
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (unint64_t)appearance
{
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"Appearance"];

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
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"DeletesInput"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)locallyProcessesData
{
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"LocallyProcessesData"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)requiresUnlock
{
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"RequiresUnlock"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (unint64_t)parameterCollapsingBehavior
{
  parameterSummary = [(WFAction *)self parameterSummary];
  if (!parameterSummary)
  {
    return 2;
  }

  v4 = parameterSummary;
  displaysParameterSummary = [(WFAction *)self displaysParameterSummary];

  if (!displaysParameterSummary)
  {
    return 2;
  }

  definition = [(WFAction *)self definition];
  v7 = [definition objectForKey:@"ParameterCollapsingBehavior"];

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
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"AdditionalParameterSummaries"];
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
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"ParameterSummary"];

  return v3;
}

- (int64_t)rateLimitDelay
{
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"RateLimit"];
  v4 = [v3 objectForKey:@"Delay"];
  v5 = objc_opt_class();
  v6 = WFEnforceClass_37066(v4, v5);
  integerValue = [v6 integerValue];

  return integerValue;
}

- (int64_t)rateLimitTimeout
{
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"RateLimit"];
  v4 = [v3 objectForKey:@"Timeout"];
  v5 = objc_opt_class();
  v6 = WFEnforceClass_37066(v4, v5);
  integerValue = [v6 integerValue];

  return integerValue;
}

- (int64_t)rateLimitThreshold
{
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"RateLimit"];
  v4 = [v3 objectForKey:@"Threshold"];
  v5 = objc_opt_class();
  v6 = WFEnforceClass_37066(v4, v5);
  integerValue = [v6 integerValue];

  return integerValue;
}

- (int64_t)initialSuggestionBehavior
{
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"SuggestedAsInitialAction"];

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
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"HighRisk"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (unint64_t)outputDisclosureLevel
{
  outputDictionary = [(WFAction *)self outputDictionary];
  v3 = [outputDictionary objectForKey:@"DisclosureLevel"];

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
    outputDictionary = [(WFAction *)self outputDictionary];
    v5 = [outputDictionary objectForKey:@"Multiple"];
    bOOLValue = [v5 BOOLValue];

    return bOOLValue;
  }
}

- (BOOL)inputsMultipleItems
{
  inputDictionary = [(WFAction *)self inputDictionary];
  v3 = [inputDictionary objectForKey:@"Multiple"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (NSArray)outputTypes
{
  outputDictionary = [(WFAction *)self outputDictionary];
  v3 = [outputDictionary objectForKey:@"Types"];
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
  inputDictionary = [(WFAction *)self inputDictionary];
  v3 = [inputDictionary objectForKey:@"Types"];
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
  inputDictionary = [(WFAction *)self inputDictionary];
  v3 = [inputDictionary objectForKey:@"InputTypeDeterminesOutputType"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)snappingPassthrough
{
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"SnappingPassthrough"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)blocksSnapping
{
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"BlocksSnapping"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)inputPassthrough
{
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"InputPassthrough"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)inputRequired
{
  inputDictionary = [(WFAction *)self inputDictionary];
  v3 = [inputDictionary objectForKey:@"Required"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
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

- (id)localizedCategoryWithContext:(id)context
{
  contextCopy = context;
  definition = [(WFAction *)self definition];
  v6 = [definition objectForKey:@"Category"];

  if (v6)
  {
    v7 = [contextCopy localize:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)localizedCategory
{
  defaultLocalizationContext = [(WFAction *)self defaultLocalizationContext];
  v4 = [(WFAction *)self localizedCategoryWithContext:defaultLocalizationContext];

  return v4;
}

- (WFInterchangeApp)app
{
  appDescriptor = [(WFAction *)self appDescriptor];
  bundleIdentifier = [appDescriptor bundleIdentifier];

  if (bundleIdentifier)
  {
    v4 = +[WFInterchangeAppRegistry sharedRegistry];
    v5 = [v4 appWithIdentifier:bundleIdentifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)fillingProvider
{
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"FillingProvider"];

  return v3;
}

- (NSDictionary)userInterfaceClasses
{
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"UserInterfaceClasses"];
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
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"RequiredResources"];
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
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"UserInterfaces"];
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
  remoteExecuteOnPlatforms = [(WFAction *)self remoteExecuteOnPlatforms];
  if (remoteExecuteOnPlatforms)
  {
    v4 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = "[WFAction(Definition) requiresRemoteExecution]";
      v14 = 2114;
      selfCopy3 = self;
      v16 = 2114;
      v17 = remoteExecuteOnPlatforms;
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEFAULT, "%s %{public}@ definition requires remote execution on platforms: %{public}@", &v12, 0x20u);
    }
  }

  if ([(__CFString *)remoteExecuteOnPlatforms count])
  {
    currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
    idiom = [currentDevice idiom];
    if (idiom >= 7)
    {
      v9 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 136315394;
        v13 = "[WFAction(Definition) requiresRemoteExecution]";
        v14 = 2114;
        selfCopy3 = currentDevice;
        _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_ERROR, "%s Current platform is unspecified for device: %{public}@", &v12, 0x16u);
      }

      v7 = 0;
      v8 = 0;
    }

    else
    {
      v7 = off_1E8378E58[idiom];
      v8 = [(__CFString *)remoteExecuteOnPlatforms containsObject:v7];
      v9 = getWFRemoteExecutionLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = "[WFAction(Definition) requiresRemoteExecution]";
        v14 = 2114;
        selfCopy3 = self;
        v16 = 2114;
        v17 = v7;
        _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@ definition requires remote execution for current platform (%{public}@)", &v12, 0x20u);
      }
    }
  }

  else
  {
    currentDevice = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(currentDevice, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[WFAction(Definition) requiresRemoteExecution]";
      v14 = 2114;
      selfCopy3 = self;
      _os_log_impl(&dword_1CA256000, currentDevice, OS_LOG_TYPE_DEFAULT, "%s %{public}@ definition doesn't require remote execution", &v12, 0x16u);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (NSArray)remoteExecuteOnPlatforms
{
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"RemoteExecuteOnPlatforms"];
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
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"ResidentCompatible"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)visibleForUse:(int64_t)use
{
  if ([(WFAction *)self isDiscontinued])
  {
    return 0;
  }

  definition = [(WFAction *)self definition];
  v6 = [definition objectForKey:@"Discoverable"];

  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (id)localizedDiscontinuedDescriptionWithContext:(id)context
{
  contextCopy = context;
  if ([(WFAction *)self isDiscontinued])
  {
    displayableAppDescriptor = [(WFAction *)self displayableAppDescriptor];
    localizedName = [displayableAppDescriptor localizedName];
    v7 = localizedName;
    if (localizedName)
    {
      v8 = localizedName;
    }

    else
    {
      v10 = WFLocalizedStringResourceWithKey(@"Shortcuts", @"Shortcuts");
      v8 = [contextCopy localize:v10];
    }

    v11 = MEMORY[0x1E696AEC0];
    v12 = WFLocalizedStringResourceWithKey(@"This action won’t be supported in future versions of %@.", @"This action won’t be supported in future versions of %@.");
    v13 = [contextCopy localize:v12];
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
  defaultLocalizationContext = [(WFAction *)self defaultLocalizationContext];
  v4 = [(WFAction *)self localizedDiscontinuedDescriptionWithContext:defaultLocalizationContext];

  return v4;
}

- (BOOL)isDiscontinued
{
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"Discontinued"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (NSArray)disabledOnPlatforms
{
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"DisabledOnPlatforms"];
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

- (id)localizedKeywordsWithContext:(id)context
{
  contextCopy = context;
  definition = [(WFAction *)self definition];
  v6 = [definition objectForKey:@"ActionKeywords"];

  if (v6)
  {
    v7 = [contextCopy localize:v6];
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
  defaultLocalizationContext = [(WFAction *)self defaultLocalizationContext];
  v4 = [(WFAction *)self localizedKeywordsWithContext:defaultLocalizationContext];

  return v4;
}

- (id)localizedDescriptionAttributionMarkdownStringWithContext:(id)context
{
  contextCopy = context;
  descriptionDefinition = [(WFAction *)self descriptionDefinition];
  v6 = [descriptionDefinition objectForKey:@"DescriptionAttribution"];

  if (v6)
  {
    v7 = [contextCopy localize:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)localizedDescriptionAttributionMarkdownString
{
  defaultLocalizationContext = [(WFAction *)self defaultLocalizationContext];
  v4 = [(WFAction *)self localizedDescriptionAttributionMarkdownStringWithContext:defaultLocalizationContext];

  return v4;
}

- (id)localizedDescriptionRequiresWithContext:(id)context
{
  contextCopy = context;
  descriptionDefinition = [(WFAction *)self descriptionDefinition];
  v6 = [descriptionDefinition objectForKey:@"DescriptionRequires"];

  if (v6)
  {
    v7 = [contextCopy localize:v6];
  }

  else
  {
    v8 = [(WFAction *)self unevaluatedResourceObjectsOfClass:objc_opt_class()];
    allObjects = [v8 allObjects];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __64__WFAction_Definition__localizedDescriptionRequiresWithContext___block_invoke;
    v21 = &unk_1E8378D18;
    v10 = contextCopy;
    v22 = v10;
    v11 = [allObjects if_compactMap:&v18];

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
  defaultLocalizationContext = [(WFAction *)self defaultLocalizationContext];
  v4 = [(WFAction *)self localizedDescriptionRequiresWithContext:defaultLocalizationContext];

  return v4;
}

- (id)localizedFocusFilterDescriptionWithContext:(id)context
{
  contextCopy = context;
  descriptionDefinition = [(WFAction *)self descriptionDefinition];
  v6 = [descriptionDefinition objectForKey:@"FocusFilterDescription"];

  if (v6)
  {
    v7 = [contextCopy localize:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)localizedFocusFilterDescription
{
  defaultLocalizationContext = [(WFAction *)self defaultLocalizationContext];
  v4 = [(WFAction *)self localizedFocusFilterDescriptionWithContext:defaultLocalizationContext];

  return v4;
}

- (id)localizedDescriptionNoteWithContext:(id)context
{
  contextCopy = context;
  descriptionDefinition = [(WFAction *)self descriptionDefinition];
  v6 = [descriptionDefinition objectForKey:@"DescriptionNote"];

  if (v6)
  {
    v7 = [contextCopy localize:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)localizedDescriptionNote
{
  defaultLocalizationContext = [(WFAction *)self defaultLocalizationContext];
  v4 = [(WFAction *)self localizedDescriptionNoteWithContext:defaultLocalizationContext];

  return v4;
}

- (id)localizedDescriptionResultWithContext:(id)context
{
  contextCopy = context;
  descriptionDefinition = [(WFAction *)self descriptionDefinition];
  v6 = [descriptionDefinition objectForKey:@"DescriptionResult"];

  if (v6)
  {
    v7 = [contextCopy localize:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)localizedDescriptionResult
{
  defaultLocalizationContext = [(WFAction *)self defaultLocalizationContext];
  v4 = [(WFAction *)self localizedDescriptionResultWithContext:defaultLocalizationContext];

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

- (id)localizedDescriptionInputWithContext:(id)context
{
  contextCopy = context;
  descriptionDefinition = [(WFAction *)self descriptionDefinition];
  v6 = [descriptionDefinition objectForKey:@"DescriptionInput"];

  if (v6)
  {
    v7 = [contextCopy localize:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)localizedDescriptionInput
{
  defaultLocalizationContext = [(WFAction *)self defaultLocalizationContext];
  v4 = [(WFAction *)self localizedDescriptionInputWithContext:defaultLocalizationContext];

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
  descriptionDefinition = [(WFAction *)self descriptionDefinition];
  v3 = [descriptionDefinition objectForKey:@"DescriptionInput"];

  return v3;
}

- (id)typeDescriptionWithTypes:(id)types explanationText:(id)text multiple:(BOOL)multiple optional:(BOOL)optional
{
  optionalCopy = optional;
  v34 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  textCopy = text;
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(typesCopy, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = typesCopy;
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
        if (multiple)
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

  if (!optionalCopy)
  {
    v21 = 0;
    if (!textCopy)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v21 = [v20 length] != 0;
  if (textCopy)
  {
LABEL_17:
    v22 = MEMORY[0x1E696AEC0];
    v23 = WFLocalizedString(@"(%@) %@");
    v24 = [v22 localizedStringWithFormat:v23, v20, textCopy, v29];

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
  descriptionDefinition = [(WFAction *)self descriptionDefinition];
  v3 = [descriptionDefinition objectForKey:@"InputIncludesSupportingItemClassesKey"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (id)localizedDescriptionSummaryWithContext:(id)context
{
  contextCopy = context;
  descriptionDefinition = [(WFAction *)self descriptionDefinition];
  v6 = [descriptionDefinition objectForKey:@"DescriptionSummary"];

  if (v6)
  {
    v7 = [contextCopy localize:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSDictionary)outputDictionary
{
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"Output"];
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
  definition = [(WFAction *)self definition];
  descriptionDefinition = [definition descriptionDefinition];

  return descriptionDefinition;
}

- (WFColor)iconColor
{
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"IconSymbolColor"];

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
  iconName = [(WFAction *)self iconName];
  if (!iconName)
  {
    iconSymbolName = [(WFAction *)self iconSymbolName];
    iconBackgroundColorName = [(WFAction *)self iconBackgroundColorName];
    iconSymbolColorName = [(WFAction *)self iconSymbolColorName];
    v10 = iconSymbolColorName;
    if (!iconSymbolName || !iconBackgroundColorName)
    {
      displayableAppDescriptor = [(WFAction *)self displayableAppDescriptor];
      bundleIdentifier = [displayableAppDescriptor bundleIdentifier];

      if (bundleIdentifier)
      {
        v7 = [objc_alloc(MEMORY[0x1E69E0960]) initWithBundleIdentifier:bundleIdentifier];
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_28;
    }

    if ([iconSymbolColorName length])
    {
      [MEMORY[0x1E69E09E0] colorForName:v10];
    }

    else
    {
      [MEMORY[0x1E69E09E0] whiteColor];
    }
    bundleIdentifier = ;
    if (bundleIdentifier)
    {
      if ([iconBackgroundColorName isEqualToString:@"Tint"])
      {
        [MEMORY[0x1E69E09E0] tintedColorForName:v10];
      }

      else
      {
        [MEMORY[0x1E69E09E0] colorForName:iconBackgroundColorName];
      }
      v14 = ;
      if (v14)
      {
        v15 = [objc_alloc(MEMORY[0x1E69E0B48]) initWithColor:v14];
        v7 = [objc_alloc(MEMORY[0x1E69E0D70]) initWithSymbolName:iconSymbolName symbolColor:bundleIdentifier background:v15];

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
        v22 = iconBackgroundColorName;
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
        v22 = iconBackgroundColorName;
        _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_ERROR, "%s A custom icon symbol color was specified (%@) but we could not find the color in the assets", &v19, 0x16u);
      }
    }

    v7 = 0;
    goto LABEL_27;
  }

  v4 = MEMORY[0x1E69E0B58];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  iconSymbolName = [v4 imageNamed:iconName inBundle:v5];

  if (iconSymbolName)
  {
    v7 = [objc_alloc(MEMORY[0x1E69E0B60]) initWithImage:iconSymbolName];
  }

  else
  {
    v11 = getWFGeneralLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "[WFAction(Definition) icon]";
      v21 = 2112;
      v22 = iconName;
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, "%s A custom icon was specified (%@) but we could not find the icon in our image assets", &v19, 0x16u);
    }

    iconSymbolName = 0;
    v7 = 0;
  }

LABEL_29:

  v17 = *MEMORY[0x1E69E9840];

  return v7;
}

- (NSString)iconSymbolColorName
{
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"IconSymbolColor"];

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
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"IconColor"];

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
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"IconSymbol"];

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
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"IconName"];

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
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"DisplayableAppDefinition"];

  return v3;
}

- (NSDictionary)appDefinition
{
  definition = [(WFAction *)self definition];
  v3 = [definition objectForKey:@"AppDefinition"];

  return v3;
}

- (NSString)localizedAppName
{
  appDescriptor = [(WFAction *)self appDescriptor];
  localizedName = [appDescriptor localizedName];

  if ([localizedName length])
  {
    appName2 = localizedName;
    goto LABEL_10;
  }

  resourceManager = [(WFAction *)self resourceManager];
  v7 = [resourceManager resourceObjectsOfClass:objc_opt_class()];
  anyObject = [v7 anyObject];

  if (!anyObject || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    anyObject = 0;
LABEL_8:
    appName2 = 0;
    goto LABEL_9;
  }

  descriptor = [anyObject descriptor];
  localizedName2 = [descriptor localizedName];
  v11 = [localizedName2 length];

  if (!v11)
  {
    appName = [anyObject appName];
    v15 = [appName length];

    if (v15)
    {
      appName2 = [anyObject appName];
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  descriptor2 = [anyObject descriptor];
  appName2 = [descriptor2 localizedName];

LABEL_9:
LABEL_10:

  return appName2;
}

- (id)localizedDefaultOutputNameWithContext:(id)context
{
  contextCopy = context;
  outputDictionary = [(WFAction *)self outputDictionary];
  v6 = [outputDictionary objectForKey:@"OutputName"];

  if (v6)
  {
    v7 = [contextCopy localize:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)localizedDefaultOutputName
{
  defaultLocalizationContext = [(WFAction *)self defaultLocalizationContext];
  v4 = [(WFAction *)self localizedDefaultOutputNameWithContext:defaultLocalizationContext];
  v5 = v4;
  if (v4)
  {
    localizedName = v4;
  }

  else
  {
    localizedName = [(WFAction *)self localizedName];
  }

  v7 = localizedName;

  return v7;
}

- (NSAttributedString)attributedLocalizedName
{
  v3 = objc_alloc(MEMORY[0x1E696AAB0]);
  localizedName = [(WFAction *)self localizedName];
  v5 = [v3 initWithString:localizedName];

  return v5;
}

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  definition = [(WFAction *)self definition];
  name = [definition name];

  if (name)
  {
    v7 = [contextCopy localize:name];
  }

  else
  {
    v8 = WFLocalizedStringResourceWithKey(@"Unknown Action", @"Unknown Action");
    v7 = [contextCopy localize:v8];
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
  bundleIdentifier = [v2 bundleIdentifier];

  return bundleIdentifier;
}

- (id)deviceLockedError
{
  v19[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v18[0] = *MEMORY[0x1E696A578];
  currentDevice = [MEMORY[0x1E69E0A90] currentDevice];
  idiom = [currentDevice idiom];

  if (idiom <= 1)
  {
    if (!idiom)
    {
      v6 = @"DEVICE_LOCKED_ERROR_PHONE";
      v7 = @"This shortcut requires your iPhone to be unlocked.";
      goto LABEL_13;
    }

    if (idiom == 1)
    {
      v6 = @"DEVICE_LOCKED_ERROR_PAD";
      v7 = @"This shortcut requires your iPad to be unlocked.";
      goto LABEL_13;
    }
  }

  else
  {
    switch(idiom)
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
  workflow = [(WFAction *)self workflow];
  name = [workflow name];
  v13 = [v9 localizedStringWithFormat:v10, name];
  v19[1] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v15 = [v3 errorWithDomain:@"WFActionErrorDomain" code:17 userInfo:v14];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)requestUnlock:(id)unlock
{
  unlockCopy = unlock;
  if (VCIsDeviceLocked())
  {
    v5 = objc_opt_new();
    [v5 setPreferredStyle:1];
    localizedName = [(WFAction *)self localizedName];
    [v5 setTitle:localizedName];

    v7 = +[WFDatabaseProxy defaultDatabase];
    workflow = [(WFAction *)self workflow];
    workflowID = [workflow workflowID];
    v10 = [v7 configuredTriggersForWorkflowID:workflowID error:0];

    firstObject = [v10 firstObject];
    v12 = firstObject;
    if (firstObject)
    {
      trigger = [firstObject trigger];
      localizedDescriptionWithConfigurationSummary = [trigger localizedDescriptionWithConfigurationSummary];
      [v5 setTitle:localizedDescriptionWithConfigurationSummary];

      workflow2 = [MEMORY[0x1E69E0A98] attributionWithAppBundleIdentifier:*MEMORY[0x1E69E0FB0]];
      [v5 setAttribution:workflow2];
    }

    else
    {
      workflow2 = [(WFAction *)self workflow];
      v16 = objc_alloc(MEMORY[0x1E69E0A98]);
      attributionTitle = [workflow2 attributionTitle];
      attributionIcon = [workflow2 attributionIcon];
      icon = [workflow2 icon];
      v20 = [v16 initWithTitle:attributionTitle icon:attributionIcon workflowIcon:icon];
      [v5 setAttribution:v20];
    }

    v21 = MEMORY[0x1E696AEC0];
    v22 = WFLocalizedStringWithKey(@"TapToRunAction", @"Tap to run “%@”");
    localizedName2 = [(WFAction *)self localizedName];
    v24 = [v21 stringWithFormat:v22, localizedName2];
    [v5 setMessage:v24];

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __41__WFAction_RequestUnlock__requestUnlock___block_invoke;
    v32[3] = &unk_1E837F4E8;
    v25 = unlockCopy;
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
    userInterface = [(WFAction *)self userInterface];
    [userInterface presentAlert:v5];
  }

  else
  {
    (*(unlockCopy + 2))(unlockCopy, 1, 0);
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

- (void)requestUnlockIfNeeded:(id)needed
{
  neededCopy = needed;
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
      v9 = neededCopy;
      v6 = v5;
      [(WFCompactUnlockService *)v6 requestUnlockIfNeeded:v7];
    }

    else
    {
      [(WFAction *)self requestUnlock:neededCopy];
    }
  }

  else
  {
    (*(neededCopy + 2))(neededCopy, 1, 0);
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
  runningDelegate = [(WFAction *)self runningDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  runningDelegate2 = [(WFAction *)self runningDelegate];
  v6 = [runningDelegate2 currentRunningContextForAction:self];

  runSource = [v6 runSource];
  v8 = [runSource isEqualToString:*MEMORY[0x1E69E13A8]];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    runSource2 = [v6 runSource];
    v9 = [runSource2 isEqualToString:*MEMORY[0x1E69E1368]];
  }

  return v9;
}

- (NSDictionary)serializedRepresentation
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"WFWorkflowActionIdentifier";
  identifier = [(WFAction *)self identifier];
  v8[1] = @"WFWorkflowActionParameters";
  v9[0] = identifier;
  serializedParameters = [(WFAction *)self serializedParameters];
  v9[1] = serializedParameters;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)actionsFromSerializedRepresentations:(id)representations actionRegistry:(id)registry
{
  registryCopy = registry;
  representationsCopy = representations;
  v7 = [representationsCopy valueForKey:@"WFWorkflowActionIdentifier"];
  v8 = [representationsCopy if_map:&__block_literal_global_69352];

  v9 = [registryCopy createActionsWithIdentifiers:v7 serializedParameterArray:v8];

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

+ (id)actionFromSerializedRepresentation:(id)representation actionRegistry:(id)registry
{
  v15 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v6 = MEMORY[0x1E695DEC8];
  registryCopy = registry;
  representationCopy2 = representation;
  v9 = [v6 arrayWithObjects:&representationCopy count:1];

  v10 = [self actionsFromSerializedRepresentations:v9 actionRegistry:{registryCopy, representationCopy, v15}];

  firstObject = [v10 firstObject];

  v12 = *MEMORY[0x1E69E9840];

  return firstObject;
}

@end