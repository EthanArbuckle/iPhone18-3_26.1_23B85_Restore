@interface _SBStatusBarLocalDataOverridesWrapper
- (void)dealloc;
- (void)setOverrides:(id *)overrides;
@end

@implementation _SBStatusBarLocalDataOverridesWrapper

- (void)dealloc
{
  overrides = self->_overrides;
  if (overrides)
  {
    free(overrides);
  }

  v4.receiver = self;
  v4.super_class = _SBStatusBarLocalDataOverridesWrapper;
  [(_SBStatusBarLocalDataOverridesWrapper *)&v4 dealloc];
}

- (void)setOverrides:(id *)overrides
{
  overrides = self->_overrides;
  if (overrides != overrides)
  {
    if (overrides)
    {
      if (!overrides)
      {
        overrides = malloc_type_malloc(0xF68uLL, 0x100004064C31AF5uLL);
        self->_overrides = overrides;
      }

      memcpy(overrides, overrides, sizeof($ED9261D9D3B12DF754DECF3403E2B70A));
    }

    else if (overrides)
    {
      free(overrides);
      self->_overrides = 0;
    }
  }
}

@end