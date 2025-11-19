@interface CompanionDelegate
- (CompanionDelegate)initWithSilo:(id)a3 idsService:(id)a4;
- (id)downgradeMsgToOlderType:(id)a3 type:(int *)a4;
- (void)dealloc;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)updateIDSStatus;
@end

@implementation CompanionDelegate

- (CompanionDelegate)initWithSilo:(id)a3 idsService:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_storeStrong(&self->_idsService, a4);
  idsService = self->_idsService;
  v9 = [v6 queue];
  [(IDSService *)idsService addDelegate:self queue:v9];

  if (qword_100456868 != -1)
  {
    sub_10034BBDC();
  }

  v10 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "IDSService Delegate initialized %p", buf, 0xCu);
  }

  self->_hasMsgVersion = 0;
  self->_lastUpdateSpuTs = 0;
  objc_initWeak(buf, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100348534;
  v12[3] = &unk_100435F28;
  objc_copyWeak(&v13, buf);
  [v6 async:v12];
  [(CompanionDelegate *)self setSilo:v6];
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);

  return self;
}

- (void)dealloc
{
  statusHandler = self->_statusHandler;
  self->_statusHandler = 0;

  testTriggerHandler = self->_testTriggerHandler;
  self->_testTriggerHandler = 0;

  messageHandler = self->_messageHandler;
  self->_messageHandler = 0;

  companionStatusHandler = self->_companionStatusHandler;
  self->_companionStatusHandler = 0;

  self->_lastUpdateSpuTs = 0;
  v7.receiver = self;
  v7.super_class = CompanionDelegate;
  [(CompanionDelegate *)&v7 dealloc];
}

