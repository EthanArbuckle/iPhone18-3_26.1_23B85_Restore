@interface TFFeedbackDataContainer
- (BOOL)isEntryWithIdentifierLoading:(id)loading;
- (BOOL)isGroupWithIdentifierIncluded:(id)included;
- (BOOL)isLoading;
- (NSString)debugDescription;
- (TFFeedbackDataContainer)initWithName:(id)name;
- (TFFeedbackDataContainer)initWithName:(id)name includedGroupIdentifiers:(id)identifiers loadingEntryIdentifiers:(id)entryIdentifiers stringEntryMap:(id)map numberEntryMap:(id)entryMap imageCollectionEntryMap:(id)collectionEntryMap dirtyGroupIdentifiers:(id)groupIdentifiers dirtyEntryIdentifiers:(id)self0;
- (TFFeedbackDataContainerObserver)observer;
- (id)copyWithZone:(_NSZone *)zone;
- (id)imageCollectionForIdentifer:(id)identifer;
- (id)numberForIdentifier:(id)identifier;
- (id)objectForIdentifier:(id)identifier;
- (id)stringForIdentifier:(id)identifier;
- (void)_clearDirtyIdentifiers;
- (void)_markEntryIdentifierDirty:(id)dirty;
- (void)_markGroupIdentifierDirty:(id)dirty;
- (void)_notifyObserverOfUpdates;
- (void)overwriteWithContentsOfDataContainer:(id)container;
- (void)performBatchUpdates:(id)updates suppressingNotifications:(BOOL)notifications;
- (void)prepareInitialValuesForForm:(id)form;
- (void)setEntryLoadingForIdentifier:(id)identifier toValue:(BOOL)value;
- (void)setGroupInclusionForIdentifier:(id)identifier toValue:(BOOL)value;
- (void)setImageCollectionForIdentifier:(id)identifier toValue:(id)value;
- (void)setNumberForIdentifier:(id)identifier toValue:(id)value;
- (void)setStringForIdentifier:(id)identifier toValue:(id)value;
@end

@implementation TFFeedbackDataContainer

- (TFFeedbackDataContainer)initWithName:(id)name includedGroupIdentifiers:(id)identifiers loadingEntryIdentifiers:(id)entryIdentifiers stringEntryMap:(id)map numberEntryMap:(id)entryMap imageCollectionEntryMap:(id)collectionEntryMap dirtyGroupIdentifiers:(id)groupIdentifiers dirtyEntryIdentifiers:(id)self0
{
  nameCopy = name;
  identifiersCopy = identifiers;
  entryIdentifiersCopy = entryIdentifiers;
  mapCopy = map;
  entryMapCopy = entryMap;
  collectionEntryMapCopy = collectionEntryMap;
  groupIdentifiersCopy = groupIdentifiers;
  dirtyEntryIdentifiersCopy = dirtyEntryIdentifiers;
  v32.receiver = self;
  v32.super_class = TFFeedbackDataContainer;
  v18 = [(TFFeedbackDataContainer *)&v32 init];
  if (v18)
  {
    v19 = [nameCopy copy];
    name = v18->_name;
    v18->_name = v19;

    objc_storeStrong(&v18->_includedGroupIdentifiers, identifiers);
    objc_storeStrong(&v18->_loadingEntryIdentifiers, entryIdentifiers);
    objc_storeStrong(&v18->_stringEntryMap, map);
    objc_storeStrong(&v18->_numberEntryMap, entryMap);
    objc_storeStrong(&v18->_imageCollectionEntryMap, collectionEntryMap);
    objc_storeStrong(&v18->_dirtyGroupIdentifiers, groupIdentifiers);
    objc_storeStrong(&v18->_dirtyEntryIdentifiers, dirtyEntryIdentifiers);
    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.TestFlightCore.TFFeedbackDataContainer.%@", nameCopy];
    uTF8String = [nameCopy UTF8String];
    v23 = dispatch_queue_create(uTF8String, MEMORY[0x277D85CD8]);
    accessQueue = v18->_accessQueue;
    v18->_accessQueue = v23;
  }

  return v18;
}

