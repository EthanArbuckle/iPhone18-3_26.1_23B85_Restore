@interface VOSCommandResolver
+ (id)resolverForCurrentHost;
+ (unint64_t)currentHost;
- (BOOL)isBSIScreenreaderMode;
- (BOOL)isDefaultScreenreaderMode;
- (BOOL)isHandwritingScreenreaderMode;
- (VOSCommandResolver)resolverWithScreenreaderModeVariant:(id)a3;
- (VOSScreenreaderMode)screenreaderMode;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)pressCount;
- (unint64_t)context;
- (void)setFetchContextBlock:(id)a3;
- (void)setFetchPressCountBlock:(id)a3;
@end

@implementation VOSCommandResolver

+ (unint64_t)currentHost
{
  if (currentHost_onceToken != -1)
  {
    +[VOSCommandResolver currentHost];
  }

  return currentHost__Host;
}

uint64_t __33__VOSCommandResolver_currentHost__block_invoke()
{
  result = AXDeviceIsPad();
  if (result)
  {
    v1 = 1;
  }

  else
  {
    result = AXDeviceIsAudioAccessory();
    v1 = 4;
    if (!result)
    {
      v1 = 0;
    }
  }

  currentHost__Host = v1;
  return result;
}

+ (id)resolverForCurrentHost
{
  v2 = objc_alloc_init(VOSCommandResolver);
  [(VOSCommandResolver *)v2 setHost:+[VOSCommandResolver currentHost]];

  return v2;
}

- (VOSCommandResolver)resolverWithScreenreaderModeVariant:(id)a3
{
  v4 = a3;
  v5 = [(VOSCommandResolver *)self copy];
  [v5 setScreenreaderMode:v4];

  return v5;
}

- (BOOL)isDefaultScreenreaderMode
{
  v2 = [(VOSCommandResolver *)self screenreaderMode];
  v3 = +[VOSScreenreaderMode Default];
  v4 = v2 == v3;

  return v4;
}

- (BOOL)isBSIScreenreaderMode
{
  v2 = [(VOSCommandResolver *)self screenreaderMode];
  v3 = +[VOSScreenreaderMode BrailleScreenInput];
  v4 = v2 == v3;

  return v4;
}

- (BOOL)isHandwritingScreenreaderMode
{
  v2 = [(VOSCommandResolver *)self screenreaderMode];
  v3 = +[VOSScreenreaderMode Handwriting];
  v4 = v2 == v3;

  return v4;
}

- (VOSScreenreaderMode)screenreaderMode
{
  screenreaderMode = self->_screenreaderMode;
  if (screenreaderMode)
  {
    v3 = screenreaderMode;
  }

  else
  {
    v3 = +[VOSScreenreaderMode Default];
  }

  return v3;
}

- (int64_t)pressCount
{
  cachedPressCount = self->_cachedPressCount;
  if (!cachedPressCount)
  {
    v4 = [(VOSCommandResolver *)self fetchPressCountBlock];

    if (v4)
    {
      v5 = [(VOSCommandResolver *)self fetchPressCountBlock];
      v6 = (v5)[2](v5, self);

      if (v6 <= 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = v6;
      }
    }

    else
    {
      v7 = 1;
    }

    v8 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
    v9 = self->_cachedPressCount;
    self->_cachedPressCount = v8;

    cachedPressCount = self->_cachedPressCount;
  }

  return [(NSNumber *)cachedPressCount integerValue];
}

- (unint64_t)context
{
  cachedContext = self->_cachedContext;
  if (!cachedContext)
  {
    v4 = [(VOSCommandResolver *)self fetchContextBlock];

    if (v4)
    {
      v5 = [(VOSCommandResolver *)self fetchContextBlock];
      v4 = (v5)[2](v5, self);
    }

    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
    v7 = self->_cachedContext;
    self->_cachedContext = v6;

    cachedContext = self->_cachedContext;
  }

  return [(NSNumber *)cachedContext unsignedIntegerValue];
}

- (void)setFetchContextBlock:(id)a3
{
  if (self->_fetchContextBlock != a3)
  {
    v5 = _Block_copy(a3);
    fetchContextBlock = self->_fetchContextBlock;
    self->_fetchContextBlock = v5;

    cachedContext = self->_cachedContext;
    self->_cachedContext = 0;
  }
}

- (void)setFetchPressCountBlock:(id)a3
{
  if (self->_fetchPressCountBlock != a3)
  {
    v5 = _Block_copy(a3);
    fetchPressCountBlock = self->_fetchPressCountBlock;
    self->_fetchPressCountBlock = v5;

    cachedPressCount = self->_cachedPressCount;
    self->_cachedPressCount = 0;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(VOSCommandResolver *)self host];
  v7 = [(VOSCommandResolver *)self screenreaderMode];
  v8 = [v3 stringWithFormat:@"%@<%p> Host:%d SCRMode:%@ ApplyRTL:%d BSI:%d pressCount:%d", v5, self, v6, v7, -[VOSCommandResolver shouldApplyRTL](self, "shouldApplyRTL"), -[VOSCommandResolver bsiTypingMode](self, "bsiTypingMode"), -[VOSCommandResolver pressCount](self, "pressCount")];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(VOSCommandResolver);
  v5 = [(VOSCommandResolver *)self screenreaderMode];
  [(VOSCommandResolver *)v4 setScreenreaderMode:v5];

  [(VOSCommandResolver *)v4 setShouldApplyRTL:[(VOSCommandResolver *)self shouldApplyRTL]];
  [(VOSCommandResolver *)v4 setKeyboardMode:[(VOSCommandResolver *)self keyboardMode]];
  [(VOSCommandResolver *)v4 setHost:[(VOSCommandResolver *)self host]];
  [(VOSCommandResolver *)v4 setBsiTypingMode:[(VOSCommandResolver *)self bsiTypingMode]];
  v6 = [(VOSCommandResolver *)self fetchPressCountBlock];
  [(VOSCommandResolver *)v4 setFetchPressCountBlock:v6];

  v7 = [(VOSCommandResolver *)self fetchContextBlock];
  [(VOSCommandResolver *)v4 setFetchContextBlock:v7];

  v8 = [(VOSCommandResolver *)self resolvingEventOccurredBlock];
  [(VOSCommandResolver *)v4 setResolvingEventOccurredBlock:v8];

  return v4;
}

@end