- (void)updateIDSStatus
{
  v57 = +[CSTimeManager SPU_estimate_current_timestamp];
  Current = CFAbsoluteTimeGetCurrent();
  isConnected = self->_isConnected;
  self->_isConnected = 0;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v59 = self;
  obj = [(IDSService *)self->_idsService devices];
  v4 = [obj countByEnumeratingWithState:&v61 objects:v70 count:16];
  if (!v4)
  {
    goto LABEL_50;
  }

  v5 = *v62;
  while (2)
  {
    v6 = 0;
    do
    {
      if (*v62 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v61 + 1) + 8 * v6);
      if (qword_100456868 != -1)
      {
        sub_10034BBF0();
      }

      v8 = qword_100456870;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [v7 modelIdentifier];
        v10 = [v7 productBuildVersion];
        v11 = [v7 isNearby];
        v12 = [v7 isConnected];
        v13 = [v7 isLocallyPaired];
        *buf = 68290307;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2113;
        *&buf[20] = v9;
        *&buf[28] = 2113;
        *&buf[30] = v10;
        *&buf[38] = 1026;
        *&buf[40] = v11;
        v66 = 1026;
        v67 = v12;
        v68 = 1026;
        v69 = v13;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:updateIDSStatus:, model:%{private, location:escape_only}@, build:%{private, location:escape_only}@, isNearby:%{public}hhd, isConnected:%{public}hhd, isLocallyPaired:%{public}hhd}", buf, 0x38u);
      }

      if ([v7 isDefaultPairedDevice] && objc_msgSend(v7, "isNearby"))
      {
        v59->_isConnected = 1;
        objc_storeStrong(&v59->_pairedDevice, v7);
        if (qword_100456868 != -1)
        {
          sub_10034BBF0();
        }

        v14 = qword_100456870;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = [(IDSDevice *)v59->_pairedDevice modelIdentifier];
          v16 = v15;
          v17 = [v15 UTF8String];
          *buf = 136315138;
          *&buf[4] = v17;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Companion model is %s", buf, 0xCu);
        }

        if (!_companionCompatibility)
        {
          if (v59->_hasMsgVersion)
          {
            _companionCompatibility = 1;
            goto LABEL_50;
          }

          v18 = [(IDSDevice *)v59->_pairedDevice productBuildVersion];
          v19 = +[NSCharacterSet uppercaseLetterCharacterSet];
          v20 = [v18 componentsSeparatedByCharactersInSet:v19];

          v21 = [v20 objectAtIndexedSubscript:0];
          v22 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%c", [v18 characterAtIndex:{objc_msgSend(v21, "length")}]);

          if (qword_100456868 != -1)
          {
            sub_10034BBF0();
          }

          v23 = qword_100456870;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            v24 = [(IDSDevice *)v59->_pairedDevice modelIdentifier];
            v25 = v24;
            v26 = [v24 UTF8String];
            v27 = [v20 objectAtIndexedSubscript:0];
            v28 = [v20 objectAtIndexedSubscript:1];
            *buf = 136315906;
            *&buf[4] = v26;
            *&buf[12] = 2112;
            *&buf[14] = v27;
            *&buf[22] = 2112;
            *&buf[24] = v28;
            *&buf[32] = 2112;
            *&buf[34] = v22;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "build %s, number %@ %@, letter %@", buf, 0x2Au);
          }

          if ([(IDSDevice *)v59->_pairedDevice deviceType]== 2)
          {
            v29 = [v20 objectAtIndexedSubscript:0];
            v30 = [v29 intValue] > 20;

            if (!v30)
            {
              v31 = [v20 objectAtIndexedSubscript:0];
              v32 = [v31 intValue] < 20;

              if (v32)
              {
                goto LABEL_43;
              }

              if ([@"D" compare:v22] == 1)
              {
                v33 = [@"C" compare:v22];
                if (v33 != 1)
                {
                  if (!v33)
                  {
                    v34 = 3;
LABEL_44:
                    _companionCompatibility = v34;
                  }

LABEL_45:
                  if (qword_100456868 != -1)
                  {
                    sub_10034BBF0();
                  }

                  v44 = qword_100456870;
                  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
                  {
                    hasMsgVersion = v59->_hasMsgVersion;
                    *buf = 67109376;
                    *&buf[4] = hasMsgVersion;
                    *&buf[8] = 1024;
                    *&buf[10] = _companionCompatibility;
                    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEBUG, "Companion hasMsgVersion:%d, companionCompatibility:%d", buf, 0xEu);
                  }

                  goto LABEL_50;
                }

LABEL_43:
                v34 = 2;
                goto LABEL_44;
              }
            }
          }

          else
          {
            if ([(IDSDevice *)v59->_pairedDevice deviceType]!= 6)
            {
              goto LABEL_45;
            }

            v35 = [v20 objectAtIndexedSubscript:0];
            v36 = [v35 intValue] > 20;

            if (!v36)
            {
              v37 = [v20 objectAtIndexedSubscript:0];
              v38 = [v37 intValue] < 20;

              if (v38)
              {
                goto LABEL_43;
              }

              v39 = [@"S" compare:v22];
              if (v39 == 1)
              {
                goto LABEL_43;
              }

              if (v39 != -1)
              {
                v40 = [v20 objectAtIndexedSubscript:1];
                v41 = [v40 intValue] < 601;

                if (v41)
                {
                  v42 = [v20 objectAtIndexedSubscript:1];
                  v43 = [v42 intValue] < 301;

                  if (v43)
                  {
                    v34 = 2;
                  }

                  else
                  {
                    v34 = 3;
                  }

                  goto LABEL_44;
                }
              }
            }
          }

          v34 = 1;
          v59->_hasMsgVersion = 1;
          goto LABEL_44;
        }
      }

      v6 = v6 + 1;
    }

    while (v4 != v6);
    v4 = [obj countByEnumeratingWithState:&v61 objects:v70 count:16];
    if (v4)
    {
      continue;
    }

    break;
  }