- (TFFeedbackDataContainer)initWithName:(id)name
{
  v4 = MEMORY[0x277CBEB58];
  nameCopy = name;
  v6 = objc_alloc_init(v4);
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = [(TFFeedbackDataContainer *)self initWithName:nameCopy includedGroupIdentifiers:v6 loadingEntryIdentifiers:v7 stringEntryMap:v8 numberEntryMap:v9 imageCollectionEntryMap:v10 dirtyGroupIdentifiers:v11 dirtyEntryIdentifiers:v12];

  return v13;
}

- (NSString)debugDescription
{
  v136 = *MEMORY[0x277D85DE8];
  includedGroupIdentifiers = [(TFFeedbackDataContainer *)self includedGroupIdentifiers];
  if (!includedGroupIdentifiers)
  {
    v4 = +[TFLogConfiguration defaultConfiguration];
    generatedLogger = [v4 generatedLogger];
    if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v131 = objc_opt_class();
      v6 = v131;
      _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_ERROR, "%{public}@: unexpected nil instance of property includedGroupIdentifiers", buf, 0xCu);
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = +[TFLogConfiguration defaultConfiguration];
    generatedLogger2 = [v7 generatedLogger];
    if (os_log_type_enabled(generatedLogger2, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = objc_opt_class();
      v12 = v11;
      v13 = objc_opt_class();
      *buf = 138543874;
      v131 = v9;
      v132 = 2114;
      v133 = v11;
      v134 = 2114;
      v135 = v13;
      v14 = v13;
      _os_log_impl(&dword_26D2C7000, generatedLogger2, OS_LOG_TYPE_ERROR, "%{public}@: unexpected type of type %{public}@ (expected %{public}@) for property includedGroupIdentifiers", buf, 0x20u);
    }
  }

  v15 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger3 = [v15 generatedLogger];
  if (os_log_type_enabled(generatedLogger3, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    *buf = 138543362;
    v131 = v17;
    v18 = v17;
    _os_log_impl(&dword_26D2C7000, generatedLogger3, OS_LOG_TYPE_DEFAULT, "%{public}@: fetching description of property includedGroupIdentifiers", buf, 0xCu);
  }

  v129 = [includedGroupIdentifiers description];

  loadingEntryIdentifiers = [(TFFeedbackDataContainer *)self loadingEntryIdentifiers];
  if (!loadingEntryIdentifiers)
  {
    v20 = +[TFLogConfiguration defaultConfiguration];
    generatedLogger4 = [v20 generatedLogger];
    if (os_log_type_enabled(generatedLogger4, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      *buf = 138543362;
      v131 = v22;
      v23 = v22;
      _os_log_impl(&dword_26D2C7000, generatedLogger4, OS_LOG_TYPE_ERROR, "%{public}@: unexpected nil instance of property loadingEntryIdentifiers", buf, 0xCu);
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v24 = +[TFLogConfiguration defaultConfiguration];
    generatedLogger5 = [v24 generatedLogger];
    if (os_log_type_enabled(generatedLogger5, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_opt_class();
      v27 = v26;
      v28 = objc_opt_class();
      v29 = v28;
      v30 = objc_opt_class();
      *buf = 138543874;
      v131 = v26;
      v132 = 2114;
      v133 = v28;
      v134 = 2114;
      v135 = v30;
      v31 = v30;
      _os_log_impl(&dword_26D2C7000, generatedLogger5, OS_LOG_TYPE_ERROR, "%{public}@: unexpected type of type %{public}@ (expected %{public}@) for property loadingEntryIdentifiers", buf, 0x20u);
    }
  }

  v32 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger6 = [v32 generatedLogger];
  if (os_log_type_enabled(generatedLogger6, OS_LOG_TYPE_DEFAULT))
  {
    v34 = objc_opt_class();
    *buf = 138543362;
    v131 = v34;
    v35 = v34;
    _os_log_impl(&dword_26D2C7000, generatedLogger6, OS_LOG_TYPE_DEFAULT, "%{public}@: fetching description of property loadingEntryIdentifiers", buf, 0xCu);
  }

  v128 = [loadingEntryIdentifiers description];

  stringEntryMap = [(TFFeedbackDataContainer *)self stringEntryMap];
  if (!stringEntryMap)
  {
    v37 = +[TFLogConfiguration defaultConfiguration];
    generatedLogger7 = [v37 generatedLogger];
    if (os_log_type_enabled(generatedLogger7, OS_LOG_TYPE_ERROR))
    {
      v39 = objc_opt_class();
      *buf = 138543362;
      v131 = v39;
      v40 = v39;
      _os_log_impl(&dword_26D2C7000, generatedLogger7, OS_LOG_TYPE_ERROR, "%{public}@: unexpected nil instance of property stringEntryMap", buf, 0xCu);
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v41 = +[TFLogConfiguration defaultConfiguration];
    generatedLogger8 = [v41 generatedLogger];
    if (os_log_type_enabled(generatedLogger8, OS_LOG_TYPE_ERROR))
    {
      v43 = objc_opt_class();
      v44 = v43;
      v45 = objc_opt_class();
      v46 = v45;
      v47 = objc_opt_class();
      *buf = 138543874;
      v131 = v43;
      v132 = 2114;
      v133 = v45;
      v134 = 2114;
      v135 = v47;
      v48 = v47;
      _os_log_impl(&dword_26D2C7000, generatedLogger8, OS_LOG_TYPE_ERROR, "%{public}@: unexpected type of type %{public}@ (expected %{public}@) for property stringEntryMap", buf, 0x20u);
    }
  }

  v49 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger9 = [v49 generatedLogger];
  if (os_log_type_enabled(generatedLogger9, OS_LOG_TYPE_DEFAULT))
  {
    v51 = objc_opt_class();
    *buf = 138543362;
    v131 = v51;
    v52 = v51;
    _os_log_impl(&dword_26D2C7000, generatedLogger9, OS_LOG_TYPE_DEFAULT, "%{public}@: fetching description of property stringEntryMap", buf, 0xCu);
  }

  v127 = [stringEntryMap description];

  numberEntryMap = [(TFFeedbackDataContainer *)self numberEntryMap];
  if (!numberEntryMap)
  {
    v54 = +[TFLogConfiguration defaultConfiguration];
    generatedLogger10 = [v54 generatedLogger];
    if (os_log_type_enabled(generatedLogger10, OS_LOG_TYPE_ERROR))
    {
      v56 = objc_opt_class();
      *buf = 138543362;
      v131 = v56;
      v57 = v56;
      _os_log_impl(&dword_26D2C7000, generatedLogger10, OS_LOG_TYPE_ERROR, "%{public}@: unexpected nil instance of property numberEntryMap", buf, 0xCu);
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v58 = +[TFLogConfiguration defaultConfiguration];
    generatedLogger11 = [v58 generatedLogger];
    if (os_log_type_enabled(generatedLogger11, OS_LOG_TYPE_ERROR))
    {
      v60 = objc_opt_class();
      v61 = v60;
      v62 = objc_opt_class();
      v63 = v62;
      v64 = objc_opt_class();
      *buf = 138543874;
      v131 = v60;
      v132 = 2114;
      v133 = v62;
      v134 = 2114;
      v135 = v64;
      v65 = v64;
      _os_log_impl(&dword_26D2C7000, generatedLogger11, OS_LOG_TYPE_ERROR, "%{public}@: unexpected type of type %{public}@ (expected %{public}@) for property numberEntryMap", buf, 0x20u);
    }
  }

  v66 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger12 = [v66 generatedLogger];
  if (os_log_type_enabled(generatedLogger12, OS_LOG_TYPE_DEFAULT))
  {
    v68 = objc_opt_class();
    *buf = 138543362;
    v131 = v68;
    v69 = v68;
    _os_log_impl(&dword_26D2C7000, generatedLogger12, OS_LOG_TYPE_DEFAULT, "%{public}@: fetching description of property numberEntryMap", buf, 0xCu);
  }

  v126 = [numberEntryMap description];

  imageCollectionEntryMap = [(TFFeedbackDataContainer *)self imageCollectionEntryMap];
  if (!imageCollectionEntryMap)
  {
    v71 = +[TFLogConfiguration defaultConfiguration];
    generatedLogger13 = [v71 generatedLogger];
    if (os_log_type_enabled(generatedLogger13, OS_LOG_TYPE_ERROR))
    {
      v73 = objc_opt_class();
      *buf = 138543362;
      v131 = v73;
      v74 = v73;
      _os_log_impl(&dword_26D2C7000, generatedLogger13, OS_LOG_TYPE_ERROR, "%{public}@: unexpected nil instance of property imageCollectionEntryMap", buf, 0xCu);
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v75 = +[TFLogConfiguration defaultConfiguration];
    generatedLogger14 = [v75 generatedLogger];
    if (os_log_type_enabled(generatedLogger14, OS_LOG_TYPE_ERROR))
    {
      v77 = objc_opt_class();
      v78 = v77;
      v79 = objc_opt_class();
      v80 = v79;
      v81 = objc_opt_class();
      *buf = 138543874;
      v131 = v77;
      v132 = 2114;
      v133 = v79;
      v134 = 2114;
      v135 = v81;
      v82 = v81;
      _os_log_impl(&dword_26D2C7000, generatedLogger14, OS_LOG_TYPE_ERROR, "%{public}@: unexpected type of type %{public}@ (expected %{public}@) for property imageCollectionEntryMap", buf, 0x20u);
    }
  }

  v83 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger15 = [v83 generatedLogger];
  if (os_log_type_enabled(generatedLogger15, OS_LOG_TYPE_DEFAULT))
  {
    v85 = objc_opt_class();
    *buf = 138543362;
    v131 = v85;
    v86 = v85;
    _os_log_impl(&dword_26D2C7000, generatedLogger15, OS_LOG_TYPE_DEFAULT, "%{public}@: fetching description of property imageCollectionEntryMap", buf, 0xCu);
  }

  v125 = [imageCollectionEntryMap description];

  dirtyGroupIdentifiers = [(TFFeedbackDataContainer *)self dirtyGroupIdentifiers];
  if (!dirtyGroupIdentifiers)
  {
    v88 = +[TFLogConfiguration defaultConfiguration];
    generatedLogger16 = [v88 generatedLogger];
    if (os_log_type_enabled(generatedLogger16, OS_LOG_TYPE_ERROR))
    {
      v90 = objc_opt_class();
      *buf = 138543362;
      v131 = v90;
      v91 = v90;
      _os_log_impl(&dword_26D2C7000, generatedLogger16, OS_LOG_TYPE_ERROR, "%{public}@: unexpected nil instance of property dirtyGroupIdentifiers", buf, 0xCu);
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v92 = +[TFLogConfiguration defaultConfiguration];
    generatedLogger17 = [v92 generatedLogger];
    if (os_log_type_enabled(generatedLogger17, OS_LOG_TYPE_ERROR))
    {
      v94 = objc_opt_class();
      v95 = v94;
      v96 = objc_opt_class();
      v97 = v96;
      v98 = objc_opt_class();
      *buf = 138543874;
      v131 = v94;
      v132 = 2114;
      v133 = v96;
      v134 = 2114;
      v135 = v98;
      v99 = v98;
      _os_log_impl(&dword_26D2C7000, generatedLogger17, OS_LOG_TYPE_ERROR, "%{public}@: unexpected type of type %{public}@ (expected %{public}@) for property dirtyGroupIdentifiers", buf, 0x20u);
    }
  }

  v100 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger18 = [v100 generatedLogger];
  if (os_log_type_enabled(generatedLogger18, OS_LOG_TYPE_DEFAULT))
  {
    v102 = objc_opt_class();
    *buf = 138543362;
    v131 = v102;
    v103 = v102;
    _os_log_impl(&dword_26D2C7000, generatedLogger18, OS_LOG_TYPE_DEFAULT, "%{public}@: fetching description of property dirtyGroupIdentifiers", buf, 0xCu);
  }

  v104 = [dirtyGroupIdentifiers description];

  dirtyEntryIdentifiers = [(TFFeedbackDataContainer *)self dirtyEntryIdentifiers];
  if (!dirtyEntryIdentifiers)
  {
    v106 = +[TFLogConfiguration defaultConfiguration];
    generatedLogger19 = [v106 generatedLogger];
    if (os_log_type_enabled(generatedLogger19, OS_LOG_TYPE_ERROR))
    {
      v108 = objc_opt_class();
      *buf = 138543362;
      v131 = v108;
      v109 = v108;
      _os_log_impl(&dword_26D2C7000, generatedLogger19, OS_LOG_TYPE_ERROR, "%{public}@: unexpected nil instance of property dirtyEntryIdentifiers", buf, 0xCu);
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v110 = +[TFLogConfiguration defaultConfiguration];
    generatedLogger20 = [v110 generatedLogger];
    if (os_log_type_enabled(generatedLogger20, OS_LOG_TYPE_ERROR))
    {
      v112 = objc_opt_class();
      v113 = v112;
      v114 = objc_opt_class();
      v115 = v114;
      v116 = objc_opt_class();
      *buf = 138543874;
      v131 = v112;
      v132 = 2114;
      v133 = v114;
      v134 = 2114;
      v135 = v116;
      v117 = v116;
      _os_log_impl(&dword_26D2C7000, generatedLogger20, OS_LOG_TYPE_ERROR, "%{public}@: unexpected type of type %{public}@ (expected %{public}@) for property dirtyEntryIdentifiers", buf, 0x20u);
    }
  }

  v118 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger21 = [v118 generatedLogger];
  if (os_log_type_enabled(generatedLogger21, OS_LOG_TYPE_DEFAULT))
  {
    v120 = objc_opt_class();
    *buf = 138543362;
    v131 = v120;
    v121 = v120;
    _os_log_impl(&dword_26D2C7000, generatedLogger21, OS_LOG_TYPE_DEFAULT, "%{public}@: fetching description of property dirtyEntryIdentifiers", buf, 0xCu);
  }

  v122 = [dirtyEntryIdentifiers description];

  v122 = [MEMORY[0x277CCACA8] stringWithFormat:@"includedGroupIdentifiers: %@\nloadingEntryIdentifiers: %@\nstringEntryMap: %@\nnumberEntryMap: %@\nimageCollectionEntryMap: %@\ndirtyGroupIdentifiers: %@\ndirtyEntryIdentifiers: %@\n", v129, v128, v127, v126, v125, v104, v122];

  return v122;
}

- (void)prepareInitialValuesForForm:(id)form
{
  formCopy = form;
  accessQueue = [(TFFeedbackDataContainer *)self accessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__TFFeedbackDataContainer_prepareInitialValuesForForm___block_invoke;
  v7[3] = &unk_279D98180;
  v8 = formCopy;
  selfCopy = self;
  v6 = formCopy;
  dispatch_barrier_sync(accessQueue, v7);
}

void __55__TFFeedbackDataContainer_prepareInitialValuesForForm___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) entryGroups];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = ([v7 election] & 0xFFFFFFFFFFFFFFFDLL) == 0;
        v9 = *(a1 + 40);
        v10 = [v7 identifier];
        [v9 setGroupInclusionForIdentifier:v10 toValue:v8];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (BOOL)isGroupWithIdentifierIncluded:(id)included
{
  includedCopy = included;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  accessQueue = [(TFFeedbackDataContainer *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__TFFeedbackDataContainer_isGroupWithIdentifierIncluded___block_invoke;
  block[3] = &unk_279D981F8;
  v9 = includedCopy;
  v10 = &v11;
  block[4] = self;
  v6 = includedCopy;
  dispatch_sync(accessQueue, block);

  LOBYTE(includedCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return includedCopy;
}

void __57__TFFeedbackDataContainer_isGroupWithIdentifierIncluded___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) includedGroupIdentifiers];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];
}

- (BOOL)isEntryWithIdentifierLoading:(id)loading
{
  loadingCopy = loading;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  accessQueue = [(TFFeedbackDataContainer *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__TFFeedbackDataContainer_isEntryWithIdentifierLoading___block_invoke;
  block[3] = &unk_279D981F8;
  v9 = loadingCopy;
  v10 = &v11;
  block[4] = self;
  v6 = loadingCopy;
  dispatch_sync(accessQueue, block);

  LOBYTE(loadingCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return loadingCopy;
}

void __56__TFFeedbackDataContainer_isEntryWithIdentifierLoading___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) loadingEntryIdentifiers];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];
}

- (id)stringForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  accessQueue = [(TFFeedbackDataContainer *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__TFFeedbackDataContainer_stringForIdentifier___block_invoke;
  block[3] = &unk_279D981F8;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(accessQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __47__TFFeedbackDataContainer_stringForIdentifier___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) stringEntryMap];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)numberForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  accessQueue = [(TFFeedbackDataContainer *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__TFFeedbackDataContainer_numberForIdentifier___block_invoke;
  block[3] = &unk_279D981F8;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(accessQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __47__TFFeedbackDataContainer_numberForIdentifier___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) numberEntryMap];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)imageCollectionForIdentifer:(id)identifer
{
  identiferCopy = identifer;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  accessQueue = [(TFFeedbackDataContainer *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__TFFeedbackDataContainer_imageCollectionForIdentifer___block_invoke;
  block[3] = &unk_279D981F8;
  v10 = identiferCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identiferCopy;
  dispatch_sync(accessQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __55__TFFeedbackDataContainer_imageCollectionForIdentifer___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) imageCollectionEntryMap];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)isLoading
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = [(TFFeedbackDataContainer *)self accessQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__TFFeedbackDataContainer_isLoading__block_invoke;
  v5[3] = &unk_279D98220;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __36__TFFeedbackDataContainer_isLoading__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) loadingEntryIdentifiers];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count] != 0;
}

- (void)performBatchUpdates:(id)updates suppressingNotifications:(BOOL)notifications
{
  updatesCopy = updates;
  accessQueue = [(TFFeedbackDataContainer *)self accessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__TFFeedbackDataContainer_performBatchUpdates_suppressingNotifications___block_invoke;
  block[3] = &unk_279D98248;
  block[4] = self;
  v10 = updatesCopy;
  notificationsCopy = notifications;
  v8 = updatesCopy;
  dispatch_barrier_sync(accessQueue, block);
}

void __72__TFFeedbackDataContainer_performBatchUpdates_suppressingNotifications___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _clearDirtyIdentifiers];
  (*(*(a1 + 40) + 16))();
  v2 = +[TFLogConfiguration defaultConfiguration];
  v3 = [v2 generatedLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 name];
    v8 = [*(a1 + 32) debugDescription];
    v9 = 138543874;
    v10 = v4;
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_26D2C7000, v3, OS_LOG_TYPE_DEBUG, "%{public}@: [%@] performBatchUpdates did update:\n%@", &v9, 0x20u);
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    [*(a1 + 32) _notifyObserverOfUpdates];
  }
}

- (void)setGroupInclusionForIdentifier:(id)identifier toValue:(BOOL)value
{
  valueCopy = value;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v9 = identifierCopy;
    includedGroupIdentifiers = [(TFFeedbackDataContainer *)self includedGroupIdentifiers];
    v8 = includedGroupIdentifiers;
    if (valueCopy)
    {
      [includedGroupIdentifiers addObject:v9];
    }

    else
    {
      [includedGroupIdentifiers removeObject:v9];
    }

    [(TFFeedbackDataContainer *)self _markGroupIdentifierDirty:v9];
    identifierCopy = v9;
  }
}

