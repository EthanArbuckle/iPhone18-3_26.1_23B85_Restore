@interface CSReceiverConnection
- (BOOL)addClientConnectionIfAllowedForConnection:(id)a3;
- (BOOL)enableDebuggability;
- (BOOL)handleCommand:(const char *)a3 info:(id)a4 connection:(id)a5;
- (CSReceiverConnection)initWithReceiver:(id)a3 forServiceName:(id)a4;
- (CSReceiverConnection)initWithScheduledReceiver:(id)a3 forServiceName:(id)a4;
- (id)fetchableIdentifiersFromDonation:(id)a3 additionalAttributes:(id)a4 config:(id)a5;
- (id)indexForBundleID:(id)a3 protectionClass:(id)a4;
- (int)addInteraction:(id)a3 bundleID:(id)a4 protectionClass:(id)a5;
- (int)addUserActions:(id)a3 bundleID:(id)a4 protectionClass:(id)a5;
- (int)deleteFromBundle:(id)a3 sinceDate:(id)a4 domains:(id)a5 deletes:(id)a6;
- (int)handleSetup:(id)a3;
- (int)indexFromBundle:(id)a3 protectionClass:(id)a4 items:(id)a5 itemsContent:(id)a6;
- (void)addConfiguration:(id)a3;
- (void)deleteWithFd:(int)a3 offset:(unint64_t)a4 size:(unint64_t)a5 donation:(id)a6 completionHandler:(id)a7;
- (void)indexWithFd:(int)a3 offset:(unint64_t)a4 size:(unint64_t)a5 donation:(id)a6 additionalAttributes:(id)a7 config:(id)a8 completionHandler:(id)a9;
@end

@implementation CSReceiverConnection

- (CSReceiverConnection)initWithReceiver:(id)a3 forServiceName:(id)a4
{
  v7 = a3;
  v33.receiver = self;
  v33.super_class = CSReceiverConnection;
  v8 = [(CSXPCConnection *)&v33 initMachServiceListenerWithName:a4];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_41;
  }

  objc_storeStrong(v8 + 10, a3);
  receiver = v9->_receiver;
  if (objc_opt_respondsToSelector())
  {
    v11 = [(SpotlightReceiver *)v9->_receiver supportedBundleIDs];
    [(CSReceiverConnection *)v9 setBundleIDs:v11];
  }

  v12 = v9->_receiver;
  if (objc_opt_respondsToSelector())
  {
    v13 = [(SpotlightReceiver *)v9->_receiver supportedContentTypes];
    [(CSReceiverConnection *)v9 setContentTypes:v13];
  }

  v14 = v9->_receiver;
  if (objc_opt_respondsToSelector())
  {
    v15 = [(SpotlightReceiver *)v9->_receiver supportedINIntentClassNames];
    [(CSReceiverConnection *)v9 setINIntentClassNames:v15];
  }

  v16 = v9->_receiver;
  if (objc_opt_respondsToSelector())
  {
    v9->_supportedJobs |= 1u;
  }

  v17 = v9->_receiver;
  if (objc_opt_respondsToSelector())
  {
    v9->_supportedJobs |= 2u;
  }

  v18 = v9->_receiver;
  if (objc_opt_respondsToSelector())
  {
    v9->_supportedJobs |= 4u;
  }

  v19 = v9->_receiver;
  if (objc_opt_respondsToSelector())
  {
    v9->_supportedJobs |= 8u;
  }

  v20 = v9->_receiver;
  if (objc_opt_respondsToSelector())
  {
    v9->_supportedJobs |= 0x10u;
  }

  v21 = v9->_receiver;
  if (objc_opt_respondsToSelector())
  {
    v9->_supportedJobs |= 0x20u;
  }

  v22 = v9->_receiver;
  if (objc_opt_respondsToSelector())
  {
    v9->_supportedJobs |= 0x40u;
  }

  v23 = v9->_receiver;
  if (objc_opt_respondsToSelector())
  {
    v9->_supportedJobs |= 0x1000u;
  }

  v24 = v9->_receiver;
  if (objc_opt_respondsToSelector())
  {
    v9->_supportedJobs |= 0x2000u;
  }

  v25 = v9->_receiver;
  if (objc_opt_respondsToSelector())
  {
    v9->_supportedJobs |= 0x80u;
  }

  v26 = v9->_receiver;
  if (objc_opt_respondsToSelector())
  {
    v9->_supportedJobs |= 0x100u;
  }

  v27 = v9->_receiver;
  if (objc_opt_respondsToSelector())
  {
    v9->_supportedJobs |= 0x200u;
  }

  v28 = v9->_receiver;
  if (objc_opt_respondsToSelector())
  {
    v9->_supportedJobs |= 0x400u;
  }

  v29 = v9->_receiver;
  if (objc_opt_respondsToSelector())
  {
    v30 = 2048;
  }

  else
  {
    v31 = v9->_receiver;
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_39;
    }

    v30 = 0x4000;
  }

  v9->_supportedJobs |= v30;
LABEL_39:
  if ([(SpotlightReceiver *)v9->_receiver conformsToProtocol:&unk_284827A00])
  {
    v9->_supportedJobs |= 0x100000u;
  }

LABEL_41:

  return v9;
}

