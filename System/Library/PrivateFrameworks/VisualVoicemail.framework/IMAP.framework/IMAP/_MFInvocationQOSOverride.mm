@interface _MFInvocationQOSOverride
- (BOOL)isEqual:(id)equal;
- (BOOL)removeOverride;
- (_MFInvocationQOSOverride)initWithPthread:(_opaque_pthread_t *)pthread desiredQoS:(unsigned int)s lowPriority:(BOOL)priority;
- (void)applyOverrideWhileForeground:(BOOL)foreground;
- (void)dealloc;
@end

@implementation _MFInvocationQOSOverride

- (_MFInvocationQOSOverride)initWithPthread:(_opaque_pthread_t *)pthread desiredQoS:(unsigned int)s lowPriority:(BOOL)priority
{
  v9.receiver = self;
  v9.super_class = _MFInvocationQOSOverride;
  result = [(_MFInvocationQOSOverride *)&v9 init];
  if (result)
  {
    result->_pthread = pthread;
    result->_desiredQoS = s;
    result->_lowPriority = priority;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      pthread = [(_MFInvocationQOSOverride *)equalCopy pthread];
      v6 = pthread == [(_MFInvocationQOSOverride *)self pthread];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)applyOverrideWhileForeground:(BOOL)foreground
{
  foregroundCopy = foreground;
  if (self->_override)
  {
    goto LABEL_3;
  }

  if (![(_MFInvocationQOSOverride *)self isLowPriority]|| foregroundCopy)
  {
    self->_override = pthread_override_qos_class_start_np([(_MFInvocationQOSOverride *)self pthread], [(_MFInvocationQOSOverride *)self desiredQoS], -12);
    return;
  }

  if (self->_override)
  {
LABEL_3:
    if ([(_MFInvocationQOSOverride *)self isLowPriority]&& !foregroundCopy)
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