@interface SRAuthorizationStore
+ (SRAuthorizationStore)allSensorsStore;
+ (id)sharedAuthorizationStoreForSensors:(id)sensors;
+ (void)initialize;
- (BOOL)checkAccessForService:(id)service auditToken:(id *)token;
- (BOOL)sensorHasReaderAuthorization:(id)authorization;
- (BOOL)sensorHasReaderAuthorization:(id)authorization forBundleId:(id)id;
- (SRAuthorizationStore)initWithSensors:(id)sensors withAuthorizationTimes:(BOOL)times;
- (id)readerAuthorizationBundleIdValues;
- (uint64_t)updateOverrideOnAuthorizationChangeForService:(int)service withPendingValue:(uint64_t)value forBundleId:;
- (uint64_t)updateToNewAuthorizations:(void *)authorizations fromOldAuthorizations:(void *)oldAuthorizations delegates:;
- (void)addReaderAuthorizationDelegate:(id)delegate;
- (void)addWriterAuthorizationDelegate:(id)delegate;
- (void)dealloc;
- (void)listenForAuthorizationUpdates:(BOOL)updates;
- (void)removeReaderAuthorizationDelegate:(id)delegate;
- (void)removeWriterAuthorizationDelegate:(id)delegate;
- (void)resetAllAuthorizations;
- (void)resetAllAuthorizationsForBundleId:(id)id;
- (void)resetAuthorizationForService:(id)service bundleId:(id)id;
- (void)updateAuthorizations;
@end

@implementation SRAuthorizationStore

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    SRLogAuthorizationStore = os_log_create("com.apple.SensorKit", "AuthorizationStore");
  }
}

- (SRAuthorizationStore)initWithSensors:(id)sensors withAuthorizationTimes:(BOOL)times
{
  block[16] = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(SRTCCStorePassThrough);
  if (self)
  {
    v35.receiver = self;
    v35.super_class = SRAuthorizationStore;
    v8 = [(SRAuthorizationStore *)&v35 init];
    if (v8)
    {
      v9 = v8;
      v8->_tccStore = v7;
      v9->_sensors = sensors;
      v9->_fetchAuthorizationTimes = times;
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      objc_setProperty_nonatomic(v9, v11, weakObjectsHashTable, 16);
      weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      objc_setProperty_nonatomic(v9, v13, weakObjectsHashTable2, 24);
      v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v9->_updateQueue = dispatch_queue_create("SRAuthorizationStore.updateQueue", v14);
      v15 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSSet count](v9->_sensors, "count")}];
      v34 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSSet count](v9->_sensors, "count")}];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v33 = v9;
      sensors = v9->_sensors;
      v17 = [(NSSet *)sensors countByEnumeratingWithState:&v36 objects:block count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v37;
        do
        {
          v20 = 0;
          do
          {
            if (*v37 != v19)
            {
              objc_enumerationMutation(sensors);
            }

            v21 = *(*(&v36 + 1) + 8 * v20);
            v22 = objc_autoreleasePoolPush();
            v23 = [SRSensorDescription sensorDescriptionForSensor:v21];
            if (v23)
            {
              v24 = v23;
              authorizationService = [v23 authorizationService];
              v26 = [v15 objectForKeyedSubscript:authorizationService];
              if (!v26)
              {
                v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
                [v15 setObject:v27 forKeyedSubscript:authorizationService];

                v26 = [v15 objectForKeyedSubscript:authorizationService];
              }

              [v26 addObject:{objc_msgSend(v24, "name")}];
              writerAuthorizationService = [v24 writerAuthorizationService];
              if (writerAuthorizationService)
              {
                [v34 setObject:objc_msgSend(v24 forKeyedSubscript:{"name"), writerAuthorizationService}];
              }
            }

            else
            {
              v29 = SRLogAuthorizationStore;
              if (os_log_type_enabled(SRLogAuthorizationStore, OS_LOG_TYPE_FAULT))
              {
                *buf = 138543362;
                v41 = v21;
                _os_log_fault_impl(&dword_26561F000, v29, OS_LOG_TYPE_FAULT, "No sensor description found for %{public}@", buf, 0xCu);
              }
            }

            objc_autoreleasePoolPop(v22);
            ++v20;
          }

          while (v18 != v20);
          v18 = [(NSSet *)sensors countByEnumeratingWithState:&v36 objects:block count:16];
        }

        while (v18);
      }

      self = v33;
      [(SRAuthorizationStore *)v33 setReaderAuthorizationGroups:v15];

      [(SRAuthorizationStore *)v33 setWriterAuthorizationGroups:v34];
      [(SRAuthorizationStore *)v33 listenForAuthorizationUpdates:1];
      updateQueue = [(SRAuthorizationStore *)v33 updateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__SRAuthorizationStore_startUpdatingAuthorizations__block_invoke;
      block[3] = &unk_279B99C60;
      block[4] = v33;
      dispatch_sync(updateQueue, block);
    }

    else
    {
      self = 0;
    }
  }

  v31 = *MEMORY[0x277D85DE8];
  return self;
}

+ (id)sharedAuthorizationStoreForSensors:(id)sensors
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SRAuthorizationStore_sharedAuthorizationStoreForSensors___block_invoke;
  block[3] = &unk_279B99C60;
  block[4] = sensors;
  if (qword_28001AB18 != -1)
  {
    dispatch_once(&qword_28001AB18, block);
  }

  return _MergedGlobals_1;
}

SRAuthorizationStore *__59__SRAuthorizationStore_sharedAuthorizationStoreForSensors___block_invoke(uint64_t a1)
{
  result = [[SRAuthorizationStore alloc] initWithSensors:*(a1 + 32) withAuthorizationTimes:0];
  _MergedGlobals_1 = result;
  return result;
}

