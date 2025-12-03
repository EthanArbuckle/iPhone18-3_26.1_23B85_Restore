@interface STStatusItemsStatusDomainPublisher
+ (id)emptyChangeContext;
+ (id)emptyData;
- (void)setData:(id)data withContext:(id)context completion:(id)completion;
- (void)setVolatileData:(id)data withContext:(id)context completion:(id)completion;
- (void)updateData:(id)data completion:(id)completion;
- (void)updateVolatileData:(id)data completion:(id)completion;
@end

@implementation STStatusItemsStatusDomainPublisher

- (void)setData:(id)data withContext:(id)context completion:(id)completion
{
  v5.receiver = self;
  v5.super_class = STStatusItemsStatusDomainPublisher;
  [(STStatusDomainPublisher *)&v5 setData:data withContext:context completion:completion];
}

- (void)updateData:(id)data completion:(id)completion
{
  v4.receiver = self;
  v4.super_class = STStatusItemsStatusDomainPublisher;
  [(STStatusDomainPublisher *)&v4 updateData:data completion:completion];
}

- (void)setVolatileData:(id)data withContext:(id)context completion:(id)completion
{
  v5.receiver = self;
  v5.super_class = STStatusItemsStatusDomainPublisher;
  [(STStatusDomainPublisher *)&v5 setVolatileData:data withContext:context completion:completion];
}

- (void)updateVolatileData:(id)data completion:(id)completion
{
  v4.receiver = self;
  v4.super_class = STStatusItemsStatusDomainPublisher;
  [(STStatusDomainPublisher *)&v4 updateVolatileData:data completion:completion];
}

+ (id)emptyData
{
  v2 = objc_alloc_init(STStatusItemsStatusDomainData);

  return v2;
}

+ (id)emptyChangeContext
{
  v2 = objc_alloc_init(STStatusItemsStatusDomainDataChangeContext);

  return v2;
}

@end