- (void)setEntryLoadingForIdentifier:(id)identifier toValue:(BOOL)value
{
  valueCopy = value;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v9 = identifierCopy;
    loadingEntryIdentifiers = [(TFFeedbackDataContainer *)self loadingEntryIdentifiers];
    v8 = loadingEntryIdentifiers;
    if (valueCopy)
    {
      [loadingEntryIdentifiers addObject:v9];
    }

    else
    {
      [loadingEntryIdentifiers removeObject:v9];
    }

    [(TFFeedbackDataContainer *)self _markEntryIdentifierDirty:v9];
    identifierCopy = v9;
  }
}

- (void)setStringForIdentifier:(id)identifier toValue:(id)value
{
  identifierCopy = identifier;
  valueCopy = value;
  if (identifierCopy)
  {
    if (valueCopy)
    {
      stringEntryMap2 = [valueCopy copy];
      stringEntryMap = [(TFFeedbackDataContainer *)self stringEntryMap];
      [stringEntryMap setObject:stringEntryMap2 forKeyedSubscript:identifierCopy];
    }

    else
    {
      stringEntryMap2 = [(TFFeedbackDataContainer *)self stringEntryMap];
      [stringEntryMap2 removeObjectForKey:identifierCopy];
    }

    [(TFFeedbackDataContainer *)self _markEntryIdentifierDirty:identifierCopy];
  }
}

