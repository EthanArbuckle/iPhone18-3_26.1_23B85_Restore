@interface UBStuckServiceRecoveryResult
- (UBStuckServiceRecoveryResult)initWithCoder:(id)coder;
- (UBStuckServiceRecoveryResult)initWithService:(id)service clientName:(id)name;
- (id)debugDescription;
- (id)description;
- (id)headerDescription;
- (void)_recoveryHadEffectiveness:(int64_t)effectiveness;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)recoveryHadEffectiveness:(int64_t)effectiveness;
@end

@implementation UBStuckServiceRecoveryResult

- (UBStuckServiceRecoveryResult)initWithService:(id)service clientName:(id)name
{
  serviceCopy = service;
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = UBStuckServiceRecoveryResult;
  v9 = [(UBStuckServiceRecoveryResult *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_service, service);
    objc_storeStrong(&v10->_clientName, name);
    processesAndThreadsInvolved = v10->_processesAndThreadsInvolved;
    v12 = MEMORY[0x277CBEBF8];
    v10->_processesAndThreadsInvolved = MEMORY[0x277CBEBF8];

    processesBlockedByThisIssueOnly = v10->_processesBlockedByThisIssueOnly;
    v10->_processesBlockedByThisIssueOnly = v12;

    processesBlockedByThisAndOtherIssues = v10->_processesBlockedByThisAndOtherIssues;
    v10->_processesBlockedByThisAndOtherIssues = v12;

    processesBlockedByOtherIssuesOnly = v10->_processesBlockedByOtherIssuesOnly;
    v10->_processesBlockedByOtherIssuesOnly = v12;

    serviceDependencyChain = v10->_serviceDependencyChain;
    v10->_serviceDependencyChain = v12;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  service = self->_service;
  coderCopy = coder;
  [coderCopy encodeObject:service forKey:@"_service"];
  [coderCopy encodeObject:self->_clientName forKey:@"_clientName"];
  [coderCopy encodeObject:self->_serviceProcessName forKey:@"_serviceProcessName"];
  [coderCopy encodeBool:self->_serviceProcessIs3P forKey:@"_serviceProcessIs3P"];
  [coderCopy encodeInteger:self->_recoveryStatus forKey:@"_recoveryStatus"];
  [coderCopy encodeInteger:self->_issueType forKey:@"_issueType"];
  [coderCopy encodeInteger:self->_recoveryConfidence forKey:@"_recoveryConfidence"];
  [coderCopy encodeDouble:@"_timeSinceIssueBegan" forKey:self->_timeSinceIssueBegan];
  [coderCopy encodeObject:self->_processesAndThreadsInvolved forKey:@"_processesAndThreadsInvolved"];
  [coderCopy encodeObject:self->_selectedProcess forKey:@"_selectedProcess"];
  [coderCopy encodeObject:self->_serviceDependencyChain forKey:@"_serviceDependencyChain"];
  [coderCopy encodeInteger:self->_numThreadsBlockedByThisIssue forKey:@"_numThreadsBlockedByThisIssue"];
  [coderCopy encodeInteger:self->_numThreadsBlockedByOtherIssues forKey:@"_numThreadsBlockedByOtherIssues"];
  [coderCopy encodeInteger:self->_numOtherIssues forKey:@"_numOtherIssues"];
  [coderCopy encodeObject:self->_processesBlockedByThisIssueOnly forKey:@"_processesBlockedByThisIssueOnly"];
  [coderCopy encodeObject:self->_processesBlockedByThisAndOtherIssues forKey:@"_processesBlockedByThisAndOtherIssues"];
  [coderCopy encodeObject:self->_processesBlockedByOtherIssuesOnly forKey:@"_processesBlockedByOtherIssuesOnly"];
}

- (UBStuckServiceRecoveryResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = UBStuckServiceRecoveryResult;
  v5 = [(UBStuckServiceRecoveryResult *)&v27 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_service"];
    service = v5->_service;
    v5->_service = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_clientName"];
    clientName = v5->_clientName;
    v5->_clientName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_serviceProcessName"];
    serviceProcessName = v5->_serviceProcessName;
    v5->_serviceProcessName = v10;

    v5->_serviceProcessIs3P = [coderCopy decodeBoolForKey:@"_serviceProcessIs3P"];
    v5->_recoveryStatus = [coderCopy decodeIntegerForKey:@"_recoveryStatus"];
    v5->_issueType = [coderCopy decodeIntegerForKey:@"_issueType"];
    v5->_recoveryConfidence = [coderCopy decodeIntegerForKey:@"_recoveryConfidence"];
    [coderCopy decodeDoubleForKey:@"_timeSinceIssueBegan"];
    v5->_timeSinceIssueBegan = v12;
    v13 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_processesAndThreadsInvolved"];
    processesAndThreadsInvolved = v5->_processesAndThreadsInvolved;
    v5->_processesAndThreadsInvolved = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_selectedProcess"];
    selectedProcess = v5->_selectedProcess;
    v5->_selectedProcess = v15;

    v17 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_serviceDependencyChain"];
    serviceDependencyChain = v5->_serviceDependencyChain;
    v5->_serviceDependencyChain = v17;

    v5->_numThreadsBlockedByThisIssue = [coderCopy decodeIntegerForKey:@"_numThreadsBlockedByThisIssue"];
    v5->_numThreadsBlockedByOtherIssues = [coderCopy decodeIntegerForKey:@"_numThreadsBlockedByOtherIssues"];
    v5->_numOtherIssues = [coderCopy decodeIntegerForKey:@"_numOtherIssues"];
    v19 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_processesBlockedByThisIssueOnly"];
    processesBlockedByThisIssueOnly = v5->_processesBlockedByThisIssueOnly;
    v5->_processesBlockedByThisIssueOnly = v19;

    v21 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_processesBlockedByThisAndOtherIssues"];
    processesBlockedByThisAndOtherIssues = v5->_processesBlockedByThisAndOtherIssues;
    v5->_processesBlockedByThisAndOtherIssues = v21;

    v23 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_processesBlockedByOtherIssuesOnly"];
    processesBlockedByOtherIssuesOnly = v5->_processesBlockedByOtherIssuesOnly;
    v5->_processesBlockedByOtherIssuesOnly = v23;

    v25 = v5;
  }

  return v5;
}

- (void)dealloc
{
  if ([(UBStuckServiceRecoveryResult *)self recoveryStatus]== 4 && ![(UBStuckServiceRecoveryResult *)self effectiveness])
  {
    [(UBStuckServiceRecoveryResult *)self _recoveryHadEffectiveness:0];
  }

  v3.receiver = self;
  v3.super_class = UBStuckServiceRecoveryResult;
  [(UBStuckServiceRecoveryResult *)&v3 dealloc];
}

- (void)recoveryHadEffectiveness:(int64_t)effectiveness
{
  if ([(UBStuckServiceRecoveryResult *)self recoveryStatus]!= 4)
  {
    v7 = *__error();
    v8 = _ublogt();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [UBStuckServiceRecoveryResult recoveryHadEffectiveness:];
    }

    goto LABEL_11;
  }

  if (!effectiveness)
  {
    v5 = *__error();
    v6 = _ublogt();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [UBStuckServiceRecoveryResult recoveryHadEffectiveness:];
    }

    *__error() = v5;
    effectiveness = 3;
  }

  if ([(UBStuckServiceRecoveryResult *)self effectiveness])
  {
    v7 = *__error();
    v8 = _ublogt();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [UBStuckServiceRecoveryResult recoveryHadEffectiveness:];
    }

