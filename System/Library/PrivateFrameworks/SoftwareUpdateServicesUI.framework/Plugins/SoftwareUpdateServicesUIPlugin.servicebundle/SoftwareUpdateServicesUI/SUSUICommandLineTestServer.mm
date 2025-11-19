@interface SUSUICommandLineTestServer
+ (id)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)ddmInstallNow;
- (void)destroyInstallationKeybag;
- (void)dismissAllAlerts;
- (void)downloadDidFinish;
- (void)getAlertStatus:(id)a3;
- (void)getDDMAlertStatus:(id)a3;
- (void)presentMiniAlert:(unint64_t)a3 errorCode:(id)a4 downloadDescriptor:(id)a5 scanResultsDescriptor:(id)a6 autoInstallForecast:(id)a7 andRollbackDescriptor:(id)a8 result:(id)a9;
- (void)reboot:(BOOL)a3;
- (void)run;
- (void)setInstallOperation:(id)a3;
- (void)setPasscodePolicy:(unint64_t)a3;
- (void)setRestartCountdownOverrideIntervalSeconds:(id)a3;
- (void)setUpdateToInstall:(id)a3;
- (void)showAuthenticationUIWithOptions:(unint64_t)a3 result:(id)a4;
- (void)showDDMAlert:(int64_t)a3 install:(BOOL)a4;
- (void)showEmergencyCallUIWithOptions:(unint64_t)a3 result:(id)a4;
- (void)showFollowUp:(unint64_t)a3;
- (void)showLaggardsUi:(unint64_t)a3 usingFakeData:(BOOL)a4 result:(id)a5;
- (void)showMiniAlertWithDescriptors:(unint64_t)a3 errorCode:(id)a4 downloadDescriptor:(id)a5 scanResultsDescriptor:(id)a6 autoInstallForecast:(id)a7 andRollbackDescriptor:(id)a8 result:(id)a9;
- (void)showMiniAlertWithScan:(unint64_t)a3 errorCode:(id)a4 result:(id)a5;
- (void)simulateComingFromOTAUpdate;
- (void)toggleSettingsBadge:(BOOL)a3;
@end

@implementation SUSUICommandLineTestServer

+ (id)sharedInstance
{
  v5 = &unk_6F870;
  location = 0;
  objc_storeStrong(&location, &stru_5ED60);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_6F868;

  return v2;
}

- (void)run
{
  v8 = self;
  v7[1] = a2;
  if (_BSIsInternalInstall())
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1109C;
    v6 = &unk_5CCB0;
    v7[0] = v8;
    v10 = &unk_6F878;
    location = 0;
    objc_storeStrong(&location, &v2);
    if (*v10 != -1)
    {
      dispatch_once(v10, location);
    }

    objc_storeStrong(&location, 0);
    objc_storeStrong(v7, 0);
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v10 = [v16 valueForEntitlement:@"com.apple.softwareupdateservices.ui.cli.allowed"];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    [v16 _setQueue:v18->_queue];
    [v16 setInterruptionHandler:?];
    [v16 setInvalidationHandler:0];
    v5 = v16;
    v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SUSUICommandLineToolClientInterface];
    [v5 setRemoteObjectInterface:?];

    v7 = v16;
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SUSUICommandLineToolServerInterface];
    [v7 setExportedInterface:?];

    [v16 setExportedObject:v18];
    [v16 resume];
    v12 = SUSUILog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sub_1FCC(v20, v16);
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Adding plugin client: %@", v20, 0xCu);
    }

    objc_storeStrong(&v12, 0);
    v19 = 1;
    v13 = 1;
  }

  else
  {
    v15 = SUSUILog();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      sub_1FCC(v21, v16);
      _os_log_impl(&dword_0, v15, v14, "Ignoring plugin client: %@", v21, 0xCu);
    }

    objc_storeStrong(&v15, 0);
    v19 = 0;
    v13 = 1;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  return v19 & 1;
}