+ (SRAuthorizationStore)allSensorsStore
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = objc_autoreleasePoolPush();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = +[SRSensorsCache defaultCache];
  allSensorDescriptions = [(SRSensorsCache *)v4 allSensorDescriptions];
  v6 = [allSensorDescriptions countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allSensorDescriptions);
        }

        [v2 addObject:{objc_msgSend(*(*(&v13 + 1) + 8 * v9++), "name", v13)}];
      }

      while (v7 != v9);
      v7 = [allSensorDescriptions countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  objc_autoreleasePoolPop(v3);
  v10 = [[SRAuthorizationStore alloc] initWithSensors:v2];

  result = v10;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dealloc
{
  [(SRAuthorizationStore *)self setReaderAuthorizationValues:0];
  [(SRAuthorizationStore *)self setWriterAuthorizationValues:0];
  [(SRAuthorizationStore *)self setReaderLastModifiedAuthorizationTimes:0];
  [(SRAuthorizationStore *)self setUpdateQueue:0];
  objc_setProperty_nonatomic(self, v3, 0, 16);
  objc_setProperty_nonatomic(self, v4, 0, 24);
  [(SRAuthorizationStore *)self listenForAuthorizationUpdates:0];
  objc_setProperty_nonatomic(self, v5, 0, 32);
  [(SRAuthorizationStore *)self setReaderAuthorizationGroups:0];
  [(SRAuthorizationStore *)self setWriterAuthorizationGroups:0];
  v6.receiver = self;
  v6.super_class = SRAuthorizationStore;
  [(SRAuthorizationStore *)&v6 dealloc];
}

- (void)listenForAuthorizationUpdates:(BOOL)updates
{
  v41 = *MEMORY[0x277D85DE8];
  p_notifyToken = &self->_notifyToken;
  notifyToken = self->_notifyToken;
  v7 = SRLogAuthorizationStore;
  v8 = os_log_type_enabled(SRLogAuthorizationStore, OS_LOG_TYPE_INFO);
  if (updates)
  {
    if (notifyToken)
    {
      if (v8)
      {
        LOWORD(buf[0]) = 0;
        v9 = "Asked to listen for TCC updates but we're already listening";
LABEL_36:
        _os_log_impl(&dword_26561F000, v7, OS_LOG_TYPE_INFO, v9, buf, 2u);
      }
    }

    else
    {
      if (v8)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_26561F000, v7, OS_LOG_TYPE_INFO, "Registering for TCC updates", buf, 2u);
      }

      objc_initWeak(buf, self);
      updateQueue = [(SRAuthorizationStore *)self updateQueue];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __54__SRAuthorizationStore_listenForAuthorizationUpdates___block_invoke;
      handler[3] = &unk_279B99CD8;
      objc_copyWeak(&v35, buf);
      v11 = notify_register_dispatch("com.apple.tcc.access.changed", p_notifyToken, updateQueue, handler);
      if (v11)
      {
        v12 = SRLogAuthorizationStore;
        if (os_log_type_enabled(SRLogAuthorizationStore, OS_LOG_TYPE_FAULT))
        {
          *v39 = 67240192;
          v40 = v11;
          _os_log_fault_impl(&dword_26561F000, v12, OS_LOG_TYPE_FAULT, "Failed to register for TCC notifications.  Got status %{public}d", v39, 8u);
        }

        -[SRAuthorizationStore setReaderAuthorizationValues:](self, "setReaderAuthorizationValues:", [MEMORY[0x277CBEAC0] dictionary]);
        -[SRAuthorizationStore setReaderLastModifiedAuthorizationTimes:](self, "setReaderLastModifiedAuthorizationTimes:", [MEMORY[0x277CBEAC0] dictionary]);
        -[SRAuthorizationStore setWriterAuthorizationValues:](self, "setWriterAuthorizationValues:", [MEMORY[0x277CBEAC0] dictionary]);
        readerAuthorizationDelegates = self->_readerAuthorizationDelegates;
        objc_sync_enter(readerAuthorizationDelegates);
        v14 = [(NSHashTable *)self->_readerAuthorizationDelegates copy];
        objc_sync_exit(readerAuthorizationDelegates);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v15 = [v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v15)
        {
          v16 = *v31;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v31 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = *(*(&v30 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                [v18 authorizationStore:self didDetermineInitialAuthorizationValues:{-[SRAuthorizationStore readerAuthorizationValues](self, "readerAuthorizationValues")}];
              }
            }

            v15 = [v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v15);
        }

        writerAuthorizationDelegates = self->_writerAuthorizationDelegates;
        objc_sync_enter(writerAuthorizationDelegates);
        v20 = [(NSHashTable *)self->_writerAuthorizationDelegates copy];
        objc_sync_exit(writerAuthorizationDelegates);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v21 = [v20 countByEnumeratingWithState:&v26 objects:v37 count:16];
        if (v21)
        {
          v22 = *v27;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v27 != v22)
              {
                objc_enumerationMutation(v20);
              }

              v24 = *(*(&v26 + 1) + 8 * j);
              if (objc_opt_respondsToSelector())
              {
                [v24 authorizationStore:self didDetermineInitialAuthorizationValues:{-[SRAuthorizationStore writerAuthorizationValues](self, "writerAuthorizationValues")}];
              }
            }

            v21 = [v20 countByEnumeratingWithState:&v26 objects:v37 count:16];
          }

          while (v21);
        }
      }

      objc_destroyWeak(&v35);
      objc_destroyWeak(buf);
    }
  }

  else if (notifyToken)
  {
    if (v8)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_26561F000, v7, OS_LOG_TYPE_INFO, "Unregistering for TCC updates", buf, 2u);
      notifyToken = *p_notifyToken;
    }

    notify_cancel(notifyToken);
    *p_notifyToken = 0;
  }

  else if (v8)
  {
    LOWORD(buf[0]) = 0;
    v9 = "Asked to stop listen for TCC updates but we are already not listening";
    goto LABEL_36;
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __54__SRAuthorizationStore_listenForAuthorizationUpdates___block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  [(SRAuthorizationStore *)Weak updateAuthorizations];
}

