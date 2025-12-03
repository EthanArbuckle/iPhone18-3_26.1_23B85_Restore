@interface BRCCountedSet
- (void)addObject:(id)object;
- (void)removeObject:(id)object;
@end

@implementation BRCCountedSet

- (void)addObject:(id)object
{
  ++self->_totalCount;
  v3.receiver = self;
  v3.super_class = BRCCountedSet;
  [(BRCCountedSet *)&v3 addObject:object];
}

- (void)removeObject:(id)object
{
  v6.receiver = self;
  v6.super_class = BRCCountedSet;
  objectCopy = object;
  if ([(BRCCountedSet *)&v6 countForObject:objectCopy])
  {
    --self->_totalCount;
  }

  v5.receiver = self;
  v5.super_class = BRCCountedSet;
  [(BRCCountedSet *)&v5 removeObject:objectCopy];
}

@end