- (CSReceiverConnection)initWithScheduledReceiver:(id)a3 forServiceName:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v41.receiver = self;
  v41.super_class = CSReceiverConnection;
  v9 = [(CSXPCConnection *)&v41 initMachServiceListenerWithName:v8];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 11, a3);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    indexes = v10->_indexes;
    v10->_indexes = v11;

    v10->_lock._os_unfair_lock_opaque = 0;
    scheduledReceiver = v10->_scheduledReceiver;
    if (objc_opt_respondsToSelector())
    {
      v10->_supportedJobs |= 0x20000u;
    }

    v14 = v10->_scheduledReceiver;
    if (objc_opt_respondsToSelector())
    {
      v10->_supportedJobs |= 0x40000u;
    }

    v15 = v10->_scheduledReceiver;
    if (objc_opt_respondsToSelector())
    {
      v10->_supportedJobs |= 0x80000u;
    }

    v16 = getScheduledReceiverConfigPathForService_onceToken;
    v17 = v8;
    if (v16 != -1)
    {
      [CSReceiverConnection initWithScheduledReceiver:forServiceName:];
    }

    v18 = [getScheduledReceiverConfigPathForService_sReceiverConfigs objectForKeyedSubscript:v17];

    if (v18)
    {
      v19 = [MEMORY[0x277CBEBC0] fileURLWithPath:v18];
      if (v19)
      {
        v40 = 0;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v19 error:&v40];
        v21 = v40;
        if (v20)
        {
          v22 = [v20 objectForKeyedSubscript:@"configs"];
          if (v22)
          {
            v23 = v22;
            v24 = [v20 objectForKeyedSubscript:@"configs"];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v34 = v21;
              v35 = v18;
              v26 = [v20 objectForKeyedSubscript:@"configs"];
              v36 = 0u;
              v37 = 0u;
              v38 = 0u;
              v39 = 0u;
              v27 = [v26 countByEnumeratingWithState:&v36 objects:v42 count:16];
              if (v27)
              {
                v28 = v27;
                v29 = *v37;
                do
                {
                  for (i = 0; i != v28; ++i)
                  {
                    if (*v37 != v29)
                    {
                      objc_enumerationMutation(v26);
                    }

                    v31 = [[SpotlightScheduledReceiverConfig alloc] initWithConfigurationValues:*(*(&v36 + 1) + 8 * i)];
                    [(CSReceiverConnection *)v10 addConfiguration:v31];
                  }

                  v28 = [v26 countByEnumeratingWithState:&v36 objects:v42 count:16];
                }

                while (v28);
              }

              v18 = v35;
              v21 = v34;
            }
          }
        }
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v19 = 0;
    }
  }

  v32 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)addConfiguration:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  configs = self->_configs;
  if (!configs || ([v4 name], v7 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKeyedSubscript:](configs, "objectForKeyedSubscript:", v7), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    v9 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v5;
      _os_log_impl(&dword_232D5E000, v9, OS_LOG_TYPE_DEFAULT, "### RECEIVER adding config %@", &v20, 0xCu);
    }

    v10 = self->_configs;
    if (!v10)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v12 = self->_configs;
      self->_configs = v11;

      v10 = self->_configs;
    }

    v13 = [v5 identifier];
    v14 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:v13];

    if (!v14)
    {
      v15 = self->_configs;
      v16 = [v5 identifier];
      [(NSMutableDictionary *)v15 setObject:v5 forKey:v16];
    }

    scheduledReceiver = self->_scheduledReceiver;
    if (objc_opt_respondsToSelector())
    {
      self->_supportedJobs |= 0x8000u;
      if (([v5 needsDeletes] & 1) != 0 || objc_msgSend(v5, "supportsDeletes"))
      {
        self->_supportedJobs |= 0x10000u;
      }
    }

    v18 = self->_scheduledReceiver;
    if (objc_opt_respondsToSelector())
    {
      self->_supportedJobs |= 0x8000u;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)addClientConnectionIfAllowedForConnection:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  pid = xpc_connection_get_pid(v3);
  xpc_connection_get_audit_token();

  v5 = *MEMORY[0x277CBECE8];
  memset(&token, 0, sizeof(token));
  v6 = SecTaskCreateWithAuditToken(v5, &token);
  if (v6)
  {
    v7 = v6;
    v8 = SecTaskCopyValueForEntitlement(v6, SpotlightSenderEntitlement, 0);
    v9 = [v8 BOOLValue];
    v10 = logForCSLogCategoryDefault();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        token.val[0] = 67109120;
        token.val[1] = pid;
        _os_log_impl(&dword_232D5E000, v11, OS_LOG_TYPE_INFO, "New sender connection for pid: %d", &token, 8u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CSReceiverConnection addClientConnectionIfAllowedForConnection:];
    }

    CFRelease(v7);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)handleCommand:(const char *)a3 info:(id)a4 connection:(id)a5
{
  v146 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  reply = xpc_dictionary_create_reply(v8);
  euid = xpc_connection_get_euid(v9);
  if (euid)
  {
    v12 = [(CSXPCConnection *)self queue];
    dispatch_queue_set_specific(v12, SpotlightReceiverConnectionUIDKey, euid, 0);

    v13 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v141 = a3;
      v142 = 1024;
      v143 = euid;
      v144 = 2048;
      v145 = v8;
      _os_log_debug_impl(&dword_232D5E000, v13, OS_LOG_TYPE_DEBUG, "receiver command %s cuid: %d info:%p", buf, 0x1Cu);
    }
  }

  v14 = *a3;
  if (v14 == 106)
  {
    if (a3[1])
    {
      goto LABEL_11;
    }

    uint64 = xpc_dictionary_get_uint64(v8, "jt");
    if ((uint64 & self->_supportedJobs) == 0)
    {
      v29 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [CSReceiverConnection handleCommand:&self->_supportedJobs info:v29 connection:?];
      }

      v30 = [(CSReceiverConnection *)self scheduledReceiver];

      v16 = 0;
      v17 = 0;
      v18 = 0;
      if (v30)
      {
        v15 = 2;
      }

      else
      {
        v15 = -1;
      }

      goto LABEL_60;
    }

    v16 = [MEMORY[0x277CC3510] copyNSStringForKey:"b" fromXPCDictionary:v8];
    if (!v16)
    {
      v20 = [(CSReceiverConnection *)self scheduledReceiver];
      v21 = v20 == 0;

      if (v21)
      {
        v36 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          [CSReceiverConnection handleCommand:info:connection:];
        }

        goto LABEL_57;
      }
    }

    v17 = [MEMORY[0x277CC3510] copyNSStringForKey:"pc" fromXPCDictionary:v8];
    if (uint64 <= 1023)
    {
      if (uint64 <= 127)
      {
        if ((uint64 - 2) > 0x3E)
        {
LABEL_97:
          if (!uint64)
          {
            goto LABEL_58;
          }

          if (uint64 == 1)
          {
            v54 = [MEMORY[0x277CC3510] dataWrapperForKey:"i" sizeKey:"i-size" fromXPCDictionary:v8];
            v55 = [MEMORY[0x277CC3510] dataWrapperForKey:"c" sizeKey:"c-size" fromXPCDictionary:v8];
            v15 = [(CSReceiverConnection *)self indexFromBundle:v16 protectionClass:v17 items:v54 itemsContent:v55];
            v56 = objc_opt_self();
            v57 = objc_opt_self();

            goto LABEL_9;
          }

          goto LABEL_132;
        }

        if (((1 << (uint64 - 2)) & 0x4045) != 0)
        {
          v126 = [MEMORY[0x277CC3510] dataWrapperForKey:"ids" sizeKey:"ids-size" fromXPCDictionary:v8];
          if (uint64 == 16)
          {
            date = xpc_dictionary_get_date(v8, "d");
            if (date)
            {
              v92 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:date];
              v28 = 0;
              v27 = 0;
              v93 = v92;
LABEL_146:
              v123 = v93;
              v94 = v28;
              v95 = v27;
              v15 = [CSReceiverConnection deleteFromBundle:"deleteFromBundle:sinceDate:domains:deletes:" sinceDate:v16 domains:? deletes:?];

              v96 = v123;
LABEL_168:

              goto LABEL_9;
            }

            v97 = logForCSLogCategoryDefault();
            v96 = v97;
            if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
            {
              [CSReceiverConnection handleCommand:info:connection:];
              goto LABEL_166;
            }

            goto LABEL_167;
          }

          if (uint64 != 4)
          {
            if (uint64 == 2)
            {
              if (v126)
              {
                v22 = objc_alloc(MEMORY[0x277CC33C8]);
                v23 = [v126 data];
                v24 = [v22 initWithData:v23];

                if (v24 && ([v24 obj], _MDPlistGetPlistObjectType() == 240) && (objc_msgSend(v24, "obj"), _MDPlistArrayGetCount()))
                {
                  [v24 obj];
                  v25 = *MEMORY[0x277CBECE8];
                  v26 = _MDPlistContainerCopyObject();

                  if (v26)
                  {
                    v27 = v26;
                    v28 = 0;
LABEL_145:
                    v93 = 0;
                    goto LABEL_146;
                  }
                }

                else
                {
                }
              }

              v97 = logForCSLogCategoryDefault();
              v96 = v97;
              if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
              {
                [CSReceiverConnection handleCommand:info:connection:];
                goto LABEL_166;
              }

              goto LABEL_167;
            }

            v28 = 0;
LABEL_144:
            v27 = 0;
            goto LABEL_145;
          }

          if (v126)
          {
            v86 = objc_alloc(MEMORY[0x277CC33C8]);
            v87 = [v126 data];
            v88 = [v86 initWithData:v87];

            if (v88 && ([v88 obj], _MDPlistGetPlistObjectType() == 240) && (objc_msgSend(v88, "obj"), _MDPlistArrayGetCount()))
            {
              [v88 obj];
              v89 = *MEMORY[0x277CBECE8];
              v90 = _MDPlistContainerCopyObject();

              if (v90)
              {
                v28 = v90;
                goto LABEL_144;
              }
            }

            else
            {
            }
          }

          v97 = logForCSLogCategoryDefault();
          v96 = v97;
          if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
          {
            [CSReceiverConnection handleCommand:info:connection:];
LABEL_166:
            v15 = -1;
            v96 = v97;
            goto LABEL_168;
          }

LABEL_167:
          v15 = -1;
          goto LABEL_168;
        }

        if (uint64 != 32)
        {
          if (uint64 == 64)
          {
            v45 = [MEMORY[0x277CC3510] dataWrapperForKey:"a" sizeKey:"a-size" fromXPCDictionary:v8];
            if (v45)
            {
              v15 = [(CSReceiverConnection *)self addUserActions:v45 bundleID:v16 protectionClass:v17];
              v53 = objc_opt_self();
              goto LABEL_175;
            }

            v98 = logForCSLogCategoryDefault();
            if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
            {
              [CSReceiverConnection handleCommand:info:connection:];
            }

            goto LABEL_174;
          }

          goto LABEL_97;
        }

        v61 = [MEMORY[0x277CC3510] dataWrapperForKey:"ids" sizeKey:"ids-size" fromXPCDictionary:v8];
        if (v61)
        {
          v76 = objc_alloc(MEMORY[0x277CC33C8]);
          v77 = [v61 data];
          v78 = [v76 initWithData:v77];

          if (v78 && ([v78 obj], _MDPlistGetPlistObjectType() == 240) && (objc_msgSend(v78, "obj"), _MDPlistArrayGetCount()))
          {
            [v78 obj];
            v79 = *MEMORY[0x277CBECE8];
            v66 = _MDPlistContainerCopyObject();

            if (v66)
            {
              v15 = [(CSReceiverConnection *)self purgeFromBundle:v16 identifiers:v66];
              goto LABEL_189;
            }
          }

          else
          {
          }
        }

        v66 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          [CSReceiverConnection handleCommand:info:connection:];
        }

        v15 = -1;
        goto LABEL_189;
      }

      if (uint64 != 128)
      {
        if (uint64 == 256)
        {
          v83 = MEMORY[0x277CC3510];
          v84 = xpc_dictionary_get_value(v8, "ids");
          v45 = [v83 copyNSStringArrayFromXPCArray:v84];

          if (v45)
          {
            v15 = [(CSReceiverConnection *)self deleteInteractionsWithIdentifiers:v45 bundleID:v16 protectionClass:v17];
            goto LABEL_175;
          }

          v98 = logForCSLogCategoryDefault();
          if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
          {
            [CSReceiverConnection handleCommand:info:connection:];
          }

          goto LABEL_174;
        }

        if (uint64 == 512)
        {
          v43 = MEMORY[0x277CC3510];
          v44 = xpc_dictionary_get_value(v8, "ids");
          v45 = [v43 copyNSStringArrayFromXPCArray:v44];

          if (v45)
          {
            v15 = [(CSReceiverConnection *)self deleteInteractionsWithGroupIdentifiers:v45 bundleID:v16 protectionClass:v17];
LABEL_175:

            goto LABEL_9;
          }

          v98 = logForCSLogCategoryDefault();
          if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
          {
            [CSReceiverConnection handleCommand:info:connection:];
          }

LABEL_174:

          v15 = -1;
          goto LABEL_175;
        }

LABEL_132:
        v85 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          [CSReceiverConnection handleCommand:info:connection:];
        }

        goto LABEL_58;
      }

      v61 = [MEMORY[0x277CC3510] dataWrapperForKey:"ins" sizeKey:"ins-size" fromXPCDictionary:v8];
      if (!v61)
      {
        goto LABEL_186;
      }

      v80 = objc_alloc(MEMORY[0x277CCAAC8]);
      v81 = [v61 data];
      v131 = [v80 initForReadingFromData:v81 error:0];

      v82 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
      v66 = [v131 decodeObjectOfClasses:v82 forKey:*MEMORY[0x277CCA308]];

      if (v66)
      {
        v15 = [(CSReceiverConnection *)self addInteraction:v66 bundleID:v16 protectionClass:v17];
      }

      else
      {
LABEL_186:
        v66 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          [CSReceiverConnection handleCommand:info:connection:];
        }

        v15 = -1;
      }

