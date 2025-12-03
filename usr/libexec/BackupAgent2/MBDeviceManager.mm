@interface MBDeviceManager
- (MBDeviceManager)initWithCheckinMethod:(int)method;
- (id)_acceptConnectionWithInfo:(id)info;
- (id)_checkinWithConnectionInfo:(id)info;
- (id)_settingsContextWithSourceIdentifier:(id)identifier targetIdentifier:(id)targetIdentifier applicationIDs:(id)ds options:(id)options;
- (id)close;
- (id)open;
- (id)run;
- (void)_acceptFailedCallback:(id)callback;
- (void)_disconnectCallback:(id)callback;
- (void)_enableCloudBackupMessage:(id)message;
- (void)_eraseDeviceMessage:(id)message;
- (void)_handleBackupMessage:(id)message;
- (void)_handleChangePasswordMessage:(id)message;
- (void)_handleExtractMessage:(id)message;
- (void)_handleHelloMessage:(id)message;
- (void)_handleInfoMessage:(id)message;
- (void)_handleListMessage:(id)message;
- (void)_handleRemoveMessage:(id)message;
- (void)_handleRestoreMessage:(id)message;
- (void)_handleUnbackMessage:(id)message;
- (void)_processMessageCallback:(id)callback;
- (void)_sendResponseMessage:(id)message;
- (void)_sendResponseMessageWithCode:(int64_t)code description:(id)description;
- (void)_sendResponseMessageWithError:(id)error;
- (void)_sendSuccessResponseMessageWithProperties:(id)properties;
- (void)_stop;
- (void)_stopWithError:(id)error;
- (void)dealloc;
@end

@implementation MBDeviceManager

- (MBDeviceManager)initWithCheckinMethod:(int)method
{
  v7.receiver = self;
  v7.super_class = MBDeviceManager;
  v4 = [(MBDeviceManager *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_checkinMethod = method;
    [+[MBPersona personalPersonaWithError:](MBPersona personalPersonaWithError:{0), "setPreferencesValue:forKey:", 0, @"DriveRestoreInProgress"}];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MBDeviceManager;
  [(MBDeviceManager *)&v3 dealloc];
}

- (id)open
{
  v3 = [NSMutableDictionary dictionaryWithCapacity:0];
  result = [(MBDeviceManager *)self _checkinWithConnectionInfo:v3];
  if (!result)
  {

    return [(MBDeviceManager *)self _acceptConnectionWithInfo:v3];
  }

  return result;
}

- (id)_checkinWithConnectionInfo:(id)info
{
  [info setValue:@"DLInfoStreamTypeTCP" forKey:@"DLInfoStreamTypeKey"];
  checkinMethod = self->_checkinMethod;
  if (checkinMethod == 2)
  {
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v18 = 6599;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Listening on port %d", buf, 8u);
      v16 = 6599;
      _MBLog();
    }

    v12 = [NSNumber numberWithInt:6599, v16];
    v13 = @"DLInfoPortKey";
LABEL_17:
    [info setValue:v12 forKey:v13];
    return 0;
  }

  if (checkinMethod == 1)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Checking in with launchd", buf, 2u);
      _MBLog();
    }

    v9 = DLGetListenerSocketFromLaunchd();
    if (!v9)
    {
      v7 = @"Could not check-in with launchd";
      return [MBError errorWithCode:100 format:v7, v16];
    }

    v10 = v9;
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Listening on launchd socket: %d", buf, 8u);
      v16 = v10;
      _MBLog();
    }

    v12 = [NSNumber numberWithInt:v10, v16];
    v13 = @"DLInfoSocketKey";
    goto LABEL_17;
  }

  if (checkinMethod)
  {
    return [MBError errorWithCode:1 format:@"Unknown checkin method: %d", self->_checkinMethod];
  }

  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Checking in with lockdown", buf, 2u);
    _MBLog();
  }

  if (!DLLockdownXPCCheckin())
  {
    return 0;
  }

  v7 = @"Could not check-in with lockdown";
  return [MBError errorWithCode:100 format:v7, v16];
}

