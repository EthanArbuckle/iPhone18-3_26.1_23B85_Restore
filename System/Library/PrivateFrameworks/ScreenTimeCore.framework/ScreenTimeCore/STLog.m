@interface STLog
+ (NSDictionary)logCategories;
+ (OS_os_log)accountState;
+ (OS_os_log)apns;
+ (OS_os_log)appExceptions;
+ (OS_os_log)appInfo;
+ (OS_os_log)appMonitor;
+ (OS_os_log)ask;
+ (OS_os_log)askClient;
+ (OS_os_log)backgroundActivity;
+ (OS_os_log)blueprint;
+ (OS_os_log)cachingCodableStore;
+ (OS_os_log)checkpoint;
+ (OS_os_log)cloudkit;
+ (OS_os_log)communicationClient;
+ (OS_os_log)communicationSafety;
+ (OS_os_log)conduit;
+ (OS_os_log)contactStorePrimitives;
+ (OS_os_log)contactsService;
+ (OS_os_log)conversation;
+ (OS_os_log)coreAnalytics;
+ (OS_os_log)coreAnimation;
+ (OS_os_log)coreDataConfigurationStore;
+ (OS_os_log)coreDataObserver;
+ (OS_os_log)coreDataTransformer;
+ (OS_os_log)coreDataValidation;
+ (OS_os_log)daemon;
+ (OS_os_log)defaultUserPolicyApplicator;
+ (OS_os_log)deviceCapabilitiesClient;
+ (OS_os_log)deviceInformationPrimitives;
+ (OS_os_log)deviceState;
+ (OS_os_log)diagnostics;
+ (OS_os_log)downtimeClient;
+ (OS_os_log)eyeReliefStateWriter;
+ (OS_os_log)family;
+ (OS_os_log)familyCirclePrimitives;
+ (OS_os_log)familyCommunicationService;
+ (OS_os_log)familyInformationProvider;
+ (OS_os_log)familyMemberGenesisStateStore;
+ (OS_os_log)familyMessaging;
+ (OS_os_log)familyScreenTimeManager;
+ (OS_os_log)familySettingsManager;
+ (OS_os_log)fileBackedKeyValueStore;
+ (OS_os_log)idsMessageTransport;
+ (OS_os_log)idsTransport;
+ (OS_os_log)idsTransportMessageAddressMap;
+ (OS_os_log)idsTransportMessageIdentifierMap;
+ (OS_os_log)idsTransportPrimitives;
+ (OS_os_log)managementStateObserver;
+ (OS_os_log)messageTrackingTransportEnvoy;
+ (OS_os_log)messageTrackingTransportService;
+ (OS_os_log)mirroring;
+ (OS_os_log)oneMoreMinuteManager;
+ (OS_os_log)organizationControllerConfigurationAdapter;
+ (OS_os_log)passcodeAuthenticationProviderService;
+ (OS_os_log)passcodeProviderService;
+ (OS_os_log)payload;
+ (OS_os_log)payloadManager;
+ (OS_os_log)payloadQueue;
+ (OS_os_log)persistence;
+ (OS_os_log)personal;
+ (OS_os_log)pinController;
+ (OS_os_log)pinService;
+ (OS_os_log)privateService;
+ (OS_os_log)promise;
+ (OS_os_log)reactor;
+ (OS_os_log)reactorCore;
+ (OS_os_log)reactorDirectiveProcessor;
+ (OS_os_log)reactorTool;
+ (OS_os_log)regionRating;
+ (OS_os_log)remoteViewService;
+ (OS_os_log)requestManager;
+ (OS_os_log)restrictionsMigrator;
+ (OS_os_log)screenTimeOrganizationController;
+ (OS_os_log)screentime;
+ (OS_os_log)settingsService;
+ (OS_os_log)setupClient;
+ (OS_os_log)test;
+ (OS_os_log)tool;
+ (OS_os_log)transaction;
+ (OS_os_log)transportServiceMessageLedger;
+ (OS_os_log)usage;
+ (OS_os_log)userNotifications;
+ (OS_os_log)userSafetyPolicyWriter;
+ (OS_os_log)utility;
+ (OS_os_log)v2Disable;
+ (OS_os_log)versionVector;
+ (OS_os_log)xpcServiceProvider;
@end