LABEL_11:

    *__error() = v7;
    return;
  }

  [(UBStuckServiceRecoveryResult *)self _recoveryHadEffectiveness:effectiveness];
}

- (void)_recoveryHadEffectiveness:(int64_t)effectiveness
{
  v240 = *MEMORY[0x277D85DE8];
  [(UBStuckServiceRecoveryResult *)self setEffectiveness:effectiveness];
  v143 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v143 setObject:&unk_288045E50 forKeyedSubscript:@"Error"];
  selfCopy = self;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[UBStuckServiceRecoveryResult recoveryStatus](self, "recoveryStatus")}];
  [v143 setObject:v4 forKeyedSubscript:@"RecoveryStatus"];

  if ([(UBStuckServiceRecoveryResult *)self recoveryStatus]== 1)
  {
    goto LABEL_88;
  }

  clientName = [(UBStuckServiceRecoveryResult *)self clientName];
  [v143 setObject:clientName forKeyedSubscript:@"Client"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[UBStuckServiceRecoveryResult effectiveness](self, "effectiveness")}];
  [v143 setObject:v6 forKeyedSubscript:@"Effectiveness"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[UBStuckServiceRecoveryResult issueType](self, "issueType")}];
  [v143 setObject:v7 forKeyedSubscript:@"IssueType"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[UBStuckServiceRecoveryResult recoveryConfidence](self, "recoveryConfidence")}];
  [v143 setObject:v8 forKeyedSubscript:@"RecoveryConfidence"];

  v9 = MEMORY[0x277CCABB0];
  [(UBStuckServiceRecoveryResult *)self timeSinceIssueBegan];
  v10 = [v9 numberWithDouble:?];
  [v143 setObject:v10 forKeyedSubscript:@"TimeSinceIssueBegan"];

  selfCopy3 = self;
  if ([(UBStuckServiceRecoveryResult *)self serviceProcessIs3P])
  {
    [v143 setObject:@"ThirdPartyProcess" forKeyedSubscript:@"ServiceProcess"];
  }

  else
  {
    serviceProcessName = [(UBStuckServiceRecoveryResult *)self serviceProcessName];
    [v143 setObject:serviceProcessName forKeyedSubscript:@"ServiceProcess"];

    selfCopy3 = self;
  }

  selectedProcess = [(UBStuckServiceRecoveryResult *)selfCopy3 selectedProcess];
  telemetryName = [selectedProcess telemetryName];
  [v143 setObject:telemetryName forKeyedSubscript:@"SelectedProcess"];

  v15 = selfCopy;
  issueType = [(UBStuckServiceRecoveryResult *)selfCopy issueType];
  if (issueType == 2)
  {
    selectedProcess2 = [(UBStuckServiceRecoveryResult *)selfCopy selectedProcess];
    telemetryName2 = [selectedProcess2 telemetryName];
    [v143 setObject:telemetryName2 forKeyedSubscript:@"ProcessesInvolved"];

    [v143 setObject:&unk_288045E68 forKeyedSubscript:@"NumProcessesInvolved"];
    [v143 setObject:&unk_288045E50 forKeyedSubscript:@"NumThreadsInvolved"];
  }

  else
  {
    if (issueType != 1)
    {
      [v143 setObject:&unk_288045E50 forKeyedSubscript:@"NumProcessesInvolved"];
      [v143 setObject:&unk_288045E50 forKeyedSubscript:@"NumThreadsInvolved"];
      goto LABEL_34;
    }

    v154 = objc_alloc_init(MEMORY[0x277CBEB58]);
    processesAndThreadsInvolved = [(UBStuckServiceRecoveryResult *)selfCopy processesAndThreadsInvolved];
    v18 = [processesAndThreadsInvolved count];

    if (v18)
    {
      v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v201 = 0;
      v202 = &v201;
      v203 = 0x2020000000;
      v204 = 0;
      v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v197 = 0;
      v198 = &v197;
      v199 = 0x2020000000;
      v200 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v206 = __Block_byref_object_copy_;
      *v207 = __Block_byref_object_dispose_;
      *&v207[8] = 0;
      v191 = 0;
      v192 = &v191;
      v193 = 0x3032000000;
      v194 = __Block_byref_object_copy_;
      v195 = __Block_byref_object_dispose_;
      v196 = 0;
      v187[0] = MEMORY[0x277D85DD0];
      v187[1] = 3221225472;
      v187[2] = __58__UBStuckServiceRecoveryResult__recoveryHadEffectiveness___block_invoke;
      v187[3] = &unk_279E024C8;
      v189 = &v201;
      v139 = v19;
      v188 = v139;
      v190 = buf;
      v145 = MEMORY[0x27439FAD0](v187);
      v182[0] = MEMORY[0x277D85DD0];
      v182[1] = 3221225472;
      v182[2] = __58__UBStuckServiceRecoveryResult__recoveryHadEffectiveness___block_invoke_2;
      v182[3] = &unk_279E024F0;
      v184 = &v197;
      v137 = v20;
      v183 = v137;
      v185 = buf;
      v186 = &v191;
      v150 = MEMORY[0x27439FAD0](v182);
      v180 = 0u;
      v181 = 0u;
      v178 = 0u;
      v179 = 0u;
      processesAndThreadsInvolved2 = [(UBStuckServiceRecoveryResult *)selfCopy processesAndThreadsInvolved];
      v22 = [processesAndThreadsInvolved2 countByEnumeratingWithState:&v178 objects:v239 count:16];
      v23 = 0;
      if (v22)
      {
        v152 = *v179;
        obj = processesAndThreadsInvolved2;
        do
        {
          oslog = v22;
          for (i = 0; i != oslog; i = (i + 1))
          {
            if (*v179 != v152)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v178 + 1) + 8 * i);
            process = [v25 process];
            v27 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(process, "pid")}];
            [v154 addObject:v27];

            process2 = [v25 process];
            name = [process2 name];

            process3 = [v25 process];
            telemetryName3 = [process3 telemetryName];

            thread = [v25 thread];
            dqLabel = [thread dqLabel];
            v34 = dqLabel;
            if (dqLabel)
            {
              threadName = dqLabel;
            }

            else
            {
              thread2 = [v25 thread];
              threadName = [thread2 threadName];
            }

            if (!(v23 | name) || v23 && name && ([v23 isEqualToString:name] & 1) != 0)
            {
              ++*(v202 + 6);
              v37 = v192[5];
              if (!(v37 | threadName) || v37 && threadName && ([v37 isEqualToString:threadName] & 1) != 0)
              {
                ++*(v198 + 6);
              }

              else
              {
                v150[2]();
                *(v198 + 6) = 1;
                objc_storeStrong(v192 + 5, threadName);
              }
            }

            else
            {
              v145[2]();
              v150[2]();
              *(v198 + 6) = 1;
              *(v202 + 6) = 1;
              v38 = name;

              objc_storeStrong((*&buf[8] + 40), telemetryName3);
              objc_storeStrong(v192 + 5, threadName);
              v23 = v38;
            }
          }

          processesAndThreadsInvolved2 = obj;
          v22 = [obj countByEnumeratingWithState:&v178 objects:v239 count:16];
        }

        while (v22);
      }

      v145[2]();
      v150[2]();
      v39 = [v139 componentsJoinedByString:@" -> "];
      [v143 setObject:v39 forKeyedSubscript:@"ProcessesInvolved"];

      v40 = [v137 componentsJoinedByString:@" -> "];
      [v143 setObject:v40 forKeyedSubscript:@"ThreadsInvolved"];

      _Block_object_dispose(&v191, 8);
      _Block_object_dispose(buf, 8);

      _Block_object_dispose(&v197, 8);
      _Block_object_dispose(&v201, 8);
    }

    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v154, "count")}];
    [v143 setObject:v41 forKeyedSubscript:@"NumProcessesInvolved"];

    v42 = MEMORY[0x277CCABB0];
    processesAndThreadsInvolved3 = [(UBStuckServiceRecoveryResult *)selfCopy processesAndThreadsInvolved];
    v44 = [v42 numberWithUnsignedInteger:{objc_msgSend(processesAndThreadsInvolved3, "count")}];
    [v143 setObject:v44 forKeyedSubscript:@"NumThreadsInvolved"];
  }

  v15 = selfCopy;