- (id)_acceptConnectionWithInfo:(id)info
{
  v12 = 0;
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Creating device connection", buf, 2u);
    _MBLog();
  }

  v5 = DLCreateDeviceLinkConnectionForDevice();
  if (v5)
  {
    return [MBError errorWithCode:100 format:@"Error creating connection: %d %@", v5, v12];
  }

  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Waiting for connection from computer", v10, 2u);
    _MBLog();
  }

  connection = self->super._connection;
  v9 = DLWaitForConnection();
  if (v9)
  {
    return [MBError errorWithCode:100 format:@"Error accepting connection: %d %@", v9, v12];
  }

  else
  {
    return 0;
  }
}

- (id)run
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Running connection", v5, 2u);
    _MBLog();
  }

  CFRunLoopRun();
  return self->_error;
}

- (id)close
{
  v16 = 0;
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Closing connection", buf, 2u);
    _MBLog();
  }

  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Disconnecting connection", buf, 2u);
    _MBLog();
  }

  error = self->_error;
  if (error)
  {
    [(NSError *)error description];
  }

  connection = self->super._connection;
  v7 = DLDisconnect();
  if (v7)
  {
    v8 = v7;
    v9 = self->super._connection;
    DLDeleteDeviceLinkConnection();
    return [MBError errorWithCode:100 format:@"Error disconnecting connection: %d %@", v8, v16];
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Deleting connection", buf, 2u);
      _MBLog();
    }

    v12 = self->super._connection;
    v13 = DLDeleteDeviceLinkConnection();
    if (v13)
    {
      return [MBError errorWithCode:100 format:@"Error deleting connection: %d %@", v13, v16];
    }

    else
    {
      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Connection closed", buf, 2u);
        _MBLog();
      }

      return 0;
    }
  }
}

- (id)_settingsContextWithSourceIdentifier:(id)identifier targetIdentifier:(id)targetIdentifier applicationIDs:(id)ds options:(id)options
{
  v11 = +[MBDriveSettingsContext defaultSettingsContext];
  [v11 setProtocolVersion:self->_protocolVersion];
  [v11 setSourceIdentifier:identifier];
  [v11 setTargetIdentifier:targetIdentifier];
  if (ds)
  {
    v12 = [NSSet setWithArray:ds];
  }

  else
  {
    v12 = 0;
  }

  [v11 setApplicationIDs:v12];
  [objc_msgSend(v11 "options")];
  [v11 setDrive:{+[MBDeviceLinkDrive deviceLinkDriveWithConnection:](MBDeviceLinkDrive, "deviceLinkDriveWithConnection:", self->super._connection)}];
  return v11;
}

- (void)_stop
{
  Current = CFRunLoopGetCurrent();

  CFRunLoopStop(Current);
}

- (void)_stopWithError:(id)error
{
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    errorCopy = error;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "_stopWithError: %@", buf, 0xCu);
    errorCopy2 = error;
    _MBLog();
  }

  if (!self->_error)
  {
    self->_error = error;
  }

  [(MBDeviceManager *)self _stop];
}

- (void)_sendResponseMessage:(id)message
{
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = [message objectForKeyedSubscript:@"ErrorCode"];
    v8 = 2112;
    v9 = [message objectForKeyedSubscript:@"ErrorDescription"];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Sending response message: %@ %@", buf, 0x16u);
    [message objectForKeyedSubscript:@"ErrorCode"];
    [message objectForKeyedSubscript:@"ErrorDescription"];
    _MBLog();
  }

  *buf = 0;
  connection = self->super._connection;
  if (DLProcessMessage())
  {
    [(MBDeviceManager *)self _stopWithError:[MBError errorWithCode:100 format:@"Error sending message: %@", *buf]];
  }
}

