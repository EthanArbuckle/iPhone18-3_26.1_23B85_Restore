@interface PKServicePersonality
- (NSString)description;
- (PKServicePersonality)initWithConnection:(id)connection service:(id)service;
- (double)cleanExitTimeout;
- (id)defaultPrincipalObject;
- (id)findProtocol:(id)protocol;
- (void)beginUsingPlugIn:(id)in ready:(id)ready;
- (void)hostHasControl;
- (void)prefsObjectForKey:(id)key inPlugIn:(id)in result:(id)result;
- (void)prefsSetObject:(id)object forKey:(id)key inPlugIn:(id)in result:(id)result;
- (void)prepareUsing:(id)using reply:(id)reply;
- (void)prepareUsingPlugIn:(id)in hostProtocol:(id)protocol reply:(id)reply;
- (void)shutdownPlugIn;
@end

@implementation PKServicePersonality

- (void)shutdownPlugIn
{
  v18 = *MEMORY[0x1E69E9840];
  service = [(PKServicePersonality *)self service];
  v4 = [service unregisterPersonality:self];

  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    service2 = [(PKServicePersonality *)self service];
    subsystems = [service2 subsystems];

    v7 = [subsystems countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        v9 = 0;
        if (v7 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v7;
        }

        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(subsystems);
          }

          v11 = *(*(&v13 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v11 endUsing:self];
          }

          ++v9;
        }

        while (v10 != v9);
        v7 = [subsystems countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [(PKServicePersonality *)self setPlugInPrincipal:0];
    [(PKServicePersonality *)self setEmbeddedPrincipal:0];
    [(PKServicePersonality *)self setHostPrincipal:0];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)defaultPrincipalObject
{
  principalSpec = [(PKPlugInCore *)self principalSpec];
  v4 = principalSpec;
  if (!principalSpec)
  {
    v7 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B69CC(self);
    }

    goto LABEL_10;
  }

  Class = objc_getClass([principalSpec UTF8String]);
  if (!Class)
  {
    v7 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B6918();
    }

LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  v6 = objc_alloc_init(Class);
  if (v6)
  {
    goto LABEL_12;
  }

  v7 = pklog_handle_for_category(7);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1C68B6864();
  }

LABEL_11:

LABEL_12:

  return v6;
}

- (void)hostHasControl
{
  service = [(PKServicePersonality *)self service];
  [service beganUsingServicePersonality:self];
}

- (PKServicePersonality)initWithConnection:(id)connection service:(id)service
{
  connectionCopy = connection;
  serviceCopy = service;
  external = [serviceCopy external];
  v28.receiver = self;
  v28.super_class = PKServicePersonality;
  v9 = [(PKPlugInCore *)&v28 initWithExternalProviders:external];

  if (v9)
  {
    objc_storeStrong(&v9->_service, service);
    [(PKServicePersonality *)v9 setConnection:connectionCopy];
    connection = [(PKServicePersonality *)v9 connection];
    [connection setExportedObject:v9];

    v11 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4647D88];
    connection2 = [(PKServicePersonality *)v9 connection];
    [connection2 setExportedInterface:v11];

    v13 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F464CEA8];
    connection3 = [(PKServicePersonality *)v9 connection];
    [connection3 setRemoteObjectInterface:v13];

    objc_initWeak(&location, v9);
    objc_initWeak(&from, v9->_connection);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_1C68A8F58;
    v23[3] = &unk_1E827F938;
    objc_copyWeak(&v24, &location);
    objc_copyWeak(&v25, &from);
    connection4 = [(PKServicePersonality *)v9 connection];
    [connection4 setInterruptionHandler:v23];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1C68A9090;
    v19[3] = &unk_1E827F960;
    objc_copyWeak(&v21, &location);
    objc_copyWeak(&v22, &from);
    v20 = serviceCopy;
    connection5 = [(PKServicePersonality *)v9 connection];
    [connection5 setInvalidationHandler:v19];

    connection6 = [(PKServicePersonality *)v9 connection];
    [connection6 resume];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v9;
}

