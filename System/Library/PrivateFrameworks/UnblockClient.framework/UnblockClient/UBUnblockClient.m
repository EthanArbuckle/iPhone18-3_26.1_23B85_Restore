@interface UBUnblockClient
- (UBUnblockClient)init;
- (id)handleRecoverReply:(id)a3 input_services:(id)a4 err:(id *)a5;
- (id)prepareRecoverRequest:(id)a3 stackshot_data:(id)a4 err:(id *)a5;
- (void)dealloc;
- (void)openConnectionToUnblockService;
- (void)recover:(id)a3 stackshotData:(id)a4 replyQueue:(id)a5 callback:(id)a6;
@end

@implementation UBUnblockClient

- (void)openConnectionToUnblockService
{
  if (self->_connection)
  {
    v2 = *__error();
    v3 = _ublogt();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_27038C000, v3, OS_LOG_TYPE_DEFAULT, "The connection to com.apple.unblock is already up and active.", v14, 2u);
    }

LABEL_13:

    *__error() = v2;
    return;
  }

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.unblock.client.replyq", v5);
  replyQueue = self->_replyQueue;
  self->_replyQueue = v6;

  v8 = self->_replyQueue;
  if (!v8)
  {
    v2 = *__error();
    v3 = _ublogt();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [UBUnblockClient(XPCHandling) openConnectionToUnblockService];
    }

    goto LABEL_13;
  }

  mach_service = xpc_connection_create_mach_service("com.apple.unblock", v8, 0);
  connection = self->_connection;
  self->_connection = mach_service;

  v11 = self->_connection;
  if (!v11)
  {
    v13 = self->_replyQueue;
    self->_replyQueue = 0;

    v2 = *__error();
    v3 = _ublogt();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [UBUnblockClient(XPCHandling) openConnectionToUnblockService];
    }

    goto LABEL_13;
  }

  xpc_connection_set_event_handler(v11, &__block_literal_global_574);
  v12 = self->_connection;

  xpc_connection_resume(v12);
}

- (id)prepareRecoverRequest:(id)a3 stackshot_data:(id)a4 err:(id *)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v17 = 0;
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v17];
  v9 = v17;
  if (v8)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "UBRequestKey", 1uLL);
    if (v7 && [v7 length] && objc_msgSend(v7, "bytes"))
    {
      xpc_dictionary_set_data(v10, "UBStackshotDataKey", [v7 bytes], objc_msgSend(v7, "length"));
    }

    xpc_dictionary_set_data(v10, "UBStuckServicesDataKey", [v8 bytes], objc_msgSend(v8, "length"));
    v19 = 0;
    memset(buffer, 0, sizeof(buffer));
    v11 = getpid();
    proc_name(v11, buffer, 0x21u);
    if (LOBYTE(buffer[0]))
    {
      xpc_dictionary_set_string(v10, "UBClientName", buffer);
    }
  }

  else
  {
    v12 = *__error();
    v13 = _ublogt();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [UBUnblockClient(XPCHandling) prepareRecoverRequest:stackshot_data:err:];
    }

    *__error() = v12;
    if (a5)
    {
      v14 = v9;
      v10 = 0;
      *a5 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)handleRecoverReply:(id)a3 input_services:(id)a4 err:(id *)a5
{
  v168 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (MEMORY[0x27439FD10](v7) == MEMORY[0x277D86480])
  {
    string = xpc_dictionary_get_string(v7, *MEMORY[0x277D86400]);
    v12 = *__error();
    v13 = _ublogt();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [UBUnblockClient(XPCHandling) handleRecoverReply:input_services:err:];
    }

    *__error() = v12;
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    if (a5)
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v14 forKey:*MEMORY[0x277CCA450]];
      *a5 = [v15 errorWithDomain:@"UBUnblockError" code:2 userInfo:v16];
    }

LABEL_14:

LABEL_15:
    v21 = 0;
    goto LABEL_16;
  }

  if (MEMORY[0x27439FD10](v7) != MEMORY[0x277D86468])
  {
    if (a5)
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"Unexcepted xpc event received." forKey:*MEMORY[0x277CCA450]];
      *a5 = [v9 errorWithDomain:@"UBUnblockError" code:2 userInfo:v10];
    }

    goto LABEL_15;
  }

  if (xpc_dictionary_get_int64(v7, "UBResultKey"))
  {
    v17 = *__error();
    v18 = _ublogt();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [UBUnblockClient(XPCHandling) handleRecoverReply:input_services:err:];
    }

    *__error() = v17;
    if (!a5)
    {
      goto LABEL_15;
    }

    v19 = MEMORY[0x277CCA9B8];
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"Unblock service failed to execute the request." forKey:*MEMORY[0x277CCA450]];
    v20 = [v19 errorWithDomain:@"UBUnblockError" code:2 userInfo:v14];
    goto LABEL_14;
  }

  length = 0;
  data = xpc_dictionary_get_data(v7, "UBStuckServicesResultsDataKey", &length);
  if (data)
  {
    v25 = [MEMORY[0x277CBEA90] dataWithBytes:data length:length];
    v159 = 0;
    v26 = [MEMORY[0x277CCAAC8] unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:v25 error:&v159];
    v27 = v159;
    if (v27)
    {
      v28 = *__error();
      v29 = _ublogt();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [UBUnblockClient(XPCHandling) handleRecoverReply:input_services:err:];
      }

      *__error() = v28;
      if (a5)
      {
        v30 = v27;
        v21 = 0;
        *a5 = v27;
LABEL_105:

        goto LABEL_106;
      }
    }

    else
    {
      v34 = [v8 count];
      if (v34 == [v26 count])
      {
        v121 = v25;
        v119 = a5;
        v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v157[0] = MEMORY[0x277D85DD0];
        v157[1] = 3221225472;
        v157[2] = __70__UBUnblockClient_XPCHandling__handleRecoverReply_input_services_err___block_invoke;
        v157[3] = &unk_279E02558;
        v120 = v35;
        v158 = v120;
        v36 = MEMORY[0x27439FAD0](v157);
        v153 = 0u;
        v154 = 0u;
        v155 = 0u;
        v156 = 0u;
        obj = v8;
        v124 = [obj countByEnumeratingWithState:&v153 objects:v167 count:16];
        if (v124)
        {
          v37 = 0;
          v125 = *v154;
          v117 = 0;
          v118 = v8;
          v123 = v26;
          while (2)
          {
            v38 = 0;
            do
            {
              if (*v154 != v125)
              {
                objc_enumerationMutation(obj);
              }

              v127 = v38;
              v39 = *(*(&v153 + 1) + 8 * v38);
              v40 = [v26 objectAtIndexedSubscript:{v37, v117}];
              v41 = [v39 pid];
              if (v41 != [v40 pid])
              {
                goto LABEL_99;
              }

              if ([v39 threadID] != 1)
              {
                v42 = [v39 threadID];
                if (v42 != [v40 threadID])
                {
                  goto LABEL_99;
                }
              }

              v43 = [v39 incidentUUID];
              [v40 service];
              v44 = v128 = v40;
              v45 = [v44 incidentUUID];
              v46 = [v43 isEqual:v45];

              v40 = v128;
              if ((v46 & 1) == 0)
              {
LABEL_99:
                v113 = *__error();
                v114 = _ublogt();
                if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
                {
                  [UBUnblockClient(XPCHandling) handleRecoverReply:input_services:err:];
                }

                *__error() = v113;
                v8 = v118;
                if (v119)
                {
                  v115 = MEMORY[0x277CCA9B8];
                  v116 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"Result has invalid pid/thread_id/incident service's data" forKey:*MEMORY[0x277CCA450]];
                  *v119 = [v115 errorWithDomain:@"UBUnblockError" code:2 userInfo:v116];
                }

                v21 = 0;
                v27 = v117;
                goto LABEL_104;
              }

              v126 = v37;
              [v128 setService:v39];
              v151 = 0u;
              v152 = 0u;
              v149 = 0u;
              v150 = 0u;
              v47 = [v128 processesAndThreadsInvolved];
              v48 = [v47 countByEnumeratingWithState:&v149 objects:v166 count:16];
              if (v48)
              {
                v49 = v48;
                v50 = *v150;
                do
                {
                  for (i = 0; i != v49; ++i)
                  {
                    if (*v150 != v50)
                    {
                      objc_enumerationMutation(v47);
                    }

                    v52 = *(*(&v149 + 1) + 8 * i);
                    v53 = [v52 process];
                    v54 = (v36)[2](v36, v53);
                    [v52 setProcess:v54];
                  }

                  v49 = [v47 countByEnumeratingWithState:&v149 objects:v166 count:16];
                }

                while (v49);
              }

              v55 = [v128 selectedProcess];

              if (v55)
              {
                v56 = [v128 selectedProcess];
                v57 = (v36)[2](v36, v56);
                [v128 setSelectedProcess:v57];
              }

              v147 = 0u;
              v148 = 0u;
              v145 = 0u;
              v146 = 0u;
              v58 = [v128 serviceDependencyChain];
              v59 = [v58 countByEnumeratingWithState:&v145 objects:v165 count:16];
              if (v59)
              {
                v60 = v59;
                v61 = *v146;
                do
                {
                  for (j = 0; j != v60; ++j)
                  {
                    if (*v146 != v61)
                    {
                      objc_enumerationMutation(v58);
                    }

                    v63 = *(*(&v145 + 1) + 8 * j);
                    v64 = [v63 process];
                    v65 = (v36)[2](v36, v64);
                    [v63 setProcess:v65];
                  }

                  v60 = [v58 countByEnumeratingWithState:&v145 objects:v165 count:16];
                }

                while (v60);
              }

              v66 = v128;
              v67 = [v128 processesBlockedByThisIssueOnly];
              v68 = [v67 count];

              if (v68)
              {
                v69 = [v128 processesBlockedByThisIssueOnly];
                v70 = [v69 mutableCopy];

                v143 = 0u;
                v144 = 0u;
                v141 = 0u;
                v142 = 0u;
                v71 = [v128 processesBlockedByThisIssueOnly];
                v72 = [v71 countByEnumeratingWithState:&v141 objects:v164 count:16];
                if (v72)
                {
                  v73 = v72;
                  v74 = 0;
                  v75 = *v142;
                  do
                  {
                    for (k = 0; k != v73; ++k)
                    {
                      if (*v142 != v75)
                      {
                        objc_enumerationMutation(v71);
                      }

                      v77 = v36[2](v36, *(*(&v141 + 1) + 8 * k));
                      [v70 setObject:v77 atIndexedSubscript:v74];

                      ++v74;
                    }

                    v73 = [v71 countByEnumeratingWithState:&v141 objects:v164 count:16];
                  }

                  while (v73);
                }

                v78 = [v70 copy];
                v66 = v128;
                [v128 setProcessesBlockedByThisIssueOnly:v78];
              }

              v79 = [v66 processesBlockedByThisAndOtherIssues];
              v80 = [v79 count];

              if (v80)
              {
                v81 = [v66 processesBlockedByThisAndOtherIssues];
                v82 = [v81 mutableCopy];

                v139 = 0u;
                v140 = 0u;
                v137 = 0u;
                v138 = 0u;
                v83 = [v66 processesBlockedByThisAndOtherIssues];
                v84 = [v83 countByEnumeratingWithState:&v137 objects:v163 count:16];
                if (v84)
                {
                  v85 = v84;
                  v86 = 0;
                  v87 = *v138;
                  do
                  {
                    for (m = 0; m != v85; ++m)
                    {
                      if (*v138 != v87)
                      {
                        objc_enumerationMutation(v83);
                      }

                      v89 = v36[2](v36, *(*(&v137 + 1) + 8 * m));
                      [v82 setObject:v89 atIndexedSubscript:v86];

                      ++v86;
                    }

                    v85 = [v83 countByEnumeratingWithState:&v137 objects:v163 count:16];
                  }

                  while (v85);
                }

                v90 = [v82 copy];
                v66 = v128;
                [v128 setProcessesBlockedByThisAndOtherIssues:v90];
              }

              v91 = [v66 processesBlockedByOtherIssuesOnly];
              v92 = [v91 count];

              if (v92)
              {
                v93 = [v66 processesBlockedByOtherIssuesOnly];
                v94 = [v93 mutableCopy];

                v135 = 0u;
                v136 = 0u;
                v133 = 0u;
                v134 = 0u;
                v95 = [v66 processesBlockedByOtherIssuesOnly];
                v96 = [v95 countByEnumeratingWithState:&v133 objects:v162 count:16];
                if (v96)
                {
                  v97 = v96;
                  v98 = 0;
                  v99 = *v134;
                  do
                  {
                    for (n = 0; n != v97; ++n)
                    {
                      if (*v134 != v99)
                      {
                        objc_enumerationMutation(v95);
                      }

                      v101 = v36[2](v36, *(*(&v133 + 1) + 8 * n));
                      [v94 setObject:v101 atIndexedSubscript:v98];

                      ++v98;
                    }

                    v97 = [v95 countByEnumeratingWithState:&v133 objects:v162 count:16];
                  }

                  while (v97);
                }

                v102 = [v94 copy];
                v66 = v128;
                [v128 setProcessesBlockedByOtherIssuesOnly:v102];
              }

              v37 = v126 + 1;

              v38 = v127 + 1;
              v26 = v123;
            }

            while (v127 + 1 != v124);
            v27 = v117;
            v8 = v118;
            v124 = [obj countByEnumeratingWithState:&v153 objects:v167 count:16];
            if (v124)
            {
              continue;
            }

            break;
          }
        }

        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v103 = v26;
        v104 = [v103 countByEnumeratingWithState:&v129 objects:v161 count:16];
        if (v104)
        {
          v105 = v104;
          v106 = *v130;
          do
          {
            for (ii = 0; ii != v105; ++ii)
            {
              if (*v130 != v106)
              {
                objc_enumerationMutation(v103);
              }

              v108 = *(*(&v129 + 1) + 8 * ii);
              if ([v108 recoveryStatus] != 4)
              {
                [v108 _recoveryHadEffectiveness:0];
              }
            }

            v105 = [v103 countByEnumeratingWithState:&v129 objects:v161 count:16];
          }

          while (v105);
        }

        v21 = v103;
LABEL_104:

        v25 = v121;
        goto LABEL_105;
      }

      v109 = *__error();
      v110 = _ublogt();
      if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
      {
        [UBUnblockClient(XPCHandling) handleRecoverReply:input_services:err:];
      }

      *__error() = v109;
      if (a5)
      {
        v111 = MEMORY[0x277CCA9B8];
        v112 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"Result does not have all services data." forKey:*MEMORY[0x277CCA450]];
        *a5 = [v111 errorWithDomain:@"UBUnblockError" code:2 userInfo:v112];
      }
    }

    v21 = 0;
    goto LABEL_105;
  }

  v31 = *__error();
  v32 = _ublogt();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    [UBUnblockClient(XPCHandling) handleRecoverReply:input_services:err:];
  }

  *__error() = v31;
  if (!a5)
  {
    goto LABEL_15;
  }

  v33 = MEMORY[0x277CCA9B8];
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"Received NULL watchdog services result data." forKey:*MEMORY[0x277CCA450]];
  [v33 errorWithDomain:@"UBUnblockError" code:2 userInfo:v27];
  *a5 = v21 = 0;