LABEL_34:
  v47 = [MEMORY[0x277CCABB0] numberWithInteger:{-[UBStuckServiceRecoveryResult numOtherIssues](v15, "numOtherIssues")}];
  [v143 setObject:v47 forKeyedSubscript:@"NumOtherIssues"];

  v48 = objc_alloc(MEMORY[0x277CBEB18]);
  processesBlockedByThisIssueOnly = [(UBStuckServiceRecoveryResult *)selfCopy processesBlockedByThisIssueOnly];
  v50 = [processesBlockedByThisIssueOnly count];
  processesBlockedByThisAndOtherIssues = [(UBStuckServiceRecoveryResult *)selfCopy processesBlockedByThisAndOtherIssues];
  v52 = [v48 initWithCapacity:{objc_msgSend(processesBlockedByThisAndOtherIssues, "count") + v50}];

  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  processesBlockedByThisIssueOnly2 = [(UBStuckServiceRecoveryResult *)selfCopy processesBlockedByThisIssueOnly];
  v54 = [processesBlockedByThisIssueOnly2 countByEnumeratingWithState:&v174 objects:v238 count:16];
  if (v54)
  {
    v55 = *v175;
    do
    {
      for (j = 0; j != v54; ++j)
      {
        if (*v175 != v55)
        {
          objc_enumerationMutation(processesBlockedByThisIssueOnly2);
        }

        v57 = *(*(&v174 + 1) + 8 * j);
        telemetryName4 = [v57 telemetryName];

        if (telemetryName4)
        {
          telemetryName5 = [v57 telemetryName];
          [v52 addObject:telemetryName5];
        }
      }

      v54 = [processesBlockedByThisIssueOnly2 countByEnumeratingWithState:&v174 objects:v238 count:16];
    }

    while (v54);
  }

  v172 = 0u;
  v173 = 0u;
  v170 = 0u;
  v171 = 0u;
  processesBlockedByThisAndOtherIssues2 = [(UBStuckServiceRecoveryResult *)selfCopy processesBlockedByThisAndOtherIssues];
  v61 = [processesBlockedByThisAndOtherIssues2 countByEnumeratingWithState:&v170 objects:v237 count:16];
  if (v61)
  {
    v62 = *v171;
    do
    {
      for (k = 0; k != v61; ++k)
      {
        if (*v171 != v62)
        {
          objc_enumerationMutation(processesBlockedByThisAndOtherIssues2);
        }

        v64 = *(*(&v170 + 1) + 8 * k);
        telemetryName6 = [v64 telemetryName];

        if (telemetryName6)
        {
          telemetryName7 = [v64 telemetryName];
          [v52 addObject:telemetryName7];
        }
      }

      v61 = [processesBlockedByThisAndOtherIssues2 countByEnumeratingWithState:&v170 objects:v237 count:16];
    }

    while (v61);
  }

  if ([v52 count])
  {
    [v52 sortUsingComparator:&__block_literal_global];
    v67 = [v52 componentsJoinedByString:{@", "}];
    [v143 setObject:v67 forKeyedSubscript:@"ProcessesBlockedByThisIssue"];
  }

  v68 = MEMORY[0x277CCABB0];
  processesBlockedByThisIssueOnly3 = [(UBStuckServiceRecoveryResult *)selfCopy processesBlockedByThisIssueOnly];
  v70 = [processesBlockedByThisIssueOnly3 count];
  processesBlockedByThisAndOtherIssues3 = [(UBStuckServiceRecoveryResult *)selfCopy processesBlockedByThisAndOtherIssues];
  v72 = [v68 numberWithUnsignedInteger:{objc_msgSend(processesBlockedByThisAndOtherIssues3, "count") + v70}];
  [v143 setObject:v72 forKeyedSubscript:@"NumProcessesBlockedByThisIssue"];

  v73 = objc_alloc(MEMORY[0x277CBEB18]);
  processesBlockedByThisIssueOnly4 = [(UBStuckServiceRecoveryResult *)selfCopy processesBlockedByThisIssueOnly];
  v75 = [v73 initWithCapacity:{objc_msgSend(processesBlockedByThisIssueOnly4, "count")}];

  v168 = 0u;
  v169 = 0u;
  v166 = 0u;
  v167 = 0u;
  processesBlockedByThisIssueOnly5 = [(UBStuckServiceRecoveryResult *)selfCopy processesBlockedByThisIssueOnly];
  v77 = [processesBlockedByThisIssueOnly5 countByEnumeratingWithState:&v166 objects:v236 count:16];
  if (v77)
  {
    v78 = *v167;
    do
    {
      for (m = 0; m != v77; ++m)
      {
        if (*v167 != v78)
        {
          objc_enumerationMutation(processesBlockedByThisIssueOnly5);
        }

        v80 = *(*(&v166 + 1) + 8 * m);
        telemetryName8 = [v80 telemetryName];

        if (telemetryName8)
        {
          telemetryName9 = [v80 telemetryName];
          [v75 addObject:telemetryName9];
        }
      }

      v77 = [processesBlockedByThisIssueOnly5 countByEnumeratingWithState:&v166 objects:v236 count:16];
    }

    while (v77);
  }

  if ([v75 count])
  {
    [v75 sortUsingComparator:&__block_literal_global_340];
    v83 = [v75 componentsJoinedByString:{@", "}];
    [v143 setObject:v83 forKeyedSubscript:@"ProcessesBlockedByThisIssueOnly"];
  }

  v84 = MEMORY[0x277CCABB0];
  processesBlockedByThisIssueOnly6 = [(UBStuckServiceRecoveryResult *)selfCopy processesBlockedByThisIssueOnly];
  v86 = [v84 numberWithUnsignedInteger:{objc_msgSend(processesBlockedByThisIssueOnly6, "count")}];
  [v143 setObject:v86 forKeyedSubscript:@"NumProcessesBlockedByThisIssueOnly"];

  v87 = [MEMORY[0x277CCABB0] numberWithInteger:{-[UBStuckServiceRecoveryResult numThreadsBlockedByThisIssue](selfCopy, "numThreadsBlockedByThisIssue")}];
  [v143 setObject:v87 forKeyedSubscript:@"NumThreadsBlockedByThisIssue"];

  v88 = objc_alloc(MEMORY[0x277CBEB18]);
  processesBlockedByThisAndOtherIssues4 = [(UBStuckServiceRecoveryResult *)selfCopy processesBlockedByThisAndOtherIssues];
  v90 = [v88 initWithCapacity:{objc_msgSend(processesBlockedByThisAndOtherIssues4, "count")}];

  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  processesBlockedByThisAndOtherIssues5 = [(UBStuckServiceRecoveryResult *)selfCopy processesBlockedByThisAndOtherIssues];
  v92 = [processesBlockedByThisAndOtherIssues5 countByEnumeratingWithState:&v162 objects:v235 count:16];
  if (v92)
  {
    v93 = *v163;
    do
    {
      for (n = 0; n != v92; ++n)
      {
        if (*v163 != v93)
        {
          objc_enumerationMutation(processesBlockedByThisAndOtherIssues5);
        }

        v95 = *(*(&v162 + 1) + 8 * n);
        telemetryName10 = [v95 telemetryName];

        if (telemetryName10)
        {
          telemetryName11 = [v95 telemetryName];
          [v90 addObject:telemetryName11];
        }
      }

      v92 = [processesBlockedByThisAndOtherIssues5 countByEnumeratingWithState:&v162 objects:v235 count:16];
    }

    while (v92);
  }

  if ([v90 count])
  {
    [v90 sortUsingComparator:&__block_literal_global_351];
    v98 = [v90 componentsJoinedByString:{@", "}];
    [v143 setObject:v98 forKeyedSubscript:@"ProcessesBlockedByThisAndOtherIssues"];
  }

  v99 = MEMORY[0x277CCABB0];
  processesBlockedByThisAndOtherIssues6 = [(UBStuckServiceRecoveryResult *)selfCopy processesBlockedByThisAndOtherIssues];
  v101 = [v99 numberWithUnsignedInteger:{objc_msgSend(processesBlockedByThisAndOtherIssues6, "count")}];
  [v143 setObject:v101 forKeyedSubscript:@"NumProcessesBlockedByThisAndOtherIssues"];

  v102 = objc_alloc(MEMORY[0x277CBEB18]);
  processesBlockedByOtherIssuesOnly = [(UBStuckServiceRecoveryResult *)selfCopy processesBlockedByOtherIssuesOnly];
  v104 = [v102 initWithCapacity:{objc_msgSend(processesBlockedByOtherIssuesOnly, "count")}];

  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  processesBlockedByOtherIssuesOnly2 = [(UBStuckServiceRecoveryResult *)selfCopy processesBlockedByOtherIssuesOnly];
  v106 = [processesBlockedByOtherIssuesOnly2 countByEnumeratingWithState:&v158 objects:v234 count:16];
  if (v106)
  {
    v107 = *v159;
    do
    {
      for (ii = 0; ii != v106; ++ii)
      {
        if (*v159 != v107)
        {
          objc_enumerationMutation(processesBlockedByOtherIssuesOnly2);
        }

        v109 = *(*(&v158 + 1) + 8 * ii);
        telemetryName12 = [v109 telemetryName];

        if (telemetryName12)
        {
          telemetryName13 = [v109 telemetryName];
          [v104 addObject:telemetryName13];
        }
      }

      v106 = [processesBlockedByOtherIssuesOnly2 countByEnumeratingWithState:&v158 objects:v234 count:16];
    }

    while (v106);
  }

  if ([v104 count])
  {
    [v104 sortUsingComparator:&__block_literal_global_359];
    v112 = [v104 componentsJoinedByString:{@", "}];
    [v143 setObject:v112 forKeyedSubscript:@"ProcessesBlockedByOtherIssuesOnly"];
  }

  v113 = MEMORY[0x277CCABB0];
  processesBlockedByOtherIssuesOnly3 = [(UBStuckServiceRecoveryResult *)selfCopy processesBlockedByOtherIssuesOnly];
  v115 = [v113 numberWithUnsignedInteger:{objc_msgSend(processesBlockedByOtherIssuesOnly3, "count")}];
  [v143 setObject:v115 forKeyedSubscript:@"NumProcessesBlockedByOtherIssuesOnly"];

  v116 = [MEMORY[0x277CCABB0] numberWithInteger:{-[UBStuckServiceRecoveryResult numThreadsBlockedByOtherIssues](selfCopy, "numThreadsBlockedByOtherIssues")}];
  [v143 setObject:v116 forKeyedSubscript:@"NumThreadsBlockedByOtherIssues"];

