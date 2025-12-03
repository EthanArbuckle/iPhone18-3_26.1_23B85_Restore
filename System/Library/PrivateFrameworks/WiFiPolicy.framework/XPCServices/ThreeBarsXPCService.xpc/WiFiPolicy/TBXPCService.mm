@interface TBXPCService
- (TBXPCService)init;
- (void)fetch3BarsNetworksForLocation:(id)location;
- (void)fetchTileFromVisitedCallback:(unint64_t)callback cacheAge:(id)age;
- (void)forceFetch3BarsNetworkMatchingBSSID:(id)d completionHandler:(id)handler;
- (void)maintenanceTask:(unint64_t)task location:(id)location predictedForDuration:(double)duration maxPredictedLocations:(unint64_t)locations completionHandler:(id)handler;
- (void)prune3BarsNetworks:(unint64_t)networks;
@end

@implementation TBXPCService

- (TBXPCService)init
{
  NSLog(@"%s:", a2, "[TBXPCService init]");
  v7.receiver = self;
  v7.super_class = TBXPCService;
  v3 = [(TBXPCService *)&v7 init];
  v4 = dispatch_queue_create(0, 0);
  processingQueue = v3->_processingQueue;
  v3->_processingQueue = v4;

  return v3;
}

- (void)maintenanceTask:(unint64_t)task location:(id)location predictedForDuration:(double)duration maxPredictedLocations:(unint64_t)locations completionHandler:(id)handler
{
  locationCopy = location;
  handlerCopy = handler;
  NSLog(@"%s: sizeLimit = %ld, duration = %f, maxLocations = %lu", "[TBXPCService maintenanceTask:location:predictedForDuration:maxPredictedLocations:completionHandler:]", task, *&duration, locations);
  self->_isCancelled = 0;
  processingQueue = self->_processingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100000EE0;
  block[3] = &unk_100004150;
  v19 = handlerCopy;
  taskCopy = task;
  block[4] = self;
  v18 = locationCopy;
  durationCopy = duration;
  locationsCopy = locations;
  v15 = locationCopy;
  v16 = handlerCopy;
  dispatch_async(processingQueue, block);
}

- (void)fetchTileFromVisitedCallback:(unint64_t)callback cacheAge:(id)age
{
  ageCopy = age;
  NSLog(@"%s: tileKey = %llu, cacheAge = %@", "[TBXPCService fetchTileFromVisitedCallback:cacheAge:]", callback, ageCopy);
  v6 = [[WiFi3BarsSource alloc] initWithChangeHandler:0 localStoreType:1];
  v7 = [NSNumber numberWithUnsignedLongLong:callback];
  v8 = [TBTileItemDescriptor tileItemDescriptorWithKey:v7];

  v9 = [NSSet setWithObjects:v8, 0];
  v10 = [[TBTileFetchRequestDescriptor alloc] initWithTileItems:v9 maxCacheAge:ageCopy];

  v11 = [[TBTileFetchRequest alloc] initWithDescriptor:v10 sourcePolicy:3 cacheable:1];
  v16[0] = @"trigger";
  v16[1] = @"tileKey";
  v17[0] = &off_100004448;
  v12 = [NSNumber numberWithUnsignedLongLong:callback];
  v17[1] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  [v11 setUserInfo:v13];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100001264;
  v15[3] = &unk_100004170;
  v15[4] = callback;
  [v11 setResultsHandler:v15];
  sourceMediator = [v6 sourceMediator];
  [sourceMediator executeFetchRequest:v11];
}

- (void)fetch3BarsNetworksForLocation:(id)location
{
  locationCopy = location;
  NSLog(@"%s:", "[TBXPCService fetch3BarsNetworksForLocation:]");
  processingQueue = self->_processingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000013F8;
  block[3] = &unk_100004198;
  v8 = locationCopy;
  v6 = locationCopy;
  dispatch_async(processingQueue, block);
}

- (void)prune3BarsNetworks:(unint64_t)networks
{
  NSLog(@"%s:", a2, "[TBXPCService prune3BarsNetworks:]");
  processingQueue = self->_processingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001508;
  block[3] = &unk_1000041B8;
  block[4] = networks;
  dispatch_async(processingQueue, block);
}

- (void)forceFetch3BarsNetworkMatchingBSSID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  NSLog(@"%s:", "[TBXPCService forceFetch3BarsNetworkMatchingBSSID:completionHandler:]");
  processingQueue = self->_processingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001648;
  block[3] = &unk_1000041E0;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(processingQueue, block);
}

@end