LABEL_189:

      goto LABEL_9;
    }

    if (uint64 >= 0x8000)
    {
      if (uint64 >= 0x20000)
      {
        switch(uint64)
        {
          case 0x20000:
            v59 = logForCSLogCategoryDefault();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              v60 = [(CSXPCConnection *)self serviceName];
              *buf = 138412290;
              v141 = v60;
              _os_log_impl(&dword_232D5E000, v59, OS_LOG_TYPE_DEFAULT, "### SCHEDULED RECEIVER suspend %@", buf, 0xCu);
            }

            [(SpotlightScheduledReceiver *)self->_scheduledReceiver suspend];
            goto LABEL_58;
          case 0x40000:
            v67 = logForCSLogCategoryDefault();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              v68 = [(CSXPCConnection *)self serviceName];
              *buf = 138412290;
              v141 = v68;
              _os_log_impl(&dword_232D5E000, v67, OS_LOG_TYPE_DEFAULT, "### SCHEDULED RECEIVER resume %@", buf, 0xCu);
            }

            [(SpotlightScheduledReceiver *)self->_scheduledReceiver resume];
            goto LABEL_58;
          case 0x80000:
            v34 = logForCSLogCategoryDefault();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v35 = [(CSXPCConnection *)self serviceName];
              *buf = 138412290;
              v141 = v35;
              _os_log_impl(&dword_232D5E000, v34, OS_LOG_TYPE_DEFAULT, "### SCHEDULED RECEIVER reset %@", buf, 0xCu);
            }

            [(SpotlightScheduledReceiver *)self->_scheduledReceiver reset];
            goto LABEL_58;
        }

        goto LABEL_132;
      }

      if (uint64 == 0x8000)
      {
        v118 = xpc_dictionary_get_value(v8, "fd");
        v110 = xpc_dictionary_get_uint64(v8, "f-off");
        v109 = xpc_dictionary_get_uint64(v8, "f-size");
        v111 = xpc_dictionary_get_uint64(v8, "itype");
        xfda = xpc_fd_dup(v118);
        if ((xfda & 0x80000000) == 0)
        {
          v116 = xpc_dictionary_get_array(v8, "aatrs");
          v114 = [MEMORY[0x277CC3510] copyNSStringOrDictArrayFromXPCArray:v116];
          v112 = [v114 firstObject];
          v113 = [MEMORY[0x277CC3510] copyNSStringForKey:"cnm" fromXPCDictionary:v8];
          v122 = [(CSReceiverConnection *)self configForIdentifier:v113];
          v129 = [SpotlightReceiverDonation alloc];
          v69 = [v122 versionName];
          v70 = [v122 versionValue];
          v130 = [(SpotlightReceiverDonation *)v129 initWithVersionName:v69 versionValue:v70];

          [(SpotlightReceiverDonation *)v130 setDonationType:1];
          [(SpotlightReceiverDonation *)v130 setIndexType:indexTypeForValue(v111)];
          [(SpotlightReceiverDonation *)v130 setBundleIdentifier:v16];
          [(SpotlightReceiverDonation *)v130 setProtectionClass:v17];
          [(SpotlightReceiverDonation *)v130 setSerialNumber:xpc_dictionary_get_uint64(v8, "s-num")];
          v71 = [MEMORY[0x277CC3510] copyNSStringForKey:"j-cook" fromXPCDictionary:v8];
          [(SpotlightReceiverDonation *)v130 setJournalCookie:v71];

          v72 = [v122 name];
          [(SpotlightReceiverDonation *)v130 setConfigName:v72];

          v73 = xpc_dictionary_get_remote_connection(v8);
          v74 = logForCSLogCategoryDefault();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_232D5E000, v74, OS_LOG_TYPE_DEFAULT, "### SCHEDULED RECEIVER processing add/updated batch", buf, 2u);
          }

          v136[0] = MEMORY[0x277D85DD0];
          v136[1] = 3221225472;
          v136[2] = __54__CSReceiverConnection_handleCommand_info_connection___block_invoke;
          v136[3] = &unk_2789ADF90;
          v139 = xfda;
          v137 = reply;
          v138 = v73;
          v75 = v73;
          [(CSReceiverConnection *)self indexWithFd:xfda offset:v110 size:v109 donation:v130 additionalAttributes:v112 config:v122 completionHandler:v136];
        }

        v52 = xfda;
      }

      else
      {
        if (uint64 != 0x10000)
        {
          goto LABEL_132;
        }

        xfd = xpc_dictionary_get_value(v8, "fd");
        v117 = xpc_dictionary_get_uint64(v8, "f-off");
        v115 = xpc_dictionary_get_uint64(v8, "f-size");
        v47 = xpc_dictionary_get_uint64(v8, "itype");
        v121 = xpc_fd_dup(xfd);
        if ((v121 & 0x80000000) == 0)
        {
          v128 = objc_alloc_init(SpotlightReceiverDonation);
          [(SpotlightReceiverDonation *)v128 setDonationType:3];
          [(SpotlightReceiverDonation *)v128 setIndexType:indexTypeForValue(v47)];
          [(SpotlightReceiverDonation *)v128 setBundleIdentifier:v16];
          [(SpotlightReceiverDonation *)v128 setProtectionClass:v17];
          [(SpotlightReceiverDonation *)v128 setSerialNumber:xpc_dictionary_get_uint64(v8, "s-num")];
          v48 = [MEMORY[0x277CC3510] copyNSStringForKey:"j-cook" fromXPCDictionary:v8];
          [(SpotlightReceiverDonation *)v128 setJournalCookie:v48];

          v49 = xpc_dictionary_get_remote_connection(v8);
          v50 = logForCSLogCategoryDefault();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_232D5E000, v50, OS_LOG_TYPE_DEFAULT, "### SCHEDULED RECEIVER processing delete item batch", buf, 2u);
          }

          v132[0] = MEMORY[0x277D85DD0];
          v132[1] = 3221225472;
          v132[2] = __54__CSReceiverConnection_handleCommand_info_connection___block_invoke_387;
          v132[3] = &unk_2789ADFB8;
          v135 = v121;
          v133 = reply;
          v134 = v49;
          v51 = v49;
          [(CSReceiverConnection *)self deleteWithFd:v121 offset:v117 size:v115 donation:v128 completionHandler:v132];
        }

        v52 = v121;
      }

      v18 = v52 >= 0;
      goto LABEL_59;
    }

    if (uint64 <= 4095)
    {
      if (uint64 != 1024)
      {
        if (uint64 != 2048)
        {
          goto LABEL_132;
        }

        v46 = xpc_dictionary_get_value(v8, "ra");
        v32 = v46;
        if (v46 && MEMORY[0x238394C70](v46) == MEMORY[0x277D86458] && (length = xpc_data_get_length(v32)) != 0 && (bytes_ptr = xpc_data_get_bytes_ptr(v32)) != 0 && ([MEMORY[0x277CBEA90] dataWithBytesNoCopy:bytes_ptr length:length freeWhenDone:0], (v127 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v125 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v127 error:0];
          v106 = MEMORY[0x277CBEB98];
          v107 = objc_opt_class();
          v108 = [v106 setWithObjects:{v107, objc_opt_class(), 0}];
          v33 = [v125 decodeObjectOfClasses:v108 forKey:*MEMORY[0x277CCA308]];

          if (v33)
          {
            v15 = [(CSReceiverConnection *)self donateRelevantShortcuts:v33 bundleID:v16];
            goto LABEL_46;
          }
        }

        else
        {
          v127 = 0;
        }

        v33 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          [CSReceiverConnection handleCommand:info:connection:];
        }

        v15 = -1;
        goto LABEL_46;
      }

      v58 = [(CSReceiverConnection *)self deleteAllInteractionsWithBundleID:v16 protectionClass:v17];
    }

    else
    {
      if (uint64 != 4096)
      {
        if (uint64 == 0x2000)
        {
          v61 = [MEMORY[0x277CC3510] dataWrapperForKey:"ids" sizeKey:"ids-size" fromXPCDictionary:v8];
          if (v61)
          {
            v62 = objc_alloc(MEMORY[0x277CC33C8]);
            v63 = [v61 data];
            v64 = [v62 initWithData:v63];

            if (v64 && ([v64 obj], _MDPlistGetPlistObjectType() == 240) && (objc_msgSend(v64, "obj"), _MDPlistArrayGetCount()))
            {
              [v64 obj];
              v65 = *MEMORY[0x277CBECE8];
              v66 = _MDPlistContainerCopyObject();

              if (v66)
              {
                v15 = [(CSReceiverConnection *)self deleteUserActivitiesWithPersistentIdentifiers:v66 bundleID:v16];
                goto LABEL_189;
              }
            }

            else
            {
            }
          }

          v66 = logForCSLogCategoryDefault();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            [CSReceiverConnection handleCommand:info:connection:];
          }

          v15 = -1;
          goto LABEL_189;
        }

        if (uint64 != 0x4000)
        {
          goto LABEL_132;
        }

        v31 = xpc_dictionary_get_value(v8, "ra");
        v32 = v31;
        if (v31 && MEMORY[0x238394C70](v31) == MEMORY[0x277D86458] && (v99 = xpc_data_get_length(v32)) != 0 && (v100 = xpc_data_get_bytes_ptr(v32)) != 0 && ([MEMORY[0x277CBEA90] dataWithBytesNoCopy:v100 length:v99 freeWhenDone:0], (v127 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v124 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v127 error:0];
          v101 = MEMORY[0x277CBEB98];
          v102 = objc_opt_class();
          v103 = [v101 setWithObjects:{v102, objc_opt_class(), 0}];
          v33 = [v124 decodeObjectOfClasses:v103 forKey:*MEMORY[0x277CCA308]];

          if (v33)
          {
            v15 = [(CSReceiverConnection *)self donateRelevantActions:v33 bundleID:v16];
LABEL_46:

            goto LABEL_9;
          }
        }

        else
        {
          v127 = 0;
        }

        v33 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          [CSReceiverConnection handleCommand:info:connection:];
        }

        v15 = -1;
        goto LABEL_46;
      }

      v58 = [(CSReceiverConnection *)self deleteAllUserActivities:v16];
    }

    v15 = v58;
    goto LABEL_9;
  }

  if (v14 == 115 && !a3[1])
  {
    v15 = [(CSReceiverConnection *)self handleSetup:reply];
    v16 = 0;
    v17 = 0;
LABEL_9:
    v18 = 0;
LABEL_60:
    if (euid)
    {
      v37 = [(CSXPCConnection *)self queue];
      dispatch_queue_set_specific(v37, SpotlightReceiverConnectionUIDKey, 0, 0);
    }

    v38 = xpc_dictionary_get_remote_connection(v8);
    if (v38)
    {
      v39 = reply == 0;
    }

    else
    {
      v39 = 1;
    }

    v40 = v39 || v18;
    if ((v40 & 1) == 0)
    {
      xpc_dictionary_set_int64(reply, "status", v15);
      xpc_connection_send_message(v38, reply);
    }

    goto LABEL_71;
  }