- (void)updateAuthorizations
{
  v174 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    goto LABEL_146;
  }

  dispatch_assert_queue_V2([self updateQueue]);
  v1 = os_transaction_create();
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v2 = _os_activity_create(&dword_26561F000, "Retrieving fresh authorizations from TCC", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v2, &state);
  v3 = SRLogAuthorizationStore;
  if (os_log_type_enabled(SRLogAuthorizationStore, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26561F000, v3, OS_LOG_TYPE_INFO, "Retrieving fresh authorizations from TCC", buf, 2u);
  }

  v98 = v1;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v140[0] = MEMORY[0x277D85DD0];
  v140[1] = 3221225472;
  v141 = __64__SRAuthorizationStore_readerAuthorizationInformationForSensors__block_invoke;
  v142 = &unk_279B99E50;
  v143 = dictionary;
  readerAuthorizationGroups = [self readerAuthorizationGroups];
  v166 = 0u;
  v167 = 0u;
  memset(v165, 0, sizeof(v165));
  v5 = [readerAuthorizationGroups countByEnumeratingWithState:v165 objects:buf count:16];
  v6 = 0x28001A000uLL;
  if (v5)
  {
    v7 = **&v165[16];
    v8 = MEMORY[0x277CBEC28];
    v9 = MEMORY[0x277CBEC38];
    obj = readerAuthorizationGroups;
    v94 = **&v165[16];
    do
    {
      v105 = 0;
      v96 = v5;
      do
      {
        if (**&v165[16] != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*&v165[8] + 8 * v105);
        context = objc_autoreleasePoolPush();
        v110 = [*(self + 32) bundleIdentifiersForService:v10];
        v11 = [*(self + 32) bundleIdentifiersDisabledForService:v10];
        v107 = v11;
        if (v110)
        {
          v12 = v11 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
          v13 = *(v6 + 2824);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *v159 = 138543362;
            v160 = v10;
            _os_log_impl(&dword_26561F000, v13, OS_LOG_TYPE_INFO, "Could not retrieve authorization information for TCC service %{public}@", v159, 0xCu);
          }
        }

        v14 = [*(self + 32) isOverriddenForService:v10];
        v15 = *(v6 + 2824);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v159 = 138543874;
          v160 = v10;
          v161 = 1026;
          v162 = v14;
          v163 = 2114;
          v164 = v110;
          _os_log_impl(&dword_26561F000, v15, OS_LOG_TYPE_DEFAULT, "Authorized Bundle Ids for %{public}@, overridden %{public, BOOL}d, %{public}@", v159, 0x1Cu);
          v15 = *(v6 + 2824);
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v159 = 138543874;
          v160 = v10;
          v161 = 1026;
          v162 = v14;
          v163 = 2114;
          v164 = v107;
          _os_log_impl(&dword_26561F000, v15, OS_LOG_TYPE_DEFAULT, "Deauthorized Bundle Ids for %{public}@, overridden %{public, BOOL}d, %{public}@", v159, 0x1Cu);
        }

        v16 = [obj objectForKeyedSubscript:v10];
        v157 = 0u;
        v158 = 0u;
        memset(v156, 0, sizeof(v156));
        v17 = [v16 countByEnumeratingWithState:v156 objects:v172 count:16];
        if (v17)
        {
          v18 = **&v156[16];
          if (v14)
          {
            v19 = v9;
          }

          else
          {
            v19 = v8;
          }

          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (**&v156[16] != v18)
              {
                objc_enumerationMutation(v16);
              }

              [v141(v140 @"com.apple.sensorkit.dummy-bundle-id")];
            }

            v17 = [v16 countByEnumeratingWithState:v156 objects:v172 count:16];
          }

          while (v17);
        }

        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        v6 = 0x28001A000;
        v21 = [v110 countByEnumeratingWithState:&v136 objects:&v168 count:16];
        if (v21)
        {
          v113 = *v137;
          do
          {
            v22 = 0;
            v117 = v21;
            do
            {
              if (*v137 != v113)
              {
                objc_enumerationMutation(v110);
              }

              v23 = *(*(&v136 + 1) + 8 * v22);
              v132 = 0u;
              v133 = 0u;
              v134 = 0u;
              v135 = 0u;
              v24 = [v16 countByEnumeratingWithState:&v132 objects:&v152 count:16];
              if (v24)
              {
                v25 = *v133;
                do
                {
                  for (j = 0; j != v24; ++j)
                  {
                    if (*v133 != v25)
                    {
                      objc_enumerationMutation(v16);
                    }

                    [v141(v140 v23)];
                  }

                  v24 = [v16 countByEnumeratingWithState:&v132 objects:&v152 count:16];
                }

                while (v24);
              }

              v22 = v22 + 1;
              v6 = 0x28001A000;
            }

            while (v22 != v117);
            v21 = [v110 countByEnumeratingWithState:&v136 objects:&v168 count:16];
          }

          while (v21);
        }

        v130 = 0u;
        v131 = 0u;
        v128 = 0u;
        v129 = 0u;
        v27 = [v107 countByEnumeratingWithState:&v128 objects:&v148 count:16];
        if (v27)
        {
          v114 = *v129;
          do
          {
            v28 = 0;
            v118 = v27;
            do
            {
              if (*v129 != v114)
              {
                objc_enumerationMutation(v107);
              }

              v29 = *(*(&v128 + 1) + 8 * v28);
              v124 = 0u;
              v125 = 0u;
              v126 = 0u;
              v127 = 0u;
              v30 = [v16 countByEnumeratingWithState:&v124 objects:&v144 count:16];
              if (v30)
              {
                v31 = *v125;
                do
                {
                  for (k = 0; k != v30; ++k)
                  {
                    if (*v125 != v31)
                    {
                      objc_enumerationMutation(v16);
                    }

                    [v141(v140 v29)];
                  }

                  v30 = [v16 countByEnumeratingWithState:&v124 objects:&v144 count:16];
                }

                while (v30);
              }

              v28 = v28 + 1;
              v6 = 0x28001A000;
            }

            while (v28 != v118);
            v27 = [v107 countByEnumeratingWithState:&v128 objects:&v148 count:16];
          }

          while (v27);
        }

        objc_autoreleasePoolPop(context);
        v7 = v94;
        ++v105;
      }

      while (v105 != v96);
      v5 = [obj countByEnumeratingWithState:v165 objects:buf count:16];
    }

    while (v5);
  }

  v101 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:{objc_msgSend(self, "readerAuthorizationValues")}];
  [self setReaderAuthorizationValues:dictionary];
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  readerAuthorizationValues = [self readerAuthorizationValues];
  v34 = [readerAuthorizationValues countByEnumeratingWithState:&v168 objects:buf count:16];
  if (v34)
  {
    v119 = readerAuthorizationValues;
    v35 = 0;
    v36 = *v169;
    selfCopy3 = self;
    do
    {
      for (m = 0; m != v34; ++m)
      {
        if (*v169 != v36)
        {
          objc_enumerationMutation(v119);
        }

        v39 = *(*(&v168 + 1) + 8 * m);
        v152 = 0u;
        v153 = 0u;
        v154 = 0u;
        v155 = 0u;
        v40 = [objc_msgSend(selfCopy3 "readerAuthorizationValues")];
        v41 = [v40 countByEnumeratingWithState:&v152 objects:v172 count:16];
        if (v41)
        {
          v42 = *v153;
          while (2)
          {
            for (n = 0; n != v41; ++n)
            {
              if (*v153 != v42)
              {
                objc_enumerationMutation(v40);
              }

              if ([objc_msgSend(objc_msgSend(objc_msgSend(self "readerAuthorizationValues")])
              {
                v35 = 1;
                goto LABEL_74;
              }
            }

            v41 = [v40 countByEnumeratingWithState:&v152 objects:v172 count:16];
            if (v41)
            {
              continue;
            }

            break;
          }

LABEL_74:
          selfCopy3 = self;
        }
      }

      v34 = [v119 countByEnumeratingWithState:&v168 objects:buf count:16];
    }

    while (v34);
  }

  else
  {
    v35 = 0;
    selfCopy3 = self;
  }

  [selfCopy3 setSensorKitActive:v35 & 1];
  selfCopy5 = self;
  if (*(self + 12) != 1)
  {
    goto LABEL_113;
  }

  v45 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  readerAuthorizationValues2 = [self readerAuthorizationValues];
  v47 = [readerAuthorizationValues2 countByEnumeratingWithState:&v152 objects:buf count:16];
  if (!v47)
  {
    goto LABEL_112;
  }

  v95 = *v153;
  v92 = readerAuthorizationValues2;
  do
  {
    v48 = 0;
    v93 = v47;
    do
    {
      if (*v153 != v95)
      {
        objc_enumerationMutation(v92);
      }

      v49 = *(*(&v152 + 1) + 8 * v48);
      contexta = objc_autoreleasePoolPush();
      v50 = [*(self + 32) informationForBundleId:v49];
      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      v149 = 0u;
      v51 = [v50 countByEnumeratingWithState:&v148 objects:v172 count:16];
      v97 = v48;
      if (v51)
      {
        v108 = v50;
        v111 = *v149;
        do
        {
          v115 = v51;
          for (ii = 0; ii != v115; ii = ii + 1)
          {
            if (*v149 != v111)
            {
              objc_enumerationMutation(v50);
            }

            v52 = *(*(&v148 + 1) + 8 * ii);
            v53 = [v52 objectForKeyedSubscript:*MEMORY[0x277D6C0E8]];
            if (!v53)
            {
              v62 = SRLogAuthorizationStore;
              if (!os_log_type_enabled(SRLogAuthorizationStore, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_105;
              }

              *v165 = 138543362;
              *&v165[4] = v52;
              v63 = v62;
              v64 = "Couldn't find a TCC service in the TCC access dictionary %{public}@";
              v65 = 12;
LABEL_108:
              _os_log_error_impl(&dword_26561F000, v63, OS_LOG_TYPE_ERROR, v64, v165, v65);
              goto LABEL_105;
            }

            v54 = [v52 objectForKeyedSubscript:*MEMORY[0x277D6C0E0]];
            if (!v54)
            {
              v66 = SRLogAuthorizationStore;
              if (!os_log_type_enabled(SRLogAuthorizationStore, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_105;
              }

              *v165 = 138543618;
              *&v165[4] = v49;
              *&v165[12] = 2114;
              *&v165[14] = v53;
              v63 = v66;
              v64 = "No last modified date for authorization of bundle %{public}@, service: %{public}@";
              v65 = 22;
              goto LABEL_108;
            }

            if (![v45 objectForKeyedSubscript:v49])
            {
              v55 = objc_alloc_init(MEMORY[0x277CBEB38]);
              [v45 setObject:v55 forKeyedSubscript:v49];
            }

            v146 = 0u;
            v147 = 0u;
            v144 = 0u;
            v145 = 0u;
            v56 = [objc_msgSend(self "readerAuthorizationGroups")];
            v57 = [v56 countByEnumeratingWithState:&v144 objects:&v168 count:16];
            if (v57)
            {
              v58 = *v145;
              do
              {
                for (jj = 0; jj != v57; ++jj)
                {
                  if (*v145 != v58)
                  {
                    objc_enumerationMutation(v56);
                  }

                  v60 = *(*(&v144 + 1) + 8 * jj);
                  v61 = MEMORY[0x277CCABB0];
                  [v54 timeIntervalSinceReferenceDate];
                  [objc_msgSend(v45 objectForKeyedSubscript:{v49), "setObject:forKeyedSubscript:", objc_msgSend(v61, "numberWithDouble:"), v60}];
                }

                v57 = [v56 countByEnumeratingWithState:&v144 objects:&v168 count:16];
              }

              while (v57);
            }

LABEL_105:
            v50 = v108;
          }

          v51 = [v108 countByEnumeratingWithState:&v148 objects:v172 count:16];
        }

        while (v51);
      }

      objc_autoreleasePoolPop(contexta);
      v48 = v97 + 1;
    }

    while (v97 + 1 != v93);
    v47 = [v92 countByEnumeratingWithState:&v152 objects:buf count:16];
  }

  while (v47);
LABEL_112:
  [self setReaderLastModifiedAuthorizationTimes:v45];

  selfCopy5 = self;
LABEL_113:
  v67 = *(selfCopy5 + 16);
  objc_sync_enter(v67);
  v68 = [*(selfCopy5 + 16) copy];
  objc_sync_exit(v67);
  [(SRAuthorizationStore *)selfCopy5 updateToNewAuthorizations:dictionary fromOldAuthorizations:v101 delegates:v68];

  v69 = *(self + 24);
  objc_sync_enter(v69);
  v70 = 0x28001A000uLL;
  obja = [*(self + 24) copy];
  objc_sync_exit(v69);
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  *v165 = MEMORY[0x277D85DD0];
  *&v165[8] = 3221225472;
  *&v165[16] = __64__SRAuthorizationStore_writerAuthorizationInformationForSensors__block_invoke;
  *&v165[24] = &unk_279B99E50;
  *&v166 = dictionary2;
  writerAuthorizationGroups = [self writerAuthorizationGroups];
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v73 = [writerAuthorizationGroups countByEnumeratingWithState:&v152 objects:buf count:16];
  v102 = dictionary2;
  if (v73)
  {
    v109 = *v153;
    v74 = MEMORY[0x277CBEC28];
    v75 = MEMORY[0x277CBEC38];
    v116 = writerAuthorizationGroups;
    do
    {
      v76 = 0;
      v112 = v73;
      do
      {
        if (*v153 != v109)
        {
          objc_enumerationMutation(v116);
        }

        v77 = *(*(&v152 + 1) + 8 * v76);
        v121 = objc_autoreleasePoolPush();
        v78 = [*(self + 32) bundleIdentifiersForService:v77];
        v79 = [*(self + 32) bundleIdentifiersDisabledForService:v77];
        v80 = v79;
        v81 = *(v70 + 2824);
        if (v78)
        {
          v82 = v79 == 0;
        }

        else
        {
          v82 = 1;
        }

        if (v82 && os_log_type_enabled(*(v70 + 2824), OS_LOG_TYPE_INFO))
        {
          *v156 = 138543362;
          *&v156[4] = v77;
          _os_log_impl(&dword_26561F000, v81, OS_LOG_TYPE_INFO, "Could not retrieve authorization information for TCC service %{public}@", v156, 0xCu);
          v81 = *(v70 + 2824);
        }

        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          *v156 = 138543618;
          *&v156[4] = v77;
          *&v156[12] = 2114;
          *&v156[14] = v78;
          _os_log_impl(&dword_26561F000, v81, OS_LOG_TYPE_DEFAULT, "Authorized Bundle Ids for %{public}@, %{public}@", v156, 0x16u);
          v81 = *(v70 + 2824);
        }

        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          *v156 = 138543618;
          *&v156[4] = v77;
          *&v156[12] = 2114;
          *&v156[14] = v80;
          _os_log_impl(&dword_26561F000, v81, OS_LOG_TYPE_DEFAULT, "Deauthorized Bundle Ids for %{public}@, %{public}@", v156, 0x16u);
        }

        v83 = [v116 objectForKeyedSubscript:v77];
        v150 = 0u;
        v151 = 0u;
        v148 = 0u;
        v149 = 0u;
        v84 = [v78 countByEnumeratingWithState:&v148 objects:v172 count:16];
        if (v84)
        {
          v85 = *v149;
          do
          {
            for (kk = 0; kk != v84; ++kk)
            {
              if (*v149 != v85)
              {
                objc_enumerationMutation(v78);
              }

              [(*&v165[16])(v165 *(*(&v148 + 1) + 8 * kk))];
            }

            v84 = [v78 countByEnumeratingWithState:&v148 objects:v172 count:16];
          }

          while (v84);
        }

        v146 = 0u;
        v147 = 0u;
        v144 = 0u;
        v145 = 0u;
        v87 = [v80 countByEnumeratingWithState:&v144 objects:&v168 count:16];
        if (v87)
        {
          v88 = *v145;
          do
          {
            for (mm = 0; mm != v87; ++mm)
            {
              if (*v145 != v88)
              {
                objc_enumerationMutation(v80);
              }

              [(*&v165[16])(v165 *(*(&v144 + 1) + 8 * mm))];
            }

            v87 = [v80 countByEnumeratingWithState:&v144 objects:&v168 count:16];
          }

          while (v87);
        }

        objc_autoreleasePoolPop(v121);
        v70 = 0x28001A000;
        v76 = v76 + 1;
      }

      while (v76 != v112);
      v73 = [v116 countByEnumeratingWithState:&v152 objects:buf count:16];
    }

    while (v73);
  }

  v90 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:{objc_msgSend(self, "writerAuthorizationValues")}];
  [self setWriterAuthorizationValues:v102];
  [(SRAuthorizationStore *)self updateToNewAuthorizations:v102 fromOldAuthorizations:v90 delegates:obja];

  os_activity_scope_leave(&state);
LABEL_146:
  v91 = *MEMORY[0x277D85DE8];
}