- (void)setNumberForIdentifier:(id)identifier toValue:(id)value
{
  identifierCopy = identifier;
  valueCopy = value;
  if (identifierCopy)
  {
    if (valueCopy)
    {
      numberEntryMap2 = [valueCopy copy];
      numberEntryMap = [(TFFeedbackDataContainer *)self numberEntryMap];
      [numberEntryMap setObject:numberEntryMap2 forKeyedSubscript:identifierCopy];
    }

    else
    {
      numberEntryMap2 = [(TFFeedbackDataContainer *)self numberEntryMap];
      [numberEntryMap2 removeObjectForKey:identifierCopy];
    }

    [(TFFeedbackDataContainer *)self _markEntryIdentifierDirty:identifierCopy];
  }
}

- (void)setImageCollectionForIdentifier:(id)identifier toValue:(id)value
{
  identifierCopy = identifier;
  valueCopy = value;
  if (identifierCopy)
  {
    if (valueCopy)
    {
      imageCollectionEntryMap2 = [valueCopy copy];
      imageCollectionEntryMap = [(TFFeedbackDataContainer *)self imageCollectionEntryMap];
      [imageCollectionEntryMap setObject:imageCollectionEntryMap2 forKeyedSubscript:identifierCopy];
    }

    else
    {
      imageCollectionEntryMap2 = [(TFFeedbackDataContainer *)self imageCollectionEntryMap];
      [imageCollectionEntryMap2 removeObjectForKey:identifierCopy];
    }

    [(TFFeedbackDataContainer *)self _markEntryIdentifierDirty:identifierCopy];
  }
}