- (void)prepareUsing:(id)using reply:(id)reply
{
  v119 = *MEMORY[0x1E69E9840];
  usingCopy = using;
  replyCopy = reply;
  v7 = pklog_handle_for_category(7);
  v8 = os_signpost_id_make_with_pointer(v7, usingCopy);

  v9 = pklog_handle_for_category(7);
  v10 = v9;
  spid = v8;
  v11 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6892000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "ExtensionPrepareUsing", &unk_1C68BDED5, buf, 2u);
  }

  v12 = [usingCopy objectForKeyedSubscript:@"identifier"];
  v13 = [usingCopy objectForKeyedSubscript:@"hostProtocol"];
  v70 = [usingCopy objectForKeyedSubscript:@"epPlatform"];
  unsignedIntValue = [v70 unsignedIntValue];
  v14 = [usingCopy objectForKeyedSubscript:@"isRBManaged"];
  bOOLValue = [v14 BOOLValue];
  v16 = [usingCopy objectForKeyedSubscript:@"version"];
  -[PKPlugInCore setHubProtocolVersion:](self, "setHubProtocolVersion:", [v16 unsignedIntegerValue]);

  if (![(PKPlugInCore *)self hubProtocolVersion])
  {
    [(PKPlugInCore *)self setHubProtocolVersion:1];
  }

  [(PKPlugInCore *)self setIsRBManaged:bOOLValue];
  v17 = pklog_handle_for_category(7);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = "will not";
    if (bOOLValue)
    {
      v18 = "will";
    }

    *buf = 138412546;
    *&buf[4] = v12;
    *&buf[12] = 2080;
    *&buf[14] = v18;
    _os_log_impl(&dword_1C6892000, v17, OS_LOG_TYPE_INFO, "%@: %s be managed by runningboard", buf, 0x16u);
  }

  v19 = objc_alloc(MEMORY[0x1E696AFB0]);
  v20 = [usingCopy objectForKeyedSubscript:@"uuid"];
  v21 = [v19 initWithUUIDString:v20];

  if (v21)
  {
    [(PKPlugInCore *)self setUuid:v21];
  }

  v117 = 0u;
  memset(v118, 0, sizeof(v118));
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v100 = 0u;
  memset(buf, 0, sizeof(buf));
  v80 = 0;
  v81 = 0;
  current_persona = voucher_get_current_persona();
  v23 = current_persona;
  memset(buf, 0, sizeof(buf));
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  memset(v118, 0, sizeof(v118));
  *buf = 1;
  pklog_get_persona_type_and_name(current_persona, buf, &v81, &v80);
  v24 = pklog_handle_for_category(7);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v71 = v21;
    uuid = [(PKPlugInCore *)self uuid];
    [(PKPlugInCore *)self identifier];
    v26 = v66 = replyCopy;
    [(PKPlugInCore *)self version];
    v27 = v63 = v14;
    v28 = geteuid();
    v29 = getuid();
    *v83 = 138545154;
    v84 = uuid;
    v85 = 2112;
    v86 = v26;
    v87 = 2112;
    v88 = v27;
    v89 = 1024;
    v90 = v28;
    v21 = v71;
    v91 = 1024;
    v92 = v29;
    v93 = 1024;
    v94 = v23;
    v95 = 2080;
    v96 = v81;
    v97 = 2080;
    v98 = v80;
    _os_log_impl(&dword_1C6892000, v24, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] Prepare received as euid = %d, uid = %d, personaid = %d, type = %s, name = %s", v83, 0x46u);

    v14 = v63;
    replyCopy = v66;
  }

  selfCopy2 = self;
  v31 = [(PKServicePersonality *)self setupWithIdentifier:v12 extensionPointPlatform:unsignedIntValue];
  if (v31)
  {
    v32 = v31;
    v33 = pklog_handle_for_category(7);
    v34 = v33;
    if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
    {
      code = [v32 code];
      *buf = 67240448;
      *&buf[8] = 2050;
      *&buf[10] = code;
      _os_signpost_emit_with_name_impl(&dword_1C6892000, v34, OS_SIGNPOST_INTERVAL_END, spid, "ExtensionPrepareUsing", " success=%{public, signpost.description:attribute}d  error=%{public, signpost.description:attribute}llu ", buf, 0x12u);
    }

    replyCopy[2](replyCopy, v32, 0);
    v36 = v70;
  }

  else
  {
    v62 = usingCopy;
    v65 = v12;
    v67 = replyCopy;
    v64 = v14;
    v72 = v21;
    if (v13)
    {
      v79 = 0;
      v37 = sub_1C68960F0(v13, &v79);
      v38 = v79;
      v69 = v38;
      if (v37)
      {
        localizedDescription = [MEMORY[0x1E696B0D0] interfaceWithProtocol:v37];
        connection = [(PKServicePersonality *)self connection];
        exportedInterface = [connection exportedInterface];
        [exportedInterface setInterface:localizedDescription forSelector:sel_beginUsingPlugIn_ready_ argumentIndex:0 ofReply:0];
      }

      else
      {
        v42 = MEMORY[0x1E695DF30];
        v43 = *MEMORY[0x1E695D930];
        localizedDescription = [v38 localizedDescription];
        [v42 raise:v43 format:{@"%@", localizedDescription}];
      }

      selfCopy2 = self;
    }

    else
    {
      v69 = 0;
    }

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    service = [(PKServicePersonality *)selfCopy2 service];
    subsystems = [service subsystems];

    v46 = [subsystems countByEnumeratingWithState:&v75 objects:v82 count:16];
    if (v46)
    {
      v47 = *v76;
      do
      {
        v48 = 0;
        if (v46 <= 1)
        {
          v49 = 1;
        }

        else
        {
          v49 = v46;
        }

        do
        {
          if (*v76 != v47)
          {
            objc_enumerationMutation(subsystems);
          }

          v50 = *(*(&v75 + 1) + 8 * v48);
          if (objc_opt_respondsToSelector())
          {
            v51 = objc_opt_class();
            v52 = NSStringFromClass(v51);
            v53 = pklog_handle_for_category(7);
            v54 = v53;
            if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
            {
              *buf = 138543618;
              *&buf[4] = v72;
              *&buf[12] = 2114;
              *&buf[14] = v52;
              _os_signpost_emit_with_name_impl(&dword_1C6892000, v54, OS_SIGNPOST_INTERVAL_BEGIN, spid, "ExtensionSubsystemBeginUsing", " uuid=%{public, signpost.description:attribute}@  name=%{public, signpost.description:attribute}@ ", buf, 0x16u);
            }

            mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
            __PLUGINKIT_CALLING_OUT_TO_CLIENT_SUBSYSTEM_FOR_BEGINUSING__(v50);

            v56 = pklog_handle_for_category(7);
            v57 = v56;
            if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_1C6892000, v57, OS_SIGNPOST_INTERVAL_END, spid, "ExtensionSubsystemBeginUsing", &unk_1C68BDED5, buf, 2u);
            }
          }

          ++v48;
        }

        while (v49 != v48);
        v46 = [subsystems countByEnumeratingWithState:&v75 objects:v82 count:16];
      }

      while (v46);
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v59 = pklog_handle_for_category(7);
    v60 = v59;
    if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
    {
      *buf = 0x104020200;
      *&buf[8] = 2050;
      *&buf[10] = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6892000, v60, OS_SIGNPOST_INTERVAL_END, spid, "ExtensionPrepareUsing", " success=%{public, signpost.description:attribute}d  error=%{public, signpost.description:attribute}llu ", buf, 0x12u);
    }

    replyCopy = v67;
    (v67)[2](v67, 0, dictionary);

    usingCopy = v62;
    v14 = v64;
    v12 = v65;
    v36 = v70;
    v21 = v72;
    v32 = v69;
  }

  v61 = *MEMORY[0x1E69E9840];
}

