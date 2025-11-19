@interface RMLog
+ (id)StoreXPCListenerDelegate;
+ (id)XPCListenerDelegate;
+ (id)activationEngine;
+ (id)backgroundTask;
+ (id)backgroundTaskScheduler;
+ (id)client;
+ (id)clientCapabilitiesController;
+ (id)clientController;
+ (id)cloudConfigController;
+ (id)commandEngine;
+ (id)configurationEventStreamSubscription;
+ (id)configurationPublisher;
+ (id)configurationQuerier;
+ (id)configurationStatusArchiver;
+ (id)configurationSubscriberServicePlugin;
+ (id)daemon;
+ (id)deviceAuthenticationCredential;
+ (id)deviceIdentity;
+ (id)deviceLockState;
+ (id)externalStatusArchiver;
+ (id)externalStatusPublisher;
+ (id)fileConduit;
+ (id)genericAuthenticationCredential;
+ (id)httpConduit;
+ (id)httpLogging;
+ (id)httpconduitstate;
+ (id)internalStatusPublisher;
+ (id)managementPropertiesArchiver;
+ (id)managementSettings;
+ (id)mdmConduit;
+ (id)mdmconduitstate;
+ (id)mdmv1Liaison;
+ (id)migrationConfigurationUI;
+ (id)migrationEngine;
+ (id)migrationExcludeFromBackup;
+ (id)migrationMathSettings;
+ (id)migrationStatusPath;
+ (id)migrationSupervised;
+ (id)migrationSystemContainer;
+ (id)persistentController;
+ (id)pluginDiscovery;
+ (id)predicateDescription;
+ (id)predicateStatusUpdater;
+ (id)push;
+ (id)securityUtilities;
+ (id)statusEngine;
+ (id)statusNotificationCenter;
+ (id)statusPublisherServicePlugin;
+ (id)statusQuerier;
+ (id)statusReporter;
+ (id)statusSubscriptionsSubscriber;
+ (id)storeAssetCache;
+ (id)storeAssetResolver;
+ (id)storeClient;
+ (id)storeController;
+ (id)storeDataFetcher;
+ (id)storeHelper;
@end

@implementation RMLog

+ (id)mdmConduit
{
  if (qword_1000E6930 != -1)
  {
    sub_100051948();
  }

  v3 = qword_1000E6928;

  return v3;
}

+ (id)client
{
  if (qword_1000E6710 != -1)
  {
    sub_10000FD0C();
  }

  v3 = qword_1000E6708;

  return v3;
}

+ (id)daemon
{
  if (qword_1000E6670 != -1)
  {
    sub_100093A28();
  }

  v3 = qword_1000E6668;

  return v3;
}

+ (id)activationEngine
{
  if (qword_1000E6680 != -1)
  {
    sub_100006C74();
  }

  v3 = qword_1000E6678;

  return v3;
}

+ (id)deviceAuthenticationCredential
{
  if (qword_1000E66A0 != -1)
  {
    sub_1000094C8();
  }

  v3 = qword_1000E6698;

  return v3;
}

+ (id)genericAuthenticationCredential
{
  if (qword_1000E66B0 != -1)
  {
    sub_10000A940();
  }

  v3 = qword_1000E66A8;

  return v3;
}

+ (id)backgroundTask
{
  if (qword_1000E66D0 != -1)
  {
    sub_10000B390();
  }

  v3 = qword_1000E66C8;

  return v3;
}

+ (id)backgroundTaskScheduler
{
  if (qword_1000E66E0 != -1)
  {
    sub_10000B94C();
  }

  v3 = qword_1000E66D8;

  return v3;
}

+ (id)clientCapabilitiesController
{
  if (qword_1000E6720 != -1)
  {
    sub_100010DE8();
  }

  v3 = qword_1000E6718;

  return v3;
}

+ (id)clientController
{
  if (qword_1000E6748 != -1)
  {
    sub_1000198A4();
  }

  v3 = qword_1000E6740;

  return v3;
}

+ (id)cloudConfigController
{
  if (qword_1000E6770 != -1)
  {
    sub_10001BDBC();
  }

  v3 = qword_1000E6768;

  return v3;
}

