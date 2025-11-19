@interface WFDynamicEnumerationParameter
- (BOOL)allowsMultipleValues;
- (BOOL)dataSourceSupportsAsynchronousFetchingOfDefaultSerializedRepresentation;
- (BOOL)dataSourceSupportsSynchronousFetchingOfDefaultSerializedRepresentation;
- (BOOL)isAsynchronous;
- (BOOL)loadsDefaultStateAsynchronously;
- (BOOL)parameterStateIsValid:(id)a3;
- (BOOL)shouldAlwaysReloadPossibleStates;
- (INObjectCollection)possibleStatesCollection;
- (NSArray)possibleStates;
- (NSError)possibleStatesLoadingError;
- (WFDynamicEnumerationDataSource)dataSource;
- (WFDynamicEnumerationParameter)initWithDefinition:(id)a3;
- (id)accessoryColorForPossibleState:(id)a3;
- (id)accessoryIconForPossibleState:(id)a3;
- (id)accessoryImageForPossibleState:(id)a3;
- (id)defaultSerializedRepresentation;
- (id)localizedLabelForPossibleState:(id)a3;
- (id)localizedSubtitleLabelForPossibleState:(id)a3;
- (id)possibleStatesForLocalization;
- (unint64_t)possibleStatesLoadingState;
- (void)clearPossibleStates;
- (void)createDialogRequestWithAttribution:(id)a3 defaultState:(id)a4 prompt:(id)a5 completionHandler:(id)a6;
- (void)defaultSerializedRepresentationDidChange;
- (void)loadDefaultSerializedRepresentationWithCompletionHandler:(id)a3;
- (void)loadPossibleStatesWithCompletionHandler:(id)a3;
- (void)loadSynchronousPossibleStates;
- (void)lock_setPossibleStatesCollection:(id)a3;
- (void)possibleStatesDidChange;
- (void)reloadPossibleStates;
- (void)setDataSource:(id)a3;
- (void)setPossibleStates:(id)a3;
- (void)setPossibleStatesCollection:(id)a3;
- (void)setPossibleStatesFromRemoteSource:(id)a3;
- (void)wf_loadStatesWithSearchTerm:(id)a3 completionHandler:(id)a4;
- (void)wf_reloadFromAttributesDidChangeWithCompletionHandler:(id)a3;
@end

@implementation WFDynamicEnumerationParameter

- (void)clearPossibleStates
{
  os_unfair_lock_assert_not_owner(&self->_possibleStatesLock);
  os_unfair_lock_lock(&self->_possibleStatesLock);
  possibleStates = self->_possibleStates;
  self->_possibleStates = 0;

  possibleStatesCollection = self->_possibleStatesCollection;
  self->_possibleStatesCollection = 0;

  self->_possibleStatesLoadingState = 0;

  os_unfair_lock_unlock(&self->_possibleStatesLock);
}

- (id)defaultSerializedRepresentation
{
  v3 = [(WFDynamicEnumerationParameter *)self defaultValueLoadingState];
  if (v3 - 2 < 2)
  {
    defaultSerializedRepresentation = self->_defaultSerializedRepresentation;
LABEL_3:
    v5 = defaultSerializedRepresentation;
    goto LABEL_10;
  }

  if (v3)
  {
    goto LABEL_9;
  }

  if ([(WFDynamicEnumerationParameter *)self dataSourceSupportsSynchronousFetchingOfDefaultSerializedRepresentation])
  {
    v6 = [(WFDynamicEnumerationParameter *)self dataSource];
    v7 = [v6 defaultSerializedRepresentationForEnumeration:self];
    v8 = self->_defaultSerializedRepresentation;
    self->_defaultSerializedRepresentation = v7;

    [(WFDynamicEnumerationParameter *)self setDefaultValueLoadingState:2];
    defaultSerializedRepresentation = self->_defaultSerializedRepresentation;
    goto LABEL_3;
  }

  if ([(WFDynamicEnumerationParameter *)self dataSourceSupportsAsynchronousFetchingOfDefaultSerializedRepresentation])
  {
    [(WFDynamicEnumerationParameter *)self loadDefaultSerializedRepresentationWithCompletionHandler:0];
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v10.receiver = self;
  v10.super_class = WFDynamicEnumerationParameter;
  v5 = [(WFParameter *)&v10 defaultSerializedRepresentation];
LABEL_10:

  return v5;
}

- (BOOL)dataSourceSupportsSynchronousFetchingOfDefaultSerializedRepresentation
{
  v3 = [(WFDynamicEnumerationParameter *)self dataSource];
  v4 = objc_opt_respondsToSelector();

  v5 = [(WFDynamicEnumerationParameter *)self dataSource];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 shouldLoadDefaultStateAsynchronouslyForEnumeration:self] ^ 1;
  }

  else
  {
    v7 = objc_opt_respondsToSelector();
  }

  return v7 & 1;
}

