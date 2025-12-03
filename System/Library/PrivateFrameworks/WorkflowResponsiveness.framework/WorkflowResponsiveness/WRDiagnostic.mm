@interface WRDiagnostic
+ (id)diagnosticsForWorkflowName:(void *)name signpostName:(void *)signpostName diagnosticDicts:(int)dicts diagnosticsEnabled:(int)enabled checkForOverrides:(uint64_t *)overrides error:;
+ (id)diagnosticsWithDict:(void *)dict backupName:(uint64_t *)name error:;
- (BOOL)hasAnySpindumpReports;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)encodedDict;
- (id)initWithDict:(void *)dict backupName:(uint64_t *)name error:;
- (id)isValidForSignpost;
- (id)isValidForWorkflow;
- (id)validate;
- (uint64_t)applyDict:(uint64_t *)dict error:;
- (unint64_t)hash;
@end

@implementation WRDiagnostic

- (id)encodedDict
{
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  name = [(WRDiagnostic *)self name];
  v5 = [v3 initWithObjectsAndKeys:{name, @"name", 0}];

  if ([(WRDiagnostic *)self hasTriggerThresholdCount])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[WRDiagnostic triggerThresholdCount](self, "triggerThresholdCount")}];
    [v5 setObject:v6 forKeyedSubscript:@"trigger_threshold_count"];
  }

  if ([(WRDiagnostic *)self hasTriggerThresholdDurationUnion])
  {
    v7 = MEMORY[0x277CCABB0];
    [(WRDiagnostic *)self triggerThresholdDurationUnion];
    v8 = [v7 numberWithDouble:?];
    [v5 setObject:v8 forKeyedSubscript:@"trigger_threshold_duration_union"];
  }

  if ([(WRDiagnostic *)self hasTriggerThresholdDurationSum])
  {
    v9 = MEMORY[0x277CCABB0];
    [(WRDiagnostic *)self triggerThresholdDurationSum];
    v10 = [v9 numberWithDouble:?];
    [v5 setObject:v10 forKeyedSubscript:@"trigger_threshold_duration_sum"];
  }

  if ([(WRDiagnostic *)self hasTriggerThresholdDurationSingle])
  {
    v11 = MEMORY[0x277CCABB0];
    [(WRDiagnostic *)self triggerThresholdDurationSingle];
    v12 = [v11 numberWithDouble:?];
    [v5 setObject:v12 forKeyedSubscript:@"trigger_threshold_duration_single"];
  }

  if ([(WRDiagnostic *)self triggerEventTimeout])
  {
    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"trigger_event_timeout"];
  }

  if ([(WRDiagnostic *)self gatherTailspin])
  {
    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"gather_tailspin"];
  }

  if ([(WRDiagnostic *)self tailspinIncludeOSLogs])
  {
    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"option_tailspin_includes_oslogs"];
  }

  if ([(WRDiagnostic *)self reportSpindumpForThisThread])
  {
    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"report_spindump_this_thread"];
  }

  reportSpindumpForThreadWithName = [(WRDiagnostic *)self reportSpindumpForThreadWithName];

  if (reportSpindumpForThreadWithName)
  {
    reportSpindumpForThreadWithName2 = [(WRDiagnostic *)self reportSpindumpForThreadWithName];
    [v5 setObject:reportSpindumpForThreadWithName2 forKeyedSubscript:@"report_spindump_thread_name"];
  }

  if ([(WRDiagnostic *)self reportSpindumpForMainThread])
  {
    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"report_spindump_main_thread"];
  }

  if ([(WRDiagnostic *)self reportSpindumpForThisDispatchQueue])
  {
    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"report_spindump_this_dispatchqueue"];
  }

  reportSpindumpForDispatchQueueWithLabel = [(WRDiagnostic *)self reportSpindumpForDispatchQueueWithLabel];

  if (reportSpindumpForDispatchQueueWithLabel)
  {
    reportSpindumpForDispatchQueueWithLabel2 = [(WRDiagnostic *)self reportSpindumpForDispatchQueueWithLabel];
    [v5 setObject:reportSpindumpForDispatchQueueWithLabel2 forKeyedSubscript:@"report_spindump_dispatchqueue_label"];
  }

  reportOtherSignpostWithName = [(WRDiagnostic *)self reportOtherSignpostWithName];

  if (reportOtherSignpostWithName)
  {
    reportOtherSignpostWithName2 = [(WRDiagnostic *)self reportOtherSignpostWithName];
    [v5 setObject:reportOtherSignpostWithName2 forKeyedSubscript:@"option_report_other_signpost"];
  }

  reportProcessesWithName = [(WRDiagnostic *)self reportProcessesWithName];

  if (reportProcessesWithName)
  {
    reportProcessesWithName2 = [(WRDiagnostic *)self reportProcessesWithName];
    [v5 setObject:reportProcessesWithName2 forKeyedSubscript:@"option_report_other_processes"];
  }

  if ([(WRDiagnostic *)self reportOmittingNetworkBoundIntervals])
  {
    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"option_report_omit_network_bound_intervals"];
  }

  v21 = [v5 copy];

  return v21;
}

- (BOOL)hasAnySpindumpReports
{
  if ([(WRDiagnostic *)self reportSpindumpForThisThread])
  {
    return 1;
  }

  reportSpindumpForThreadWithName = [(WRDiagnostic *)self reportSpindumpForThreadWithName];
  if (reportSpindumpForThreadWithName || [(WRDiagnostic *)self reportSpindumpForMainThread]|| [(WRDiagnostic *)self reportSpindumpForThisDispatchQueue])
  {
    v3 = 1;
  }

  else
  {
    reportSpindumpForDispatchQueueWithLabel = [(WRDiagnostic *)self reportSpindumpForDispatchQueueWithLabel];
    v3 = reportSpindumpForDispatchQueueWithLabel != 0;
  }

  return v3;
}