@implementation STLog

+ (OS_os_log)communicationClient
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"communicationClient"];

  return v3;
}

void __22__STLog_logCategories__block_invoke()
{
  v87[83] = *MEMORY[0x1E69E9840];
  v86[0] = @"accountState";
  v85 = os_log_create("com.apple.screentime.core", "accountState");
  v87[0] = v85;
  v86[1] = @"appInfo";
  v84 = os_log_create("com.apple.screentime.core", "appInfo");
  v87[1] = v84;
  v86[2] = @"appExceptions";
  v83 = os_log_create("com.apple.screentime.core", "appExceptions");
  v87[2] = v83;
  v86[3] = @"appMonitor";
  v82 = os_log_create("com.apple.screentime.core", "appMonitor");
  v87[3] = v82;
  v86[4] = @"apns";
  v81 = os_log_create("com.apple.screentime.core", "apns");
  v87[4] = v81;
  v86[5] = @"ask";
  v80 = os_log_create("com.apple.screentime.core", "ask");
  v87[5] = v80;
  v86[6] = @"blueprint";
  v79 = os_log_create("com.apple.screentime.core", "blueprint");
  v87[6] = v79;
  v86[7] = @"checkpoint";
  v78 = os_log_create("com.apple.screentime.core", "checkpoint");
  v87[7] = v78;
  v86[8] = @"cloudkit";
  v77 = os_log_create("com.apple.screentime.core", "cloudkit");
  v87[8] = v77;
  v86[9] = @"communicationSafety";
  v76 = os_log_create("com.apple.screentime.core", "communicationSafety");
  v87[9] = v76;
  v86[10] = @"conduit";
  v75 = os_log_create("com.apple.screentime.core", "conduit");
  v87[10] = v75;
  v86[11] = @"contactsService";
  v74 = os_log_create("com.apple.screentime.core", "contactsService");
  v87[11] = v74;
  v86[12] = @"conversation";
  v73 = os_log_create("com.apple.screentime.core", "conversation");
  v87[12] = v73;
  v86[13] = @"coreAnalytics";
  v72 = os_log_create("com.apple.screentime.core", "coreAnalytics");
  v87[13] = v72;
  v86[14] = @"coreAnimation";
  v71 = os_log_create("com.apple.screentime.core", "coreAnimation");
  v87[14] = v71;
  v86[15] = @"daemon";
  v70 = os_log_create("com.apple.screentime.core", "daemon");
  v87[15] = v70;
  v86[16] = @"deviceState";
  v69 = os_log_create("com.apple.screentime.core", "deviceState");
  v87[16] = v69;
  v86[17] = @"diagnostics";
  v68 = os_log_create("com.apple.screentime.core", "diagnostics");
  v87[17] = v68;
  v86[18] = @"family";
  v67 = os_log_create("com.apple.screentime.core", "family");
  v87[18] = v67;
  v86[19] = @"familyScreenTimeManager";
  v66 = os_log_create("com.apple.screentime.core", "familyScreenTimeManager");
  v87[19] = v66;
  v86[20] = @"familySettingsManager";
  v65 = os_log_create("com.apple.screentime.core", "familySettingsManager");
  v87[20] = v65;
  v86[21] = @"idsTransport";
  v64 = os_log_create("com.apple.screentime.core", "idsTransport");
  v87[21] = v64;
  v86[22] = @"managementStateObserver";
  v63 = os_log_create("com.apple.screentime.core", "managementStateObserver");
  v87[22] = v63;
  v86[23] = @"mirroring";
  v62 = os_log_create("com.apple.screentime.core", "mirroring");
  v87[23] = v62;
  v86[24] = @"oneMoreMinuteManager";
  v61 = os_log_create("com.apple.screentime.core", "oneMoreMinuteManager");
  v87[24] = v61;
  v86[25] = @"payload";
  v60 = os_log_create("com.apple.screentime.core", "payload");
  v87[25] = v60;
  v86[26] = @"payloadManager";
  v59 = os_log_create("com.apple.screentime.core", "payloadManager");
  v87[26] = v59;
  v86[27] = @"payloadQueue";
  v58 = os_log_create("com.apple.screentime.core", "payloadQueue");
  v87[27] = v58;
  v86[28] = @"persistence";
  v57 = os_log_create("com.apple.screentime.core", "persistence");
  v87[28] = v57;
  v86[29] = @"personal";
  v56 = os_log_create("com.apple.screentime.core", "personal");
  v87[29] = v56;
  v86[30] = @"pinController";
  v55 = os_log_create("com.apple.screentime.core", "pinController");
  v87[30] = v55;
  v86[31] = @"pinService";
  v54 = os_log_create("com.apple.screentime.core", "pinService");
  v87[31] = v54;
  v86[32] = @"privateService";
  v53 = os_log_create("com.apple.screentime.core", "privateService");
  v87[32] = v53;
  v86[33] = @"requestManager";
  v52 = os_log_create("com.apple.screentime.core", "requestManager");
  v87[33] = v52;
  v86[34] = @"restrictionsMigrator";
  v51 = os_log_create("com.apple.screentime.core", "restrictionsMigrator");
  v87[34] = v51;
  v86[35] = @"screentime";
  v50 = os_log_create("com.apple.screentime.core", "screentime");
  v87[35] = v50;
  v86[36] = @"screenTimeOrganizationController";
  v49 = os_log_create("com.apple.screentime.core", "screenTimeOrganizationController");
  v87[36] = v49;
  v86[37] = @"settingsService";
  v48 = os_log_create("com.apple.screentime.core", "settingsService");
  v87[37] = v48;
  v86[38] = @"test";
  v47 = os_log_create("com.apple.screentime.core", "test");
  v87[38] = v47;
  v86[39] = @"tool";
  v46 = os_log_create("com.apple.screentime.core", "tool");
  v87[39] = v46;
  v86[40] = @"transaction";
  v45 = os_log_create("com.apple.screentime.core", "transaction");
  v87[40] = v45;
  v86[41] = @"usage";
  v44 = os_log_create("com.apple.screentime.core", "usage");
  v87[41] = v44;
  v86[42] = @"userNotifications";
  v43 = os_log_create("com.apple.screentime.core", "userNotifications");
  v87[42] = v43;
  v86[43] = @"utility";
  v42 = os_log_create("com.apple.screentime.core", "utility");
  v87[43] = v42;
  v86[44] = @"versionVector";
  v41 = os_log_create("com.apple.screentime.core", "versionVector");
  v87[44] = v41;
  v86[45] = @"askClient";
  v40 = os_log_create("com.apple.screentime.core", "askClient");
  v87[45] = v40;
  v86[46] = @"backgroundActivity";
  v39 = os_log_create("com.apple.screentime.core", "backgroundActivity");
  v87[46] = v39;
  v86[47] = @"cachingCodableStore";
  v38 = os_log_create("com.apple.screentime.core", "cachingCodableStore");
  v87[47] = v38;
  v86[48] = @"communicationClient";
  v37 = os_log_create("com.apple.screentime.core", "communicationClient");
  v87[48] = v37;
  v86[49] = @"contactStorePrimitives";
  v36 = os_log_create("com.apple.screentime.core", "contactStorePrimitives");
  v87[49] = v36;
  v86[50] = @"coreDataConfigurationStore";
  v35 = os_log_create("com.apple.screentime.core", "coreDataConfigurationStore");
  v87[50] = v35;
  v86[51] = @"coreDataTransformer";
  v34 = os_log_create("com.apple.screentime.core", "coreDataTransformer");
  v87[51] = v34;
  v86[52] = @"coreDataObserver";
  v33 = os_log_create("com.apple.screentime.core", "coreDataObserver");
  v87[52] = v33;
  v86[53] = @"defaultUserPolicyApplicator";
  v32 = os_log_create("com.apple.screentime.core", "defaultUserPolicyApplicator");
  v87[53] = v32;
  v86[54] = @"deviceCapabilitiesClient";
  v31 = os_log_create("com.apple.screentime.core", "deviceCapabilitiesClient");
  v87[54] = v31;
  v86[55] = @"deviceInformationPrimitives";
  v30 = os_log_create("com.apple.screentime.core", "deviceInformationPrimitives");
  v87[55] = v30;
  v86[56] = @"eyeReliefStateWriter";
  v29 = os_log_create("com.apple.screentime.core", "eyeReliefStateWriter");
  v87[56] = v29;
  v86[57] = @"familyCirclePrimitives";
  v28 = os_log_create("com.apple.screentime.core", "familyCirclePrimitives");
  v87[57] = v28;
  v86[58] = @"familyCommunicationService";
  v27 = os_log_create("com.apple.screentime.core", "familyCommunicationService");
  v87[58] = v27;
  v86[59] = @"familyInformationProvider";
  v26 = os_log_create("com.apple.screentime.core", "familyInformationProvider");
  v87[59] = v26;
  v86[60] = @"familyMemberGenesisStateStore";
  v25 = os_log_create("com.apple.screentime.core", "familyMemberGenesisStateStore");
  v87[60] = v25;
  v86[61] = @"fileBackedKeyValueStore";
  v24 = os_log_create("com.apple.screentime.core", "fileBackedKeyValueStore");
  v87[61] = v24;
  v86[62] = @"idsMessageTransport";
  v23 = os_log_create("com.apple.screentime.core", "idsMessageTransport");
  v87[62] = v23;
  v86[63] = @"idsTransportMessageAddressMap";
  v22 = os_log_create("com.apple.screentime.core", "idsTransportMessageAddressMap");
  v87[63] = v22;
  v86[64] = @"idsTransportMessageIdentifierMap";
  v21 = os_log_create("com.apple.screentime.core", "idsTransportMessageIdentifierMap");
  v87[64] = v21;
  v86[65] = @"idsTransportPrimitives";
  v20 = os_log_create("com.apple.screentime.core", "idsTransportPrimitives");
  v87[65] = v20;
  v86[66] = @"messageTrackingTransportEnvoy";
  v19 = os_log_create("com.apple.screentime.core", "messageTrackingTransportEnvoy");
  v87[66] = v19;
  v86[67] = @"messageTrackingTransportService";
  v18 = os_log_create("com.apple.screentime.core", "messageTrackingTransportService");
  v87[67] = v18;
  v86[68] = @"organizationControllerConfigurationAdapter";
  v17 = os_log_create("com.apple.screentime.core", "organizationControllerConfigurationAdapter");
  v87[68] = v17;
  v86[69] = @"passcodeAuthenticationProviderService";
  v16 = os_log_create("com.apple.screentime.core", "passcodeAuthenticationProviderService");
  v87[69] = v16;
  v86[70] = @"passcodeProviderService";
  v15 = os_log_create("com.apple.screentime.core", "passcodeProviderService");
  v87[70] = v15;
  v86[71] = @"promise";
  v14 = os_log_create("com.apple.screentime.core", "promise");
  v87[71] = v14;
  v86[72] = @"reactor";
  v13 = os_log_create("com.apple.screentime.core", "reactor");
  v87[72] = v13;
  v86[73] = @"reactorCore";
  v0 = os_log_create("com.apple.screentime.core", "reactorCore");
  v87[73] = v0;
  v86[74] = @"reactorDirectiveProcessor";
  v1 = os_log_create("com.apple.screentime.core", "reactorDirectiveProcessor");
  v87[74] = v1;
  v86[75] = @"reactorTool";
  v2 = os_log_create("com.apple.screentime.core", "reactorTool");
  v87[75] = v2;
  v86[76] = @"remoteViewService";
  v3 = os_log_create("com.apple.screentime.core", "remoteViewService");
  v87[76] = v3;
  v86[77] = @"setupClient";
  v4 = os_log_create("com.apple.screentime.core", "setupClient");
  v87[77] = v4;
  v86[78] = @"transportServiceMessageLedger";
  v5 = os_log_create("com.apple.screentime.core", "transportServiceMessageLedger");
  v87[78] = v5;
  v86[79] = @"userSafetyPolicyWriter";
  v6 = os_log_create("com.apple.screentime.core", "userSafetyPolicyWriter");
  v87[79] = v6;
  v86[80] = @"v2Disable";
  v7 = os_log_create("com.apple.screentime.core", "v2Disable");
  v87[80] = v7;
  v86[81] = @"xpcServiceProvider";
  v8 = os_log_create("com.apple.screentime.core", "xpcServiceProvider");
  v87[81] = v8;
  v86[82] = @"familyMessaging";
  v9 = os_log_create("com.apple.screentime.core", "familyMessaging");
  v87[82] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:v86 count:83];
  v11 = _logCategories;
  _logCategories = v10;

  v12 = *MEMORY[0x1E69E9840];
}