- (void)showMiniAlertWithScan:(unint64_t)a3 errorCode:(id)a4 result:(id)a5
{
  v29 = self;
  v28 = a2;
  v27 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v25 = 0;
  objc_storeStrong(&v25, a5);
  queue = v29->_queue;
  BSDispatchQueueAssert();
  v24 = SUSUILog();
  v23 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    sub_11844(v30, v27);
    _os_log_impl(&dword_0, v24, v23, "Got mini-alert to show: %d", v30, 8u);
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v29->stringResponse, @"[] Locking for a new update for the alert.\n");
  v6 = +[SUSUISoftwareUpdateController sharedInstance];
  v22 = [(SUSUISoftwareUpdateController *)v6 _download];

  v7 = +[SUSUISoftwareUpdateController sharedInstance];
  v21 = [(SUSUISoftwareUpdateController *)v7 _availableRollback];

  v9 = +[SUSUISoftwareUpdateController sharedInstance];
  v8 = objc_alloc_init(SUScanOptions);
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = sub_1187C;
  v15 = &unk_5EDB0;
  v16 = v29;
  v20[1] = v27;
  v17 = location;
  v18 = v22;
  v19 = v21;
  v20[0] = v25;
  [(SUSUISoftwareUpdateController *)v9 scanForUpdates:v8 withScanResults:&v11];

  objc_storeStrong(v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&location, 0);
}

- (void)showMiniAlertWithDescriptors:(unint64_t)a3 errorCode:(id)a4 downloadDescriptor:(id)a5 scanResultsDescriptor:(id)a6 autoInstallForecast:(id)a7 andRollbackDescriptor:(id)a8 result:(id)a9
{
  v23 = self;
  v22 = a2;
  v21 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v19 = 0;
  objc_storeStrong(&v19, a5);
  v18 = 0;
  objc_storeStrong(&v18, a6);
  v17 = 0;
  objc_storeStrong(&v17, a7);
  v16 = 0;
  objc_storeStrong(&v16, a8);
  v15 = 0;
  objc_storeStrong(&v15, a9);
  queue = v23->_queue;
  BSDispatchQueueAssert();
  v14 = SUSUILog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    sub_11844(v24, v21);
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Got mini-alert to show: %d", v24, 8u);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v23->stringResponse, @"[] Making alert with given descriptors.\n");
  [(SUSUICommandLineTestServer *)v23 presentMiniAlert:v21 errorCode:location downloadDescriptor:v19 scanResultsDescriptor:v18 autoInstallForecast:v17 andRollbackDescriptor:v16 result:v15];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&location, 0);
}

