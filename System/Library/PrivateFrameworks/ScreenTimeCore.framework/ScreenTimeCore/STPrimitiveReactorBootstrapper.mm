@interface STPrimitiveReactorBootstrapper
+ (id)bootstrappedReactorWithPersistentContainer:(id)a3 xpcServiceProvider:(id)a4 organizationControllerConfigurationAdapter:(id)a5 askForTimeEventRelay:(id)a6 askForTimeResponseHandler:(id)a7 reactorWillShutdown:(id)a8 reactorDidShutdown:(id)a9;
@end

@implementation STPrimitiveReactorBootstrapper

+ (id)bootstrappedReactorWithPersistentContainer:(id)a3 xpcServiceProvider:(id)a4 organizationControllerConfigurationAdapter:(id)a5 askForTimeEventRelay:(id)a6 askForTimeResponseHandler:(id)a7 reactorWillShutdown:(id)a8 reactorDidShutdown:(id)a9
{
  v33 = a8;
  v35 = a9;
  v40 = a7;
  v38 = a6;
  v14 = a5;
  v39 = a4;
  v15 = a3;
  v37 = objc_opt_new();
  v51 = objc_opt_new();
  v16 = [[STConcreteIDSTransportPrimitives alloc] initWithServiceName:@"com.apple.private.alloy.screentime"];
  v50 = objc_opt_new();
  v49 = objc_opt_new();
  v48 = objc_opt_new();
  v47 = objc_opt_new();
  v32 = [[STConcreteCoreDataObserver alloc] initWithPersistentContainer:v15];
  v42 = [[STConcreteCoreDataTransformer alloc] initWithOrganizationControllerConfigurationAdapter:v14 deviceInformationPrimitives:v51 persistentContainer:v15];

  v46 = objc_opt_new();
  v45 = objc_opt_new();
  v44 = objc_opt_new();
  v31 = +[STLocations persistentStoreDirectory];
  v43 = [v31 URLByAppendingPathComponent:@"AddressMap/"];
  v41 = [v31 URLByAppendingPathComponent:@"IdentifierMap/"];
  v30 = [v31 URLByAppendingPathComponent:@"MessageLedger/"];
  v29 = [v31 URLByAppendingPathComponent:@"GenesisStateStore/"];
  v17 = [@"com.apple.ScreenTimeAgent.reactor" UTF8String];
  v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v28 = dispatch_queue_create(v17, v18);

  v19 = [@"com.apple.ScreenTimeAgent.transport-service" UTF8String];
  v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v21 = dispatch_queue_create(v19, v20);

  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100058B1C;
  v54[3] = &unk_1001A49C0;
  v55 = v16;
  v56 = v33;
  v22 = v16;
  v34 = v33;
  v23 = objc_retainBlock(v54);
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100058B60;
  v52[3] = &unk_1001A4330;
  v53 = v35;
  v36 = v35;
  v24 = objc_retainBlock(v52);
  v25 = [[STReactor alloc] initWithFamilyCirclePrimitives:v37 deviceInformationPrimitives:v51 idsTransportPrimitives:v22 filesystemPrimitives:v50 contactStorePrimitives:v49 xpcServiceProvider:v39 primitiveOSTransactionProvider:v48 primitiveBackgroundActivitySchedulerProvider:v47 coreDataObserver:v32 coreDataConfigurationTransformer:v42 coreDataDeviceStateTransformer:v42 coreDataFamilyInformationTransformer:v42 askForTimeEventRelay:v38 askForTimeResponseHandler:v40 biomeEventWriter:v46 eyeReliefStateWriter:v45 userSafetyPolicyWriter:v44 messageAddressMapDirectoryURL:v43 messageIdentifierMapDirectoryURL:v41 messageLedgerDirectoryURL:v30 genesisStateStoreDirectoryURL:v29 reactorQueue:v28 transportQueue:v21 shutdownWillBegin:v23 shutdownDidComplete:v24];

  [(STReactor *)v25 start];
  v26 = dispatch_queue_create([@"com.apple.ScreenTimeAgent.family-circle-primitives" UTF8String], 0);
  [v37 startOnQueue:v26];

  [(STConcreteIDSTransportPrimitives *)v22 startOnQueue:v21];
  [(STConcreteCoreDataObserver *)v32 start];
  [(STReactor *)v25 reconcileGenesisStateStore];

  return v25;
}

@end