- (WFDynamicEnumerationDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (BOOL)dataSourceSupportsAsynchronousFetchingOfDefaultSerializedRepresentation
{
  v3 = [(WFDynamicEnumerationParameter *)self dataSource];
  v4 = objc_opt_respondsToSelector();

  v5 = [(WFDynamicEnumerationParameter *)self dataSource];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 shouldLoadDefaultStateAsynchronouslyForEnumeration:self];
  }

  else
  {
    v7 = objc_opt_respondsToSelector();
  }

  v8 = v7;

  return v8 & 1;
}

- (BOOL)loadsDefaultStateAsynchronously
{
  if ([(WFDynamicEnumerationParameter *)self dataSourceSupportsSynchronousFetchingOfDefaultSerializedRepresentation])
  {
    return 0;
  }

  return [(WFDynamicEnumerationParameter *)self dataSourceSupportsAsynchronousFetchingOfDefaultSerializedRepresentation];
}

- (void)createDialogRequestWithAttribution:(id)a3 defaultState:(id)a4 prompt:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (-[WFDynamicEnumerationParameter possibleStatesLoadingState](self, "possibleStatesLoadingState") == 3 && (-[WFDynamicEnumerationParameter possibleStates](self, "possibleStates"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 count], v14, v15))
  {
    v22.receiver = self;
    v22.super_class = WFDynamicEnumerationParameter;
    [(WFEnumerationParameter *)&v22 createDialogRequestWithAttribution:v10 defaultState:v11 prompt:v12 completionHandler:v13];
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __106__WFDynamicEnumerationParameter_createDialogRequestWithAttribution_defaultState_prompt_completionHandler___block_invoke;
    v16[3] = &unk_1E83767B8;
    v17 = v10;
    v18 = v11;
    v19 = v12;
    v20 = self;
    v21 = v13;
    [(WFDynamicEnumerationParameter *)self loadPossibleStatesWithCompletionHandler:v16];
  }
}

id __106__WFDynamicEnumerationParameter_createDialogRequestWithAttribution_defaultState_prompt_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  v6.receiver = *(a1 + 56);
  v6.super_class = WFDynamicEnumerationParameter;
  return objc_msgSendSuper2(&v6, sel_createDialogRequestWithAttribution_defaultState_prompt_completionHandler_, v1, v2, v3, v4);
}

- (BOOL)shouldAlwaysReloadPossibleStates
{
  v3 = [(WFDynamicEnumerationParameter *)self dataSource];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(WFDynamicEnumerationParameter *)self dataSource];
  v6 = [v5 enumerationShouldAlwaysReloadPossibleStates:self];

  return v6;
}

- (BOOL)isAsynchronous
{
  v2 = [(WFDynamicEnumerationParameter *)self dataSource];
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (void)defaultSerializedRepresentationDidChange
{
  defaultSerializedRepresentation = self->_defaultSerializedRepresentation;
  self->_defaultSerializedRepresentation = 0;

  [(WFDynamicEnumerationParameter *)self setDefaultValueLoadingState:0];
  v4.receiver = self;
  v4.super_class = WFDynamicEnumerationParameter;
  [(WFParameter *)&v4 defaultSerializedRepresentationDidChange];
}

- (void)loadSynchronousPossibleStates
{
  if (![(WFDynamicEnumerationParameter *)self isAsynchronous])
  {
    v3 = [(WFDynamicEnumerationParameter *)self dataSource];
    v4 = objc_opt_respondsToSelector();

    v5 = [(WFDynamicEnumerationParameter *)self dataSource];
    v6 = v5;
    if (v4)
    {
      v7 = [v5 possibleStatesForEnumeration:self];

      if (v7)
      {
        v8 = [objc_alloc(MEMORY[0x1E696E918]) initWithItems:v7];
      }

      else
      {
        v8 = 0;
      }

      os_unfair_lock_lock(&self->_possibleStatesLock);
      possibleStatesCollection = self->_possibleStatesCollection;
      self->_possibleStatesCollection = v8;
      v12 = v8;

      possibleStates = self->_possibleStates;
      self->_possibleStates = v7;

      os_unfair_lock_unlock(&self->_possibleStatesLock);
    }

    else
    {
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        v10 = [(WFDynamicEnumerationParameter *)self dataSource];
        v14 = [v10 loadPossibleStatesForEnumeration:self];

        os_unfair_lock_lock(&self->_possibleStatesLock);
        [(WFDynamicEnumerationParameter *)self lock_setPossibleStatesCollection:v14];
        os_unfair_lock_unlock(&self->_possibleStatesLock);
      }
    }
  }
}