+ (NSDictionary)logCategories
{
  if (logCategories_onceToken != -1)
  {
    +[STLog logCategories];
  }

  v3 = _logCategories;

  return v3;
}

+ (OS_os_log)reactor
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"reactor"];

  return v3;
}

+ (OS_os_log)xpcServiceProvider
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"xpcServiceProvider"];

  return v3;
}

+ (OS_os_log)conversation
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"conversation"];

  return v3;
}

+ (OS_os_log)screenTimeOrganizationController
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"screenTimeOrganizationController"];

  return v3;
}

+ (OS_os_log)coreDataObserver
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"coreDataObserver"];

  return v3;
}

+ (OS_os_log)accountState
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"accountState"];

  return v3;
}

+ (OS_os_log)appInfo
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"appInfo"];

  return v3;
}

+ (OS_os_log)appExceptions
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"appExceptions"];

  return v3;
}

+ (OS_os_log)appMonitor
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"appMonitor"];

  return v3;
}

+ (OS_os_log)apns
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"apns"];

  return v3;
}

+ (OS_os_log)ask
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"ask"];

  return v3;
}

+ (OS_os_log)blueprint
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"blueprint"];

  return v3;
}

+ (OS_os_log)checkpoint
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"checkpoint"];

  return v3;
}

+ (OS_os_log)cloudkit
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"cloudkit"];

  return v3;
}