+ (id)commandEngine
{
  if (qword_1000E6780 != -1)
  {
    sub_10001D580();
  }

  v3 = qword_1000E6778;

  return v3;
}

+ (id)configurationEventStreamSubscription
{
  if (qword_1000E6790 != -1)
  {
    sub_10001EEEC();
  }

  v3 = qword_1000E6788;

  return v3;
}

+ (id)configurationPublisher
{
  if (qword_1000E67A0 != -1)
  {
    sub_100022568();
  }

  v3 = qword_1000E6798;

  return v3;
}

+ (id)configurationQuerier
{
  if (qword_1000E67C0 != -1)
  {
    sub_100024428();
  }

  v3 = qword_1000E67B8;

  return v3;
}

+ (id)configurationStatusArchiver
{
  if (qword_1000E67D0 != -1)
  {
    sub_1000258E8();
  }

  v3 = qword_1000E67C8;

  return v3;
}

+ (id)configurationSubscriberServicePlugin
{
  if (qword_1000E67F0 != -1)
  {
    sub_100026D78();
  }

  v3 = qword_1000E67E8;

  return v3;
}

+ (id)deviceIdentity
{
  if (qword_1000E6800 != -1)
  {
    sub_100029158();
  }

  v3 = qword_1000E67F8;

  return v3;
}

+ (id)deviceLockState
{
  if (qword_1000E6820 != -1)
  {
    sub_100029A44();
  }

  v3 = qword_1000E6818;

  return v3;
}

+ (id)externalStatusArchiver
{
  if (qword_1000E6830 != -1)
  {
    sub_10002A4B8();
  }

  v3 = qword_1000E6828;

  return v3;
}

+ (id)externalStatusPublisher
{
  if (qword_1000E6840 != -1)
  {
    sub_10002EA94();
  }

  v3 = qword_1000E6838;

  return v3;
}

+ (id)fileConduit
{
  if (qword_1000E6868 != -1)
  {
    sub_1000327C0();
  }

  v3 = qword_1000E6860;

  return v3;
}

+ (id)httpConduit
{
  if (qword_1000E6878 != -1)
  {
    sub_10003BB68();
  }

  v3 = qword_1000E6870;

  return v3;
}

+ (id)httpconduitstate
{
  if (qword_1000E6898 != -1)
  {
    sub_10003D6E4();
  }

  v3 = qword_1000E6890;

  return v3;
}

+ (id)httpLogging
{
  if (qword_1000E68A8 != -1)
  {
    sub_10003E344();
  }

  v3 = qword_1000E68A0;

  return v3;
}

+ (id)internalStatusPublisher
{
  if (qword_1000E68C8 != -1)
  {
    sub_100048B2C();
  }

  v3 = qword_1000E68C0;

  return v3;
}

+ (id)managementPropertiesArchiver
{
  if (qword_1000E6900 != -1)
  {
    sub_100049F54();
  }

  v3 = qword_1000E68F8;

  return v3;
}

+ (id)managementSettings
{
  if (qword_1000E6910 != -1)
  {
    sub_10004AA5C();
  }

  v3 = qword_1000E6908;

  return v3;
}

+ (id)mdmconduitstate
{
  if (qword_1000E6940 != -1)
  {
    sub_1000523C4();
  }

  v3 = qword_1000E6938;

  return v3;
}

+ (id)mdmv1Liaison
{
  if (qword_1000E6950 != -1)
  {
    sub_10005266C();
  }

  v3 = qword_1000E6948;

  return v3;
}

+ (id)migrationConfigurationUI
{
  if (qword_1000E6960 != -1)
  {
    sub_100052B04();
  }

  v3 = qword_1000E6958;

  return v3;
}

+ (id)migrationEngine
{
  if (qword_1000E6970 != -1)
  {
    sub_100053A60();
  }

  v3 = qword_1000E6968;

  return v3;
}

+ (id)migrationExcludeFromBackup
{
  if (qword_1000E6980 != -1)
  {
    sub_1000540A0();
  }

  v3 = qword_1000E6978;

  return v3;
}

+ (id)migrationMathSettings
{
  if (qword_1000E6990 != -1)
  {
    sub_10005456C();
  }

  v3 = qword_1000E6988;

  return v3;
}

