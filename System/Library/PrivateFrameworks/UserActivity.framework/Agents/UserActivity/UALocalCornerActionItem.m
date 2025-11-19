@interface UALocalCornerActionItem
- (UALocalCornerActionItem)initWithUUID:(id)a3 type:(unint64_t)a4 options:(id)a5 originatingClient:(id)a6;
- (UAUserActivityClientProcess)originatingClient;
@end

@implementation UALocalCornerActionItem

- (UALocalCornerActionItem)initWithUUID:(id)a3 type:(unint64_t)a4 options:(id)a5 originatingClient:(id)a6
{
  v10 = a6;
  v14.receiver = self;
  v14.super_class = UALocalCornerActionItem;
  v11 = [(UALocalCornerActionItem *)&v14 initWithUUID:a3 type:a4 options:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_originatingClient, v10);
  }

  return v12;
}

- (UAUserActivityClientProcess)originatingClient
{
  WeakRetained = objc_loadWeakRetained(&self->_originatingClient);

  return WeakRetained;
}

@end