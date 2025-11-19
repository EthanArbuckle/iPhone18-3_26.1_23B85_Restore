@interface OKMediaCluster
- (OKMediaCluster)init;
- (void)dealloc;
@end

@implementation OKMediaCluster

- (OKMediaCluster)init
{
  v5.receiver = self;
  v5.super_class = OKMediaCluster;
  v2 = [(OKMediaCluster *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_title = 0;
    v2->_items = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3->_isUnknown = 0;
  }

  return v3;
}

- (void)dealloc
{
  title = self->_title;
  if (title)
  {

    self->_title = 0;
  }

  items = self->_items;
  if (items)
  {

    self->_items = 0;
  }

  v5.receiver = self;
  v5.super_class = OKMediaCluster;
  [(OKMediaCluster *)&v5 dealloc];
}

@end