- (void)loadPossibleStatesWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(WFDynamicEnumerationParameter *)self isAsynchronous])
  {
    if ([(WFDynamicEnumerationParameter *)self possibleStatesLoadingState]== 1)
    {
      v5 = [(WFDynamicEnumerationParameter *)self possibleStatesLoadingError];
      v4[2](v4, v5);
    }

    else
    {
      os_unfair_lock_assert_not_owner(&self->_possibleStatesLock);
      os_unfair_lock_lock(&self->_possibleStatesLock);
      self->_possibleStatesLoadingState = 1;
      os_unfair_lock_unlock(&self->_possibleStatesLock);
      v6 = [(WFDynamicEnumerationParameter *)self dataSource];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __73__WFDynamicEnumerationParameter_loadPossibleStatesWithCompletionHandler___block_invoke;
      v7[3] = &unk_1E837D448;
      v7[4] = self;
      v8 = v4;
      [v6 loadPossibleStatesForEnumeration:self searchTerm:0 completionHandler:v7];
    }
  }

  else
  {
    v4[2](v4, 0);
  }
}

void __73__WFDynamicEnumerationParameter_loadPossibleStatesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) completionQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__WFDynamicEnumerationParameter_loadPossibleStatesWithCompletionHandler___block_invoke_2;
  v11[3] = &unk_1E837F510;
  v8 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v6;
  v13 = v5;
  v14 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, v11);
}

uint64_t __73__WFDynamicEnumerationParameter_loadPossibleStatesWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  os_unfair_lock_assert_not_owner((*(a1 + 32) + 248));
  os_unfair_lock_lock((*(a1 + 32) + 248));
  objc_storeStrong((*(a1 + 32) + 280), *(a1 + 40));
  *(*(a1 + 32) + 288) = 2;
  [*(a1 + 32) lock_setPossibleStatesCollection:*(a1 + 48)];
  os_unfair_lock_unlock((*(a1 + 32) + 248));
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 56) + 16);

  return v3();
}

- (NSArray)possibleStates
{
  os_unfair_lock_assert_not_owner(&self->_possibleStatesLock);
  os_unfair_lock_lock(&self->_possibleStatesLock);
  possibleStatesLoadingState = self->_possibleStatesLoadingState;
  if (possibleStatesLoadingState - 2 < 2)
  {
    goto LABEL_8;
  }

  if (possibleStatesLoadingState)
  {
    v5 = 0;
LABEL_9:
    os_unfair_lock_unlock(&self->_possibleStatesLock);
    goto LABEL_10;
  }

  os_unfair_lock_unlock(&self->_possibleStatesLock);
  [(WFDynamicEnumerationParameter *)self loadSynchronousPossibleStates];
  v4 = [(WFDynamicEnumerationParameter *)self dataSource];
  if (objc_opt_respondsToSelector())
  {

LABEL_7:
    [(WFDynamicEnumerationParameter *)self loadSynchronousPossibleStates];
    os_unfair_lock_assert_not_owner(&self->_possibleStatesLock);
    os_unfair_lock_lock(&self->_possibleStatesLock);
    self->_possibleStatesLoadingState = 2;
LABEL_8:
    v5 = self->_possibleStates;
    goto LABEL_9;
  }

  v6 = [(WFDynamicEnumerationParameter *)self dataSource];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    goto LABEL_7;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (id)accessoryColorForPossibleState:(id)a3
{
  v4 = a3;
  v5 = [(WFDynamicEnumerationParameter *)self dataSource];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(WFDynamicEnumerationParameter *)self dataSource];
    v8 = [v7 enumeration:self accessoryColorForPossibleState:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)loadDefaultSerializedRepresentationWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(WFDynamicEnumerationParameter *)self defaultValueLoadingState]== 2 || [(WFDynamicEnumerationParameter *)self defaultValueLoadingState]== 3 || ![(WFDynamicEnumerationParameter *)self loadsDefaultStateAsynchronously])
  {
    if (v4)
    {
      v8 = [(WFDynamicEnumerationParameter *)self defaultSerializedRepresentation];
      v4[2](v4, v8, 0);
    }
  }

  else
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = __Block_byref_object_copy__21068;
    v15[4] = __Block_byref_object_dispose__21069;
    v16 = 0;
    v5 = [v4 copy];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __90__WFDynamicEnumerationParameter_loadDefaultSerializedRepresentationWithCompletionHandler___block_invoke;
    aBlock[3] = &unk_1E837E9A8;
    v6 = v5;
    aBlock[4] = self;
    v13 = v6;
    v14 = v15;
    v7 = _Block_copy(aBlock);
    if ([(WFDynamicEnumerationParameter *)self defaultValueLoadingState]== 1)
    {
      v7[2](v7);
    }

    else
    {
      v9 = [(WFDynamicEnumerationParameter *)self defaultStateLoadingGroup];
      dispatch_group_enter(v9);

      [(WFDynamicEnumerationParameter *)self setDefaultValueLoadingState:1];
      v7[2](v7);
      v10 = [(WFDynamicEnumerationParameter *)self dataSource];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __90__WFDynamicEnumerationParameter_loadDefaultSerializedRepresentationWithCompletionHandler___block_invoke_3;
      v11[3] = &unk_1E8376790;
      v11[4] = self;
      v11[5] = v15;
      [v10 loadDefaultSerializedRepresentationForEnumeration:self completionHandler:v11];
    }

    _Block_object_dispose(v15, 8);
  }
}