LABEL_11:
  if (!_SpotlightDaemonClientHandleCommand(a3, v8, self->_receiver))
  {
LABEL_57:
    v16 = 0;
    v17 = 0;
LABEL_58:
    v18 = 0;
LABEL_59:
    v15 = -1;
    goto LABEL_60;
  }

  if (euid)
  {
    v16 = [(CSXPCConnection *)self queue];
    dispatch_queue_set_specific(v16, SpotlightReceiverConnectionUIDKey, 0, 0);
LABEL_71:
  }

  v41 = *MEMORY[0x277D85DE8];
  return 1;
}

void __54__CSReceiverConnection_handleCommand_info_connection___block_invoke(uint64_t a1, int a2, int64_t a3)
{
  close(*(a1 + 48));
  xpc_dictionary_set_int64(*(a1 + 32), "pstatus", a3);
  xpc_dictionary_set_int64(*(a1 + 32), "status", a2);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);

  xpc_connection_send_message(v6, v7);
}

void __54__CSReceiverConnection_handleCommand_info_connection___block_invoke_387(uint64_t a1, int a2)
{
  close(*(a1 + 48));
  xpc_dictionary_set_int64(*(a1 + 32), "status", a2);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);

  xpc_connection_send_message(v4, v5);
}

- (int)handleSetup:(id)a3
{
  v83 = *MEMORY[0x277D85DE8];
  v4 = a3;
  xpc_dictionary_set_uint64(v4, "jt", self->_supportedJobs);
  if ([(NSMutableDictionary *)self->_configs count])
  {
    v75 = v4;
    v77 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v73 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v74 = self;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    obj = [(CSReceiverConnection *)self configs];
    v7 = [obj countByEnumeratingWithState:&v78 objects:v82 count:16];
    if (!v7)
    {
      goto LABEL_46;
    }

    v8 = v7;
    v9 = *v79;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v79 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v78 + 1) + 8 * i);
        v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v13 = [v11 name];
        [v12 setObject:v13 forKey:SpotlightScheduledReceiverConfigName];

        v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "needsText")}];
        [v12 setObject:v14 forKey:@"requiresText"];

        v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "needsHTML")}];
        [v12 setObject:v15 forKey:@"requiresHTML"];

        v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "requirePriority")}];
        [v12 setObject:v16 forKey:@"requirePriorityItems"];

        v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "requireBacklog")}];
        [v12 setObject:v17 forKey:@"requireBacklogItems"];

        v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "supportsDeletes")}];
        [v12 setObject:v18 forKey:@"includeDeletedItems"];

        v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v11, "needsLanguage")}];
        [v12 setObject:v19 forKey:@"includeLanguage"];

        v20 = [v11 priority];

        if (v20)
        {
          v21 = [v11 priority];
          [v12 setObject:v21 forKey:SpotlightScheduledReceiverConfigPriority];
        }

        v22 = [v11 processes];

        if (v22)
        {
          v23 = [v11 processes];
          [v12 setObject:v23 forKey:SpotlightScheduledReceiverConfigProcesses];
        }

        v24 = [v11 supportedQuery];

        if (v24)
        {
          v25 = [v11 supportedQuery];
          [v12 setObject:v25 forKey:SpotlightScheduledReceiverConfigSupportedQuery];
        }

        v26 = [v11 supportedBundles];
        v27 = [v26 count];

        if (v27)
        {
          v28 = [v11 supportedBundles];
          [v12 setObject:v28 forKey:SpotlightScheduledReceiverConfigSupportedBundles];
        }

        v29 = [v11 unsupportedBundles];
        v30 = [v29 count];

        if (v30)
        {
          v31 = [v11 unsupportedBundles];
          [v12 setObject:v31 forKey:SpotlightScheduledReceiverConfigUnsupportedBundles];
        }

        v32 = [v11 supportedDomainIdentifiers];
        v33 = [v32 count];

        if (v33)
        {
          v34 = [v11 supportedDomainIdentifiers];
          [v12 setObject:v34 forKey:SpotlightScheduledReceiverConfigSupportedDomains];
        }

        v35 = [v11 unsupportedDomainIdentifiers];
        v36 = [v35 count];

        if (v36)
        {
          v37 = [v11 unsupportedDomainIdentifiers];
          [v12 setObject:v37 forKey:SpotlightScheduledReceiverConfigUnsupportedDomains];
        }

        v38 = [v11 supportedContentTypes];
        v39 = [v38 count];

        if (v39)
        {
          v40 = [v11 supportedContentTypes];
          [v12 setObject:v40 forKey:SpotlightScheduledReceiverConfigSupportedContentTypes];
        }

        v41 = [v11 unsupportedContentTypes];
        v42 = [v41 count];

        if (v42)
        {
          v43 = [v11 unsupportedContentTypes];
          [v12 setObject:v43 forKey:SpotlightScheduledReceiverConfigUnsupportedContentTypes];
        }

        v44 = [v11 donationAttributes];
        v45 = [v44 count];

        if (v45)
        {
          v46 = [v11 donationAttributes];
          [v12 setObject:v46 forKey:SpotlightScheduledReceiverConfigDonationAttributes];
        }

        v47 = [v11 requiredAttributes];
        v48 = [v47 count];

        if (v48)
        {
          v49 = [v11 requiredAttributes];
          [v12 setObject:v49 forKey:SpotlightScheduledReceiverConfigRequiredAttributes];
        }

        v50 = [v11 optionalAttributes];
        v51 = [v50 count];

        if (v51)
        {
          v52 = [v11 optionalAttributes];
          [v12 setObject:v52 forKey:SpotlightScheduledReceiverConfigOptionalAttributes];
        }

        v53 = [v11 excludeAttributes];
        v54 = [v53 count];

        if (v54)
        {
          v55 = [v11 excludeAttributes];
          [v12 setObject:v55 forKey:SpotlightScheduledReceiverConfigExcludeAttributes];
        }

        [v77 addObject:v12];
        if (!v5)
        {
          if (!v6)
          {
            goto LABEL_44;
          }

LABEL_40:
          v59 = [v11 supportedContentTypes];
          v60 = [v59 count];

          if (v60)
          {
            v61 = [v11 supportedContentTypes];
            [v6 addObjectsFromArray:v61];
          }

          else
          {
            v61 = v6;
            v6 = 0;
          }

          goto LABEL_44;
        }

        v56 = [v11 supportedBundles];
        v57 = [v56 count];

        if (v57)
        {
          v58 = [v11 supportedBundles];
          [v5 addObjectsFromArray:v58];
        }

        else
        {
          v58 = v5;
          v5 = 0;
        }

        if (v6)
        {
          goto LABEL_40;
        }