LABEL_88:
  v155 = *__error();
  osloga = _ublogt();
  if (os_log_type_enabled(osloga, OS_LOG_TYPE_DEFAULT))
  {
    v142 = [v143 objectForKeyedSubscript:@"Client"];
    v153 = [v143 objectForKeyedSubscript:@"Effectiveness"];
    v140 = UBRecoveryEffectivenessCopyDescription([v153 integerValue]);
    v151 = [v143 objectForKeyedSubscript:@"RecoveryStatus"];
    v138 = UBRecoveryStatusCopyDescription([v151 integerValue]);
    v149 = [v143 objectForKeyedSubscript:@"IssueType"];
    v132 = UBIssueTypeCopyDescription([v149 integerValue]);
    obja = [v143 objectForKeyedSubscript:@"RecoveryConfidence"];
    v131 = UBRecoveryConfidenceCopyDescription([obja integerValue]);
    v146 = [v143 objectForKeyedSubscript:@"TimeSinceIssueBegan"];
    [v146 doubleValue];
    v118 = v117;
    v136 = [v143 objectForKeyedSubscript:@"ServiceProcess"];
    v135 = [v143 objectForKeyedSubscript:@"SelectedProcess"];
    v134 = [v143 objectForKeyedSubscript:@"ProcessesInvolved"];
    v133 = [v143 objectForKeyedSubscript:@"ThreadsInvolved"];
    v144 = [v143 objectForKeyedSubscript:@"NumThreadsInvolved"];
    longValue = [v144 longValue];
    v119 = [v143 objectForKeyedSubscript:@"NumThreadsBlockedByThisIssue"];
    longValue2 = [v119 longValue];
    v121 = [v143 objectForKeyedSubscript:@"NumThreadsBlockedByOtherIssues"];
    longValue3 = [v121 longValue];
    v123 = [v143 objectForKeyedSubscript:@"NumOtherIssues"];
    longValue4 = [v123 longValue];
    v125 = [v143 objectForKeyedSubscript:@"ProcessesBlockedByThisIssue"];
    v126 = [v143 objectForKeyedSubscript:@"ProcessesBlockedByThisIssueOnly"];
    v127 = [v143 objectForKeyedSubscript:@"ProcessesBlockedByThisAndOtherIssues"];
    v128 = [v143 objectForKeyedSubscript:@"ProcessesBlockedByOtherIssuesOnly"];
    *buf = 138547714;
    *&buf[4] = v142;
    *&buf[12] = 2114;
    *&buf[14] = v140;
    *&buf[22] = 2114;
    v206 = v138;
    *v207 = 2114;
    *&v207[2] = v132;
    *&v207[10] = 2114;
    *&v207[12] = v131;
    v208 = 2048;
    v209 = v118;
    v210 = 2114;
    v211 = v136;
    v212 = 2114;
    v213 = v135;
    v214 = 2114;
    v215 = v134;
    v216 = 2114;
    v217 = v133;
    v218 = 2048;
    v219 = longValue;
    v220 = 2048;
    v221 = longValue2;
    v222 = 2048;
    v223 = longValue3;
    v224 = 2048;
    v225 = longValue4;
    v226 = 2114;
    v227 = v125;
    v228 = 2114;
    v229 = v126;
    v230 = 2114;
    v231 = v127;
    v232 = 2114;
    v233 = v128;
    _os_log_impl(&dword_27038C000, osloga, OS_LOG_TYPE_DEFAULT, "Emitting recovery effectiveness telemetry\nClient:%{public}@\nEffectiveness:%{public}@\nRecoveryStatus:%{public}@\nIssueType:%{public}@\nRecoveryConfidence:%{public}@\nTimeSinceIssueBegan:%.0fs\nServiceProcess:%{public}@\nSelectedProcess:%{public}@\nProcessesInvolved:%{public}@\nThreadsInvolved:%{public}@\nNumThreadsInvolved:%ld\nNumThreadsBlockedByThisIssue:%ld\nNumThreadsBlockedByOtherIssues:%ld\nNumOtherIssues:%ld\nProcessesBlockedByThisIssue:%{public}@\nProcessesBlockedByThisIssueOnly:%{public}@\nProcessesBlockedByThisAndOtherIssues:%{public}@\nProcessesBlockedByOtherIssuesOnly:%{public}@", buf, 0xB6u);
  }

  *__error() = v155;
  AnalyticsSendEvent();

  v129 = *MEMORY[0x277D85DE8];
}