+ (id)diagnosticsForWorkflowName:(void *)name signpostName:(void *)signpostName diagnosticDicts:(int)dicts diagnosticsEnabled:(int)enabled checkForOverrides:(uint64_t *)overrides error:
{
  v168 = *MEMORY[0x277D85DE8];
  v140 = a2;
  nameCopy = name;
  signpostNameCopy = signpostName;
  objc_opt_self();
  v155 = 0;
  if (overrides)
  {
    *overrides = 0;
  }

  else
  {
    overrides = &v155;
  }

  if ([signpostNameCopy count] == 1)
  {
    v14 = v140;
    if (nameCopy)
    {
      v14 = nameCopy;
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v17 = signpostNameCopy;
  v18 = [v17 countByEnumeratingWithState:&v151 objects:v167 count:16];
  v138 = v15;
  v139 = v16;
  v137 = v17;
  if (v18)
  {
    v19 = v18;
    v20 = 0x279EE3000uLL;
    v21 = *v152;
    v134 = *v152;
    do
    {
      v22 = 0;
      do
      {
        if (*v152 != v21)
        {
          v23 = v22;
          objc_enumerationMutation(v17);
          v22 = v23;
        }

        v136 = v22;
        v24 = [(WRDiagnostic *)*(v20 + 104) diagnosticsWithDict:v15 backupName:overrides error:?];
        v25 = v24;
        if (!v24)
        {
          goto LABEL_112;
        }

        if (nameCopy)
        {
          [(WRDiagnostic *)v24 isValidForSignpost];
        }

        else
        {
          [(WRDiagnostic *)v24 isValidForWorkflow];
        }
        v26 = ;
        *overrides = v26;
        if (v26)
        {
          goto LABEL_112;
        }

        v130 = v19;
        dictsCopy = dicts;
        enabledCopy = enabled;
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v27 = v16;
        v28 = [v27 countByEnumeratingWithState:&v147 objects:v166 count:16];
        if (!v28)
        {
          goto LABEL_27;
        }

        v29 = v28;
        v30 = *v148;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v148 != v30)
            {
              objc_enumerationMutation(v27);
            }

            name = [*(*(&v147 + 1) + 8 * i) name];
            name2 = [v25 name];
            v34 = [name isEqualToString:name2];

            if (v34)
            {
              name3 = [v25 name];
              *overrides = WRMakeError(8, @"Multiple diagnostics with name %@", v117, v118, v119, v120, v121, v122, name3);

              v15 = v138;
              v16 = v139;
              v17 = v137;
LABEL_112:

              v123 = 0;
              goto LABEL_118;
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v147 objects:v166 count:16];
        }

        while (v29);
LABEL_27:

        enabled = enabledCopy;
        if (!enabledCopy)
        {
LABEL_36:
          if ((dictsCopy & 1) == 0)
          {

            v25 = 0;
            v38 = 0;
            goto LABEL_43;
          }

          v37 = 0;
          v38 = 0;
          goto LABEL_38;
        }

        name4 = [v25 name];
        if (nameCopy)
        {
          v146 = 0;
          v36 = &v146;
          WROverrideDiagnosticForSignpost(v140, nameCopy, name4, &v146);
        }

        else
        {
          v145 = 0;
          v36 = &v145;
          WROverrideDiagnosticForWorkflow(v140, name4, &v145);
        }
        v37 = ;
        v38 = *v36;

        if (v37)
        {
          v48 = [v25 copy];
          v144 = v38;
          v49 = [(WRDiagnostic *)v48 applyDict:v37 error:&v144];
          v50 = v144;

          if (!v49)
          {
            v128 = v50;
            v51 = nameCopy;
            v52 = *__error();
            v53 = _wrlog();
            v54 = os_log_type_enabled(v53, OS_LOG_TYPE_FAULT);
            if (nameCopy)
            {
              if (v54)
              {
                [v25 name];
                v55 = v126 = v48;
                v56 = [v128 description];
                *buf = 138544386;
                v157 = v140;
                v158 = 2114;
                v159 = nameCopy;
                v160 = 2114;
                v161 = v55;
                v162 = 2114;
                v163 = v56;
                v164 = 2114;
                v165 = v37;
                v57 = v53;
                v58 = "%{public}@: %{public}@: diagnostic %{public}@: invalid override dict: %{public}@\n%{public}@";
                v59 = 52;
                goto LABEL_68;
              }
            }

            else if (v54)
            {
              [v25 name];
              v55 = v126 = v48;
              v56 = [v128 description];
              *buf = 138544130;
              v157 = v140;
              v158 = 2114;
              v159 = v55;
              v160 = 2114;
              v161 = v56;
              v162 = 2114;
              v163 = v37;
              v57 = v53;
              v58 = "%{public}@: diagnostic %{public}@: invalid override dict: %{public}@\n%{public}@";
              v59 = 42;
LABEL_68:
              _os_log_fault_impl(&dword_2746E5000, v57, OS_LOG_TYPE_FAULT, v58, buf, v59);

              enabled = enabledCopy;
              v48 = v126;
            }

            *__error() = v52;
            v60 = 0;
LABEL_52:
            v38 = v128;
LABEL_53:

            v25 = v60;
LABEL_38:
            v19 = v130;
            if (v25)
            {
              [v27 addObject:v25];
            }

            goto LABEL_44;
          }

          if (nameCopy)
          {
            isValidForSignpost = [(WRDiagnostic *)v48 isValidForSignpost];

            if (!isValidForSignpost)
            {
              v62 = v48;
              v90 = nameCopy;
              v129 = *__error();
              v63 = _wrlog();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
              {
                name5 = [v25 name];
                v65 = [v25 debugDescription];
                v66 = [v62 debugDescription];
                *buf = 138544386;
                v157 = v140;
                v158 = 2114;
                v159 = nameCopy;
                v160 = 2114;
                v161 = name5;
                v162 = 2114;
                v163 = v65;
                v164 = 2114;
                v165 = v66;
                v67 = v63;
                v68 = "%{public}@: %{public}@: diagnostic %{public}@: applied override: %{public}@ -> %{public}@";
                v69 = 52;
LABEL_75:
                _os_log_impl(&dword_2746E5000, v67, OS_LOG_TYPE_INFO, v68, buf, v69);
              }

LABEL_76:

              *__error() = v129;
              v48 = v62;
              v60 = v62;
              v38 = 0;
              enabled = enabledCopy;
              goto LABEL_53;
            }
          }

          else
          {
            isValidForSignpost = [(WRDiagnostic *)v48 isValidForWorkflow];

            if (!isValidForSignpost)
            {
              v62 = v48;
              v129 = *__error();
              v63 = _wrlog();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
              {
                name5 = [v25 name];
                v65 = [v25 debugDescription];
                v66 = [v62 debugDescription];
                *buf = 138544130;
                v157 = v140;
                v158 = 2114;
                v159 = name5;
                v160 = 2114;
                v161 = v65;
                v162 = 2114;
                v163 = v66;
                v67 = v63;
                v68 = "%{public}@: diagnostic %{public}@: applied override: %{public}@ -> %{public}@";
                v69 = 42;
                goto LABEL_75;
              }

              goto LABEL_76;
            }
          }

          v70 = isValidForSignpost;
          domain = [isValidForSignpost domain];
          v128 = v70;
          if (![domain isEqualToString:@"WorkflowResponsivenessError"])
          {

            goto LABEL_70;
          }

          v72 = v48;
          code = [v70 code];

          v74 = code == 3;
          v48 = v72;
          if (!v74)
          {
LABEL_70:
            v82 = *__error();
            v83 = _wrlog();
            v84 = os_log_type_enabled(v83, OS_LOG_TYPE_FAULT);
            if (nameCopy)
            {
              if (v84)
              {
                [v25 name];
                v85 = v127 = v48;
                v86 = [v128 description];
                *buf = 138544386;
                v157 = v140;
                v158 = 2114;
                v159 = nameCopy;
                v160 = 2114;
                v161 = v85;
                v162 = 2114;
                v163 = v86;
                v164 = 2114;
                v165 = v37;
                v87 = v83;
                v88 = "%{public}@: %{public}@: diagnostic %{public}@: invalid override dict: %{public}@\n%{public}@";
                v89 = 52;
                goto LABEL_84;
              }
            }

            else if (v84)
            {
              [v25 name];
              v85 = v127 = v48;
              v86 = [v128 description];
              *buf = 138544130;
              v157 = v140;
              v158 = 2114;
              v159 = v85;
              v160 = 2114;
              v161 = v86;
              v162 = 2114;
              v163 = v37;
              v87 = v83;
              v88 = "%{public}@: diagnostic %{public}@: invalid override dict: %{public}@\n%{public}@";
              v89 = 42;
LABEL_84:
              _os_log_fault_impl(&dword_2746E5000, v87, OS_LOG_TYPE_FAULT, v88, buf, v89);

              v48 = v127;
            }

            v60 = 0;
            *__error() = v82;
            goto LABEL_52;
          }

          v75 = *__error();
          v76 = _wrlog();
          v77 = os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT);
          if (nameCopy)
          {
            if (v77)
            {
              name6 = [v25 name];
              *buf = 138543874;
              v157 = v140;
              v158 = 2114;
              v159 = nameCopy;
              v160 = 2114;
              v161 = name6;
              v79 = v76;
              v80 = "%{public}@: %{public}@: diagnostic %{public}@: disabled via override";
              v81 = 32;
              goto LABEL_81;
            }
          }

          else if (v77)
          {
            name6 = [v25 name];
            *buf = 138543618;
            v157 = v140;
            v158 = 2114;
            v159 = name6;
            v79 = v76;
            v80 = "%{public}@: diagnostic %{public}@: disabled via override";
            v81 = 22;
LABEL_81:
            _os_log_impl(&dword_2746E5000, v79, OS_LOG_TYPE_DEFAULT, v80, buf, v81);
          }

          v60 = 0;
          *__error() = v75;
          enabled = enabledCopy;
          v48 = v72;
          goto LABEL_52;
        }

        if (!v38)
        {
          goto LABEL_36;
        }

        v39 = nameCopy;
        v40 = *__error();
        v41 = _wrlog();
        v42 = os_log_type_enabled(v41, OS_LOG_TYPE_FAULT);
        if (nameCopy)
        {
          if (v42)
          {
            name7 = [v25 name];
            v44 = [v38 description];
            *buf = 138544130;
            v157 = v140;
            v158 = 2114;
            v159 = nameCopy;
            v160 = 2114;
            v161 = name7;
            v162 = 2114;
            v163 = v44;
            v45 = v41;
            v46 = "%{public}@: %{public}@: diagnostic %{public}@: invalid override settings: %{public}@";
            v47 = 42;
            goto LABEL_55;
          }
        }

        else if (v42)
        {
          name7 = [v25 name];
          v44 = [v38 description];
          *buf = 138543874;
          v157 = v140;
          v158 = 2114;
          v159 = name7;
          v160 = 2114;
          v161 = v44;
          v45 = v41;
          v46 = "%{public}@: diagnostic %{public}@: invalid override settings: %{public}@";
          v47 = 32;
LABEL_55:
          _os_log_fault_impl(&dword_2746E5000, v45, OS_LOG_TYPE_FAULT, v46, buf, v47);

          enabled = enabledCopy;
        }

        *__error() = v40;
        v25 = 0;
LABEL_43:
        v37 = 0;
        v19 = v130;
LABEL_44:

        v22 = v136 + 1;
        v15 = v138;
        v16 = v139;
        v17 = v137;
        dicts = dictsCopy;
        v20 = 0x279EE3000;
        v21 = v134;
      }

      while (v136 + 1 != v19);
      v91 = [v137 countByEnumeratingWithState:&v151 objects:v167 count:16];
      v19 = v91;
    }

    while (v91);
  }

  if (!enabled)
  {
    goto LABEL_114;
  }

  v92 = 1;
  v93 = 0x277CCA000uLL;
  while (1)
  {
    v94 = [objc_alloc(*(v93 + 3240)) initWithFormat:@"%u", v92];
    if (nameCopy)
    {
      v143 = 0;
      v95 = &v143;
      WROverrideDiagnosticForSignpost(v140, nameCopy, v94, &v143);
    }

    else
    {
      v142 = 0;
      v95 = &v142;
      WROverrideDiagnosticForWorkflow(v140, v94, &v142);
    }
    v96 = ;
    v97 = *v95;
    v98 = v97;
    if (!v96)
    {
      break;
    }

    v141 = v97;
    v99 = [WRDiagnostic diagnosticsWithDict:v96 backupName:v94 error:&v141];
    v108 = v141;

    if (!v99)
    {
      v109 = v93;
      v133 = nameCopy;
      v110 = *__error();
      v111 = _wrlog();
      v112 = os_log_type_enabled(v111, OS_LOG_TYPE_FAULT);
      if (nameCopy)
      {
        if (v112)
        {
          v131 = [v108 description];
          *buf = 138544386;
          v157 = v140;
          v158 = 2114;
          v159 = nameCopy;
          v160 = 2114;
          v161 = v94;
          v162 = 2114;
          v163 = v131;
          v164 = 2114;
          v165 = v96;
          v113 = v111;
          v114 = "%{public}@: %{public}@: diagnostic %{public}@: invalid new dict: %{public}@\n%{public}@";
          v115 = 52;
          goto LABEL_110;
        }
      }

      else if (v112)
      {
        v131 = [v108 description];
        *buf = 138544130;
        v157 = v140;
        v158 = 2114;
        v159 = v94;
        v160 = 2114;
        v161 = v131;
        v162 = 2114;
        v163 = v96;
        v113 = v111;
        v114 = "%{public}@: diagnostic %{public}@: invalid new dict: %{public}@\n%{public}@";
        v115 = 42;
LABEL_110:
        _os_log_fault_impl(&dword_2746E5000, v113, OS_LOG_TYPE_FAULT, v114, buf, v115);
      }

      *__error() = v110;
      v93 = v109;
      goto LABEL_98;
    }

    [v139 addObject:v99];
LABEL_98:

    v92 = (v92 + 1);
    if (v92 == 100)
    {
      goto LABEL_114;
    }
  }

  if (v97)
  {
    v99 = nameCopy;
    v100 = *__error();
    v101 = _wrlog();
    v102 = os_log_type_enabled(v101, OS_LOG_TYPE_FAULT);
    if (nameCopy)
    {
      if (v102)
      {
        [v98 description];
        v104 = v103 = v93;
        *buf = 138544130;
        v157 = v140;
        v158 = 2114;
        v159 = nameCopy;
        v160 = 2114;
        v161 = v94;
        v162 = 2114;
        v163 = v104;
        v105 = v101;
        v106 = "%{public}@: %{public}@: diagnostic %{public}@: invalid new settings: %{public}@";
        v107 = 42;
LABEL_106:
        _os_log_fault_impl(&dword_2746E5000, v105, OS_LOG_TYPE_FAULT, v106, buf, v107);

        v93 = v103;
      }
    }

    else if (v102)
    {
      [v98 description];
      v104 = v103 = v93;
      *buf = 138543874;
      v157 = v140;
      v158 = 2114;
      v159 = v94;
      v160 = 2114;
      v161 = v104;
      v105 = v101;
      v106 = "%{public}@: diagnostic %{public}@: invalid new settings: %{public}@";
      v107 = 32;
      goto LABEL_106;
    }

    *__error() = v100;
    v108 = v98;
    goto LABEL_98;
  }