LABEL_44:
      }

      v8 = [obj countByEnumeratingWithState:&v78 objects:v82 count:16];
      if (!v8)
      {
LABEL_46:

        v62 = [v5 allObjects];
        self = v74;
        bundleIDs = v74->_bundleIDs;
        v74->_bundleIDs = v62;

        v64 = [v6 allObjects];
        contentTypes = v74->_contentTypes;
        v74->_contentTypes = v64;

        v66 = [v73 allObjects];
        INIntentClassNames = v74->_INIntentClassNames;
        v74->_INIntentClassNames = v66;

        v4 = v75;
        [MEMORY[0x277CC3510] dictionary:v75 setStringOrDictionaryArray:v77 forKey:"jps"];

        break;
      }
    }
  }

  v68 = self->_bundleIDs;
  if (v68)
  {
    [MEMORY[0x277CC3510] dictionary:v4 setStringArray:v68 forKey:"bids"];
  }

  v69 = self->_contentTypes;
  if (v69)
  {
    [MEMORY[0x277CC3510] dictionary:v4 setStringArray:v69 forKey:"cts"];
  }

  v70 = self->_INIntentClassNames;
  if (v70)
  {
    [MEMORY[0x277CC3510] dictionary:v4 setStringArray:v70 forKey:"icls"];
  }

  v71 = *MEMORY[0x277D85DE8];
  return 0;
}

- (int)indexFromBundle:(id)a3 protectionClass:(id)a4 items:(id)a5 itemsContent:(id)a6
{
  v10 = a6;
  if (a5)
  {
    v11 = MEMORY[0x277CC33C8];
    v12 = a5;
    v13 = a4;
    v14 = a3;
    v15 = [v11 alloc];
    v16 = [v12 data];
    v17 = [v15 initWithData:v16];

    [v17 setBackingStore:v12];
    if (v10)
    {
      v18 = objc_alloc(MEMORY[0x277CC33C8]);
      v19 = [v10 data];
      v20 = [v18 initWithData:v19];

      [v20 setBackingStore:v10];
    }

    else
    {
      v20 = 0;
    }

    v21 = [objc_alloc(MEMORY[0x277CC34C0]) initWithItems:v17 itemsContent:v20];
    [v21 setBundleID:v14];
    [v21 setProtectionClass:v13];

    [(SpotlightReceiver *)self->_receiver addOrUpdateSearchableItems:v21 bundleID:v14];
  }

  return 0;
}

- (BOOL)enableDebuggability
{
  if (enableDebuggability_onceToken != -1)
  {
    [CSReceiverConnection enableDebuggability];
  }

  return enableDebuggability_sDebugEnabled;
}

uint64_t __43__CSReceiverConnection_enableDebuggability__block_invoke()
{
  result = _os_feature_enabled_impl();
  enableDebuggability_sDebugEnabled = result;
  return result;
}

- (id)indexForBundleID:(id)a3 protectionClass:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableDictionary *)self->_indexes count]>= 0xA)
  {
    [(NSMutableDictionary *)self->_indexes removeAllObjects];
  }

  v8 = [(NSMutableDictionary *)self->_indexes objectForKeyedSubscript:v6];

  if (!v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)self->_indexes setObject:v9 forKeyedSubscript:v6];
  }

  v10 = [(NSMutableDictionary *)self->_indexes objectForKeyedSubscript:v6];
  v11 = [v10 objectForKeyedSubscript:v7];

  if (!v11)
  {
    v12 = [objc_alloc(MEMORY[0x277CC34A8]) _initWithName:@"SpotlightResources" protectionClass:v7 bundleIdentifier:v6 options:32];
    v13 = [(NSMutableDictionary *)self->_indexes objectForKeyedSubscript:v6];
    [v13 setObject:v12 forKeyedSubscript:v7];
  }

  v14 = [(NSMutableDictionary *)self->_indexes objectForKeyedSubscript:v6];
  v15 = [v14 objectForKeyedSubscript:v7];

  os_unfair_lock_unlock(&self->_lock);

  return v15;
}

- (id)fetchableIdentifiersFromDonation:(id)a3 additionalAttributes:(id)a4 config:(id)a5
{
  v36[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 count])
  {
    v23 = [v7 bundleIdentifier];
    v10 = [v7 protectionClass];
    v11 = [v8 allKeys];
    v12 = v11;
    if (v23 && v10)
    {
      v22 = [objc_alloc(MEMORY[0x277CC34A8]) initWithName:@"SKG" protectionClass:v10 bundleIdentifier:v23];
      v30 = 0;
      v31 = &v30;
      v32 = 0x3032000000;
      v33 = __Block_byref_object_copy_;
      v34 = __Block_byref_object_dispose_;
      v35 = [v12 mutableCopy];
      v13 = dispatch_group_create();
      dispatch_group_enter(v13);
      v14 = [v9 versionName];
      v36[0] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __85__CSReceiverConnection_fetchableIdentifiersFromDonation_additionalAttributes_config___block_invoke;
      v24[3] = &unk_2789AE000;
      v25 = v9;
      v26 = v12;
      v29 = &v30;
      v27 = v23;
      v16 = v13;
      v28 = v16;
      [v22 slowFetchAttributes:v15 protectionClass:v10 bundleID:v27 identifiers:v26 completionHandler:v24];

      v17 = dispatch_time(0, 1200000000000);
      if (dispatch_group_wait(v16, v17))
      {
        v18 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [CSReceiverConnection fetchableIdentifiersFromDonation:additionalAttributes:config:];
        }
      }

      v19 = v31[5];

      _Block_object_dispose(&v30, 8);
    }

    else
    {
      v19 = v11;
    }
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

void __85__CSReceiverConnection_fetchableIdentifiersFromDonation_additionalAttributes_config___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v5 = 0;
    v6 = *MEMORY[0x277CBEEE8];
    *&v4 = 138412546;
    v17 = v4;
    do
    {
      v7 = [v3 objectAtIndexedSubscript:{v5, v17}];
      v8 = [v7 firstObject];
      v9 = v8;
      if (v8)
      {
        if (v8 != v6)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = v9;
            v11 = [*(a1 + 32) versionValue];
            v12 = [v10 isEqualToNumber:v11];

            if (v12)
            {
              v13 = [*(a1 + 40) objectAtIndexedSubscript:v5];
              [*(*(*(a1 + 64) + 8) + 40) removeObject:v13];
              v14 = logForCSLogCategoryDefault();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
              {
                v15 = *(a1 + 48);
                *buf = v17;
                v19 = v13;
                v20 = 2112;
                v21 = v15;
                _os_log_impl(&dword_232D5E000, v14, OS_LOG_TYPE_INFO, "### SCHEDULED RECEIVER ignoring already processing item %@ [%@]", buf, 0x16u);
              }
            }
          }
        }
      }

      ++v5;
    }

    while (v5 < [v3 count]);
  }

  dispatch_group_leave(*(a1 + 56));

  v16 = *MEMORY[0x277D85DE8];
}

- (void)indexWithFd:(int)a3 offset:(unint64_t)a4 size:(unint64_t)a5 donation:(id)a6 additionalAttributes:(id)a7 config:(id)a8 completionHandler:(id)a9
{
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  if (a5)
  {
    v50 = [(CSReceiverConnection *)self fetchableIdentifiersFromDonation:v15 additionalAttributes:v16 config:v17];
    if ([v50 count])
    {
      v49 = v16;
      v19 = MEMORY[0x277CCACA8];
      v20 = [(CSXPCConnection *)self serviceName];
      v21 = [v17 name];
      v22 = [v19 stringWithFormat:@"%@.%@.adds", v20, v21];

      v48 = v22;
      v23 = [v22 UTF8String];
      v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v25 = dispatch_queue_attr_make_with_qos_class(v24, QOS_CLASS_DEFAULT, 0);
      v26 = dispatch_queue_create(v23, v25);

      v27 = dispatch_group_create();
      v28 = -*MEMORY[0x277D85FA0];
      v29 = v28 & a4;
      v45 = ((a4 + a5 + *MEMORY[0x277D85FA0] - 1) & v28) + (v28 & a4);
      v30 = mmap(0, v45, 1, 1, a3, v28 & a4);
      if (v30 == -1)
      {
        v18[2](v18, 1, 0);
        v36 = v50;
      }

      else
      {
        v31 = v30;
        v43 = [v17 fetchAttributes];
        [v15 protectionClass];
        v46 = v27;
        v32 = queue = v26;
        scheduledReceiver = self->_scheduledReceiver;
        v42 = objc_opt_respondsToSelector() & 1;
        v34 = self->_scheduledReceiver;
        v44 = objc_opt_respondsToSelector() & 1;
        v35 = [(CSReceiverConnection *)self enableDebuggability];
        v76[0] = 0;
        v76[1] = v76;
        v76[2] = 0x2020000000;
        v77 = -1;
        v75[0] = 0;
        v75[1] = v75;
        v75[2] = 0x2020000000;
        v75[3] = 0;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke;
        block[3] = &unk_2789AE138;
        v68 = v31;
        v69 = a4;
        v70 = v29;
        v71 = a5;
        v36 = v50;
        v58 = v50;
        v59 = v43;
        v60 = v49;
        v72 = v35;
        v61 = v17;
        v62 = v32;
        v63 = self;
        v73 = v42;
        v64 = v15;
        v37 = v46;
        v65 = v37;
        v66 = v76;
        v67 = v75;
        v74 = v44;
        v38 = v32;
        v39 = v43;
        dispatch_group_async(v37, queue, block);
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke_5;
        v51[3] = &unk_2789AE160;
        v55 = v31;
        v56 = v45;
        v52 = v18;
        v53 = v76;
        v54 = v75;
        v40 = v37;
        v26 = queue;
        dispatch_group_notify(v40, queue, v51);

        _Block_object_dispose(v75, 8);
        _Block_object_dispose(v76, 8);
        v27 = v46;
      }

      v16 = v49;
    }

    else
    {
      v18[2](v18, 0, 2);
      v36 = v50;
    }
  }

  else
  {
    v41 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [CSReceiverConnection indexWithFd:v15 offset:v41 size:? donation:? additionalAttributes:? config:? completionHandler:?];
    }

    v18[2](v18, 1, 0);
  }
}