void __90__WFDynamicEnumerationParameter_loadDefaultSerializedRepresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) defaultStateLoadingGroup];
    v3 = [*(a1 + 32) completionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __90__WFDynamicEnumerationParameter_loadDefaultSerializedRepresentationWithCompletionHandler___block_invoke_2;
    block[3] = &unk_1E837E9A8;
    v4 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v6 = v4;
    v7 = *(a1 + 48);
    dispatch_group_notify(v2, v3, block);
  }
}

void __90__WFDynamicEnumerationParameter_loadDefaultSerializedRepresentationWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) completionQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90__WFDynamicEnumerationParameter_loadDefaultSerializedRepresentationWithCompletionHandler___block_invoke_4;
  v12[3] = &unk_1E8376768;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v15 = v5;
  v16 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

void __90__WFDynamicEnumerationParameter_loadDefaultSerializedRepresentationWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    [v2 setDefaultValueLoadingState:0];
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
    v4 = getWFGeneralLogObject();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
LABEL_12:

      goto LABEL_13;
    }

    v5 = [*(a1 + 32) localizedDescription];
    *buf = 136315394;
    v14 = "[WFDynamicEnumerationParameter loadDefaultSerializedRepresentationWithCompletionHandler:]_block_invoke_4";
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_ERROR, "%s Error loading default serialized representation for dynamic enumeration: %{error}@", buf, 0x16u);
LABEL_11:

    goto LABEL_12;
  }

  [v2 setDefaultValueLoadingState:2];
  v6 = *(a1 + 48);
  v4 = *(*(a1 + 40) + 272);
  v7 = v6;
  v5 = v7;
  if (v4 == v7)
  {
    goto LABEL_11;
  }

  if (v4)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {

LABEL_15:
    objc_storeStrong((*(a1 + 40) + 272), *(a1 + 48));
    v12.receiver = *(a1 + 40);
    v12.super_class = WFDynamicEnumerationParameter;
    objc_msgSendSuper2(&v12, sel_defaultSerializedRepresentationDidChange);
    goto LABEL_13;
  }

  v11 = [v4 isEqual:v7];

  if ((v11 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  v9 = [*(a1 + 40) defaultStateLoadingGroup];
  dispatch_group_leave(v9);

  v10 = *MEMORY[0x1E69E9840];
}

void __90__WFDynamicEnumerationParameter_loadDefaultSerializedRepresentationWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) defaultSerializedRepresentation];
  (*(v2 + 16))(v2, v3, *(*(*(a1 + 48) + 8) + 40));
}

- (id)accessoryIconForPossibleState:(id)a3
{
  v4 = a3;
  v5 = [(WFDynamicEnumerationParameter *)self dataSource];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(WFDynamicEnumerationParameter *)self dataSource];
    v8 = [v7 enumeration:self accessoryIconForPossibleState:v4];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WFDynamicEnumerationParameter;
    v8 = [(WFEnumerationParameter *)&v10 accessoryIconForPossibleState:v4];
  }

  return v8;
}