- (void)overwriteWithContentsOfDataContainer:(id)container
{
  v44 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  stringEntryMap = [containerCopy stringEntryMap];
  allKeys = [stringEntryMap allKeys];

  v7 = [allKeys countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        v12 = [containerCopy stringForIdentifier:v11];
        [(TFFeedbackDataContainer *)self setStringForIdentifier:v11 toValue:v12];
      }

      v8 = [allKeys countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v8);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  numberEntryMap = [containerCopy numberEntryMap];
  allKeys2 = [numberEntryMap allKeys];

  v15 = [allKeys2 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v34;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(allKeys2);
        }

        v19 = *(*(&v33 + 1) + 8 * j);
        v20 = [containerCopy numberForIdentifier:v19];
        [(TFFeedbackDataContainer *)self setNumberForIdentifier:v19 toValue:v20];
      }

      v16 = [allKeys2 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v16);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  imageCollectionEntryMap = [containerCopy imageCollectionEntryMap];
  allKeys3 = [imageCollectionEntryMap allKeys];

  v23 = [allKeys3 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v30;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v30 != v25)
        {
          objc_enumerationMutation(allKeys3);
        }

        v27 = *(*(&v29 + 1) + 8 * k);
        v28 = [containerCopy imageCollectionForIdentifer:v27];
        [(TFFeedbackDataContainer *)self setImageCollectionForIdentifier:v27 toValue:v28];
      }

      v24 = [allKeys3 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v24);
  }
}

