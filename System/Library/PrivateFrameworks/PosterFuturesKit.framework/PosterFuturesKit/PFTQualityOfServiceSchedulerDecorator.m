@interface PFTQualityOfServiceSchedulerDecorator
- (PFTQualityOfServiceSchedulerDecorator)initWithScheduler:(id)a3 qualityOfService:(unint64_t)a4;
- (double)timestamp;
- (id)afterDelay:(double)a3 performBlock:(id)a4;
- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5;
- (id)performCancellableBlock:(id)a3;
- (id)performCancellableBlock:(id)a3 qualityOfService:(unint64_t)a4;
- (void)performBlock:(id)a3;
- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4;
@end

@implementation PFTQualityOfServiceSchedulerDecorator

- (PFTQualityOfServiceSchedulerDecorator)initWithScheduler:(id)a3 qualityOfService:(unint64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = PFTQualityOfServiceSchedulerDecorator;
  v8 = [(PFTQualityOfServiceSchedulerDecorator *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_scheduler, a3);
    v9->_qualityOfService = a4;
    v10 = v9;
  }

  return v9;
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  v5 = [(PFTQualityOfServiceSchedulerDecorator *)self scheduler];
  [v5 performBlock:v4 qualityOfService:{-[PFTQualityOfServiceSchedulerDecorator qualityOfService](self, "qualityOfService")}];
}

- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = a3;
  v7 = [(PFTQualityOfServiceSchedulerDecorator *)self scheduler];
  [v7 performBlock:v6 qualityOfService:a4];
}

- (id)performCancellableBlock:(id)a3
{
  v4 = a3;
  v5 = [(PFTQualityOfServiceSchedulerDecorator *)self scheduler];
  v6 = [v5 performCancellableBlock:v4 qualityOfService:{-[PFTQualityOfServiceSchedulerDecorator qualityOfService](self, "qualityOfService")}];

  return v6;
}

- (id)performCancellableBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = a3;
  v7 = [(PFTQualityOfServiceSchedulerDecorator *)self scheduler];
  v8 = [v7 performCancellableBlock:v6 qualityOfService:a4];

  return v8;
}

- (id)afterDelay:(double)a3 performBlock:(id)a4
{
  v6 = a4;
  v7 = [(PFTQualityOfServiceSchedulerDecorator *)self scheduler];
  v8 = [v7 afterDelay:v6 performBlock:-[PFTQualityOfServiceSchedulerDecorator qualityOfService](self qualityOfService:{"qualityOfService"), a3}];

  return v8;
}

- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5
{
  v8 = a4;
  v9 = [(PFTQualityOfServiceSchedulerDecorator *)self scheduler];
  v10 = [v9 afterDelay:v8 performBlock:a5 qualityOfService:a3];

  return v10;
}

- (double)timestamp
{
  v2 = [(PFTQualityOfServiceSchedulerDecorator *)self scheduler];
  [v2 timestamp];
  v4 = v3;

  return v4;
}

@end