void __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 112);
  v3 = *(a1 + 136);
  v4 = *(a1 + 120) - *(a1 + 128);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v21 = *(a1 + 144);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v17 = v10;
  v18 = v9;
  v11 = *(a1 + 64);
  v22 = *(a1 + 145);
  v12 = *(a1 + 72);
  v16 = v11;
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  *&v15 = v13;
  *(&v15 + 1) = v14;
  v19 = v15;
  v20 = *(a1 + 96);
  v23 = *(a1 + 146);
  if (!MDJournalReaderProcessRecordBatchWithBytes())
  {
    *(*(*(a1 + 96) + 8) + 24) = 1;
  }
}

void __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, __int128 *a6)
{
  v8 = a4;
  v123 = *MEMORY[0x277D85DE8];
  buf = *a4;
  v122 = *(a4 + 2);
  if (_MDPlistGetPlistObjectType() == 240 && a3 != 0)
  {
    v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
    if (v74)
    {
      buf = *a5;
      v122 = *(a5 + 2);
      PlistObjectType = _MDPlistGetPlistObjectType();
      buf = *a6;
      v122 = *(a6 + 2);
      v80 = _MDPlistGetPlistObjectType();
      buf = *v8;
      v122 = *(v8 + 2);
      Count = _MDPlistArrayGetCount();
      if (Count)
      {
        v13 = Count;
        v62 = a5;
        v63 = a6;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v79 = *MEMORY[0x277CBECE8];
        v61 = v95;
        v64 = v8;
        v65 = Count;
        while (1)
        {
          buf = 0uLL;
          v122 = 0;
          v117 = *v8;
          v118 = *(v8 + 2);
          _MDPlistArrayGetPlistObjectAtIndex();
          v117 = buf;
          v118 = v122;
          if (_MDPlistGetPlistObjectType() == 246)
          {
            *&v115 = 0;
            v117 = buf;
            v118 = v122;
            _MDPlistDataGetBytePtr();
            _MDPlistGetRootPlistObjectFromBytes();
            buf = v117;
            v122 = v118;
          }

          v117 = buf;
          v118 = v122;
          if (_MDPlistGetPlistObjectType() == 240)
          {
            v117 = buf;
            v118 = v122;
            v17 = _MDPlistArrayGetCount();
            if ((v17 - 3) <= 1)
            {
              v18 = v17;
              v115 = buf;
              v116 = v122;
              _MDPlistArrayGetPlistObjectAtIndex();
              IntValue = _MDPlistNumberGetIntValue();
              v117 = 0uLL;
              v118 = 0;
              v115 = buf;
              v116 = v122;
              _MDPlistArrayGetPlistObjectAtIndex();
              v115 = 0uLL;
              v116 = 0;
              v113 = v117;
              v114 = v118;
              if (_MDPlistDictionaryGetPlistObjectForKey())
              {
                v69 = IntValue;
                v112 = 0;
                v111 = 0;
                v113 = v115;
                v114 = v116;
                _MDPlistStringGetValue();
                v113 = v115;
                v114 = v116;
                v77 = MDJournalReaderMDPlistObjectCopy();
                if ([*(a1 + 32) containsObject:v61])
                {
                  v113 = 0uLL;
                  v114 = 0;
                  v109 = v117;
                  v110 = v118;
                  if (_MDPlistDictionaryGetPlistObjectForKey())
                  {
                    v109 = v113;
                    v110 = v114;
                    v70 = _MDPlistContainerCopyObject();
                  }

                  else
                  {
                    v70 = 0;
                  }

                  v67 = v15;
                  v109 = 0uLL;
                  v110 = 0;
                  v107 = 0uLL;
                  v108 = 0;
                  if (v18 == 4)
                  {
                    v103 = buf;
                    v104 = v122;
                    _MDPlistArrayGetPlistObjectAtIndex();
                    v22 = *(&v105 + 1);
                    v72 = v105;
                    v73 = v106;
                  }

                  else
                  {
                    v72 = 0;
                    v73 = 0;
                    v22 = 0;
                  }

                  if (PlistObjectType == 241)
                  {
                    v105 = *v62;
                    v106 = *(v62 + 2);
                    _MDPlistDictionaryGetPlistObjectForKey();
                  }

                  if (v80 == 241)
                  {
                    v105 = *v63;
                    v106 = *(v63 + 2);
                    _MDPlistDictionaryGetPlistObjectForKey();
                  }

                  v66 = v16;
                  v68 = v14;
                  v23 = [*(a1 + 40) count];
                  v24 = [*(a1 + 48) objectForKeyedSubscript:v77];
                  v25 = [v24 count];

                  v26 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v25 + v23];
                  v71 = objc_alloc_init(MEMORY[0x277CC34B8]);
                  v105 = 0uLL;
                  v106 = 0;
                  v99 = 0u;
                  v100 = 0u;
                  v101 = 0u;
                  v102 = 0u;
                  v27 = a1;
                  v28 = *(a1 + 40);
                  v29 = [v28 countByEnumeratingWithState:&v99 objects:v120 count:16];
                  if (v29)
                  {
                    v30 = v29;
                    v75 = 0;
                    v76 = 0;
                    v31 = *v100;
                    while (1)
                    {
                      for (i = 0; i != v30; ++i)
                      {
                        if (*v100 != v31)
                        {
                          objc_enumerationMutation(v28);
                        }

                        v33 = *(*(&v99 + 1) + 8 * i);
                        if (v80 == 241 && [v33 isEqualToString:@"kMDItemHTMLContentData"])
                        {
                          v103 = v107;
                          v104 = v108;
                          v34 = v76;
                          v76 = MDJournalReaderMDPlistObjectCopy();
LABEL_43:

                          continue;
                        }

                        if (PlistObjectType == 241 && [v33 isEqualToString:@"kMDItemTextContent"])
                        {
                          v103 = v109;
                          v104 = v110;
                          v34 = v75;
                          v75 = MDJournalReaderMDPlistObjectCopy();
                          goto LABEL_43;
                        }

                        if ([v33 isEqualToString:@"kMDItemExtraData"])
                        {
                          if ([v74 isEqualToString:@"com.apple.Passbook"])
                          {
                            if (v22)
                            {
                              [v33 UTF8String];
                              strlen([v33 UTF8String]);
                              *&v103 = v72;
                              *(&v103 + 1) = v22;
                              v104 = v73;
                              if (_MDPlistDictionaryGetPlistObjectForKey())
                              {
                                goto LABEL_41;
                              }
                            }
                          }
                        }

                        [v33 UTF8String];
                        strlen([v33 UTF8String]);
                        v103 = v117;
                        v104 = v118;
                        if (_MDPlistDictionaryGetPlistObjectForKey())
                        {
LABEL_41:
                          v103 = v105;
                          v104 = v106;
                          v34 = _MDPlistContainerCopyObject();
                          if (v34)
                          {
                            [v26 setObject:v34 forKey:v33];
                          }

                          goto LABEL_43;
                        }
                      }

                      v30 = [v28 countByEnumeratingWithState:&v99 objects:v120 count:16];
                      if (!v30)
                      {
                        goto LABEL_48;
                      }
                    }
                  }

                  v75 = 0;
                  v76 = 0;
LABEL_48:

                  a1 = v27;
                  v35 = v71;
                  if (v22 && [*(v27 + 40) count])
                  {
                    v93 = MEMORY[0x277D85DD0];
                    v94 = 3221225472;
                    v95[0] = __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke_3;
                    v95[1] = &unk_2789AE028;
                    v96 = v26;
                    v97 = *(v27 + 40);
                    v98 = v71;
                    *&v103 = v72;
                    *(&v103 + 1) = v22;
                    v104 = v73;
                    _MDPlistDictionaryIterate();
                  }

                  v36 = [*(v27 + 48) objectForKeyedSubscript:v77];

                  if (v36)
                  {
                    v91 = 0u;
                    v92 = 0u;
                    v89 = 0u;
                    v90 = 0u;
                    v37 = [*(v27 + 48) objectForKeyedSubscript:v77];
                    v38 = [v37 countByEnumeratingWithState:&v89 objects:v119 count:16];
                    if (v38)
                    {
                      v39 = v38;
                      v40 = *v90;
                      do
                      {
                        for (j = 0; j != v39; ++j)
                        {
                          if (*v90 != v40)
                          {
                            objc_enumerationMutation(v37);
                          }

                          v42 = *(*(&v89 + 1) + 8 * j);
                          v43 = [*(a1 + 48) objectForKeyedSubscript:v77];
                          v44 = [v43 objectForKeyedSubscript:v42];
                          [v26 setObject:v44 forKeyedSubscript:v42];

                          a1 = v27;
                        }

                        v39 = [v37 countByEnumeratingWithState:&v89 objects:v119 count:16];
                      }

                      while (v39);
                    }

                    v35 = v71;
                  }

                  v45 = [v26 objectForKey:@"_kMDItemBundleID"];

                  if (!v45)
                  {
                    [v26 setObject:v74 forKey:@"_kMDItemBundleID"];
                  }

                  [v35 addAttributesFromDictionary:v26];
                  v15 = v67;
                  v14 = v68;
                  v8 = v64;
                  v46 = v35;
                  v13 = v65;
                  v16 = v66;
                  if (v76)
                  {
                    [v46 setHTMLContentData:?];
                  }

                  if (v75)
                  {
                    [v46 setTextContent:?];
                  }

                  v47 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v77 domainIdentifier:v70 attributeSet:v46];
                  [v47 setIsUpdate:v69 & 1];
                  if (!v68)
                  {
                    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  }

                  [v14 addObject:v47];
                  if (*(a1 + 112) == 1)
                  {
                    v48 = objc_alloc_init(MEMORY[0x277CC34B8]);
                    [v48 setAttribute:&unk_284823060 forKey:@"_kMDItemProcessedBySpotlightSender"];
                    if ([*(a1 + 56) requireBacklog])
                    {
                      [v48 setAttribute:&unk_284823060 forKey:@"_kMDItemProcessedBacklog"];
                    }

                    if ([*(a1 + 56) requirePriority])
                    {
                      [v48 setAttribute:&unk_284823060 forKey:@"_kMDItemProcessedPriority"];
                    }

                    v49 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v77 domainIdentifier:0 attributeSet:v48];
                    [v49 setBundleID:v74];
                    [v49 setIsUpdate:1];
                    if (!v67)
                    {
                      v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
                    }

                    [v15 addObject:v49];

                    v13 = v65;
                  }

                  v21 = v75;
                  v20 = v76;
                }

                else
                {
                  v20 = 0;
                  v21 = 0;
                }
              }
            }
          }

          if (++v16 == v13)
          {
            goto LABEL_81;
          }
        }
      }

      v15 = 0;
      v14 = 0;