void __58__UBStuckServiceRecoveryResult__recoveryHadEffectiveness___block_invoke(void *a1)
{
  v2 = *(*(a1[5] + 8) + 24);
  if (v2 < 2)
  {
    if (v2 == 1)
    {
      v6 = a1[4];
      if (*(*(a1[6] + 8) + 40))
      {
        v7 = *(*(a1[6] + 8) + 40);
      }

      else
      {
        v7 = @"UNKNOWN";
      }

      [v6 addObject:v7];
    }
  }

  else
  {
    v3 = a1[4];
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    v5 = *(*(a1[6] + 8) + 40);
    if (!v5)
    {
      v5 = @"UNKNOWN";
    }

    v8 = [v4 initWithFormat:@"%dx %@", *(*(a1[5] + 8) + 24), v5];
    [v3 addObject:v8];
  }
}

void __58__UBStuckServiceRecoveryResult__recoveryHadEffectiveness___block_invoke_2(void *a1)
{
  v2 = *(*(a1[5] + 8) + 24);
  if (v2 < 2)
  {
    if (v2 != 1)
    {
      return;
    }

    v3 = a1[4];
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v9 = *(*(a1[6] + 8) + 40);
    if (!v9)
    {
      v9 = @"UNKNOWN";
    }

    v10 = *(*(a1[7] + 8) + 40);
    if (!v10)
    {
      v10 = @"unknown";
    }

    v7 = [v8 initWithFormat:@"%@ [%@]", v9, v10, v11];
  }

  else
  {
    v3 = a1[4];
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    v5 = *(*(a1[6] + 8) + 40);
    if (!v5)
    {
      v5 = @"UNKNOWN";
    }

    v6 = *(*(a1[7] + 8) + 40);
    if (!v6)
    {
      v6 = @"unknown";
    }

    v7 = [v4 initWithFormat:@"%dx %@ [%@]", *(*(a1[5] + 8) + 24), v5, v6];
  }

  v12 = v7;
  [v3 addObject:?];
}

