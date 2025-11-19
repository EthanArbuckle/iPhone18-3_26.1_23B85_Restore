@interface _MFInvocationQOSOverride
- (BOOL)isEqual:(id)a3;
- (BOOL)removeOverride;
- (_MFInvocationQOSOverride)initWithPthread:(_opaque_pthread_t *)a3 desiredQoS:(unsigned int)a4 lowPriority:(BOOL)a5;
- (void)applyOverrideWhileForeground:(BOOL)a3;
- (void)dealloc;
@end

@implementation _MFInvocationQOSOverride

- (_MFInvocationQOSOverride)initWithPthread:(_opaque_pthread_t *)a3 desiredQoS:(unsigned int)a4 lowPriority:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = _MFInvocationQOSOverride;
  result = [(_MFInvocationQOSOverride *)&v9 init];
  if (result)
  {
    result->_pthread = a3;
    result->_desiredQoS = a4;
    result->_lowPriority = a5;
  }

  return result;
}

- (void)dealloc
{
  [(_MFInvocationQOSOverride *)self removeOverride];
  v3.receiver = self;
  v3.super_class = _MFInvocationQOSOverride;
  [(_MFInvocationQOSOverride *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(_MFInvocationQOSOverride *)v4 pthread];
      v6 = v5 == [(_MFInvocationQOSOverride *)self pthread];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)applyOverrideWhileForeground:(BOOL)a3
{
  v3 = a3;
  if (self->_override)
  {
    goto LABEL_3;
  }

  if (![(_MFInvocationQOSOverride *)self isLowPriority]|| v3)
  {
    self->_override = pthread_override_qos_class_start_np([(_MFInvocationQOSOverride *)self pthread], [(_MFInvocationQOSOverride *)self desiredQoS], -12);
    return;
  }

  if (self->_override)
  {
LABEL_3:
    if ([(_MFInvocationQOSOverride *)self isLowPriority]&& !v3)
    {

      [(_MFInvocationQOSOverride *)self removeOverride];
    }
  }
}

- (BOOL)removeOverride
{
  override = self->_override;
  if (override)
  {
    pthread_override_qos_class_end_np(self->_override);
    self->_override = 0;
  }

  return override != 0;
}

@end