+ (OS_os_log)communicationSafety
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"communicationSafety"];

  return v3;
}

+ (OS_os_log)conduit
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"conduit"];

  return v3;
}

+ (OS_os_log)contactsService
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"contactsService"];

  return v3;
}

+ (OS_os_log)coreAnalytics
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"coreAnalytics"];

  return v3;
}

+ (OS_os_log)coreAnimation
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"coreAnimation"];

  return v3;
}

+ (OS_os_log)coreDataValidation
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"coreDataValidation"];

  return v3;
}

+ (OS_os_log)daemon
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"daemon"];

  return v3;
}

+ (OS_os_log)deviceState
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"deviceState"];

  return v3;
}

+ (OS_os_log)diagnostics
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"diagnostics"];

  return v3;
}

+ (OS_os_log)family
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"family"];

  return v3;
}

+ (OS_os_log)familyScreenTimeManager
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"familyScreenTimeManager"];

  return v3;
}

+ (OS_os_log)familySettingsManager
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"familySettingsManager"];

  return v3;
}

+ (OS_os_log)idsTransport
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"idsTransport"];

  return v3;
}

+ (OS_os_log)managementStateObserver
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"managementStateObserver"];

  return v3;
}

+ (OS_os_log)mirroring
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"mirroring"];

  return v3;
}