- (id)accessoryImageForPossibleState:(id)a3
{
  v4 = a3;
  v5 = [(WFDynamicEnumerationParameter *)self dataSource];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(WFDynamicEnumerationParameter *)self dataSource];
    v8 = [v7 enumeration:self accessoryImageForPossibleState:v4];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WFDynamicEnumerationParameter;
    v8 = [(WFEnumerationParameter *)&v10 accessoryImageForPossibleState:v4];
  }

  return v8;
}

- (id)localizedSubtitleLabelForPossibleState:(id)a3
{
  v4 = a3;
  v5 = [(WFDynamicEnumerationParameter *)self dataSource];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(WFDynamicEnumerationParameter *)self dataSource];
    v8 = [v7 enumeration:self localizedSubtitleLabelForPossibleState:v4];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WFDynamicEnumerationParameter;
    v8 = [(WFEnumerationParameter *)&v10 localizedSubtitleLabelForPossibleState:v4];
  }

  return v8;
}

- (id)localizedLabelForPossibleState:(id)a3
{
  v4 = a3;
  v5 = [(WFDynamicEnumerationParameter *)self dataSource];
  v6 = [v5 enumeration:self localizedLabelForPossibleState:v4];

  return v6;
}

- (id)possibleStatesForLocalization
{
  v3 = [(WFDynamicEnumerationParameter *)self dataSource];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) != 0 && (-[WFDynamicEnumerationParameter dataSource](self, "dataSource"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 enumerationShouldProvideValuesForParameterSummaryLocalization:self], v5, !v6))
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = WFDynamicEnumerationParameter;
    v7 = [(WFEnumerationParameter *)&v9 possibleStatesForLocalization];
  }

  return v7;
}

- (void)setPossibleStatesFromRemoteSource:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_possibleStatesLock);
  os_unfair_lock_lock(&self->_possibleStatesLock);
  possibleStates = self->_possibleStates;
  self->_possibleStates = v4;

  self->_possibleStatesLoadingState = 3;

  os_unfair_lock_unlock(&self->_possibleStatesLock);
}

- (NSError)possibleStatesLoadingError
{
  os_unfair_lock_assert_not_owner(&self->_possibleStatesLock);
  os_unfair_lock_lock(&self->_possibleStatesLock);
  v3 = self->_possibleStatesLoadingError;
  os_unfair_lock_unlock(&self->_possibleStatesLock);

  return v3;
}

- (void)lock_setPossibleStatesCollection:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_possibleStatesLock);
  possibleStatesCollection = self->_possibleStatesCollection;
  self->_possibleStatesCollection = v4;
  v8 = v4;

  v6 = [(INObjectCollection *)v8 allItems];
  possibleStates = self->_possibleStates;
  self->_possibleStates = v6;
}

- (void)setPossibleStatesCollection:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_possibleStatesLock);
  os_unfair_lock_lock(&self->_possibleStatesLock);
  [(WFDynamicEnumerationParameter *)self lock_setPossibleStatesCollection:v4];

  os_unfair_lock_unlock(&self->_possibleStatesLock);

  [(WFDynamicEnumerationParameter *)self possibleStatesDidChange];
}

- (void)setPossibleStates:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_possibleStatesLock);
  os_unfair_lock_lock(&self->_possibleStatesLock);
  v5 = [v4 copy];

  possibleStates = self->_possibleStates;
  self->_possibleStates = v5;

  os_unfair_lock_unlock(&self->_possibleStatesLock);

  [(WFDynamicEnumerationParameter *)self possibleStatesDidChange];
}

- (void)reloadPossibleStates
{
  [(WFDynamicEnumerationParameter *)self clearPossibleStates];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__WFDynamicEnumerationParameter_reloadPossibleStates__block_invoke;
  v3[3] = &unk_1E837E5E0;
  v3[4] = self;
  [(WFDynamicEnumerationParameter *)self loadPossibleStatesWithCompletionHandler:v3];
}

void __53__WFDynamicEnumerationParameter_reloadPossibleStates__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = getWFGeneralLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v3 localizedDescription];
      v7 = 136315394;
      v8 = "[WFDynamicEnumerationParameter reloadPossibleStates]_block_invoke";
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_ERROR, "%s Error reloading possible states: %{error}@", &v7, 0x16u);
    }
  }

  else if (([*(a1 + 32) isAsynchronous] & 1) == 0)
  {
    [*(a1 + 32) possibleStatesDidChange];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)possibleStatesDidChange
{
  v2.receiver = self;
  v2.super_class = WFDynamicEnumerationParameter;
  [(WFEnumerationParameter *)&v2 possibleStatesDidChange];
}

