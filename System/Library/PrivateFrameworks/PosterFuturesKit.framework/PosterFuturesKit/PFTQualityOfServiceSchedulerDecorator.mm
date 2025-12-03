@interface PFTQualityOfServiceSchedulerDecorator
- (PFTQualityOfServiceSchedulerDecorator)initWithScheduler:(id)scheduler qualityOfService:(unint64_t)service;
- (double)timestamp;
- (id)afterDelay:(double)delay performBlock:(id)block;
- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service;
- (id)performCancellableBlock:(id)block;
- (id)performCancellableBlock:(id)block qualityOfService:(unint64_t)service;
- (void)performBlock:(id)block;
- (void)performBlock:(id)block qualityOfService:(unint64_t)service;
@end

@implementation PFTQualityOfServiceSchedulerDecorator

- (PFTQualityOfServiceSchedulerDecorator)initWithScheduler:(id)scheduler qualityOfService:(unint64_t)service
{
  schedulerCopy = scheduler;
  v12.receiver = self;
  v12.super_class = PFTQualityOfServiceSchedulerDecorator;
  v8 = [(PFTQualityOfServiceSchedulerDecorator *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_scheduler, scheduler);
    v9->_qualityOfService = service;
    v10 = v9;
  }

  return v9;
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  scheduler = [(PFTQualityOfServiceSchedulerDecorator *)self scheduler];
  [scheduler performBlock:blockCopy qualityOfService:{-[PFTQualityOfServiceSchedulerDecorator qualityOfService](self, "qualityOfService")}];
}

- (void)performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  scheduler = [(PFTQualityOfServiceSchedulerDecorator *)self scheduler];
  [scheduler performBlock:blockCopy qualityOfService:service];
}

- (id)performCancellableBlock:(id)block
{
  blockCopy = block;
  scheduler = [(PFTQualityOfServiceSchedulerDecorator *)self scheduler];
  v6 = [scheduler performCancellableBlock:blockCopy qualityOfService:{-[PFTQualityOfServiceSchedulerDecorator qualityOfService](self, "qualityOfService")}];

  return v6;
}

- (id)performCancellableBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  scheduler = [(PFTQualityOfServiceSchedulerDecorator *)self scheduler];
  v8 = [scheduler performCancellableBlock:blockCopy qualityOfService:service];

  return v8;
}

- (id)afterDelay:(double)delay performBlock:(id)block
{
  blockCopy = block;
  scheduler = [(PFTQualityOfServiceSchedulerDecorator *)self scheduler];
  v8 = [scheduler afterDelay:blockCopy performBlock:-[PFTQualityOfServiceSchedulerDecorator qualityOfService](self qualityOfService:{"qualityOfService"), delay}];

  return v8;
}

- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  scheduler = [(PFTQualityOfServiceSchedulerDecorator *)self scheduler];
  v10 = [scheduler afterDelay:blockCopy performBlock:service qualityOfService:delay];

  return v10;
}

- (double)timestamp
{
  scheduler = [(PFTQualityOfServiceSchedulerDecorator *)self scheduler];
  [scheduler timestamp];
  v4 = v3;

  return v4;
}

@end