- (void)presentMiniAlert:(unint64_t)a3 errorCode:(id)a4 downloadDescriptor:(id)a5 scanResultsDescriptor:(id)a6 autoInstallForecast:(id)a7 andRollbackDescriptor:(id)a8 result:(id)a9
{
  v103 = self;
  v102 = a2;
  v101 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v99 = 0;
  objc_storeStrong(&v99, a5);
  v98 = 0;
  objc_storeStrong(&v98, a6);
  v97 = 0;
  objc_storeStrong(&v97, a7);
  v96 = 0;
  objc_storeStrong(&v96, a8);
  v95 = 0;
  objc_storeStrong(&v95, a9);
  v93 = 0;
  if (v99 || (v66 = 1, ![(SUSUICommandLineTestServer *)v103 miniAlertNeedsDownloadDescriptor:v101]))
  {
    if (v98 && (v94 = [v98 preferredDescriptor], v93 = 1, v94) || (v66 = 1, !-[SUSUICommandLineTestServer miniAlertNeedsScanResultsDescriptor:](v103, "miniAlertNeedsScanResultsDescriptor:", v101)))
    {
      if (v97 || (v66 = 1, ![(SUSUICommandLineTestServer *)v103 miniAlertNeedsAutoInstallForecastDescriptor:v101]))
      {
        v65 = 0;
        if (!v96)
        {
          v65 = [(SUSUICommandLineTestServer *)v103 miniAlertNeedsRollbackDescriptor:v101];
        }

        v66 = v65;
      }
    }
  }

  if (v93)
  {
  }

  if (v66)
  {
    v9 = [(NSString *)v103->stringResponse stringByAppendingString:@"[] Got empty descriptors. Can't show the alert.\n[] Exits.\n"];
    stringResponse = v103->stringResponse;
    v103->stringResponse = v9;

    if (v95)
    {
      v63 = v95;
      v62 = v103->stringResponse;
      v64 = [NSError buildCheckedSUCoreError:8100 underlying:0 description:@"Got empty descriptors. Can't show the alert."];
      (v63)[2](v63, v62);
    }

    v92 = 1;
  }

  else
  {
    v89 = 0;
    if (v99)
    {
      v90 = [v99 descriptor];
      v89 = 1;
      v11 = v90;
    }

    else
    {
      v11 = 0;
    }

    v91 = v11;
    if (v89)
    {
    }

    v88[8] = 0;
    v87 = +[SUSUISoftwareUpdateController sharedInstance];
    *v88 = BYSetupAssistantNeedsToRun();
    switch(v101)
    {
      case 0uLL:
        v60 = [SUSUISoftwareUpdateAvailableAlertItem alloc];
        v61 = [v98 latestUpdate];
        v12 = [SUSUIBaseSoftwareUpdateAlertItem initWithDescriptor:v60 softwareUpdateController:"initWithDescriptor:softwareUpdateController:"];
        v13 = *&v88[1];
        *&v88[1] = v12;

        break;
      case 1uLL:
        v14 = [[SUSUISoftwareUpdateInstallAlertItem alloc] initWithDownload:v99 style:1 softwareUpdateController:v87 tryTonightInstallOperationForecast:v97 installOptions:0];
        v15 = *&v88[1];
        *&v88[1] = v14;

        break;
      case 2uLL:
        v16 = [[SUSUISoftwareUpdateInstallAlertItem alloc] initWithDownload:v99 style:2 softwareUpdateController:v87 tryTonightInstallOperationForecast:v97 installOptions:0];
        v17 = *&v88[1];
        *&v88[1] = v16;

        break;
      case 3uLL:
        v18 = [[SUSUISoftwareUpdateInstallAlertItem alloc] initWithDownload:v99 style:3 softwareUpdateController:v87 tryTonightInstallOperationForecast:v97 installOptions:0];
        v19 = *&v88[1];
        *&v88[1] = v18;

        break;
      case 4uLL:
        v20 = [[SUSUISoftwareUpdateInstallLaterAlertItem alloc] initWithDescriptor:v91 softwareUpdateController:v87 tryTonightOperationForecast:v97];
        v21 = *&v88[1];
        *&v88[1] = v20;

        break;
      case 5uLL:
        if (v88[0])
        {
          v86 = SUSUILog();
          v85 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
          {
            log = v86;
            type = v85;
            sub_2544(v84);
            _os_log_impl(&dword_0, log, type, "Buddy running. Not showing install failure UI", v84, 2u);
          }

          objc_storeStrong(&v86, 0);
        }

        else
        {
          v22 = [(SUSUIBaseSoftwareUpdateAlertItem *)[SUSUISoftwareUpdateUnableToInstallAlertItem alloc] initWithDescriptor:v91 softwareUpdateController:v87];
          v23 = *&v88[1];
          *&v88[1] = v22;

          if (location)
          {
            v59 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", SUErrorDomain, [location integerValue], 0);
            [*&v88[1] setError:?];
          }
        }

        break;
      case 6uLL:
        v24 = [(SUSUIBaseSoftwareUpdateAlertItem *)[SUSUISoftwareUpdateVerifyingUpdateAlertItem alloc] initWithDescriptor:v91 softwareUpdateController:v87];
        v25 = *&v88[1];
        *&v88[1] = v24;

        break;
      case 7uLL:
        if (v88[0])
        {
          v83 = SUSUILog();
          v82 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            v54 = v83;
            v55 = v82;
            sub_2544(v81);
            _os_log_impl(&dword_0, v54, v55, "Buddy running. Not showing verification failure UI", v81, 2u);
          }

          objc_storeStrong(&v83, 0);
        }

        else
        {
          v26 = [(SUSUIBaseSoftwareUpdateAlertItem *)[SUSUISoftwareUpdateVerificationFailedAlertItem alloc] initWithDescriptor:v91 softwareUpdateController:v87];
          v27 = *&v88[1];
          *&v88[1] = v26;

          if (location)
          {
            v56 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", SUErrorDomain, [location integerValue], 0);
            [*&v88[1] setError:?];
          }
        }

        break;
      case 8uLL:
        if (v88[0])
        {
          v80 = SUSUILog();
          v79 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
          {
            v51 = v80;
            v52 = v79;
            sub_2544(v78);
            _os_log_impl(&dword_0, v51, v52, "Buddy running. Not showing download failure UI", v78, 2u);
          }

          objc_storeStrong(&v80, 0);
        }

        else
        {
          v28 = -[SUSUISoftwareUpdateDownloadFailedAlertItem initWithDescriptor:softwareUpdateController:fromSettings:]([SUSUISoftwareUpdateDownloadFailedAlertItem alloc], "initWithDescriptor:softwareUpdateController:fromSettings:", v91, v87, [v87 settingsForeground]);
          v29 = *&v88[1];
          *&v88[1] = v28;

          if (location)
          {
            v53 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", SUErrorDomain, [location integerValue], 0);
            [*&v88[1] setError:?];
          }
        }

        break;
      case 9uLL:
        v30 = [(SUSUIBaseRollbackAlertItem *)[SUSUIRollbackCountdownAlertItem alloc] initWithRollbackDescriptor:v96 softwareUpdateController:v87];
        v31 = *&v88[1];
        *&v88[1] = v30;

        break;
      case 0xAuLL:
        v32 = [(SUSUIBaseSoftwareUpdateAlertItem *)[SUSUISoftwareUpdateRebootingAlertItem alloc] initWithDescriptor:v91 softwareUpdateController:v87];
        v33 = *&v88[1];
        *&v88[1] = v32;

        break;
      case 0xBuLL:
        v34 = objc_alloc_init(SUSUIPostSplatRollbackAlertItem);
        v35 = *&v88[1];
        *&v88[1] = v34;

        break;
      case 0xCuLL:
        v50 = [SUSUISetupUpgradeAlertItem alloc];
        v72 = _NSConcreteStackBlock;
        v73 = -1073741824;
        v74 = 0;
        v75 = sub_131AC;
        v76 = &unk_5CCB0;
        v77 = *&v88[1];
        v36 = [(SUSUISetupUpgradeAlertItem *)v50 initWithAcknowledgementBlock:&v72];
        v37 = *&v88[1];
        *&v88[1] = v36;

        v92 = 2;
        objc_storeStrong(&v77, 0);
        break;
      case 0xDuLL:
        v38 = [[SUSUISoftwareUpdateRecommendedAvailableAlertItem alloc] initWithDescriptor:v91 softwareUpdateController:v87];
        v39 = *&v88[1];
        *&v88[1] = v38;

        break;
      case 0xEuLL:
        v40 = objc_alloc_init(SUSUIRollbackSuggestedAlertItem);
        v41 = *&v88[1];
        *&v88[1] = v40;

        break;
      default:
        oslog = SUSUILog();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          sub_11844(v104, v101);
          _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "Unrecognized mini-alert to show: %d", v104, 8u);
        }

        objc_storeStrong(&oslog, 0);
        break;
    }

    [*&v88[1] setIsUILocked:{objc_msgSend(v87, "isUILocked")}];
    if ([v87 presentAlert:*&v88[1]])
    {
      v42 = [(NSString *)v103->stringResponse stringByAppendingString:@"[] Presenting the alert.\n[] Exits.\n"];
      v43 = v103->stringResponse;
      v103->stringResponse = v42;

      if (v95)
      {
        v44 = v103->stringResponse;
        (*(v95 + 2))();
      }
    }

    else
    {
      v45 = [(NSString *)v103->stringResponse stringByAppendingString:@"[] Failed to present the alert.\n[] Exits.\n"];
      v46 = v103->stringResponse;
      v103->stringResponse = v45;

      if (v95)
      {
        v48 = v95;
        v47 = v103->stringResponse;
        v49 = [NSError buildCheckedSUCoreError:8100 underlying:0 description:@"Failed to present the alert due to unknown reason."];
        (v48)[2](v48, v47);
      }
    }

    objc_storeStrong(&v87, 0);
    objc_storeStrong(&v88[1], 0);
    objc_storeStrong(&v91, 0);
    v92 = 0;
  }

  objc_storeStrong(&v95, 0);
  objc_storeStrong(&v96, 0);
  objc_storeStrong(&v97, 0);
  objc_storeStrong(&v98, 0);
  objc_storeStrong(&v99, 0);
  objc_storeStrong(&location, 0);
}

