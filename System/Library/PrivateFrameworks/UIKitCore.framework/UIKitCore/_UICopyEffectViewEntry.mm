@interface _UICopyEffectViewEntry
- (id)description;
- (void)addEffectToView:(id)view;
- (void)removeEffectFromView:(id)view;
@end

@implementation _UICopyEffectViewEntry

- (void)addEffectToView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    captureGroup = self->_captureGroup;
    v5 = viewCopy;
    [v5 setCaptureGroup:captureGroup];
    [v5 setRenderMode:2];
  }
}

- (void)removeEffectFromView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [viewCopy removeFromCurrentCaptureGroup];
  }
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = _UICopyEffectViewEntry;
  v3 = [(_UIVisualEffectViewEntry *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" captureGroup=%@", self->_captureGroup];

  return v4;
}

@end