LABEL_50:

  v46 = v59;
  if (isConnected != v59->_isConnected)
  {
    if (qword_100456868 != -1)
    {
      sub_10034BBF0();
      v46 = v59;
    }

    v47 = qword_100456870;
    if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEFAULT))
    {
      v48 = v46->_isConnected;
      *buf = 67240448;
      *&buf[4] = isConnected;
      *&buf[8] = 1026;
      *&buf[10] = v48;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Paired device connection changed: before: %{public}d, after: %{public}d", buf, 0xEu);
    }

    statusHandler = v46->_statusHandler;
    if (statusHandler)
    {
      v50 = v46->_isConnected;
      pairedDevice = v46->_pairedDevice;
      v52 = CFAbsoluteTimeGetCurrent();
      (statusHandler)[2](statusHandler, v50, pairedDevice, v52);
      v46 = v59;
    }

    else
    {
      if (qword_100456868 != -1)
      {
        sub_10034BBF0();
        v46 = v59;
      }

      v53 = qword_100456870;
      if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "Status handler is nil", buf, 2u);
      }
    }
  }

  companionStatusHandler = v46->_companionStatusHandler;
  if (companionStatusHandler)
  {
    if (v46->_isConnected)
    {
      v55 = 1;
    }

    else
    {
      v55 = 0xFFFFFFFFLL;
    }

    if (isConnected == v46->_isConnected)
    {
      if (v57 - v46->_lastUpdateSpuTs >= 0xF4241)
      {
        companionStatusHandler[2](Current);
        goto LABEL_73;
      }
    }

    else
    {
      (companionStatusHandler[2])(companionStatusHandler, v57, v55, Current);
LABEL_73:
      v59->_lastUpdateSpuTs = v57;
    }
  }

  else
  {
    if (qword_100456868 != -1)
    {
      sub_10034BBF0();
    }

    v56 = qword_100456870;
    if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "companionStatusHandler is nil", buf, 2u);
    }
  }
}

- (id)downgradeMsgToOlderType:(id)a3 type:(int *)a4
{
  v5 = a3;
  if (qword_100456868 != -1)
  {
    sub_10034BBDC();
  }

  v6 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    v7 = *a4;
    *buf = 67109120;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "downgradeMsgToOlderType - msg type to downgrade: %d", buf, 8u);
  }

  if ((*a4 - 101) > 1)
  {
    if (qword_100456868 != -1)
    {
      sub_10034BBF0();
    }

    v10 = qword_100456870;
    if (!os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_22;
    }

    v11 = *a4;
    *buf = 67109120;
    v26 = v11;
    v12 = "No downgrade needed for this message type: %d";
    v13 = buf;
    v14 = v10;
    v15 = OS_LOG_TYPE_DEBUG;
    v16 = 8;
    goto LABEL_21;
  }

  if (*a4 == 101)
  {
    v8 = 4;
  }

  else
  {
    v8 = 5;
  }

  *a4 = v8;
  *buf = 1;
  [v5 getBytes:buf length:40];
  if (_companionCompatibility == 3)
  {
    v20 = v26;
    v21 = v27;
    v22 = v28;
    v23 = v29;
    v24 = v30;
    v9 = [NSData dataWithBytes:&v20 length:36];
    goto LABEL_23;
  }

  if (_companionCompatibility == 2)
  {
    v20 = v26;
    v21 = v27;
    v22 = v28;
    LODWORD(v23) = v29;
    v9 = [NSData dataWithBytes:&v20 length:28];
    goto LABEL_23;
  }

  if (qword_100456868 != -1)
  {
    sub_10034BBF0();
  }

  v17 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v20) = 0;
    v12 = "Unknown companion compatibility";
    v13 = &v20;
    v14 = v17;
    v15 = OS_LOG_TYPE_ERROR;
    v16 = 2;
LABEL_21:
    _os_log_impl(&_mh_execute_header, v14, v15, v12, v13, v16);
  }

LABEL_22:
  v9 = v5;
LABEL_23:
  v18 = v9;

  return v18;
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a5;
  v11 = a6;
  v12 = a7;
  v13 = [v10 valueForKey:@"type"];
  v14 = [v13 intValue];

  v15 = [v10 valueForKey:@"payload"];
  v16 = [[NSString alloc] initWithData:v15 encoding:4];
  if (qword_100456868 != -1)
  {
    sub_10034BBDC();
  }

  v17 = qword_100456870;
  if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_DEBUG))
  {
    v19 = 138413314;
    v20 = v16;
    v21 = 2112;
    v22 = v15;
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = v12;
    v27 = 1024;
    v28 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Received string: %@ data: %@ from: %@ context: %@ type: %d", &v19, 0x30u);
  }

  v18 = [v12 outgoingResponseIdentifier];
  [(CompanionDelegate *)self receivedMessage:v14 data:v15 identifierString:v18];
}

@end