+ (OS_os_log)oneMoreMinuteManager
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"oneMoreMinuteManager"];

  return v3;
}

+ (OS_os_log)payload
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"payload"];

  return v3;
}

+ (OS_os_log)payloadManager
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"payloadManager"];

  return v3;
}

+ (OS_os_log)payloadQueue
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"payloadQueue"];

  return v3;
}

+ (OS_os_log)persistence
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"persistence"];

  return v3;
}

+ (OS_os_log)personal
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"personal"];

  return v3;
}

+ (OS_os_log)pinController
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"pinController"];

  return v3;
}

+ (OS_os_log)pinService
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"pinService"];

  return v3;
}

+ (OS_os_log)privateService
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"privateService"];

  return v3;
}

+ (OS_os_log)requestManager
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"requestManager"];

  return v3;
}

+ (OS_os_log)restrictionsMigrator
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"restrictionsMigrator"];

  return v3;
}

+ (OS_os_log)settingsService
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"settingsService"];

  return v3;
}

+ (OS_os_log)screentime
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"screentime"];

  return v3;
}

+ (OS_os_log)test
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"test"];

  return v3;
}

+ (OS_os_log)tool
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"tool"];

  return v3;
}

+ (OS_os_log)transaction
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"transaction"];

  return v3;
}