- (uint64_t)updateToNewAuthorizations:(void *)authorizations fromOldAuthorizations:(void *)oldAuthorizations delegates:
{
  v78 = *MEMORY[0x277D85DE8];
  if (authorizations)
  {
    authorizationsCopy = authorizations;
    v7 = [MEMORY[0x277CBEB58] setWithArray:{objc_msgSend(authorizations, "allKeys")}];
    [v7 unionSet:{objc_msgSend(MEMORY[0x277CBEB98], "setWithArray:", objc_msgSend(a2, "allKeys"))}];
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = v7;
    result = [v7 countByEnumeratingWithState:&v61 objects:v76 count:16];
    v46 = result;
    if (result)
    {
      v42 = *v62;
      *&v9 = 138543618;
      v40 = v9;
      v44 = a2;
      oldAuthorizationsCopy = oldAuthorizations;
      v43 = authorizationsCopy;
      do
      {
        v10 = 0;
        do
        {
          if (*v62 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v48 = v10;
          v11 = *(*(&v61 + 1) + 8 * v10);
          v12 = [authorizationsCopy objectForKeyedSubscript:{v11, v40}];
          v13 = [a2 objectForKeyedSubscript:v11];
          v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v15 = [v13 countByEnumeratingWithState:&v57 objects:v75 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v58;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v58 != v17)
                {
                  objc_enumerationMutation(v13);
                }

                v19 = *(*(&v57 + 1) + 8 * i);
                v20 = [v13 objectForKeyedSubscript:v19];
                v21 = [v12 objectForKeyedSubscript:v19];
                if ([v20 BOOLValue] && !objc_msgSend(v21, "BOOLValue") || v20 && (objc_msgSend(v20, "BOOLValue") & 1) == 0 && !v21)
                {
                  [v14 addObject:v19];
                }
              }

              v16 = [v13 countByEnumeratingWithState:&v57 objects:v75 count:16];
            }

            while (v16);
          }

          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v22 = [v12 countByEnumeratingWithState:&v53 objects:v74 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v54;
            do
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v54 != v24)
                {
                  objc_enumerationMutation(v12);
                }

                v26 = *(*(&v53 + 1) + 8 * j);
                v27 = [v13 objectForKeyedSubscript:v26];
                if (v27)
                {
                  v28 = v27;
                  if (([objc_msgSend(v12 objectForKeyedSubscript:{v26), "BOOLValue"}] & 1) == 0)
                  {
                    if ([v12 objectForKeyedSubscript:v26])
                    {
                      continue;
                    }
                  }

                  if ([v28 BOOLValue])
                  {
                    continue;
                  }
                }

                [v14 addObject:v26];
              }

              v23 = [v12 countByEnumeratingWithState:&v53 objects:v74 count:16];
            }

            while (v23);
          }

          a2 = v44;
          if ([v14 count])
          {
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v29 = [oldAuthorizationsCopy countByEnumeratingWithState:&v49 objects:v73 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v50;
              do
              {
                for (k = 0; k != v30; ++k)
                {
                  if (*v50 != v31)
                  {
                    objc_enumerationMutation(oldAuthorizationsCopy);
                  }

                  v33 = *(*(&v49 + 1) + 8 * k);
                  if (objc_opt_respondsToSelector())
                  {
                    [v33 authorizationStore:self didUpdateAuthorizationsForBundleId:v11 sensors:v14];
                  }
                }

                v30 = [oldAuthorizationsCopy countByEnumeratingWithState:&v49 objects:v73 count:16];
              }

              while (v30);
            }

            v34 = SRLogAuthorizationStore;
            if (os_log_type_enabled(SRLogAuthorizationStore, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v40;
              v70 = v11;
              v71 = 2114;
              v72 = v14;
              _os_log_impl(&dword_26561F000, v34, OS_LOG_TYPE_DEFAULT, "Authorization Changed for bundle id %{public}@ for sensors %{public}@", buf, 0x16u);
            }
          }

          v10 = v48 + 1;
          authorizationsCopy = v43;
        }

        while (v48 + 1 != v46);
        result = [obj countByEnumeratingWithState:&v61 objects:v76 count:16];
        v46 = result;
      }

      while (result);
    }
  }

  else
  {
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    result = [oldAuthorizations countByEnumeratingWithState:&v65 objects:v77 count:16];
    if (result)
    {
      v35 = result;
      v36 = *v66;
      do
      {
        v37 = 0;
        do
        {
          if (*v66 != v36)
          {
            objc_enumerationMutation(oldAuthorizations);
          }

          v38 = *(*(&v65 + 1) + 8 * v37);
          if (objc_opt_respondsToSelector())
          {
            [v38 authorizationStore:self didDetermineInitialAuthorizationValues:a2];
          }

          ++v37;
        }

        while (v35 != v37);
        result = [oldAuthorizations countByEnumeratingWithState:&v65 objects:v77 count:16];
        v35 = result;
      }

      while (result);
    }
  }

  v39 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)addReaderAuthorizationDelegate:(id)delegate
{
  if (self)
  {
    readerAuthorizationDelegates = self->_readerAuthorizationDelegates;
    objc_sync_enter(readerAuthorizationDelegates);
    v6 = self->_readerAuthorizationDelegates;
  }

  else
  {
    objc_sync_enter(0);
    readerAuthorizationDelegates = 0;
    v6 = 0;
  }

  [(NSHashTable *)v6 addObject:delegate];
  if ([(SRAuthorizationStore *)self readerAuthorizationValues]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate authorizationStore:self didDetermineInitialAuthorizationValues:{-[SRAuthorizationStore readerAuthorizationValues](self, "readerAuthorizationValues")}];
  }

  objc_sync_exit(readerAuthorizationDelegates);
}

