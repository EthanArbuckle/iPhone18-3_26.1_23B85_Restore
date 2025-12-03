@interface VOSCommandResolver
+ (id)resolverForCurrentHost;
+ (unint64_t)currentHost;
- (BOOL)isBSIScreenreaderMode;
- (BOOL)isDefaultScreenreaderMode;
- (BOOL)isHandwritingScreenreaderMode;
- (VOSCommandResolver)resolverWithScreenreaderModeVariant:(id)variant;
- (VOSScreenreaderMode)screenreaderMode;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)pressCount;
- (unint64_t)context;
- (void)setFetchContextBlock:(id)block;
- (void)setFetchPressCountBlock:(id)block;
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

- (VOSCommandResolver)resolverWithScreenreaderModeVariant:(id)variant
{
  variantCopy = variant;
  v5 = [(VOSCommandResolver *)self copy];
  [v5 setScreenreaderMode:variantCopy];

  return v5;
}

- (BOOL)isDefaultScreenreaderMode
{
  screenreaderMode = [(VOSCommandResolver *)self screenreaderMode];
  v3 = +[VOSScreenreaderMode Default];
  v4 = screenreaderMode == v3;

  return v4;
}

- (BOOL)isBSIScreenreaderMode
{
  screenreaderMode = [(VOSCommandResolver *)self screenreaderMode];
  v3 = +[VOSScreenreaderMode BrailleScreenInput];
  v4 = screenreaderMode == v3;

  return v4;
}

- (BOOL)isHandwritingScreenreaderMode
{
  screenreaderMode = [(VOSCommandResolver *)self screenreaderMode];
  v3 = +[VOSScreenreaderMode Handwriting];
  v4 = screenreaderMode == v3;

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
    fetchPressCountBlock = [(VOSCommandResolver *)self fetchPressCountBlock];

    if (fetchPressCountBlock)
    {
      fetchPressCountBlock2 = [(VOSCommandResolver *)self fetchPressCountBlock];
      v6 = (fetchPressCountBlock2)[2](fetchPressCountBlock2, self);

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
    fetchContextBlock = [(VOSCommandResolver *)self fetchContextBlock];

    if (fetchContextBlock)
    {
      fetchContextBlock2 = [(VOSCommandResolver *)self fetchContextBlock];
      fetchContextBlock = (fetchContextBlock2)[2](fetchContextBlock2, self);
    }

    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:fetchContextBlock];
    v7 = self->_cachedContext;
    self->_cachedContext = v6;

    cachedContext = self->_cachedContext;
  }

  return [(NSNumber *)cachedContext unsignedIntegerValue];
}

- (void)setFetchContextBlock:(id)block
{
  if (self->_fetchContextBlock != block)
  {
    v5 = _Block_copy(block);
    fetchContextBlock = self->_fetchContextBlock;
    self->_fetchContextBlock = v5;

    cachedContext = self->_cachedContext;
    self->_cachedContext = 0;
  }
}

- (void)setFetchPressCountBlock:(id)block
{
  if (self->_fetchPressCountBlock != block)
  {
    v5 = _Block_copy(block);
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
  host = [(VOSCommandResolver *)self host];
  screenreaderMode = [(VOSCommandResolver *)self screenreaderMode];
  v8 = [v3 stringWithFormat:@"%@<%p> Host:%d SCRMode:%@ ApplyRTL:%d BSI:%d pressCount:%d", v5, self, host, screenreaderMode, -[VOSCommandResolver shouldApplyRTL](self, "shouldApplyRTL"), -[VOSCommandResolver bsiTypingMode](self, "bsiTypingMode"), -[VOSCommandResolver pressCount](self, "pressCount")];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(VOSCommandResolver);
  screenreaderMode = [(VOSCommandResolver *)self screenreaderMode];
  [(VOSCommandResolver *)v4 setScreenreaderMode:screenreaderMode];

  [(VOSCommandResolver *)v4 setShouldApplyRTL:[(VOSCommandResolver *)self shouldApplyRTL]];
  [(VOSCommandResolver *)v4 setKeyboardMode:[(VOSCommandResolver *)self keyboardMode]];
  [(VOSCommandResolver *)v4 setHost:[(VOSCommandResolver *)self host]];
  [(VOSCommandResolver *)v4 setBsiTypingMode:[(VOSCommandResolver *)self bsiTypingMode]];
  fetchPressCountBlock = [(VOSCommandResolver *)self fetchPressCountBlock];
  [(VOSCommandResolver *)v4 setFetchPressCountBlock:fetchPressCountBlock];

  fetchContextBlock = [(VOSCommandResolver *)self fetchContextBlock];
  [(VOSCommandResolver *)v4 setFetchContextBlock:fetchContextBlock];

  resolvingEventOccurredBlock = [(VOSCommandResolver *)self resolvingEventOccurredBlock];
  [(VOSCommandResolver *)v4 setResolvingEventOccurredBlock:resolvingEventOccurredBlock];

  return v4;
}

@end