LABEL_114:
  v16 = v139;
  if ([v139 count])
  {
    [v139 sortUsingComparator:&__block_literal_global_3];
    v123 = [v139 copy];
  }

  else
  {
    v123 = 0;
  }

  v17 = v137;
  v15 = v138;
LABEL_118:

  v124 = *MEMORY[0x277D85DE8];

  return v123;
}

uint64_t __115__WRDiagnostic_diagnosticsForWorkflowName_signpostName_diagnosticDicts_diagnosticsEnabled_checkForOverrides_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[WRDiagnostic allocWithZone:?]];
  v5 = [(NSString *)self->_name copy];
  name = v4->_name;
  v4->_name = v5;

  v4->_triggerThresholdDurationSum = self->_triggerThresholdDurationSum;
  v4->_triggerThresholdDurationUnion = self->_triggerThresholdDurationUnion;
  v4->_triggerThresholdDurationSingle = self->_triggerThresholdDurationSingle;
  v4->_triggerThresholdCount = self->_triggerThresholdCount;
  v4->_triggerEventTimeout = self->_triggerEventTimeout;
  v4->_gatherTailspin = self->_gatherTailspin;
  v4->_tailspinIncludeOSLogs = self->_tailspinIncludeOSLogs;
  v4->_reportSpindumpForThisThread = self->_reportSpindumpForThisThread;
  v7 = [(NSString *)self->_reportSpindumpForThreadWithName copy];
  reportSpindumpForThreadWithName = v4->_reportSpindumpForThreadWithName;
  v4->_reportSpindumpForThreadWithName = v7;

  v4->_reportSpindumpForMainThread = self->_reportSpindumpForMainThread;
  v4->_reportSpindumpForThisDispatchQueue = self->_reportSpindumpForThisDispatchQueue;
  v9 = [(NSString *)self->_reportSpindumpForDispatchQueueWithLabel copy];
  reportSpindumpForDispatchQueueWithLabel = v4->_reportSpindumpForDispatchQueueWithLabel;
  v4->_reportSpindumpForDispatchQueueWithLabel = v9;

  v11 = [(NSString *)self->_reportOtherSignpostWithName copy];
  reportOtherSignpostWithName = v4->_reportOtherSignpostWithName;
  v4->_reportOtherSignpostWithName = v11;

  v13 = [(NSString *)self->_reportProcessesWithName copy];
  reportProcessesWithName = v4->_reportProcessesWithName;
  v4->_reportProcessesWithName = v13;

  v4->_reportOmittingNetworkBoundIntervals = self->_reportOmittingNetworkBoundIntervals;
  return v4;
}