- (id)headerDescription
{
  v145 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"Monitored service:   "];
  service = [(UBStuckServiceRecoveryResult *)self service];
  v5 = [service pid];

  if (v5 < 0)
  {
    [v3 appendString:@"Any process"];
  }

  else
  {
    serviceProcessName = [(UBStuckServiceRecoveryResult *)self serviceProcessName];
    v7 = serviceProcessName;
    if (serviceProcessName)
    {
      v8 = _UBCopySanitizedString(serviceProcessName, 4, &stru_288044E50);
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = @"Unknown";
    }

    service2 = [(UBStuckServiceRecoveryResult *)self service];
    [v3 appendFormat:@"%@ [%d]", v9, objc_msgSend(service2, "pid")];

    service3 = [(UBStuckServiceRecoveryResult *)self service];
    threadID = [service3 threadID];

    if (threadID)
    {
      service4 = [(UBStuckServiceRecoveryResult *)self service];
      [v3 appendFormat:@" thread %llu", objc_msgSend(service4, "threadID")];
    }
  }

  service5 = [(UBStuckServiceRecoveryResult *)self service];
  [service5 timeElapsed];
  v16 = v15;

  if (v16 > 0.0)
  {
    service6 = [(UBStuckServiceRecoveryResult *)self service];
    [service6 timeElapsed];
    v19 = UBStringForNumberWithSignificantDigits(v18);
    [v3 appendFormat:@" stuck for %@s", v19];
  }

  [v3 appendString:@"\n"];
  clientName = [(UBStuckServiceRecoveryResult *)self clientName];
  [v3 appendFormat:@"Monitoring process:  %@\n", clientName];

  v21 = UBRecoveryStatusCopyDescription([(UBStuckServiceRecoveryResult *)self recoveryStatus]);
  [v3 appendFormat:@"Recovery status:     %@\n", v21];

  if ([(UBStuckServiceRecoveryResult *)self recoveryStatus]!= 1)
  {
    v22 = UBIssueTypeCopyDescription([(UBStuckServiceRecoveryResult *)self issueType]);
    [v3 appendFormat:@"Issue type:          %@\n", v22];

    v23 = UBRecoveryConfidenceCopyDescription([(UBStuckServiceRecoveryResult *)self recoveryConfidence]);
    [v3 appendFormat:@"Recovery confidence: %@\n", v23];

    serviceDependencyChain = [(UBStuckServiceRecoveryResult *)self serviceDependencyChain];
    v25 = __49__UBStuckServiceRecoveryResult_headerDescription__block_invoke(serviceDependencyChain, serviceDependencyChain);
    v26 = [v25 componentsJoinedByString:@" -> "];
    [v3 appendFormat:@"Dependency chain:    %@\n", v26];

    processesAndThreadsInvolved = [(UBStuckServiceRecoveryResult *)self processesAndThreadsInvolved];
    v28 = [processesAndThreadsInvolved count];

    if (v28)
    {
      issueType = [(UBStuckServiceRecoveryResult *)self issueType];
      if (issueType == 2)
      {
        processesAndThreadsInvolved2 = [(UBStuckServiceRecoveryResult *)self processesAndThreadsInvolved];
        [v3 appendFormat:@"Threads stuck:         %lu threads stuck", objc_msgSend(processesAndThreadsInvolved2, "count")];
        goto LABEL_19;
      }

      if (issueType == 1)
      {
        processesAndThreadsInvolved3 = [(UBStuckServiceRecoveryResult *)self processesAndThreadsInvolved];
        processesAndThreadsInvolved2 = __49__UBStuckServiceRecoveryResult_headerDescription__block_invoke(processesAndThreadsInvolved3, processesAndThreadsInvolved3);

        v32 = [processesAndThreadsInvolved2 componentsJoinedByString:@" -> "];
        firstObject = [processesAndThreadsInvolved2 firstObject];
        [v3 appendFormat:@"Deadlock:            %@ -> %@\n", v32, firstObject];

LABEL_19:
      }
    }

    [(UBStuckServiceRecoveryResult *)self timeSinceIssueBegan];
    v35 = UBStringForNumberWithSignificantDigits(v34);
    [v3 appendFormat:@"Time since issue began: %@s", v35];

    service7 = [(UBStuckServiceRecoveryResult *)self service];
    [service7 timeElapsed];
    v38 = v37;
    [(UBStuckServiceRecoveryResult *)self timeSinceIssueBegan];
    v40 = v39;

    if (v38 >= v40)
    {
      service8 = [(UBStuckServiceRecoveryResult *)self service];
      [service8 timeElapsed];
      v42 = v45;
      [(UBStuckServiceRecoveryResult *)self timeSinceIssueBegan];
    }

    else
    {
      [(UBStuckServiceRecoveryResult *)self timeSinceIssueBegan];
      v42 = v41;
      service8 = [(UBStuckServiceRecoveryResult *)self service];
      [service8 timeElapsed];
    }

    v46 = UBStringForNumberWithSignificantDigits(v42 - v44);
    [v3 appendFormat:@" (%@s before service became stuck)\n", v46];

    selectedProcess = [(UBStuckServiceRecoveryResult *)self selectedProcess];

    if (selectedProcess)
    {
      recoveryStatus = [(UBStuckServiceRecoveryResult *)self recoveryStatus];
      selectedProcess2 = [(UBStuckServiceRecoveryResult *)self selectedProcess];
      name = [selectedProcess2 name];
      v51 = name;
      if (recoveryStatus == 4)
      {
        v52 = @"Unblock terminated process: %@ [%d]\n";
      }

      else
      {
        v52 = @"Unblock selected process (not terminated): %@ [%d]\n";
      }

      if (name)
      {
        v53 = _UBCopySanitizedString(name, 4, &stru_288044E50);
      }

      else
      {
        v53 = 0;
      }

      if (v53)
      {
        v54 = v53;
      }

      else
      {
        v54 = @"Unknown";
      }

      selectedProcess3 = [(UBStuckServiceRecoveryResult *)self selectedProcess];
      [v3 appendFormat:v52, v54, objc_msgSend(selectedProcess3, "pid")];
    }

    selfCopy = self;
    v120 = v3;
    if ([(UBStuckServiceRecoveryResult *)self numOtherIssues])
    {
      [v3 appendFormat:@"Number of other issues: %ld\n", -[UBStuckServiceRecoveryResult numOtherIssues](self, "numOtherIssues")];
      v56 = objc_alloc(MEMORY[0x277CBEB18]);
      processesBlockedByThisIssueOnly = [(UBStuckServiceRecoveryResult *)self processesBlockedByThisIssueOnly];
      v58 = [v56 initWithCapacity:{objc_msgSend(processesBlockedByThisIssueOnly, "count")}];

      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      obj = [(UBStuckServiceRecoveryResult *)self processesBlockedByThisIssueOnly];
      v59 = [obj countByEnumeratingWithState:&v133 objects:v143 count:16];
      if (v59)
      {
        v60 = v59;
        v61 = *v134;
        do
        {
          for (i = 0; i != v60; ++i)
          {
            if (*v134 != v61)
            {
              objc_enumerationMutation(obj);
            }

            v63 = *(*(&v133 + 1) + 8 * i);
            v64 = objc_alloc(MEMORY[0x277CCACA8]);
            name2 = [v63 name];
            v66 = name2;
            if (name2)
            {
              v67 = _UBCopySanitizedString(name2, 4, &stru_288044E50);
            }

            else
            {
              v67 = 0;
            }

            if (v67)
            {
              v68 = v67;
            }

            else
            {
              v68 = @"Unknown";
            }

            v69 = [v64 initWithFormat:@"%@ [%d]", v68, objc_msgSend(v63, "pid")];
            [v58 addObject:v69];
          }

          v60 = [obj countByEnumeratingWithState:&v133 objects:v143 count:16];
        }

        while (v60);
      }

      if ([v58 count])
      {
        v70 = [v58 componentsJoinedByString:{@", "}];
        [v120 appendFormat:@"Processes blocked by this issue only:       %@\n", v70];
      }

      else
      {
        [v120 appendFormat:@"Processes blocked by this issue only:       %@\n", @"None"];
      }

      v86 = objc_alloc(MEMORY[0x277CBEB18]);
      processesBlockedByThisAndOtherIssues = [(UBStuckServiceRecoveryResult *)selfCopy processesBlockedByThisAndOtherIssues];
      v88 = [v86 initWithCapacity:{objc_msgSend(processesBlockedByThisAndOtherIssues, "count")}];

      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      objb = [(UBStuckServiceRecoveryResult *)selfCopy processesBlockedByThisAndOtherIssues];
      v89 = [objb countByEnumeratingWithState:&v129 objects:v142 count:16];
      if (v89)
      {
        v90 = v89;
        v91 = *v130;
        do
        {
          for (j = 0; j != v90; ++j)
          {
            if (*v130 != v91)
            {
              objc_enumerationMutation(objb);
            }

            v93 = *(*(&v129 + 1) + 8 * j);
            v94 = objc_alloc(MEMORY[0x277CCACA8]);
            name3 = [v93 name];
            v96 = name3;
            if (name3)
            {
              v97 = _UBCopySanitizedString(name3, 4, &stru_288044E50);
            }

            else
            {
              v97 = 0;
            }

            if (v97)
            {
              v98 = v97;
            }

            else
            {
              v98 = @"Unknown";
            }

            v99 = [v94 initWithFormat:@"%@ [%d]", v98, objc_msgSend(v93, "pid")];
            [v88 addObject:v99];
          }

          v90 = [objb countByEnumeratingWithState:&v129 objects:v142 count:16];
        }

        while (v90);
      }

      if ([v88 count])
      {
        v100 = [v88 componentsJoinedByString:{@", "}];
        v101 = v120;
        [v120 appendFormat:@"Processes blocked by this and other issues: %@\n", v100];
      }

      else
      {
        v101 = v120;
        [v120 appendFormat:@"Processes blocked by this and other issues: %@\n", @"None"];
      }

      [v101 appendFormat:@"Number of threads blocked by this issue:    %ld\n", -[UBStuckServiceRecoveryResult numThreadsBlockedByThisIssue](selfCopy, "numThreadsBlockedByThisIssue")];
      v102 = objc_alloc(MEMORY[0x277CBEB18]);
      processesBlockedByOtherIssuesOnly = [(UBStuckServiceRecoveryResult *)selfCopy processesBlockedByOtherIssuesOnly];
      v104 = [v102 initWithCapacity:{objc_msgSend(processesBlockedByOtherIssuesOnly, "count")}];

      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      objc = [(UBStuckServiceRecoveryResult *)selfCopy processesBlockedByOtherIssuesOnly];
      v105 = [objc countByEnumeratingWithState:&v125 objects:v141 count:16];
      if (v105)
      {
        v106 = v105;
        v107 = *v126;
        do
        {
          for (k = 0; k != v106; ++k)
          {
            if (*v126 != v107)
            {
              objc_enumerationMutation(objc);
            }

            v109 = *(*(&v125 + 1) + 8 * k);
            v110 = objc_alloc(MEMORY[0x277CCACA8]);
            name4 = [v109 name];
            v112 = name4;
            if (name4)
            {
              v113 = _UBCopySanitizedString(name4, 4, &stru_288044E50);
            }

            else
            {
              v113 = 0;
            }

            if (v113)
            {
              v114 = v113;
            }

            else
            {
              v114 = @"Unknown";
            }

            v115 = [v110 initWithFormat:@"%@ [%d]", v114, objc_msgSend(v109, "pid")];
            [v104 addObject:v115];
          }

          v106 = [objc countByEnumeratingWithState:&v125 objects:v141 count:16];
        }

        while (v106);
      }

      if ([v104 count])
      {
        v116 = [v104 componentsJoinedByString:{@", "}];
        v3 = v120;
        [v120 appendFormat:@"Processes blocked by other issues only:     %@\n", v116];
      }

      else
      {
        v3 = v120;
        [v120 appendFormat:@"Processes blocked by other issues only:     %@\n", @"None"];
      }

      [v3 appendFormat:@"Number of threads blocked by other issues:  %ld\n", -[UBStuckServiceRecoveryResult numThreadsBlockedByOtherIssues](selfCopy, "numThreadsBlockedByOtherIssues")];
    }

    else
    {
      v71 = objc_alloc(MEMORY[0x277CBEB18]);
      processesBlockedByThisAndOtherIssues2 = [(UBStuckServiceRecoveryResult *)self processesBlockedByThisAndOtherIssues];
      v73 = [v71 initWithCapacity:{objc_msgSend(processesBlockedByThisAndOtherIssues2, "count")}];

      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      obja = [(UBStuckServiceRecoveryResult *)self processesBlockedByThisIssueOnly];
      v74 = [obja countByEnumeratingWithState:&v137 objects:v144 count:16];
      if (v74)
      {
        v75 = v74;
        v76 = *v138;
        do
        {
          for (m = 0; m != v75; ++m)
          {
            if (*v138 != v76)
            {
              objc_enumerationMutation(obja);
            }

            v78 = *(*(&v137 + 1) + 8 * m);
            v79 = objc_alloc(MEMORY[0x277CCACA8]);
            name5 = [v78 name];
            v81 = name5;
            if (name5)
            {
              v82 = _UBCopySanitizedString(name5, 4, &stru_288044E50);
            }

            else
            {
              v82 = 0;
            }

            if (v82)
            {
              v83 = v82;
            }

            else
            {
              v83 = @"Unknown";
            }

            v84 = [v79 initWithFormat:@"%@ [%d]", v83, objc_msgSend(v78, "pid")];
            [v73 addObject:v84];
          }

          v75 = [obja countByEnumeratingWithState:&v137 objects:v144 count:16];
        }

        while (v75);
      }

      if ([v73 count])
      {
        v85 = [v73 componentsJoinedByString:{@", "}];
        v3 = v120;
        [v120 appendFormat:@"Processes blocked by this issue: %@\n", v85];
      }

      else
      {
        v3 = v120;
        [v120 appendFormat:@"Processes blocked by this issue: %@\n", @"None"];
      }

      [v3 appendFormat:@"Number of threads blocked by this issue:    %ld\n", -[UBStuckServiceRecoveryResult numThreadsBlockedByThisIssue](selfCopy, "numThreadsBlockedByThisIssue")];
    }
  }

  v117 = *MEMORY[0x277D85DE8];

  return v3;
}