- (void)removeReaderAuthorizationDelegate:(id)delegate
{
  if (self)
  {
    readerAuthorizationDelegates = self->_readerAuthorizationDelegates;
    objc_sync_enter(readerAuthorizationDelegates);
    v6 = self->_readerAuthorizationDelegates;
  }

  else
  {
    objc_sync_enter(0);
    readerAuthorizationDelegates = 0;
    v6 = 0;
  }

  [(NSHashTable *)v6 removeObject:delegate];

  objc_sync_exit(readerAuthorizationDelegates);
}

- (void)addWriterAuthorizationDelegate:(id)delegate
{
  if (self)
  {
    writerAuthorizationDelegates = self->_writerAuthorizationDelegates;
    objc_sync_enter(writerAuthorizationDelegates);
    v6 = self->_writerAuthorizationDelegates;
  }

  else
  {
    objc_sync_enter(0);
    writerAuthorizationDelegates = 0;
    v6 = 0;
  }

  [(NSHashTable *)v6 addObject:delegate];
  if ([(SRAuthorizationStore *)self writerAuthorizationValues]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate authorizationStore:self didDetermineInitialAuthorizationValues:{-[SRAuthorizationStore writerAuthorizationValues](self, "writerAuthorizationValues")}];
  }

  objc_sync_exit(writerAuthorizationDelegates);
}