- (void)destroyInstallationKeybag
{
  v2 = +[SUSUISoftwareUpdateController sharedInstance];
  [(SUSUISoftwareUpdateController *)v2 destroyInstallationKeybag];
}

- (void)dismissAllAlerts
{
  location[2] = self;
  location[1] = a2;
  queue = self->_queue;
  BSDispatchQueueAssert();
  location[0] = SUSUILog();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v7;
    sub_2544(v6);
    _os_log_impl(&dword_0, log, type, "About to dismiss all mini alerts", v6, 2u);
  }

  objc_storeStrong(location, 0);
  v5 = +[SUSUISoftwareUpdateController sharedInstance];
  [(SUSUISoftwareUpdateController *)v5 _dismissAllAlerts];
  objc_storeStrong(&v5, 0);
}

- (void)showFollowUp:(unint64_t)a3
{
  v18 = self;
  v17 = a2;
  v16 = a3;
  queue = self->_queue;
  BSDispatchQueueAssert();
  v8 = +[SUSUIPreferences sharedInstance];
  [(SUSUIPreferences *)v8 setNeedsAlertPresentationAfterOTAUpdate:1];

  if (v16)
  {
    if (v16 == 1)
    {
      v12 = SUSUILog();
      v11 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v12;
        v5 = v11;
        sub_2544(v10);
        _os_log_impl(&dword_0, v4, v5, "follow up type: SUSUICommandLineToolFollowUpDDMUpdate currently not supported", v10, 2u);
      }

      objc_storeStrong(&v12, 0);
    }

    else
    {
      oslog = SUSUILog();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        sub_13774(v19, v16);
        _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "Unknown follow up type: %lu", v19, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }
  }

  else
  {
    location = SUSUILog();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v14;
      sub_2544(v13);
      _os_log_impl(&dword_0, log, type, "follow up type: SUSUICommandLineToolFollowUpPostUpdate currently not supported", v13, 2u);
    }

    objc_storeStrong(&location, 0);
  }
}