id __49__UBStuckServiceRecoveryResult_headerDescription__block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v2;
  v21 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v21)
  {
    v19 = *v23;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v22 + 1) + 8 * i);
        v5 = [v4 process];
        v6 = [v4 thread];
        v7 = objc_alloc(MEMORY[0x277CCACA8]);
        v8 = [v5 telemetryName];
        v9 = v8;
        if (v8)
        {
          v10 = _UBCopySanitizedString(v8, 4, &stru_288044E50);
        }

        else
        {
          v10 = 0;
        }

        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = @"Unknown";
        }

        v12 = [v6 dqLabel];
        v13 = v12;
        if (!v12)
        {
          v13 = [v6 threadName];
          v18 = v13;
        }

        v14 = [v7 initWithFormat:@"%@ [%@] (%d:%llu)", v11, v13, objc_msgSend(v5, "pid"), objc_msgSend(v6, "tid")];
        if (!v12)
        {
        }

        [v20 addObject:v14];
      }

      v21 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v21);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  ClassName = object_getClassName(self);
  v5 = [(UBStuckServiceRecoveryResult *)self pid];
  threadID = [(UBStuckServiceRecoveryResult *)self threadID];
  service = [(UBStuckServiceRecoveryResult *)self service];
  [service timeElapsed];
  v9 = v8;
  service2 = [(UBStuckServiceRecoveryResult *)self service];
  incidentUUID = [service2 incidentUUID];
  v12 = UBRecoveryStatusCopyDescription([(UBStuckServiceRecoveryResult *)self recoveryStatus]);
  v13 = UBIssueTypeCopyDescription([(UBStuckServiceRecoveryResult *)self issueType]);
  v14 = UBRecoveryConfidenceCopyDescription([(UBStuckServiceRecoveryResult *)self recoveryConfidence]);
  v15 = [v3 initWithFormat:@"%s for pid:%d tid:%llu timeElapsed:%.1f incidentUUID:%@ recoveryStatus:%@ issueType:%@ recoveryConfidence:%@", ClassName, v5, threadID, v9, incidentUUID, v12, v13, v14];

  return v15;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(UBStuckServiceRecoveryResult *)self description];
  v5 = [v3 initWithFormat:@"<%p %@>", self, v4];

  return v5;
}

- (void)recoveryHadEffectiveness:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_27038C000, v0, v1, "Client reporting effectiveness %ld, despite us not doing anything: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)recoveryHadEffectiveness:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_27038C000, v0, v1, "recovery:hadEffectiveness: called again with effectiveness %ld, for %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end