- (void)removeWriterAuthorizationDelegate:(id)delegate
{
  if (self)
  {
    writerAuthorizationDelegates = self->_writerAuthorizationDelegates;
    objc_sync_enter(writerAuthorizationDelegates);
    v6 = self->_writerAuthorizationDelegates;
  }

  else
  {
    objc_sync_enter(0);
    writerAuthorizationDelegates = 0;
    v6 = 0;
  }

  [(NSHashTable *)v6 removeObject:delegate];

  objc_sync_exit(writerAuthorizationDelegates);
}

- (BOOL)sensorHasReaderAuthorization:(id)authorization
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  readerAuthorizationBundleIdValues = [(SRAuthorizationStore *)self readerAuthorizationBundleIdValues];
  v6 = [readerAuthorizationBundleIdValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(readerAuthorizationBundleIdValues);
        }

        if ([(SRAuthorizationStore *)self sensorHasReaderAuthorization:authorization forBundleId:*(*(&v12 + 1) + 8 * v9)])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v6 = [readerAuthorizationBundleIdValues countByEnumeratingWithState:&v12 objects:v16 count:16];
      v7 = v6;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)sensorHasReaderAuthorization:(id)authorization forBundleId:(id)id
{
  v4 = [-[NSDictionary objectForKeyedSubscript:](-[SRAuthorizationStore readerAuthorizationValues](self "readerAuthorizationValues")];

  return [v4 BOOLValue];
}

- (uint64_t)updateOverrideOnAuthorizationChangeForService:(int)service withPendingValue:(uint64_t)value forBundleId:
{
  result = 0;
  v38 = *MEMORY[0x277D85DE8];
  if (!self || (v6 = a2) == 0)
  {
LABEL_29:
    v22 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (!service)
  {
    selfCopy = self;
    readerAuthorizationBundleIdValues = [self readerAuthorizationBundleIdValues];
    v11 = [SRSensorDescription sensorDescriptionsForAuthorizationService:v6];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v12 = [readerAuthorizationBundleIdValues countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (!v12)
    {
      goto LABEL_28;
    }

    v13 = v12;
    v23 = v6;
    v25 = 0;
    v14 = *v33;
    v26 = *v33;
    do
    {
      v15 = 0;
      v27 = v13;
      do
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(readerAuthorizationBundleIdValues);
        }

        v16 = *(*(&v32 + 1) + 8 * v15);
        if (([v16 isEqualToString:value] & 1) == 0)
        {
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v17 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v17)
          {
            v18 = v17;
            valueCopy = value;
            v20 = *v29;
            while (2)
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v29 != v20)
                {
                  objc_enumerationMutation(v11);
                }

                if ([objc_msgSend(objc_msgSend(readerAuthorizationBundleIdValues objectForKeyedSubscript:{v16), "objectForKeyedSubscript:", objc_msgSend(*(*(&v28 + 1) + 8 * i), "name")), "BOOLValue"}])
                {
                  v25 = 1;
                  goto LABEL_23;
                }
              }

              v18 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }

LABEL_23:
            value = valueCopy;
            v14 = v26;
            v13 = v27;
          }
        }

        ++v15;
      }

      while (v15 != v13);
      v13 = [readerAuthorizationBundleIdValues countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v13);
    v6 = v23;
    if (v25)
    {
      result = 1;
    }

    else
    {
LABEL_28:
      result = [selfCopy[4] setOverride:0 forService:v6];
    }

    goto LABEL_29;
  }

  v7 = self[4];
  v8 = *MEMORY[0x277D85DE8];

  return [v7 setOverride:1 forService:a2];
}