- (void)showLaggardsUi:(unint64_t)a3 usingFakeData:(BOOL)a4 result:(id)a5
{
  v27 = self;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  location = 0;
  objc_storeStrong(&location, a5);
  queue = v27->_queue;
  BSDispatchQueueAssert();
  v22 = SUSUILog();
  v21 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    sub_13774(v28, v25);
    _os_log_impl(&dword_0, v22, v21, "Laggards UI type: %lu", v28, 0xCu);
  }

  objc_storeStrong(&v22, 0);
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_13A58;
  v18 = &unk_5EDD8;
  v19[1] = v25;
  v19[0] = location;
  v20 = objc_retainBlock(&v14);
  v6 = +[SUSUISoftwareUpdateController sharedInstance];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_13CF0;
  v11 = &unk_5EE00;
  v12 = location;
  v13 = v20;
  [(SUSUISoftwareUpdateController *)v6 _discoveredUpdates:&v7];

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(v19, 0);
  objc_storeStrong(&location, 0);
}

- (void)showAuthenticationUIWithOptions:(unint64_t)a3 result:(id)a4
{
  v39 = self;
  v38 = a2;
  v37 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  queue = v39->_queue;
  BSDispatchQueueAssert();
  v35 = sub_142F8(v37, 4);
  v34 = sub_142F8(v37, 2);
  v33 = sub_142F8(v37, 8);
  v23 = _NSConcreteStackBlock;
  v24 = -1073741824;
  v25 = 0;
  v26 = sub_14330;
  v27 = &unk_5EE28;
  v30 = v35;
  v31 = v33;
  v28 = v39;
  v29 = location;
  v32 = objc_retainBlock(&v23);
  if (v34)
  {
    v20 = 0;
    if (v35)
    {
      v21 = objc_alloc_init(SUSUIFakeSUAutoInstallOperation);
      v20 = 1;
      v5 = v21;
    }

    else
    {
      v5 = 0;
    }

    v22 = v5;
    if (v20)
    {
    }

    v19 = objc_alloc_init(SUSUIFakeSUDownload);
    v9 = v32;
    v8 = v19;
    v10 = [v22 forecast];
    v9[2](v9, v8);

    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v22, 0);
  }

  else
  {
    v7 = +[SUSUISoftwareUpdateController sharedInstance];
    v18 = [(SUSUISoftwareUpdateController *)v7 _download];

    if (v35)
    {
      v6 = +[SUSUISoftwareUpdateController sharedInstance];
      v11 = _NSConcreteStackBlock;
      v12 = -1073741824;
      v13 = 0;
      v14 = sub_14570;
      v15 = &unk_5EE50;
      v17 = v32;
      v16 = v18;
      [(SUSUISoftwareUpdateController *)v6 _createInstallTonightForecastWithResult:&v11];

      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v17, 0);
    }

    else
    {
      (*(v32 + 2))(v32, v18, 0);
    }

    objc_storeStrong(&v18, 0);
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&location, 0);
}