+ (OS_os_log)usage
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"usage"];

  return v3;
}

+ (OS_os_log)userNotifications
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"userNotifications"];

  return v3;
}

+ (OS_os_log)utility
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"utility"];

  return v3;
}

+ (OS_os_log)versionVector
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"versionVector"];

  return v3;
}

+ (OS_os_log)askClient
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"askClient"];

  return v3;
}

+ (OS_os_log)backgroundActivity
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"backgroundActivity"];

  return v3;
}

+ (OS_os_log)cachingCodableStore
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"cachingCodableStore"];

  return v3;
}

+ (OS_os_log)contactStorePrimitives
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"contactStorePrimitives"];

  return v3;
}

+ (OS_os_log)coreDataConfigurationStore
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"coreDataConfigurationStore"];

  return v3;
}

+ (OS_os_log)coreDataTransformer
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"coreDataTransformer"];

  return v3;
}

+ (OS_os_log)defaultUserPolicyApplicator
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"defaultUserPolicyApplicator"];

  return v3;
}

+ (OS_os_log)deviceCapabilitiesClient
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"deviceCapabilitiesClient"];

  return v3;
}

+ (OS_os_log)deviceInformationPrimitives
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"deviceInformationPrimitives"];

  return v3;
}

+ (OS_os_log)downtimeClient
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"downtimeClient"];

  return v3;
}

+ (OS_os_log)eyeReliefStateWriter
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"eyeReliefStateWriter"];

  return v3;
}

+ (OS_os_log)familyCirclePrimitives
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"familyCirclePrimitives"];

  return v3;
}

+ (OS_os_log)familyCommunicationService
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"familyCommunicationService"];

  return v3;
}

+ (OS_os_log)familyInformationProvider
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"familyInformationProvider"];

  return v3;
}

+ (OS_os_log)familyMemberGenesisStateStore
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"familyMemberGenesisStateStore"];

  return v3;
}

+ (OS_os_log)fileBackedKeyValueStore
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"fileBackedKeyValueStore"];

  return v3;
}

+ (OS_os_log)idsMessageTransport
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"idsMessageTransport"];

  return v3;
}

+ (OS_os_log)idsTransportMessageAddressMap
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"idsTransportMessageAddressMap"];

  return v3;
}

+ (OS_os_log)idsTransportMessageIdentifierMap
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"idsTransportMessageIdentifierMap"];

  return v3;
}

+ (OS_os_log)idsTransportPrimitives
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"idsTransportPrimitives"];

  return v3;
}

+ (OS_os_log)messageTrackingTransportEnvoy
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"messageTrackingTransportEnvoy"];

  return v3;
}

+ (OS_os_log)messageTrackingTransportService
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"messageTrackingTransportService"];

  return v3;
}

+ (OS_os_log)organizationControllerConfigurationAdapter
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"organizationControllerConfigurationAdapter"];

  return v3;
}

+ (OS_os_log)passcodeAuthenticationProviderService
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"passcodeAuthenticationProviderService"];

  return v3;
}

+ (OS_os_log)passcodeProviderService
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"passcodeProviderService"];

  return v3;
}

+ (OS_os_log)promise
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"promise"];

  return v3;
}

+ (OS_os_log)reactorCore
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"reactorCore"];

  return v3;
}

+ (OS_os_log)reactorDirectiveProcessor
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"reactorDirectiveProcessor"];

  return v3;
}

+ (OS_os_log)reactorTool
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"reactorTool"];

  return v3;
}

+ (OS_os_log)regionRating
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"regionRating"];

  return v3;
}

+ (OS_os_log)remoteViewService
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"remoteViewService"];

  return v3;
}

+ (OS_os_log)setupClient
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"setupClient"];

  return v3;
}

+ (OS_os_log)transportServiceMessageLedger
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"transportServiceMessageLedger"];

  return v3;
}

+ (OS_os_log)userSafetyPolicyWriter
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"userSafetyPolicyWriter"];

  return v3;
}

+ (OS_os_log)v2Disable
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"v2Disable"];

  return v3;
}

+ (OS_os_log)familyMessaging
{
  v2 = +[STLog logCategories];
  v3 = [v2 objectForKeyedSubscript:@"familyMessaging"];

  return v3;
}

@end