- (id)debugDescription
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"name:%@\ntriggerThresholdDurationSum:%f\ntriggerThresholdDurationUnion:%f\ntriggerThresholdDurationSingle:%f\ntriggerThresholdCount:%u\ntriggerEventTimeout:%u\ngatherTailspin:%u\ntailspinIncludeOSLogs:%u\nreportSpindumpForThisThread:%u\nreportSpindumpForThreadWithName:%@\nreportSpindumpForMainThread:%u\nreportSpindumpForThisDispatchQueue:%u\nreportSpindumpForDispatchQueueWithLabel:%@\nreportOtherSignpostWithName:%@\nreportProcessesWithName:%@\nreportOmittingNetworkBoundIntervals:%u\n", self->_name, *&self->_triggerThresholdDurationSum, *&self->_triggerThresholdDurationUnion, *&self->_triggerThresholdDurationSingle, self->_triggerThresholdCount, self->_triggerEventTimeout, self->_gatherTailspin, self->_tailspinIncludeOSLogs, self->_reportSpindumpForThisThread, self->_reportSpindumpForThreadWithName, self->_reportSpindumpForMainThread, self->_reportSpindumpForThisDispatchQueue, self->_reportSpindumpForDispatchQueueWithLabel, self->_reportOtherSignpostWithName, self->_reportProcessesWithName, self->_reportOmittingNetworkBoundIntervals];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v25 = 1;
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v25 = 0;
    goto LABEL_18;
  }

  v7 = equalCopy;
  [(WRDiagnostic *)self triggerThresholdDurationSum];
  v9 = v8;
  [(WRDiagnostic *)v7 triggerThresholdDurationSum];
  if (v9 == v10)
  {
    [(WRDiagnostic *)self triggerThresholdDurationUnion];
    v12 = v11;
    [(WRDiagnostic *)v7 triggerThresholdDurationUnion];
    if (v12 == v13)
    {
      [(WRDiagnostic *)self triggerThresholdDurationSingle];
      v15 = v14;
      [(WRDiagnostic *)v7 triggerThresholdDurationSingle];
      if (v15 == v16)
      {
        triggerThresholdCount = [(WRDiagnostic *)self triggerThresholdCount];
        if (triggerThresholdCount == [(WRDiagnostic *)v7 triggerThresholdCount])
        {
          triggerEventTimeout = [(WRDiagnostic *)self triggerEventTimeout];
          if (triggerEventTimeout == [(WRDiagnostic *)v7 triggerEventTimeout])
          {
            gatherTailspin = [(WRDiagnostic *)self gatherTailspin];
            if (gatherTailspin == [(WRDiagnostic *)v7 gatherTailspin])
            {
              tailspinIncludeOSLogs = [(WRDiagnostic *)self tailspinIncludeOSLogs];
              if (tailspinIncludeOSLogs == [(WRDiagnostic *)v7 tailspinIncludeOSLogs])
              {
                reportSpindumpForThisThread = [(WRDiagnostic *)self reportSpindumpForThisThread];
                if (reportSpindumpForThisThread == [(WRDiagnostic *)v7 reportSpindumpForThisThread])
                {
                  reportSpindumpForMainThread = [(WRDiagnostic *)self reportSpindumpForMainThread];
                  if (reportSpindumpForMainThread == [(WRDiagnostic *)v7 reportSpindumpForMainThread])
                  {
                    reportSpindumpForThisDispatchQueue = [(WRDiagnostic *)self reportSpindumpForThisDispatchQueue];
                    if (reportSpindumpForThisDispatchQueue == [(WRDiagnostic *)v7 reportSpindumpForThisDispatchQueue])
                    {
                      reportOmittingNetworkBoundIntervals = [(WRDiagnostic *)self reportOmittingNetworkBoundIntervals];
                      if (reportOmittingNetworkBoundIntervals == [(WRDiagnostic *)v7 reportOmittingNetworkBoundIntervals])
                      {
                        name = [(WRDiagnostic *)self name];
                        name2 = [(WRDiagnostic *)v7 name];
                        if (![name isEqualToString:name2])
                        {
                          v25 = 0;
LABEL_68:

                          goto LABEL_15;
                        }

                        reportSpindumpForThreadWithName = [(WRDiagnostic *)self reportSpindumpForThreadWithName];
                        if (reportSpindumpForThreadWithName || ([(WRDiagnostic *)v7 reportSpindumpForThreadWithName], (v61 = objc_claimAutoreleasedReturnValue()) != 0))
                        {
                          reportSpindumpForThreadWithName2 = [(WRDiagnostic *)self reportSpindumpForThreadWithName];
                          if (!reportSpindumpForThreadWithName2)
                          {
                            goto LABEL_64;
                          }

                          v3 = reportSpindumpForThreadWithName2;
                          reportSpindumpForThreadWithName3 = [(WRDiagnostic *)v7 reportSpindumpForThreadWithName];
                          if (!reportSpindumpForThreadWithName3)
                          {
LABEL_63:

                            goto LABEL_64;
                          }

                          v4 = reportSpindumpForThreadWithName3;
                          reportSpindumpForThreadWithName4 = [(WRDiagnostic *)self reportSpindumpForThreadWithName];
                          reportSpindumpForThreadWithName5 = [(WRDiagnostic *)v7 reportSpindumpForThreadWithName];
                          v60 = reportSpindumpForThreadWithName4;
                          if (([reportSpindumpForThreadWithName4 isEqualToString:?] & 1) == 0)
                          {
LABEL_62:

                            goto LABEL_63;
                          }

                          v58 = 1;
                        }

                        else
                        {
                          v61 = 0;
                          v58 = 0;
                        }

                        reportSpindumpForDispatchQueueWithLabel = [(WRDiagnostic *)self reportSpindumpForDispatchQueueWithLabel];
                        if (reportSpindumpForDispatchQueueWithLabel || ([(WRDiagnostic *)v7 reportSpindumpForDispatchQueueWithLabel], (v56 = objc_claimAutoreleasedReturnValue()) != 0))
                        {
                          reportSpindumpForDispatchQueueWithLabel2 = [(WRDiagnostic *)self reportSpindumpForDispatchQueueWithLabel];
                          if (!reportSpindumpForDispatchQueueWithLabel2)
                          {
                            v25 = 0;
LABEL_83:
                            if (!reportSpindumpForDispatchQueueWithLabel)
                            {
                            }

                            if (v58)
                            {
                            }

                            goto LABEL_65;
                          }

                          reportSpindumpForDispatchQueueWithLabel3 = [(WRDiagnostic *)v7 reportSpindumpForDispatchQueueWithLabel];
                          if (reportSpindumpForDispatchQueueWithLabel3)
                          {
                            reportSpindumpForDispatchQueueWithLabel4 = [(WRDiagnostic *)self reportSpindumpForDispatchQueueWithLabel];
                            reportSpindumpForDispatchQueueWithLabel5 = [(WRDiagnostic *)v7 reportSpindumpForDispatchQueueWithLabel];
                            v53 = reportSpindumpForDispatchQueueWithLabel4;
                            if ([reportSpindumpForDispatchQueueWithLabel4 isEqualToString:?])
                            {
                              v51 = 1;
                              goto LABEL_39;
                            }
                          }

                          if (!reportSpindumpForDispatchQueueWithLabel)
                          {

                            goto LABEL_61;
                          }

LABEL_60:

LABEL_61:
                          if (v58)
                          {
                            goto LABEL_62;
                          }

LABEL_64:
                          v25 = 0;
LABEL_65:
                          if (!reportSpindumpForThreadWithName)
                          {
                          }

                          goto LABEL_68;
                        }

                        v56 = 0;
                        v51 = 0;
LABEL_39:
                        reportOtherSignpostWithName = [(WRDiagnostic *)self reportOtherSignpostWithName];
                        if (!reportOtherSignpostWithName)
                        {
                          reportOtherSignpostWithName2 = [(WRDiagnostic *)v7 reportOtherSignpostWithName];
                          if (!reportOtherSignpostWithName2)
                          {
                            reportOtherSignpostWithName2 = 0;
                            v44 = 0;
                            goto LABEL_50;
                          }
                        }

                        reportOtherSignpostWithName3 = [(WRDiagnostic *)self reportOtherSignpostWithName];
                        if (!reportOtherSignpostWithName3)
                        {
                          v25 = 0;
                          goto LABEL_77;
                        }

                        reportOtherSignpostWithName4 = [(WRDiagnostic *)v7 reportOtherSignpostWithName];
                        if (reportOtherSignpostWithName4)
                        {
                          reportOtherSignpostWithName5 = [(WRDiagnostic *)self reportOtherSignpostWithName];
                          reportOtherSignpostWithName6 = [(WRDiagnostic *)v7 reportOtherSignpostWithName];
                          v46 = reportOtherSignpostWithName5;
                          if ([reportOtherSignpostWithName5 isEqualToString:?])
                          {
                            v44 = 1;
LABEL_50:
                            reportProcessesWithName = [(WRDiagnostic *)self reportProcessesWithName];
                            if (!reportProcessesWithName)
                            {
                              reportProcessesWithName2 = [(WRDiagnostic *)v7 reportProcessesWithName];
                              if (!reportProcessesWithName2)
                              {
                                reportProcessesWithName2 = 0;
                                v25 = 1;
                                goto LABEL_74;
                              }
                            }

                            reportProcessesWithName3 = [(WRDiagnostic *)self reportProcessesWithName];
                            if (reportProcessesWithName3)
                            {
                              reportProcessesWithName4 = [(WRDiagnostic *)v7 reportProcessesWithName];
                              if (reportProcessesWithName4)
                              {
                                reportProcessesWithName5 = [(WRDiagnostic *)self reportProcessesWithName];
                                reportProcessesWithName6 = [(WRDiagnostic *)v7 reportProcessesWithName];
                                v25 = [reportProcessesWithName5 isEqualToString:reportProcessesWithName6];

                                goto LABEL_71;
                              }
                            }

                            v25 = 0;
LABEL_71:
                            if (reportProcessesWithName)
                            {
                              v38 = reportProcessesWithName;
LABEL_75:

                              if ((v44 & 1) == 0)
                              {
                                if (!reportOtherSignpostWithName)
                                {
                                  v39 = reportOtherSignpostWithName2;
LABEL_81:

                                  if (v51)
                                  {
                                  }

                                  goto LABEL_83;
                                }

LABEL_80:
                                v39 = reportOtherSignpostWithName;
                                goto LABEL_81;
                              }

LABEL_77:
                              if (!reportOtherSignpostWithName)
                              {
                              }

                              goto LABEL_80;
                            }

LABEL_74:
                            v38 = reportProcessesWithName2;
                            goto LABEL_75;
                          }
                        }

                        if (reportOtherSignpostWithName)
                        {
                          v36 = reportOtherSignpostWithName;
                        }

                        else
                        {
                          v36 = reportOtherSignpostWithName2;
                        }

                        if (v51)
                        {
                        }

                        if (!reportSpindumpForDispatchQueueWithLabel)
                        {
                        }

                        goto LABEL_60;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v25 = 0;
LABEL_15:

LABEL_18:
  return v25;
}

- (unint64_t)hash
{
  name = [(WRDiagnostic *)self name];
  v3 = [name hash];

  return v3;
}

- (id)initWithDict:(void *)dict backupName:(uint64_t *)name error:
{
  v7 = a2;
  dictCopy = dict;
  if (!self)
  {
    v25 = 0;
    goto LABEL_13;
  }

  v30 = 0;
  if (name)
  {
    *name = 0;
  }

  else
  {
    name = &v30;
  }

  v29.receiver = self;
  v29.super_class = WRDiagnostic;
  v15 = objc_msgSendSuper2(&v29, sel_init);
  if (!v15)
  {
    WRMakeError(2, @"Unable to init", v9, v10, v11, v12, v13, v14, v28);
LABEL_11:
    *name = v25 = 0;
    goto LABEL_12;
  }

  v16 = WRCheckForBadDiagnosticDict(v7);
  *name = v16;
  if (!v16)
  {
    v17 = [v7 objectForKeyedSubscript:@"name"];
    v18 = v15[3];
    v15[3] = v17;

    if (!v15[3])
    {
      if (*name)
      {
        goto LABEL_9;
      }

      if (!dictCopy)
      {
        WRMakeError(7, @"Mutiple diagnostic dictionaries in array, but no name: %@", v19, v20, v21, v22, v23, v24, v7);
        goto LABEL_11;
      }

      objc_storeStrong(v15 + 3, dict);
    }

    if ([(WRDiagnostic *)v15 applyDict:v7 error:name])
    {
      validate = [(WRDiagnostic *)v15 validate];
      *name = validate;
      if (!validate)
      {
        v25 = v15;
        goto LABEL_12;
      }
    }
  }

LABEL_9:
  v25 = 0;
LABEL_12:

LABEL_13:
  return v25;
}

- (uint64_t)applyDict:(uint64_t *)dict error:
{
  v5 = a2;
  if (self)
  {
    v104 = 0;
    if (dict)
    {
      *dict = 0;
    }

    else
    {
      dict = &v104;
    }

    v6 = @"trigger_threshold_duration_sum";
    v7 = OUTLINED_FUNCTION_0_0();
    v10 = DictGetNumber(v7, v8, v9);
    v11 = v10;
    if (v10)
    {
      [v10 doubleValue];
      if (v18 < 0.0)
      {
        goto LABEL_15;
      }

      *(self + 40) = v18;
    }

    else if (*dict)
    {
      goto LABEL_86;
    }

    v6 = @"trigger_threshold_duration_union";
    v19 = OUTLINED_FUNCTION_0_0();
    v22 = DictGetNumber(v19, v20, v21);
    v11 = v22;
    if (!v22)
    {
      if (*dict)
      {
        goto LABEL_86;
      }

LABEL_13:

      v6 = @"trigger_threshold_duration_single";
      v24 = OUTLINED_FUNCTION_0_0();
      v27 = DictGetNumber(v24, v25, v26);
      v11 = v27;
      if (v27)
      {
        [v27 doubleValue];
        if (v28 < 0.0)
        {
          goto LABEL_15;
        }

        *(self + 32) = v28;
      }

      else if (*dict)
      {
        goto LABEL_86;
      }

      v29 = OUTLINED_FUNCTION_49();
      v32 = DictGetNumber(v29, v30, v31);
      v33 = v32;
      if (v32)
      {
        *(self + 16) = [v32 unsignedIntValue];
      }

      else if (*dict)
      {
        goto LABEL_27;
      }

      v34 = @"trigger_event_timeout";
      v35 = OUTLINED_FUNCTION_0_0();
      v38 = DictGetNumber(v35, v36, v37);
      v11 = v38;
      if (v38)
      {
        if ([v38 intValue] && objc_msgSend(v11, "intValue") != 1)
        {
          goto LABEL_59;
        }

        *(self + 8) = [v11 BOOLValue];
      }

      else if (*dict)
      {
        goto LABEL_86;
      }

      v34 = @"gather_tailspin";
      v39 = OUTLINED_FUNCTION_0_0();
      v42 = DictGetNumber(v39, v40, v41);
      v11 = v42;
      if (v42)
      {
        if ([v42 intValue] && objc_msgSend(v11, "intValue") != 1)
        {
          goto LABEL_59;
        }

        *(self + 9) = [v11 BOOLValue];
      }

      else if (*dict)
      {
        goto LABEL_86;
      }

      v34 = @"option_tailspin_includes_oslogs";
      v43 = OUTLINED_FUNCTION_0_0();
      v46 = DictGetNumber(v43, v44, v45);
      v11 = v46;
      if (v46)
      {
        if ([v46 intValue] && objc_msgSend(v11, "intValue") != 1)
        {
          goto LABEL_59;
        }

        *(self + 10) = [v11 BOOLValue];
      }

      else if (*dict)
      {
        goto LABEL_86;
      }

      v34 = @"report_spindump_this_thread";
      v47 = OUTLINED_FUNCTION_0_0();
      v50 = DictGetNumber(v47, v48, v49);
      v11 = v50;
      if (v50)
      {
        if ([v50 intValue] && objc_msgSend(v11, "intValue") != 1)
        {
          goto LABEL_59;
        }

        *(self + 11) = [v11 BOOLValue];
      }

      else if (*dict)
      {
        goto LABEL_86;
      }

      v51 = OUTLINED_FUNCTION_49();
      v54 = DictGetString(v51, v52, v53);
      v55 = v54;
      if (v54)
      {
        v56 = [v54 length];
        if (v56)
        {
          v56 = v55;
        }

        v57 = *(self + 56);
        *(self + 56) = v56;
      }

      else if (*dict)
      {
        goto LABEL_27;
      }

      v34 = @"report_spindump_main_thread";
      v58 = OUTLINED_FUNCTION_0_0();
      v61 = DictGetNumber(v58, v59, v60);
      v11 = v61;
      if (v61)
      {
        if ([v61 intValue] && objc_msgSend(v11, "intValue") != 1)
        {
          goto LABEL_59;
        }

        *(self + 12) = [v11 BOOLValue];
      }

      else if (*dict)
      {
        goto LABEL_86;
      }

      v34 = @"report_spindump_this_dispatchqueue";
      v62 = OUTLINED_FUNCTION_0_0();
      v65 = DictGetNumber(v62, v63, v64);
      v11 = v65;
      if (!v65)
      {
        if (*dict)
        {
          goto LABEL_86;
        }

        goto LABEL_61;
      }

      if (![v65 intValue] || objc_msgSend(v11, "intValue") == 1)
      {
        *(self + 13) = [v11 BOOLValue];
LABEL_61:

        v72 = OUTLINED_FUNCTION_49();
        v75 = DictGetString(v72, v73, v74);
        v76 = v75;
        if (v75)
        {
          v77 = [v75 length];
          if (v77)
          {
            v77 = v76;
          }

          v78 = *(self + 64);
          *(self + 64) = v77;
        }

        else if (*dict)
        {
          goto LABEL_27;
        }

        v79 = OUTLINED_FUNCTION_49();
        v82 = DictGetString(v79, v80, v81);
        v83 = v82;
        if (v82)
        {
          v84 = [v82 length];
          if (v84)
          {
            v84 = v83;
          }

          v85 = *(self + 72);
          *(self + 72) = v84;

          goto LABEL_69;
        }

        if (!*dict)
        {
LABEL_69:

          v86 = OUTLINED_FUNCTION_49();
          v89 = DictGetString(v86, v87, v88);
          v90 = v89;
          if (v89)
          {
            v91 = [v89 length];
            if (v91)
            {
              v91 = v90;
            }

            v92 = *(self + 80);
            *(self + 80) = v91;

LABEL_73:
            v93 = OUTLINED_FUNCTION_0_0();
            v96 = DictGetNumber(v93, v94, v95);
            v11 = v96;
            if (v96)
            {
              if (![v96 intValue] || objc_msgSend(v11, "intValue") == 1)
              {
                *(self + 14) = [v11 BOOLValue];
LABEL_84:
                self = 1;
                goto LABEL_87;
              }

              [v11 intValue];
              *dict = WRMakeError(8, @"Bad BOOL for %@: %d", v97, v98, v99, v100, v101, v102, @"option_report_omit_network_bound_intervals");
            }

            else if (!*dict)
            {
              goto LABEL_84;
            }

LABEL_86:
            self = 0;
            goto LABEL_87;
          }

          if (!*dict)
          {
            goto LABEL_73;
          }
        }

LABEL_27:
        self = 0;
        goto LABEL_88;
      }

LABEL_59:
      [v11 intValue];
      WRMakeError(8, @"Bad BOOL for %@: %d", v66, v67, v68, v69, v70, v71, v34);
      goto LABEL_16;
    }

    [v22 doubleValue];
    if (v23 >= 0.0)
    {
      *(self + 48) = v23;
      goto LABEL_13;
    }

LABEL_15:
    WRMakeError(8, @"Bad num for %@: %f", v12, v13, v14, v15, v16, v17, v6);
LABEL_16:
    *dict = self = 0;
LABEL_87:
  }

LABEL_88:

  return self;
}

- (id)validate
{
  selfCopy = self;
  if (self)
  {
    reportSpindumpForThisThread = [self reportSpindumpForThisThread];
    reportSpindumpForThreadWithName = [selfCopy reportSpindumpForThreadWithName];

    if (reportSpindumpForThisThread)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    if (reportSpindumpForThreadWithName)
    {
      v5 = v4;
    }

    else
    {
      v5 = reportSpindumpForThisThread;
    }

    reportSpindumpForMainThread = [selfCopy reportSpindumpForMainThread];
    v7 = v5 + reportSpindumpForMainThread + [selfCopy reportSpindumpForThisDispatchQueue];
    reportSpindumpForDispatchQueueWithLabel = [selfCopy reportSpindumpForDispatchQueueWithLabel];

    if (reportSpindumpForDispatchQueueWithLabel)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = v7;
    }

    if (v9 >= 2)
    {
      name = [selfCopy name];
      WRMakeError(8, @"reporting multiple spindumps from a single diagnostic %@", v11, v12, v13, v14, v15, v16, name);
      selfCopy = LABEL_13:;
LABEL_45:

      goto LABEL_46;
    }

    if (v9 == 1 && ([selfCopy gatherTailspin] & 1) == 0)
    {
      name = [selfCopy name];
      WRMakeError(8, @"reporting spindump, but not gathering tailspin in diagnostic %@", v25, v26, v27, v28, v29, v30, name);
      goto LABEL_13;
    }

    reportProcessesWithName = [selfCopy reportProcessesWithName];

    if (reportProcessesWithName)
    {
      if ([selfCopy reportSpindumpForThisThread])
      {
        name = [selfCopy reportProcessesWithName];
        name2 = [selfCopy name];
        WRMakeError(8, @"Cannot report spindump for this thread, but in a specified process %@ in diagnostic %@", v19, v20, v21, v22, v23, v24, name);
        selfCopy = LABEL_22:;
LABEL_44:

        goto LABEL_45;
      }

      if ([selfCopy reportSpindumpForThisDispatchQueue])
      {
        name = [selfCopy reportProcessesWithName];
        name2 = [selfCopy name];
        WRMakeError(8, @"Cannot report spindump for this dispatch queue, but in a specified process %@ in diagnostic %@", v31, v32, v33, v34, v35, v36, name);
        goto LABEL_22;
      }
    }

    reportSpindumpForThreadWithName2 = [selfCopy reportSpindumpForThreadWithName];
    name = reportSpindumpForThreadWithName2;
    if (reportSpindumpForThreadWithName2 && [reportSpindumpForThreadWithName2 hasPrefix:@"^"] && objc_msgSend(name, "hasSuffix:", @"$"))
    {
      v65 = 0;
      v38 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:name options:0 error:&v65];
      name2 = v65;
      if (!v38)
      {
        name3 = [selfCopy name];
        WRMakeError(8, @"Invalid thread name regex %@: %@ in diagnostic %@", v50, v51, v52, v53, v54, v55, name);
        goto LABEL_42;
      }
    }

    reportSpindumpForDispatchQueueWithLabel2 = [selfCopy reportSpindumpForDispatchQueueWithLabel];
    name2 = reportSpindumpForDispatchQueueWithLabel2;
    if (reportSpindumpForDispatchQueueWithLabel2 && [reportSpindumpForDispatchQueueWithLabel2 hasPrefix:@"^"] && objc_msgSend(name2, "hasSuffix:", @"$"))
    {
      v64 = 0;
      v40 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:name2 options:0 error:&v64];
      name3 = v64;
      if (!v40)
      {
        name4 = [selfCopy name];
        selfCopy = WRMakeError(8, @"Invalid dispatch queue label regex %@: %@ in diagnostic %@", v56, v57, v58, v59, v60, v61, name2);

        goto LABEL_43;
      }
    }

    if ([selfCopy gatherTailspin])
    {
      if ([selfCopy hasTriggerThresholdDurationSum] & 1) != 0 || (objc_msgSend(selfCopy, "hasTriggerThresholdDurationUnion") & 1) != 0 || (objc_msgSend(selfCopy, "hasTriggerThresholdDurationSingle") & 1) != 0 || (objc_msgSend(selfCopy, "hasTriggerThresholdCount") & 1) != 0 || (objc_msgSend(selfCopy, "triggerEventTimeout"))
      {
        selfCopy = 0;
        goto LABEL_44;
      }

      name3 = [selfCopy name];
      v62 = name3;
      v48 = @"no threshold for diagnostic %@";
    }

    else
    {
      name3 = [selfCopy name];
      v62 = name3;
      v48 = @"no diagnostics enabled in diagnostic %@";
    }

    WRMakeError(3, v48, v42, v43, v44, v45, v46, v47, v62);
    selfCopy = LABEL_42:;
LABEL_43:

    goto LABEL_44;
  }

LABEL_46:

  return selfCopy;
}

+ (id)diagnosticsWithDict:(void *)dict backupName:(uint64_t *)name error:
{
  dictCopy = dict;
  v7 = a2;
  objc_opt_self();
  v8 = [[WRDiagnostic alloc] initWithDict:v7 backupName:dictCopy error:name];

  return v8;
}

- (id)isValidForWorkflow
{
  if (self)
  {
    selfCopy = self;
    if ([self hasTriggerThresholdCount])
    {
      v9 = @"diagnostic count threshold is invalid for the workflow";
    }

    else if ([selfCopy hasTriggerThresholdDurationSum])
    {
      v9 = @"diagnostic interval sum threshold is invalid for the workflow";
    }

    else
    {
      if (![selfCopy hasTriggerThresholdDurationUnion])
      {
        self = [(WRDiagnostic *)selfCopy validate];
        goto LABEL_9;
      }

      v9 = @"diagnostic interval union threshold is invalid for the workflow";
    }

    self = WRMakeError(8, v9, v3, v4, v5, v6, v7, v8, v11);
LABEL_9:
    v1 = vars8;
  }

  return self;
}

- (id)isValidForSignpost
{
  if (self)
  {
    selfCopy = self;
    if ([self triggerEventTimeout])
    {
      v9 = @"diagnostic event timeout threshold is invalid for signposts";
    }

    else
    {
      if (![selfCopy reportOmittingNetworkBoundIntervals])
      {
        self = [(WRDiagnostic *)selfCopy validate];
        goto LABEL_7;
      }

      v9 = @"omitting network bound intervals is invalid for signposts";
    }

    self = WRMakeError(8, v9, v3, v4, v5, v6, v7, v8, v11);
LABEL_7:
    v1 = vars8;
  }

  return self;
}

@end