- (void)showEmergencyCallUIWithOptions:(unint64_t)a3 result:(id)a4
{
  v15 = self;
  location[2] = a2;
  location[1] = a3;
  location[0] = 0;
  objc_storeStrong(location, a4);
  queue = v15->_queue;
  BSDispatchQueueAssert();
  v5 = [SUSUIFullScreenEmergencyCallAlert alloc];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_14730;
  v11 = &unk_5D030;
  v12 = location[0];
  v13 = [(SUSUIFullScreenEmergencyCallAlert *)v5 initWithCompletionBlock:?];
  v6 = +[SUSUISoftwareUpdateController sharedInstance];
  [(SUSUISoftwareUpdateController *)v6 presentEmergencyCallAlert:v13 completion:0];

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)toggleSettingsBadge:(BOOL)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6 = objc_alloc_init(SUSUIFakeSUDownload);
  v5 = +[SUSUISoftwareUpdateController sharedInstance];
  v3 = v7;
  v4 = [v6 descriptor];
  [(SUSUISoftwareUpdateController *)v5 toggleSettingsBadge:v3 update:?];

  objc_storeStrong(&v6, 0);
}

- (void)reboot:(BOOL)a3
{
  v3 = +[SUSUISoftwareUpdateController sharedInstance];
  [(SUSUISoftwareUpdateController *)v3 reboot:a3];
}

- (void)simulateComingFromOTAUpdate
{
  v9 = self;
  v8[1] = a2;
  v3 = +[SUSUIPreferences sharedInstance];
  [(SUSUIPreferences *)v3 setNeedsAlertPresentationAfterOTAUpdate:1];

  v4 = +[NSFileManager defaultManager];
  [(NSFileManager *)v4 createFileAtPath:@"/var/mobile/Library/SoftwareUpdate/susdKeepAlive" contents:0 attributes:?];

  when = dispatch_time(0, 5000000000);
  v2 = &_dispatch_main_q;
  queue = &_dispatch_main_q;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_14A38;
  v7[3] = &unk_5CCB0;
  v8[0] = v9;
  dispatch_after(when, queue, v7);

  objc_storeStrong(v8, 0);
}

- (void)downloadDidFinish
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = +[SUSUISoftwareUpdateController sharedInstance];
  v3 = [v4[0] _download];
  v2 = [v4[0] _installPolicy];
  [v4[0] client:? downloadDidFinish:? withInstallPolicy:?];
  objc_storeStrong(&v2, 0);
  objc_storeStrong(&v3, 0);
  objc_storeStrong(v4, 0);
}

- (void)setPasscodePolicy:(unint64_t)a3
{
  v3 = +[SUSUISoftwareUpdateController sharedInstance];
  [(SUSUISoftwareUpdateController *)v3 setPasscodePolicy:a3];
}