- (void)_sendSuccessResponseMessageWithProperties:(id)properties
{
  v6[0] = @"MessageName";
  v6[1] = @"ErrorCode";
  v7[0] = @"Response";
  v7[1] = [NSNumber numberWithInt:0];
  v5 = [+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary mutableCopy:v7];
  [v5 addEntriesFromDictionary:properties];
  [(MBDeviceManager *)self _sendResponseMessage:v5];
}

- (void)_sendResponseMessageWithCode:(int64_t)code description:(id)description
{
  v7[0] = @"Response";
  v6[0] = @"MessageName";
  v6[1] = @"ErrorCode";
  v6[2] = @"ErrorDescription";
  v7[1] = [NSNumber numberWithInteger:code];
  v7[2] = description;
  [(MBDeviceManager *)self _sendResponseMessage:[NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3]];
}

- (void)_sendResponseMessageWithError:(id)error
{
  if ([objc_msgSend(error "domain")])
  {
    code = [error code];
  }

  else
  {
    code = 1;
  }

  v6 = [MBError descriptionForError:error];

  [(MBDeviceManager *)self _sendResponseMessageWithCode:code description:v6];
}

- (void)_acceptFailedCallback:(id)callback
{
  callback = [MBError errorWithCode:100 format:@"Accepting connection failed: %@", callback];

  [(MBDeviceManager *)self _stopWithError:callback];
}

- (void)_disconnectCallback:(id)callback
{
  v4 = MBGetDefaultLog();
  v5 = v4;
  if (callback)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      callbackCopy = callback;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Computer disconnected: %@", buf, 0xCu);
      _MBLog();
    }

    v6 = 1;
  }

  else
  {
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Computer disconnected", buf, 2u);
      _MBLog();
      v6 = 0;
    }
  }

  sub_100001BA0(v6);
}

- (void)_processMessageCallback:(id)callback
{
  v5 = [callback objectForKeyedSubscript:@"MessageName"];
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Received message: %@", buf, 0xCu);
    v7 = v5;
    _MBLog();
  }

  if ([v5 isEqualToString:{@"Hello", v7}])
  {
    [(MBDeviceManager *)self _handleHelloMessage:callback];
  }

  else if ([v5 isEqualToString:@"Backup"])
  {
    [(MBDeviceManager *)self _handleBackupMessage:callback];
  }

  else if ([v5 isEqualToString:@"Restore"])
  {
    [(MBDeviceManager *)self _handleRestoreMessage:callback];
  }

  else if ([v5 isEqualToString:@"ChangePassword"])
  {
    [(MBDeviceManager *)self _handleChangePasswordMessage:callback];
  }

  else if ([v5 isEqualToString:@"Extract"])
  {
    [(MBDeviceManager *)self _handleExtractMessage:callback];
  }

  else if ([v5 isEqualToString:@"Remove"])
  {
    [(MBDeviceManager *)self _handleRemoveMessage:callback];
  }

  else if ([v5 isEqualToString:@"Info"])
  {
    [(MBDeviceManager *)self _handleInfoMessage:callback];
  }

  else if ([v5 isEqualToString:@"List"])
  {
    [(MBDeviceManager *)self _handleListMessage:callback];
  }

  else if ([v5 isEqualToString:@"Unback"])
  {
    [(MBDeviceManager *)self _handleUnbackMessage:callback];
  }

  else if ([v5 isEqualToString:@"EnableCloudBackup"])
  {
    [(MBDeviceManager *)self _enableCloudBackupMessage:callback];
  }

  else if ([v5 isEqualToString:@"EraseDevice"])
  {
    [(MBDeviceManager *)self _eraseDeviceMessage:callback];
  }

  else
  {
    [(MBDeviceManager *)self _stopWithError:[MBError errorWithCode:1 format:@"Unknown message name received: %@", v5]];
  }
}