LABEL_81:
      if (![v14 count])
      {
        goto LABEL_92;
      }

      v50 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = [v14 count];
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v51;
        _os_log_impl(&dword_232D5E000, v50, OS_LOG_TYPE_DEFAULT, "### SCHEDULED RECEIVER sending %ld items", &buf, 0xCu);
      }

      if ([v15 count] && *(a1 + 64))
      {
        v52 = [*(a1 + 72) indexForBundleID:v74 protectionClass:?];
        [v52 indexSearchableItems:v15 completionHandler:&__block_literal_global_458];
      }

      if (*(a1 + 113) == 1)
      {
        [*(a1 + 80) setBundleIdentifier:v74];
        [*(a1 + 80) setItems:v14];
        dispatch_group_enter(*(a1 + 88));
        v53 = *(a1 + 80);
        v54 = *(*(a1 + 72) + 88);
        v84[0] = MEMORY[0x277D85DD0];
        v84[1] = 3221225472;
        v84[2] = __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke_459;
        v84[3] = &unk_2789AE0C0;
        v88 = *(a1 + 96);
        v55 = v85;
        v56 = *(a1 + 88);
        v57 = *(a1 + 72);
        v85[0] = v56;
        v85[1] = v57;
        v86 = v74;
        v87 = *(a1 + 64);
        [v54 processDonation:v53 completionHandler:v84];
      }

      else
      {
        if (*(a1 + 114) != 1)
        {
LABEL_92:

          goto LABEL_93;
        }

        dispatch_group_enter(*(a1 + 88));
        v58 = *(*(a1 + 72) + 88);
        v59 = [*(a1 + 56) name];
        v81[0] = MEMORY[0x277D85DD0];
        v81[1] = 3221225472;
        v81[2] = __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke_4;
        v81[3] = &unk_2789AE0E8;
        v83 = vextq_s8(*(a1 + 96), *(a1 + 96), 8uLL);
        v55 = &v82;
        v82 = *(a1 + 88);
        [v58 addOrUpdateSearchableItems:v14 bundleID:v74 name:v59 completionHandler:v81];
      }

      goto LABEL_92;
    }
  }

LABEL_93:
  v60 = *MEMORY[0x277D85DE8];
}

void __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke_3(id *a1, const UInt8 *a2, CFIndex a3, __int128 *a4)
{
  v6 = CFStringCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], a2, a3, 0x8000100u, 0, *MEMORY[0x277CBED00]);
  v7 = [a1[4] objectForKeyedSubscript:v6];
  if (v7)
  {
  }

  else if ([a1[5] containsObject:v6])
  {
    v15 = *a4;
    v17 = *(a4 + 2);
    if (_MDPlistGetPlistObjectType() == 240)
    {
      v16 = *a4;
      v18 = *(a4 + 2);
      if (_MDPlistArrayGetCount() == 2)
      {
        v11 = *a4;
        v13 = *(a4 + 2);
        _MDPlistArrayGetPlistObjectAtIndex();
        IntValue = _MDPlistNumberGetIntValue();
        v12 = *a4;
        v14 = *(a4 + 2);
        _MDPlistArrayGetPlistObjectAtIndex();
        v9 = CSDecodeObject();
        if (v9)
        {
          v10 = [objc_alloc(MEMORY[0x277CC33B0]) initWithKeyName:v6 searchable:IntValue & 1 searchableByDefault:(IntValue >> 1) & 1 unique:(IntValue >> 2) & 1 multiValued:{(IntValue >> 3) & 1, v12, v14}];
          [a1[6] setValue:v9 forCustomKey:v10];
        }
      }
    }
  }
}

void __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke_455(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke_455_cold_1();
    }
  }
}

void __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke_459(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 64) + 8) + 24) = 0;
  *(*(*(a1 + 72) + 8) + 24) = [v3 status];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke_2_460;
  v9[3] = &unk_2789AE070;
  v9[4] = &v10;
  [v3 enumerateUpdatesUsingBlock:v9];
  if ([v11[5] count])
  {
    dispatch_group_enter(*(a1 + 32));
    v4 = [*(a1 + 40) indexForBundleID:*(a1 + 48) protectionClass:*(a1 + 56)];
    v5 = v11[5];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke_3_462;
    v6[3] = &unk_2789AE098;
    v8 = *(a1 + 72);
    v7 = *(a1 + 32);
    [v4 indexSearchableItems:v5 completionHandler:v6];
  }

  dispatch_group_leave(*(a1 + 32));
  _Block_object_dispose(&v10, 8);
}

void __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke_2_460(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v8 = v3;
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v8;
    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  [v4 addObject:v3];
}

void __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke_3_462(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 40) + 8);
  if (a2)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(v2 + 24);
  }

  *(v2 + 24) = v3;
  dispatch_group_leave(*(a1 + 32));
}

void __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 4;
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke_5(uint64_t a1)
{
  munmap(*(a1 + 56), *(a1 + 64));
  v2 = *(*(*(a1 + 40) + 8) + 24);
  v3 = *(*(*(a1 + 48) + 8) + 24);
  v4 = *(*(a1 + 32) + 16);

  return v4();
}

- (void)deleteWithFd:(int)a3 offset:(unint64_t)a4 size:(unint64_t)a5 donation:(id)a6 completionHandler:(id)a7
{
  v12 = a6;
  v13 = a7;
  if (a5)
  {
    v29 = v12;
    v14 = -*MEMORY[0x277D85FA0];
    v15 = v14 & a4;
    v16 = ((a4 + a5 + *MEMORY[0x277D85FA0] - 1) & v14) + (v14 & a4);
    v17 = mmap(0, v16, 1, 1, a3, v14 & a4);
    if (v17 == -1)
    {
      v13[2](v13, 1);
      v12 = v29;
    }

    else
    {
      v18 = v17;
      v19 = MEMORY[0x277CCACA8];
      v20 = [(CSXPCConnection *)self serviceName];
      v28 = [v19 stringWithFormat:@"%@.deletes", v20];

      v21 = [v28 UTF8String];
      v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v23 = dispatch_queue_attr_make_with_qos_class(v22, QOS_CLASS_DEFAULT, 0);
      v24 = dispatch_queue_create(v21, v23);

      v25 = dispatch_group_create();
      v44[0] = 0;
      v44[1] = v44;
      v44[2] = 0x2020000000;
      v45 = -1;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __76__CSReceiverConnection_deleteWithFd_offset_size_donation_completionHandler___block_invoke;
      block[3] = &unk_2789AE200;
      v40 = v18;
      v41 = a4;
      v42 = v15;
      v43 = a5;
      v12 = v29;
      v36 = v29;
      v37 = v25;
      v38 = self;
      v39 = v44;
      v26 = v25;
      dispatch_group_async(v26, v24, block);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __76__CSReceiverConnection_deleteWithFd_offset_size_donation_completionHandler___block_invoke_2_472;
      v30[3] = &unk_2789AE228;
      v33 = v18;
      v34 = v16;
      v31 = v13;
      v32 = v44;
      dispatch_group_notify(v26, v24, v30);

      _Block_object_dispose(v44, 8);
    }
  }

  else
  {
    v27 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [CSReceiverConnection deleteWithFd:offset:size:donation:completionHandler:];
    }

    v13[2](v13, 1);
  }
}

