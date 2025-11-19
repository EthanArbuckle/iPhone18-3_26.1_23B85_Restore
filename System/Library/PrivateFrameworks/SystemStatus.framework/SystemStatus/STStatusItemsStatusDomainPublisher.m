@interface STStatusItemsStatusDomainPublisher
+ (id)emptyChangeContext;
+ (id)emptyData;
- (void)setData:(id)a3 withContext:(id)a4 completion:(id)a5;
- (void)setVolatileData:(id)a3 withContext:(id)a4 completion:(id)a5;
- (void)updateData:(id)a3 completion:(id)a4;
- (void)updateVolatileData:(id)a3 completion:(id)a4;
@end

@implementation STStatusItemsStatusDomainPublisher

- (void)setData:(id)a3 withContext:(id)a4 completion:(id)a5
{
  v5.receiver = self;
  v5.super_class = STStatusItemsStatusDomainPublisher;
  [(STStatusDomainPublisher *)&v5 setData:a3 withContext:a4 completion:a5];
}

- (void)updateData:(id)a3 completion:(id)a4
{
  v4.receiver = self;
  v4.super_class = STStatusItemsStatusDomainPublisher;
  [(STStatusDomainPublisher *)&v4 updateData:a3 completion:a4];
}

- (void)setVolatileData:(id)a3 withContext:(id)a4 completion:(id)a5
{
  v5.receiver = self;
  v5.super_class = STStatusItemsStatusDomainPublisher;
  [(STStatusDomainPublisher *)&v5 setVolatileData:a3 withContext:a4 completion:a5];
}

- (void)updateVolatileData:(id)a3 completion:(id)a4
{
  v4.receiver = self;
  v4.super_class = STStatusItemsStatusDomainPublisher;
  [(STStatusDomainPublisher *)&v4 updateVolatileData:a3 completion:a4];
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