- (void)_markGroupIdentifierDirty:(id)dirty
{
  dirtyCopy = dirty;
  dirtyGroupIdentifiers = [(TFFeedbackDataContainer *)self dirtyGroupIdentifiers];
  v5 = [dirtyGroupIdentifiers containsObject:dirtyCopy];

  if ((v5 & 1) == 0)
  {
    dirtyGroupIdentifiers2 = [(TFFeedbackDataContainer *)self dirtyGroupIdentifiers];
    [dirtyGroupIdentifiers2 addObject:dirtyCopy];
  }
}

- (void)_markEntryIdentifierDirty:(id)dirty
{
  dirtyCopy = dirty;
  dirtyEntryIdentifiers = [(TFFeedbackDataContainer *)self dirtyEntryIdentifiers];
  v5 = [dirtyEntryIdentifiers containsObject:dirtyCopy];

  if ((v5 & 1) == 0)
  {
    dirtyEntryIdentifiers2 = [(TFFeedbackDataContainer *)self dirtyEntryIdentifiers];
    [dirtyEntryIdentifiers2 addObject:dirtyCopy];
  }
}

- (void)_clearDirtyIdentifiers
{
  dirtyGroupIdentifiers = [(TFFeedbackDataContainer *)self dirtyGroupIdentifiers];
  [dirtyGroupIdentifiers removeAllObjects];

  dirtyEntryIdentifiers = [(TFFeedbackDataContainer *)self dirtyEntryIdentifiers];
  [dirtyEntryIdentifiers removeAllObjects];
}