- (void)prepareUsingPlugIn:(id)in hostProtocol:(id)protocol reply:(id)reply
{
  protocolCopy = protocol;
  replyCopy = reply;
  v10 = MEMORY[0x1E695DF90];
  inCopy = in;
  dictionary = [v10 dictionary];
  [dictionary setObject:inCopy forKeyedSubscript:@"identifier"];

  if (protocolCopy)
  {
    [dictionary setObject:protocolCopy forKeyedSubscript:@"hostProtocol"];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1C68A9E10;
  v14[3] = &unk_1E827F988;
  v14[4] = self;
  v15 = replyCopy;
  v13 = replyCopy;
  [(PKServicePersonality *)self prepareUsing:dictionary reply:v14];
}

- (void)beginUsingPlugIn:(id)in ready:(id)ready
{
  v51 = *MEMORY[0x1E69E9840];
  inCopy = in;
  readyCopy = ready;
  v32 = 0;
  v33 = 0;
  current_persona = voucher_get_current_persona();
  v12 = current_persona;
  memset(v50, 0, 348);
  LODWORD(v50[0]) = 1;
  pklog_get_persona_type_and_name(current_persona, v50, &v33, &v32);
  v13 = pklog_handle_for_category(7);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(PKPlugInCore *)self uuid];
    identifier = [(PKPlugInCore *)self identifier];
    version = [(PKPlugInCore *)self version];
    v15 = geteuid();
    v16 = getuid();
    *buf = 138545154;
    v35 = uuid;
    v36 = 2112;
    v37 = identifier;
    v38 = 2112;
    v39 = version;
    v40 = 1024;
    v41 = v15;
    v42 = 1024;
    v43 = v16;
    v44 = 1024;
    v45 = v12;
    v46 = 2080;
    v47 = v33;
    v48 = 2080;
    v49 = v32;
    _os_log_impl(&dword_1C6892000, v13, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] Begin using received as euid = %d, uid = %d, personaid = %d, type = %s, name = %s", buf, 0x46u);
  }

  service = [(PKServicePersonality *)self service];
  delegate = [service delegate];
  if (delegate)
  {
    identifier = [(PKServicePersonality *)self service];
    version = [identifier delegate];
    identifier2 = [(PKPlugInCore *)self identifier];
    [version rootObjectForPlugIn:identifier2];
  }

  else
  {
    [(PKServicePersonality *)self defaultPrincipalObject];
  }
  v19 = ;
  v20 = v19;
  if (delegate)
  {

    v19 = identifier;
  }

  if (v20)
  {
    [(PKServicePersonality *)self setPlugInPrincipal:v20];
    v21 = MEMORY[0x1E696B0D0];
    protocolSpec = [(PKPlugInCore *)self protocolSpec];
    v23 = [(PKServicePersonality *)self findProtocol:protocolSpec];
    service3 = [v21 interfaceWithProtocol:v23];

    connection = [(PKServicePersonality *)self connection];
    exportedInterface = [connection exportedInterface];
    [exportedInterface setInterface:service3 forSelector:sel_beginUsingPlugIn_ready_ argumentIndex:1 ofReply:1];

    v27 = [(PKPlugInCore *)self augmentInterface:service3];
    if (v27)
    {
      v28 = pklog_handle_for_category(7);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1C68B6644();
      }

      (*(readyCopy + 2))(readyCopy, 0, 0);
      service2 = [(PKServicePersonality *)self service];
      [service2 beganUsingServicePersonality:self];
    }

    else
    {
      [(PKServicePersonality *)self setHostPrincipal:inCopy];
      service2 = [(PKServicePersonality *)self plugInPrincipal];
      (*(readyCopy + 2))(readyCopy, 0, service2);
    }
  }

  else
  {
    v30 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B66FC(self);
    }

    (*(readyCopy + 2))(readyCopy, 0, 0);
    service3 = [(PKServicePersonality *)self service];
    [service3 beganUsingServicePersonality:self];
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (id)findProtocol:(id)protocol
{
  v30 = *MEMORY[0x1E69E9840];
  protocolCopy = protocol;
  v5 = protocolCopy;
  if (protocolCopy)
  {
    v19 = 0;
    v6 = sub_1C6895D90(protocolCopy, &v19);
    v7 = v19;
    if (!v6)
    {
      v8 = pklog_handle_for_category(7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        uuid = [(PKPlugInCore *)self uuid];
        identifier = [(PKPlugInCore *)self identifier];
        version = [(PKPlugInCore *)self version];
        localizedDescription = [v7 localizedDescription];
        *buf = 138544386;
        v21 = uuid;
        v22 = 2112;
        v23 = identifier;
        v24 = 2112;
        v25 = version;
        v26 = 2112;
        v27 = v5;
        v28 = 2112;
        v29 = localizedDescription;
        _os_log_error_impl(&dword_1C6892000, v8, OS_LOG_TYPE_ERROR, "[u %{public}@] [%@(%@)] failed to find protocol for [%@]: %@", buf, 0x34u);
      }

      v9 = MEMORY[0x1E695DF30];
      v10 = *MEMORY[0x1E695D930];
      localizedDescription2 = [v7 localizedDescription];
      [v9 raise:v10 format:{@"unable to start plug-in: %@", localizedDescription2}];
    }
  }

  else
  {
    v12 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B67B0(self);
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"missing protocol specification in Info.plist"];
    v6 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

- (double)cleanExitTimeout
{
  v24 = *MEMORY[0x1E69E9840];
  if ([(PKPlugInCore *)self isRBManaged])
  {
    v3 = -1.0;
  }

  else
  {
    v3 = 15.0;
  }

  v4 = [(PKPlugInCore *)self pluginKey:@"CleanTimeout"];
  v5 = pklog_handle_for_category(7);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      uuid = [(PKPlugInCore *)self uuid];
      identifier = [(PKPlugInCore *)self identifier];
      version = [(PKPlugInCore *)self version];
      v16 = 138544130;
      v17 = uuid;
      v18 = 2112;
      v19 = identifier;
      v20 = 2112;
      v21 = version;
      v22 = 2112;
      v23 = *&v4;
      _os_log_impl(&dword_1C6892000, v5, OS_LOG_TYPE_INFO, "[u %{public}@] [%@(%@)] got CleanExit value:%@", &v16, 0x2Au);
    }

    [v4 doubleValue];
    v3 = v10;
  }

  else
  {
    if (v6)
    {
      uuid2 = [(PKPlugInCore *)self uuid];
      identifier2 = [(PKPlugInCore *)self identifier];
      version2 = [(PKPlugInCore *)self version];
      v16 = 138544130;
      v17 = uuid2;
      v18 = 2112;
      v19 = identifier2;
      v20 = 2112;
      v21 = version2;
      v22 = 2048;
      v23 = v3;
      _os_log_impl(&dword_1C6892000, v5, OS_LOG_TYPE_INFO, "[u %{public}@] [%@(%@)] setting delta:%g", &v16, 0x2Au);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)prefsObjectForKey:(id)key inPlugIn:(id)in result:(id)result
{
  resultCopy = result;
  keyCopy = key;
  preferences = [(PKServicePersonality *)self preferences];
  v10 = [preferences objectForKey:keyCopy];

  resultCopy[2](resultCopy, v10);
}

- (void)prefsSetObject:(id)object forKey:(id)key inPlugIn:(id)in result:(id)result
{
  resultCopy = result;
  keyCopy = key;
  objectCopy = object;
  preferences = [(PKServicePersonality *)self preferences];
  [preferences setObject:objectCopy forKey:keyCopy];

  resultCopy[2]();
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKServicePersonality;
  v4 = [(PKPlugInCore *)&v8 description];
  connection = [(PKServicePersonality *)self connection];
  v6 = [v3 stringWithFormat:@"<PKServicePersonality: %p core = %@, host pid = %d>", self, v4, objc_msgSend(connection, "processIdentifier")];;

  return v6;
}

@end