void __76__CSReceiverConnection_deleteWithFd_offset_size_donation_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 88);
  v4 = *(a1 + 72) - *(a1 + 80);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (!MDJournalReaderProcessRecordBatchWithBytes())
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

void __76__CSReceiverConnection_deleteWithFd_offset_size_donation_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a5)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __76__CSReceiverConnection_deleteWithFd_offset_size_donation_completionHandler___block_invoke_3;
    v27 = &unk_2789AE188;
    v8 = &v28;
    v9 = v7;
    v28 = v9;
    *buf = *a4;
    v23 = *(a4 + 16);
    _MDPlistArrayIterate();
    if ([v9 count])
    {
      v10 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_232D5E000, v10, OS_LOG_TYPE_DEFAULT, "### SCHEDULED RECEIVER sending delete items", buf, 2u);
      }

      [*(a1 + 32) setIdentifiers:v9];
      dispatch_group_enter(*(a1 + 40));
      v11 = *(*(a1 + 48) + 88);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __76__CSReceiverConnection_deleteWithFd_offset_size_donation_completionHandler___block_invoke_469;
      v19[3] = &unk_2789AE1B0;
      v21 = *(a1 + 56);
      v12 = *(a1 + 32);
      v20 = *(a1 + 40);
      [v11 processDonation:v12 completionHandler:v19];
    }

LABEL_12:

    goto LABEL_13;
  }

  v13 = *MEMORY[0x277CBECE8];
  *buf = *a4;
  v23 = *(a4 + 16);
  v9 = MDJournalReaderMDPlistObjectCopy();
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v9 count])
      {
        [*(a1 + 32) setIdentifiers:v9];
        v14 = logForCSLogCategoryDefault();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_232D5E000, v14, OS_LOG_TYPE_DEFAULT, "### SCHEDULED RECEIVER sending delete items", buf, 2u);
        }

        dispatch_group_enter(*(a1 + 40));
        v15 = *(*(a1 + 48) + 88);
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __76__CSReceiverConnection_deleteWithFd_offset_size_donation_completionHandler___block_invoke_470;
        v17[3] = &unk_2789AE1B0;
        v18[1] = *(a1 + 56);
        v8 = v18;
        v16 = *(a1 + 32);
        v18[0] = *(a1 + 40);
        [v15 processDonation:v16 completionHandler:v17];
        goto LABEL_12;
      }
    }
  }

LABEL_13:
}

void __76__CSReceiverConnection_deleteWithFd_offset_size_donation_completionHandler___block_invoke_3(uint64_t a1, __int128 *a2)
{
  v7 = *a2;
  v8 = *(a2 + 2);
  if (_MDPlistDictionaryGetPlistObjectForKey())
  {
    if (_MDPlistStringGetValue())
    {
      v3 = *MEMORY[0x277CBECE8];
      v4 = MDJournalReaderMDPlistObjectCopy();
      if (v4)
      {
        v5 = v4;
        v6 = CFGetTypeID(v4);
        if (v6 == CFStringGetTypeID())
        {
          [*(a1 + 32) addObject:v5];
        }

        CFRelease(v5);
      }
    }
  }
}

uint64_t __76__CSReceiverConnection_deleteWithFd_offset_size_donation_completionHandler___block_invoke_2_472(uint64_t a1)
{
  munmap(*(a1 + 48), *(a1 + 56));
  v2 = *(*(*(a1 + 40) + 8) + 24);
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (int)deleteFromBundle:(id)a3 sinceDate:(id)a4 domains:(id)a5 deletes:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    [(SpotlightReceiver *)self->_receiver deleteSearchableItemsWithIdentifiers:v13 bundleID:v10];
  }

  else if (v12)
  {
    [(SpotlightReceiver *)self->_receiver deleteSearchableItemsWithDomainIdentifiers:v12 bundleID:v10];
  }

  else
  {
    receiver = self->_receiver;
    if (v11)
    {
      [(SpotlightReceiver *)receiver deleteSearchableItemsSinceDate:v11 bundleID:v10];
    }

    else
    {
      [(SpotlightReceiver *)receiver deleteAllSearchableItemsWithBundleID:v10];
    }
  }

  return 0;
}

- (int)addUserActions:(id)a3 bundleID:(id)a4 protectionClass:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = MEMORY[0x277CC33C8];
  v10 = a3;
  v11 = [v9 alloc];
  v12 = [v10 data];
  v13 = [v11 initWithData:v12];

  [v13 setBackingStore:v10];
  if (v13)
  {
    [v13 obj];
    if (_MDPlistGetPlistObjectType() == 240)
    {
      [v13 obj];
      if (_MDPlistArrayGetCount())
      {
        [v13 obj];
        v15 = v13;
        v16 = v7;
        v17 = v8;
        _MDPlistArrayIterate();
      }
    }
  }

  return 0;
}

void __64__CSReceiverConnection_addUserActions_bundleID_protectionClass___block_invoke(void *a1, __int128 *a2)
{
  v14 = *a2;
  v15 = *(a2 + 2);
  if (_MDPlistGetPlistObjectType() == 240)
  {
    v14 = *a2;
    v15 = *(a2 + 2);
    if (_MDPlistArrayGetCount() == 2)
    {
      v4 = a1[4];
      v10 = *a2;
      v12 = *(a2 + 2);
      _MDPlistArrayGetPlistObjectAtIndex();
      v5 = [v4 decodeObject:{&v14, v10, v12}];
      v6 = a1[4];
      v11 = *a2;
      v13 = *(a2 + 2);
      _MDPlistArrayGetPlistObjectAtIndex();
      v7 = [v6 decodeObject:{&v14, v11, v13}];
      v8 = objc_alloc_init(MEMORY[0x277CC34B0]);
      [v8 setAttributeSet:v7];
      [v8 setBundleID:a1[5]];
      [v8 setProtection:a1[6]];
      v9 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __64__CSReceiverConnection_addUserActions_bundleID_protectionClass___block_invoke_cold_1(v5, v9);
      }

      [*(a1[7] + 80) addUserAction:v5 withItem:v8];
    }
  }
}

- (int)addInteraction:(id)a3 bundleID:(id)a4 protectionClass:(id)a5
{
  v16 = *MEMORY[0x277D85DE8];
  receiver = self->_receiver;
  v15 = a3;
  v8 = MEMORY[0x277CBEA60];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 arrayWithObjects:&v15 count:1];
  [(SpotlightReceiver *)receiver addInteractions:v12 bundleID:v10 protectionClass:v9, v15, v16];

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)addClientConnectionIfAllowedForConnection:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleCommand:(void *)a1 info:(uint64_t)a2 connection:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_2(&dword_232D5E000, a3, a3, "Error: %@", a2);
}

- (void)handleCommand:info:connection:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleCommand:info:connection:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleCommand:info:connection:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleCommand:info:connection:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleCommand:info:connection:.cold.8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleCommand:info:connection:.cold.9()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleCommand:info:connection:.cold.10()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleCommand:info:connection:.cold.11()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleCommand:info:connection:.cold.12()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleCommand:info:connection:.cold.13()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleCommand:info:connection:.cold.14()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleCommand:info:connection:.cold.15()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleCommand:info:connection:.cold.16()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleCommand:(int)a1 info:(int *)a2 connection:(os_log_t)log .cold.17(int a1, int *a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v5[0] = 67109376;
  v5[1] = a1;
  v6 = 1024;
  v7 = v3;
  _os_log_error_impl(&dword_232D5E000, log, OS_LOG_TYPE_ERROR, "Job not supported type: 0x%x supported: 0x%x ", v5, 0xEu);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)indexWithFd:(void *)a1 offset:(NSObject *)a2 size:donation:additionalAttributes:config:completionHandler:.cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 configName];
  v6 = 138412290;
  v7 = v3;
  OUTLINED_FUNCTION_2(&dword_232D5E000, a2, v4, "### SCHEDULED RECEIVER indexWithFd invalid request %@", &v6);

  v5 = *MEMORY[0x277D85DE8];
}

void __103__CSReceiverConnection_indexWithFd_offset_size_donation_additionalAttributes_config_completionHandler___block_invoke_455_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __64__CSReceiverConnection_addUserActions_bundleID_protectionClass___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_232D5E000, a2, OS_LOG_TYPE_DEBUG, "addUserAction: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end