- (void)_notifyObserverOfUpdates
{
  dirtyGroupIdentifiers = [(TFFeedbackDataContainer *)self dirtyGroupIdentifiers];
  v4 = [dirtyGroupIdentifiers copy];

  dirtyEntryIdentifiers = [(TFFeedbackDataContainer *)self dirtyEntryIdentifiers];
  v6 = [dirtyEntryIdentifiers copy];

  [(TFFeedbackDataContainer *)self _clearDirtyIdentifiers];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__TFFeedbackDataContainer__notifyObserverOfUpdates__block_invoke;
  block[3] = &unk_279D98270;
  block[4] = self;
  v10 = v4;
  v11 = v6;
  v7 = v6;
  v8 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __51__TFFeedbackDataContainer__notifyObserverOfUpdates__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observer];
  [v2 feedbackDataContainer:*(a1 + 32) didUpdateValuesForGroupIdentifiers:*(a1 + 40) entryIdentifiers:*(a1 + 48)];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  accessQueue = [(TFFeedbackDataContainer *)self accessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__TFFeedbackDataContainer_copyWithZone___block_invoke;
  v7[3] = &unk_279D98220;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_barrier_sync(accessQueue, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __40__TFFeedbackDataContainer_copyWithZone___block_invoke(uint64_t a1)
{
  v14 = [TFFeedbackDataContainer alloc];
  v20 = [*(a1 + 32) name];
  v18 = [*(a1 + 32) includedGroupIdentifiers];
  v19 = [v18 mutableCopy];
  v17 = [*(a1 + 32) loadingEntryIdentifiers];
  v2 = [v17 mutableCopy];
  v16 = [*(a1 + 32) stringEntryMap];
  v3 = [v16 mutableCopy];
  v15 = [*(a1 + 32) numberEntryMap];
  v4 = [v15 mutableCopy];
  v5 = [*(a1 + 32) imageCollectionEntryMap];
  v6 = [v5 mutableCopy];
  v7 = [*(a1 + 32) dirtyGroupIdentifiers];
  v8 = [v7 mutableCopy];
  v9 = [*(a1 + 32) dirtyEntryIdentifiers];
  v10 = [v9 mutableCopy];
  v11 = [(TFFeedbackDataContainer *)v14 initWithName:v20 includedGroupIdentifiers:v19 loadingEntryIdentifiers:v2 stringEntryMap:v3 numberEntryMap:v4 imageCollectionEntryMap:v6 dirtyGroupIdentifiers:v8 dirtyEntryIdentifiers:v10];
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

- (TFFeedbackDataContainerObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (id)objectForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(TFFeedbackDataContainer *)self stringForIdentifier:identifierCopy];
  if (!v5)
  {
    v5 = [(TFFeedbackDataContainer *)self numberForIdentifier:identifierCopy];
    if (!v5)
    {
      v5 = [(TFFeedbackDataContainer *)self imageCollectionForIdentifer:identifierCopy];
    }
  }

  v6 = v5;

  return v6;
}

@end