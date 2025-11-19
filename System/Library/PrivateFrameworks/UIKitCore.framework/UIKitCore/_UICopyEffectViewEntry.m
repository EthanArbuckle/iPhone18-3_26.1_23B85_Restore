@interface _UICopyEffectViewEntry
- (id)description;
- (void)addEffectToView:(id)a3;
- (void)removeEffectFromView:(id)a3;
@end

@implementation _UICopyEffectViewEntry

- (void)addEffectToView:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    captureGroup = self->_captureGroup;
    v5 = v6;
    [v5 setCaptureGroup:captureGroup];
    [v5 setRenderMode:2];
  }
}

- (void)removeEffectFromView:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 removeFromCurrentCaptureGroup];
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