+ (id)migrationStatusPath
{
  if (qword_1000E69A0 != -1)
  {
    sub_1000552A8();
  }

  v3 = qword_1000E6998;

  return v3;
}

+ (id)migrationSupervised
{
  if (qword_1000E69B8 != -1)
  {
    sub_100055A18();
  }

  v3 = qword_1000E69B0;

  return v3;
}

+ (id)migrationSystemContainer
{
  if (qword_1000E69C8 != -1)
  {
    sub_1000561C8();
  }

  v3 = qword_1000E69C0;

  return v3;
}

+ (id)persistentController
{
  if (qword_1000E69D8 != -1)
  {
    sub_1000592CC();
  }

  v3 = qword_1000E69D0;

  return v3;
}

+ (id)pluginDiscovery
{
  if (qword_1000E6A30 != -1)
  {
    sub_10005BE08();
  }

  v3 = qword_1000E6A28;

  return v3;
}

+ (id)predicateDescription
{
  if (qword_1000E6A40 != -1)
  {
    sub_10005D3B0();
  }

  v3 = qword_1000E6A38;

  return v3;
}

+ (id)predicateStatusUpdater
{
  if (qword_1000E6A50 != -1)
  {
    sub_10005DC6C();
  }

  v3 = qword_1000E6A48;

  return v3;
}

+ (id)push
{
  if (qword_1000E6A70 != -1)
  {
    sub_100060A18();
  }

  v3 = qword_1000E6A68;

  return v3;
}

+ (id)securityUtilities
{
  if (qword_1000E6AA8 != -1)
  {
    sub_1000630A0();
  }

  v3 = qword_1000E6AA0;

  return v3;
}

+ (id)statusEngine
{
  if (qword_1000E6AB8 != -1)
  {
    sub_100066690();
  }

  v3 = qword_1000E6AB0;

  return v3;
}

+ (id)statusPublisherServicePlugin
{
  if (qword_1000E6AC8 != -1)
  {
    sub_100067BFC();
  }

  v3 = qword_1000E6AC0;

  return v3;
}

+ (id)statusQuerier
{
  if (qword_1000E6AD8 != -1)
  {
    sub_100068D20();
  }

  v3 = qword_1000E6AD0;

  return v3;
}

+ (id)statusReporter
{
  if (qword_1000E6AE8 != -1)
  {
    sub_100069FD4();
  }

  v3 = qword_1000E6AE0;

  return v3;
}

+ (id)statusSubscriptionsSubscriber
{
  if (qword_1000E6AF8 != -1)
  {
    sub_10006CA00();
  }

  v3 = qword_1000E6AF0;

  return v3;
}

+ (id)storeAssetCache
{
  if (qword_1000E6B08 != -1)
  {
    sub_10006D9E8();
  }

  v3 = qword_1000E6B00;

  return v3;
}

+ (id)storeAssetResolver
{
  if (qword_1000E6B18 != -1)
  {
    sub_100072338();
  }

  v3 = qword_1000E6B10;

  return v3;
}

+ (id)storeClient
{
  if (qword_1000E6B28 != -1)
  {
    sub_100073CF4();
  }

  v3 = qword_1000E6B20;

  return v3;
}

+ (id)storeController
{
  if (qword_1000E6B38 != -1)
  {
    sub_1000806F4();
  }

  v3 = qword_1000E6B30;

  return v3;
}

+ (id)storeDataFetcher
{
  if (qword_1000E6B60 != -1)
  {
    sub_100083D8C();
  }

  v3 = qword_1000E6B58;

  return v3;
}

+ (id)storeHelper
{
  if (qword_1000E6B80 != -1)
  {
    sub_100084DD8();
  }

  v3 = qword_1000E6B78;

  return v3;
}

+ (id)StoreXPCListenerDelegate
{
  if (qword_1000E6B90 != -1)
  {
    sub_10008B968();
  }

  v3 = qword_1000E6B88;

  return v3;
}

+ (id)statusNotificationCenter
{
  if (qword_1000E6BA0 != -1)
  {
    sub_10008E888();
  }

  v3 = qword_1000E6B98;

  return v3;
}

+ (id)XPCListenerDelegate
{
  if (qword_1000E6BC0 != -1)
  {
    sub_100093234();
  }

  v3 = qword_1000E6BB8;

  return v3;
}

@end