- (void)getDDMAlertStatus:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v10 = +[SUSUISoftwareUpdateController sharedInstance];
    v19 = [(SUSUISoftwareUpdateController *)v10 ddmController];

    v18 = [(SUSUIDDMController *)v19 enforcedInstallDate];
    v17 = [(SUSUIDDMController *)v19 schduledAlertDate];
    v14 = 0;
    if (v18)
    {
      v15 = [SUUtility prettyPrintDate:v18];
      v14 = 1;
      v3 = v15;
    }

    else
    {
      v3 = @"N/A";
    }

    v16 = v3;
    if (v14)
    {
    }

    v11 = 0;
    if (v17)
    {
      v12 = [SUUtility prettyPrintDate:v17];
      v11 = 1;
      v4 = v12;
    }

    else
    {
      v4 = @"N/A";
    }

    v13 = v4;
    if (v11)
    {
    }

    v7 = location[0];
    v21[0] = @"DDMEnforcedDate";
    v22[0] = v16;
    v21[1] = @"DDMScheduledAlertDate";
    v22[1] = v13;
    v21[2] = @"DDMScheduledAlertStyle";
    v9 = SUSUIStringForInstallAlertInstallStyle([(SUSUIDDMController *)v19 scheduledAlertStyle:v22]);
    v22[2] = v9;
    v8 = [NSDictionary dictionaryWithObjects:v5 forKeys:v6 count:3];
    v7[2]();

    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)showDDMAlert:(int64_t)a3 install:(BOOL)a4
{
  if (a3 == 0x8000000000000000)
  {
    v7 = +[SUSUISoftwareUpdateController sharedInstance];
    v6 = [(SUSUISoftwareUpdateController *)v7 ddmController];
    [(SUSUIDDMController *)v6 showNextDDMAlert:a4];
  }

  else
  {
    v5 = +[SUSUISoftwareUpdateController sharedInstance];
    v4 = [(SUSUISoftwareUpdateController *)v5 ddmController];
    [(SUSUIDDMController *)v4 showDDMAlert:a3 install:a4];
  }
}

- (void)ddmInstallNow
{
  location[2] = self;
  location[1] = a2;
  v4 = +[SUSUISoftwareUpdateController sharedInstance];
  v3 = [(SUSUISoftwareUpdateController *)v4 ddmController];
  [(SUSUIDDMController *)v3 installNow];

  location[0] = SUSUILog();
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = +[SUSUIPreferences sharedInstance];
    sub_11844(v6, [(SUSUIPreferences *)v2 isSharedIPad]);
    _os_log_impl(&dword_0, location[0], OS_LOG_TYPE_DEFAULT, "issharedipad=%d", v6, 8u);
  }

  objc_storeStrong(location, 0);
}

- (void)getAlertStatus:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v14 = +[SUSUISoftwareUpdateController sharedInstance];
    v13 = [v14 _alertModel];
    v5 = location[0];
    v16[0] = @"AlertFlow";
    v6 = SUSUIStringForInstallAlertFlow([v13 alertFlow]);
    v17[0] = v6;
    v16[1] = @"RepopStrategy";
    v7 = SUSUIStringForInstallAlertRepopStrategy([v13 nextAlertRepopStrategy]);
    v17[1] = v7;
    v16[2] = @"NextAlertDate";
    v8 = [v13 nextAlertDate];
    v11 = 0;
    v9 = 0;
    if (v8)
    {
      v12 = [v13 nextAlertDate];
      v11 = 1;
      v10 = [NSDateFormatter localizedStringFromDate:"localizedStringFromDate:dateStyle:timeStyle:" dateStyle:? timeStyle:?];
      v9 = 1;
      v4 = v10;
    }

    else
    {
      v4 = @"N/A";
    }

    v17[2] = v4;
    v3 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];
    v5[2]();

    if (v9)
    {
    }

    if (v11)
    {
    }

    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)setRestartCountdownOverrideIntervalSeconds:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = +[SUSUIPreferences sharedInstance];
  [(SUSUIPreferences *)v3 setRestartCountdownOverrideIntervalSeconds:location[0]];

  objc_storeStrong(location, 0);
}

- (void)setInstallOperation:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = +[SUSUISoftwareUpdateController sharedInstance];
  [(SUSUISoftwareUpdateController *)v3 setInstallOperation:location[0]];

  objc_storeStrong(location, 0);
}

- (void)setUpdateToInstall:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = +[SUSUISoftwareUpdateController sharedInstance];
  [(SUSUISoftwareUpdateController *)v3 setUpdateToInstall:location[0]];

  objc_storeStrong(location, 0);
}

@end