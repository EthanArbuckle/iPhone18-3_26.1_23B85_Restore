@interface _SBHardwareButtonPortalObservationToken
- (_SBHardwareButtonPortalObservationToken)initWithObserverBlock:(id)block invalidationBlock:(id)invalidationBlock;
- (void)didUpdateWithView:(id)view;
- (void)invalidate;
@end

@implementation _SBHardwareButtonPortalObservationToken

- (_SBHardwareButtonPortalObservationToken)initWithObserverBlock:(id)block invalidationBlock:(id)invalidationBlock
{
  blockCopy = block;
  invalidationBlockCopy = invalidationBlock;
  v14.receiver = self;
  v14.super_class = _SBHardwareButtonPortalObservationToken;
  v8 = [(_SBHardwareButtonPortalObservationToken *)&v14 init];
  if (v8)
  {
    v9 = [blockCopy copy];
    observerBlock = v8->_observerBlock;
    v8->_observerBlock = v9;

    v11 = [invalidationBlockCopy copy];
    invalidationBlock = v8->_invalidationBlock;
    v8->_invalidationBlock = v11;
  }

  return v8;
}

- (void)didUpdateWithView:(id)view
{
  observerBlock = self->_observerBlock;
  if (observerBlock)
  {
    observerBlock[2](observerBlock, view);
  }
}

- (void)invalidate
{
  invalidationBlock = self->_invalidationBlock;
  if (invalidationBlock)
  {
    v6 = [invalidationBlock copy];
    v4 = self->_invalidationBlock;
    self->_invalidationBlock = 0;

    observerBlock = self->_observerBlock;
    self->_observerBlock = 0;

    v6[2](v6, self);
  }
}

@end