LABEL_106:

LABEL_16:
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (UBUnblockClient)init
{
  v7.receiver = self;
  v7.super_class = UBUnblockClient;
  v2 = [(UBUnblockClient *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    connection = v2->_connection;
    v2->_connection = 0;

    replyQueue = v3->_replyQueue;
    v3->_replyQueue = 0;
  }

  return v3;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_lock);
  connection = self->_connection;
  if (connection)
  {
    v4 = *__error();
    v5 = _ublogt();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_27038C000, v5, OS_LOG_TYPE_DEFAULT, "Canceling xpc connection to unblock service.", buf, 2u);
    }

    *__error() = v4;
    xpc_connection_cancel(self->_connection);
    connection = self->_connection;
  }

  self->_connection = 0;

  replyQueue = self->_replyQueue;
  self->_replyQueue = 0;

  os_unfair_lock_unlock(&self->_lock);
  v7.receiver = self;
  v7.super_class = UBUnblockClient;
  [(UBUnblockClient *)&v7 dealloc];
}

- (void)recover:(id)a3 stackshotData:(id)a4 replyQueue:(id)a5 callback:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  if (!v12)
  {
    v12 = dispatch_get_global_queue(0, 0);
  }

  os_unfair_lock_lock(&self->_lock);
  [(UBUnblockClient *)self openConnectionToUnblockService];
  if (self->_connection)
  {
    v15 = *__error();
    v16 = _ublogt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_27038C000, v16, OS_LOG_TYPE_DEFAULT, "Calling remote unblock service to recover stuck watchdog services.", buf, 2u);
    }

    *__error() = v15;
    if (v10 && [v10 count])
    {
      if (!v11 || ![v11 length] || !objc_msgSend(v11, "bytes"))
      {
        v17 = *__error();
        v18 = _ublogt();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_27038C000, v18, OS_LOG_TYPE_DEFAULT, "No stackshot data provided. The unblock service will take a live stackshot.", buf, 2u);
        }

        *__error() = v17;
      }

      v35 = 0;
      v19 = [(UBUnblockClient *)self prepareRecoverRequest:v10 stackshot_data:v11 err:&v35];
      v20 = v35;
      if (v19)
      {
        connection = self->_connection;
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __61__UBUnblockClient_recover_stackshotData_replyQueue_callback___block_invoke_2;
        v29[3] = &unk_279E025A8;
        v29[4] = self;
        v30 = v10;
        v31 = v13;
        xpc_connection_send_message_with_reply(connection, v19, v12, v29);
        os_unfair_lock_unlock(&self->_lock);

        v22 = v30;
      }

      else
      {
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __61__UBUnblockClient_recover_stackshotData_replyQueue_callback___block_invoke_616;
        v32[3] = &unk_279E02580;
        v34 = v13;
        v20 = v20;
        v33 = v20;
        dispatch_async(v12, v32);
        os_unfair_lock_unlock(&self->_lock);

        v22 = v34;
      }
    }

    else
    {
      v23 = MEMORY[0x277CCA9B8];
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"Invalid input." forKey:*MEMORY[0x277CCA450]];
      v25 = [v23 errorWithDomain:@"UBUnblockError" code:1 userInfo:v24];

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __61__UBUnblockClient_recover_stackshotData_replyQueue_callback___block_invoke_615;
      block[3] = &unk_279E02580;
      v37 = v25;
      v38 = v13;
      v20 = v25;
      dispatch_async(v12, block);
      os_unfair_lock_unlock(&self->_lock);

      v19 = v38;
    }
  }

  else
  {
    v26 = MEMORY[0x277CCA9B8];
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"Unable to open a xpc connection to unblock service." forKey:*MEMORY[0x277CCA450]];
    v28 = [v26 errorWithDomain:@"UBUnblockError" code:2 userInfo:v27];

    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __61__UBUnblockClient_recover_stackshotData_replyQueue_callback___block_invoke;
    v40[3] = &unk_279E02580;
    v41 = v28;
    v42 = v13;
    v20 = v28;
    dispatch_async(v12, v40);
    os_unfair_lock_unlock(&self->_lock);

    v19 = v42;
  }

  objc_autoreleasePoolPop(v14);
}

@end