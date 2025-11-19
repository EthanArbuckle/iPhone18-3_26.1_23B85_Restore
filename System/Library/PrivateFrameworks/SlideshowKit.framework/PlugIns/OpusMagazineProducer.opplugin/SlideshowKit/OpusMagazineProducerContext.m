@interface OpusMagazineProducerContext
- (OpusMagazineProducerContext)init;
- (void)dealloc;
@end

@implementation OpusMagazineProducerContext

- (OpusMagazineProducerContext)init
{
  v4.receiver = self;
  v4.super_class = OpusMagazineProducerContext;
  v2 = [(OpusMagazineProducerContext *)&v4 init];
  if (v2)
  {
    v2->_producerResources = objc_alloc_init(NSMutableDictionary);
    v2->_synopsisGroups = objc_alloc_init(NSMutableArray);
    v2->_audioList = objc_alloc_init(NSMutableArray);
  }

  return v2;
}

- (void)dealloc
{
  producerResources = self->_producerResources;
  if (producerResources)
  {

    self->_producerResources = 0;
  }

  synopsisGroups = self->_synopsisGroups;
  if (synopsisGroups)
  {

    self->_synopsisGroups = 0;
  }

  audioList = self->_audioList;
  if (audioList)
  {

    self->_audioList = 0;
  }

  v6.receiver = self;
  v6.super_class = OpusMagazineProducerContext;
  [(OpusMagazineProducerContext *)&v6 dealloc];
}

@end