- (INObjectCollection)possibleStatesCollection
{
  os_unfair_lock_assert_not_owner(&self->_possibleStatesLock);
  os_unfair_lock_lock(&self->_possibleStatesLock);
  v3 = self->_possibleStatesCollection;
  os_unfair_lock_unlock(&self->_possibleStatesLock);

  return v3;
}

- (BOOL)parameterStateIsValid:(id)a3
{
  v4 = a3;
  if ([(WFDynamicEnumerationParameter *)self possibleStatesLoadingState]== 2)
  {
    v7.receiver = self;
    v7.super_class = WFDynamicEnumerationParameter;
    v5 = [(WFEnumerationParameter *)&v7 parameterStateIsValid:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (unint64_t)possibleStatesLoadingState
{
  os_unfair_lock_assert_not_owner(&self->_possibleStatesLock);
  os_unfair_lock_lock(&self->_possibleStatesLock);
  possibleStatesLoadingState = self->_possibleStatesLoadingState;
  os_unfair_lock_unlock(&self->_possibleStatesLock);
  return possibleStatesLoadingState;
}

- (BOOL)allowsMultipleValues
{
  v3 = [(WFDynamicEnumerationParameter *)self dataSource];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WFDynamicEnumerationParameter *)self dataSource];
    v6 = [v5 enumerationAllowsMultipleValues:self];

    return v6;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = WFDynamicEnumerationParameter;
    return [(WFParameter *)&v8 allowsMultipleValues];
  }
}

- (void)setDataSource:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained isEqual:v4];

  objc_storeWeak(&self->_dataSource, v4);
  if ((v6 & 1) == 0)
  {
    [(WFDynamicEnumerationParameter *)self clearPossibleStates];
    if (self->_defaultSerializedRepresentation)
    {

      [(WFDynamicEnumerationParameter *)self defaultSerializedRepresentationDidChange];
    }
  }
}

- (WFDynamicEnumerationParameter)initWithDefinition:(id)a3
{
  v9.receiver = self;
  v9.super_class = WFDynamicEnumerationParameter;
  v3 = [(WFEnumerationParameter *)&v9 initWithDefinition:a3];
  v4 = v3;
  if (v3)
  {
    objc_storeStrong(&v3->_completionQueue, MEMORY[0x1E69E96A0]);
    v4->_possibleStatesLock._os_unfair_lock_opaque = 0;
    v5 = dispatch_group_create();
    defaultStateLoadingGroup = v4->_defaultStateLoadingGroup;
    v4->_defaultStateLoadingGroup = v5;

    v7 = v4;
  }

  return v4;
}

- (void)wf_reloadFromAttributesDidChangeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WFDynamicEnumerationParameter *)self possibleStates];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E696E918]);
    v7 = [(WFDynamicEnumerationParameter *)self possibleStates];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = MEMORY[0x1E695E0F0];
    }

    v10 = [v6 initWithItems:v9];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __106__WFDynamicEnumerationParameter_WFParameterPicker__wf_reloadFromAttributesDidChangeWithCompletionHandler___block_invoke;
    v12[3] = &unk_1E837E1F8;
    v13 = v10;
    v14 = v4;
    v11 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], v12);
  }
}

- (void)wf_loadStatesWithSearchTerm:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __98__WFDynamicEnumerationParameter_WFParameterPicker__wf_loadStatesWithSearchTerm_completionHandler___block_invoke;
  v7[3] = &unk_1E837FA10;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(WFDynamicEnumerationParameter *)self loadPossibleStatesWithCompletionHandler:v7];
}

void __98__WFDynamicEnumerationParameter_WFParameterPicker__wf_loadStatesWithSearchTerm_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E696E918]);
    v6 = [*(a1 + 32) possibleStates];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }

    v9 = [v5 initWithItems:v8];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __98__WFDynamicEnumerationParameter_WFParameterPicker__wf_loadStatesWithSearchTerm_completionHandler___block_invoke_2;
    v12[3] = &unk_1E837E1F8;
    v10 = *(a1 + 40);
    v13 = v9;
    v14 = v10;
    v11 = v9;
    dispatch_async(MEMORY[0x1E69E96A0], v12);
  }
}

@end