- (void)_handleHelloMessage:(id)message
{
  v4 = [message objectForKeyedSubscript:@"SupportedProtocolVersions"];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = MBSupportedProtocolVersions();
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([v4 containsObject:v10])
        {
          [v10 doubleValue];
          if (v11 > self->_protocolVersion)
          {
            [v10 doubleValue];
            self->_protocolVersion = v12;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v7);
  }

  protocolVersion = self->_protocolVersion;
  v14 = MBGetDefaultLog();
  v15 = v14;
  if (protocolVersion <= 0.0)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "No common supported protocol version", buf, 2u);
      _MBLog();
    }

    [(MBDeviceManager *)self _sendResponseMessageWithCode:1 description:@"No common supported protocol version"];
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = self->_protocolVersion;
      *buf = 134217984;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Using protocol version %0.1f", buf, 0xCu);
      v17 = self->_protocolVersion;
      _MBLog();
    }

    v22 = @"ProtocolVersion";
    v23 = [NSNumber numberWithDouble:self->_protocolVersion, *&v17];
    [(MBDeviceManager *)self _sendSuccessResponseMessageWithProperties:[NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1]];
  }
}

- (void)_handleBackupMessage:(id)message
{
  v4 = -[MBDeviceManager _settingsContextWithSourceIdentifier:targetIdentifier:applicationIDs:options:](self, "_settingsContextWithSourceIdentifier:targetIdentifier:applicationIDs:options:", 0, [message objectForKeyedSubscript:@"TargetIdentifier"], 0, objc_msgSend(message, "objectForKeyedSubscript:", @"Options"));
  v5 = +[MBDriveBackupEngine backupEngineWithSettingsContext:debugContext:](MBDriveBackupEngine, "backupEngineWithSettingsContext:debugContext:", v4, +[MBDebugContext defaultDebugContext]);
  [v4 setPlugins:sub_100098474()];
  -[MBProgress setDelegate:](-[MBDriveBackupEngine progress](v5, "progress"), "setDelegate:", [v4 drive]);
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Action: Backup", v8, 2u);
    _MBLog();
  }

  backup = [(MBDriveBackupEngine *)v5 backup];
  if (backup)
  {
    [(MBDeviceManager *)self _sendResponseMessageWithError:backup];
  }

  else
  {
    [(MBDeviceManager *)self _sendSuccessResponseMessage];
  }

  [(MBDriveBackupEngine *)v5 endWithError:backup];
}

- (void)_handleRestoreMessage:(id)message
{
  v4 = -[MBDeviceManager _settingsContextWithSourceIdentifier:targetIdentifier:applicationIDs:options:](self, "_settingsContextWithSourceIdentifier:targetIdentifier:applicationIDs:options:", [message objectForKeyedSubscript:@"SourceIdentifier"], objc_msgSend(message, "objectForKeyedSubscript:", @"TargetIdentifier"), objc_msgSend(message, "objectForKeyedSubscript:", @"ApplicationIDs"), objc_msgSend(message, "objectForKeyedSubscript:", @"Options"));
  v5 = +[MBDriveRestoreEngine restoreEngineWithSettingsContext:debugContext:](MBDriveRestoreEngine, "restoreEngineWithSettingsContext:debugContext:", v4, +[MBDebugContext defaultDebugContext]);
  [v4 setPlugins:sub_100098474()];
  -[MBProgress setDelegate:](-[MBDriveRestoreEngine progress](v5, "progress"), "setDelegate:", [v4 drive]);
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Action: Restore", v8, 2u);
    _MBLog();
  }

  restore = [(MBDriveRestoreEngine *)v5 restore];
  if (restore)
  {
    [(MBDeviceManager *)self _sendResponseMessageWithError:restore];
  }

  else
  {
    [(MBDeviceManager *)self _sendSuccessResponseMessage];
  }

  [(MBDriveRestoreEngine *)v5 endWithError:restore];
}