- (void)resetAllAuthorizationsForBundleId:(id)id
{
  v26 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(NSDictionary *)[(SRAuthorizationStore *)self readerAuthorizationValues] objectForKeyedSubscript:id];
  v5 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v18;
    *&v6 = 138412546;
    v15 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = [+[SRSensorDescription sensorDescriptionForSensor:](SRSensorDescription sensorDescriptionForSensor:{v10), "authorizationService"}];
        v13 = SRLogAuthorizationStore;
        if (os_log_type_enabled(SRLogAuthorizationStore, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v15;
          idCopy = id;
          v23 = 2112;
          v24 = v12;
          _os_log_impl(&dword_26561F000, v13, OS_LOG_TYPE_DEFAULT, "reset reader authorization for bundle %@ service %@", buf, 0x16u);
        }

        [(SRTCCStore *)self->_tccStore resetService:v12 forBundleId:id, v15];
        [(SRAuthorizationStore *)self updateOverrideOnAuthorizationChangeForService:v12 withPendingValue:0 forBundleId:id];
        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)resetAllAuthorizations
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v17 = __46__SRAuthorizationStore_resetAllAuthorizations__block_invoke;
  v18 = &unk_279B99E08;
  v19 = v3;
  __46__SRAuthorizationStore_resetAllAuthorizations__block_invoke(v16, [(SRAuthorizationStore *)self readerAuthorizationBundleIdValues], &__block_literal_global_3);
  writerAuthorizationValues = [(SRAuthorizationStore *)self writerAuthorizationValues];
  v17(v16, writerAuthorizationValues, &__block_literal_global_26);
  v5 = SRLogAuthorizationStore;
  if (os_log_type_enabled(SRLogAuthorizationStore, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v3;
    _os_log_impl(&dword_26561F000, v5, OS_LOG_TYPE_DEFAULT, "reset authorization for services %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [(SRTCCStore *)self->_tccStore resetService:v10];
        [(SRTCCStore *)self->_tccStore setOverride:0 forService:v10];
      }

      v7 = [v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __46__SRAuthorizationStore_resetAllAuthorizations__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  result = [a2 countByEnumeratingWithState:&v25 objects:v30 count:16];
  v18 = result;
  if (result)
  {
    v17 = *v26;
    do
    {
      v6 = 0;
      do
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(a2);
        }

        v20 = v6;
        v7 = *(*(&v25 + 1) + 8 * v6);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v8 = [a2 objectForKeyedSubscript:{v7, v17}];
        v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v22;
          do
          {
            v12 = 0;
            do
            {
              if (*v22 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v21 + 1) + 8 * v12);
              v14 = objc_autoreleasePoolPush();
              v15 = [SRSensorDescription sensorDescriptionForSensor:v13];
              if (v15)
              {
                [*(a1 + 32) addObject:{(*(a3 + 16))(a3, v15)}];
              }

              objc_autoreleasePoolPop(v14);
              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v10);
        }

        v6 = v20 + 1;
      }

      while (v20 + 1 != v18);
      result = [a2 countByEnumeratingWithState:&v25 objects:v30 count:16];
      v18 = result;
    }

    while (result);
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)resetAuthorizationForService:(id)service bundleId:(id)id
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = SRLogAuthorizationStore;
  if (os_log_type_enabled(SRLogAuthorizationStore, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    serviceCopy = service;
    v11 = 2114;
    idCopy = id;
    _os_log_impl(&dword_26561F000, v7, OS_LOG_TYPE_DEFAULT, "Reset authorization for service %@ and bundle id: %{public}@", &v9, 0x16u);
  }

  [(SRTCCStore *)self->_tccStore resetService:service forBundleId:id];
  [(SRAuthorizationStore *)self updateOverrideOnAuthorizationChangeForService:service withPendingValue:0 forBundleId:id];
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __64__SRAuthorizationStore_readerAuthorizationInformationForSensors__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (!v4)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    [*(a1 + 32) setObject:v4 forKeyedSubscript:a2];
  }

  return v4;
}

uint64_t __64__SRAuthorizationStore_writerAuthorizationInformationForSensors__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (!v4)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    [*(a1 + 32) setObject:v4 forKeyedSubscript:a2];
  }

  return v4;
}

- (id)readerAuthorizationBundleIdValues
{
  v16 = *MEMORY[0x277D85DE8];
  readerAuthorizationValues = [(SRAuthorizationStore *)self readerAuthorizationValues];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSDictionary count](readerAuthorizationValues, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSDictionary *)readerAuthorizationValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(readerAuthorizationValues);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (([v8 isEqualToString:@"com.apple.sensorkit.dummy-bundle-id"] & 1) == 0)
        {
          [v3 setObject:-[NSDictionary objectForKeyedSubscript:](readerAuthorizationValues forKeyedSubscript:{"objectForKeyedSubscript:", v8), v8}];
        }
      }

      v5 = [(NSDictionary *)readerAuthorizationValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  result = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)checkAccessForService:(id)service auditToken:(id *)token
{
  tccStore = self->_tccStore;
  v5 = *&token->var0[4];
  v7[0] = *token->var0;
  v7[1] = v5;
  return [(SRTCCStore *)tccStore checkAccessForService:service auditToken:v7];
}

@end