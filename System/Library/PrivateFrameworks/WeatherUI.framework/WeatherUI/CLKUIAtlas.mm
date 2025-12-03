@interface CLKUIAtlas
- (CLKUIAtlas)initWithUuid:(id)uuid;
- (id)backing;
@end

@implementation CLKUIAtlas

- (CLKUIAtlas)initWithUuid:(id)uuid
{
  uuidCopy = uuid;
  v9.receiver = self;
  v9.super_class = CLKUIAtlas;
  v6 = [(CLKUIAtlas *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, uuid);
    v7->_status = 0;
  }

  return v7;
}

- (id)backing
{
  v3 = +[CLKUIResourceManager sharedInstance];
  v4 = [v3 delegateForUuid:self->_uuid];

  if (v4)
  {
    v5 = [v4 provideAtlasBacking:self->_uuid];
    v6 = v5;
    if (v5 && !self->_status)
    {
      self->_status = 1;
      self->_width = [v5 width];
      self->_height = [v6 height];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end