- (void)_handleChangePasswordMessage:(id)message
{
  v4 = 0;
  if ([objc_msgSend(-[MBDeviceManager _settingsContextWithSourceIdentifier:targetIdentifier:applicationIDs:options:](self _settingsContextWithSourceIdentifier:0 targetIdentifier:objc_msgSend(message applicationIDs:"objectForKeyedSubscript:" options:{@"TargetIdentifier", 0, 0), "encryptionManager"), "changePasswordFrom:toPassword:error:", objc_msgSend(message, "objectForKeyedSubscript:", @"OldPassword", objc_msgSend(message, "objectForKeyedSubscript:", @"NewPassword", &v4}])
  {
    [(MBDeviceManager *)self _sendSuccessResponseMessage];
  }

  else
  {
    [(MBDeviceManager *)self _sendResponseMessageWithError:v4];
  }
}

- (void)_handleExtractMessage:(id)message
{
  v14 = 0;
  v5 = [message objectForKeyedSubscript:@"SourceIdentifier"];
  v6 = [message objectForKeyedSubscript:@"TargetIdentifier"];
  v7 = [message objectForKeyedSubscript:@"DomainName"];
  v8 = [message objectForKeyedSubscript:@"RelativePath"];
  v9 = [message objectForKeyedSubscript:@"Password"];
  if (v9)
  {
    v15 = @"Password";
    v16 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = [MBDeviceTools toolsWithSettingsContext:[(MBDeviceManager *)self _settingsContextWithSourceIdentifier:v5 targetIdentifier:v6 applicationIDs:0 options:v10] error:&v14];
  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Action: Extract", v13, 2u);
    _MBLog();
  }

  if ([(MBDeviceTools *)v11 extractWithDomainName:v7 relativePath:v8 error:&v14])
  {
    [(MBDeviceManager *)self _sendSuccessResponseMessage];
  }

  else
  {
    [(MBDeviceManager *)self _sendResponseMessageWithError:v14];
  }
}

- (void)_handleRemoveMessage:(id)message
{
  v4 = [MBError errorWithCode:1 format:@"Remove action is no longer supported"];

  [(MBDeviceManager *)self _sendResponseMessageWithError:v4];
}

- (void)_handleInfoMessage:(id)message
{
  v8 = 0;
  v4 = +[MBDeviceTools toolsWithSettingsContext:error:](MBDeviceTools, "toolsWithSettingsContext:error:", -[MBDeviceManager _settingsContextWithSourceIdentifier:targetIdentifier:applicationIDs:options:](self, "_settingsContextWithSourceIdentifier:targetIdentifier:applicationIDs:options:", [message objectForKeyedSubscript:@"SourceIdentifier"], objc_msgSend(message, "objectForKeyedSubscript:", @"TargetIdentifier"), 0, 0), &v8);
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Action: Info", v7, 2u);
    _MBLog();
  }

  v6 = [(MBDeviceTools *)v4 infoWithError:&v8];
  if (v6)
  {
    v9 = @"Content";
    v10 = v6;
    [(MBDeviceManager *)self _sendSuccessResponseMessageWithProperties:[NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1]];
  }

  else
  {
    [(MBDeviceManager *)self _sendResponseMessageWithError:v8];
  }
}

- (void)_handleListMessage:(id)message
{
  v8 = 0;
  v4 = +[MBDeviceTools toolsWithSettingsContext:error:](MBDeviceTools, "toolsWithSettingsContext:error:", -[MBDeviceManager _settingsContextWithSourceIdentifier:targetIdentifier:applicationIDs:options:](self, "_settingsContextWithSourceIdentifier:targetIdentifier:applicationIDs:options:", [message objectForKeyedSubscript:@"SourceIdentifier"], objc_msgSend(message, "objectForKeyedSubscript:", @"TargetIdentifier"), 0, 0), &v8);
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Action: List", v7, 2u);
    _MBLog();
  }

  v6 = [(MBDeviceTools *)v4 listWithError:&v8];
  if (v6)
  {
    v9 = @"Content";
    v10 = v6;
    [(MBDeviceManager *)self _sendSuccessResponseMessageWithProperties:[NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1]];
  }

  else
  {
    [(MBDeviceManager *)self _sendResponseMessageWithError:v8];
  }
}

- (void)_handleUnbackMessage:(id)message
{
  v12 = 0;
  v5 = [message objectForKeyedSubscript:@"SourceIdentifier"];
  v6 = [message objectForKeyedSubscript:@"TargetIdentifier"];
  v7 = [message objectForKeyedSubscript:@"Password"];
  if (v7)
  {
    v13 = @"Password";
    v14 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MBDeviceTools toolsWithSettingsContext:[(MBDeviceManager *)self _settingsContextWithSourceIdentifier:v5 targetIdentifier:v6 applicationIDs:0 options:v8] error:&v12];
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Action: Unback", v11, 2u);
    _MBLog();
  }

  if ([(MBDeviceTools *)v9 unbackWithError:&v12])
  {
    [(MBDeviceManager *)self _sendSuccessResponseMessage];
  }

  else
  {
    [(MBDeviceManager *)self _sendResponseMessageWithError:v12];
  }
}

- (void)_enableCloudBackupMessage:(id)message
{
  v19 = 0;
  v4 = [objc_msgSend(message objectForKeyedSubscript:{@"CloudBackupState", "BOOLValue"}];
  if (v4 && ([+[MBManagedPolicy sharedPolicy](MBManagedPolicy "sharedPolicy")] & 1) == 0)
  {
LABEL_17:
    v13 = v19;
LABEL_18:
    [(MBDeviceManager *)self _sendResponseMessageWithError:v13];
    return;
  }

  v5 = +[ACAccountStore defaultStore];
  aa_primaryAppleAccount = [v5 aa_primaryAppleAccount];
  if (!aa_primaryAppleAccount)
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No Apple acount exists", buf, 2u);
      _MBLog();
    }

    v13 = [MBError errorWithCode:1 format:@"No account exists"];
    v19 = v13;
    goto LABEL_18;
  }

  v7 = aa_primaryAppleAccount;
  v8 = kAccountDataclassBackup;
  if (![aa_primaryAppleAccount isProvisionedForDataclass:kAccountDataclassBackup])
  {
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      accountDescription = [v7 accountDescription];
      provisionedDataclasses = [v7 provisionedDataclasses];
      *buf = 138412546;
      v21 = accountDescription;
      v22 = 2112;
      v23 = provisionedDataclasses;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "The account %@ is not provisioned for cloud backup. %@", buf, 0x16u);
      accountDescription2 = [v7 accountDescription];
      provisionedDataclasses2 = [v7 provisionedDataclasses];
      _MBLog();
    }

    v19 = [MBError errorWithCode:1 format:@"The primary account is not provisioned for cloud backup", accountDescription2, provisionedDataclasses2];
    [v5 saveAccount:v7 withCompletionHandler:&stru_1000FD7F8];
    goto LABEL_17;
  }

  [v7 setEnabled:v4 forDataclass:v8];
  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    if (v4)
    {
      v10 = @"En";
    }

    else
    {
      v10 = @"Dis";
    }

    accountDescription3 = [v7 accountDescription];
    *buf = 138412546;
    v21 = v10;
    v22 = 2112;
    v23 = accountDescription3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@abled account %@ for cloud backup", buf, 0x16u);
    accountDescription2 = v10;
    provisionedDataclasses2 = [v7 accountDescription];
    _MBLog();
  }

  [v5 saveAccount:v7 withCompletionHandler:{&stru_1000FD7F8, accountDescription2, provisionedDataclasses2}];
  [(MBDeviceManager *)self _sendSuccessResponseMessage];
}

- (void)_eraseDeviceMessage:(id)message
{
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Erasing device per request from iTunes", v5, 2u);
    _MBLog();
  }

  v6[0] = kObliterationTypeKey;
  v6[1] = kObliterationMessageKey;
  v7[0] = kObliterateDataPartition;
  v7[1] = @"BackupRestore";
  [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
  if (Mobile_Obliterate())
  {
    [(MBDeviceManager *)self _sendResponseMessageWithCode:1 description:@"Failed to erase device"];
  }

  else
  {
    [(MBDeviceManager *)self _sendSuccessResponseMessage];
  }
}

@end