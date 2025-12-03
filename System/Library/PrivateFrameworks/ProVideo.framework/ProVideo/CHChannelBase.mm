@interface CHChannelBase
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)convertGlobalToLocal:(SEL)local;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)convertLocalToGlobal:(SEL)global;
- (BOOL)getResetCallback:(void *)callback context:(void *)context;
- (CHChannelBase)initWithOZChannel:(OZChannelBase *)channel freeWhenDone:(BOOL)done;
- (CHChannelBase)initWithParent:(id)parent name:(id)name;
- (CHChannelBase)initWithParent:(id)parent name:(id)name channelID:(unsigned int)d;
- (CHChannelBase)initWithParent:(id)parent name:(id)name channelID:(unsigned int)d flags:(unsigned int)flags;
- (id)channelFromChannelRefPath:(id)path;
- (id)channelRefPath:(id)path;
- (id)channelState;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)keyframes:(id *)keyframes;
- (id)parent;
- (id)reverseDNSName:(id)name;
- (id)rootBase;
- (void)_replaceChannel:(OZChannelBase *)channel flagsOnly:(BOOL)only;
- (void)dealloc;
- (void)getMD5Value:(unsigned int *)value;
- (void)release;
- (void)setName:(id)name;
@end

@implementation CHChannelBase

- (CHChannelBase)initWithOZChannel:(OZChannelBase *)channel freeWhenDone:(BOOL)done
{
  if ([objc_opt_class() _isOZChannelClassOK:channel])
  {
    objc_sync_enter(@"CHChannelWrapperLock");
    WrapperForOZChannel = GetWrapperForOZChannel(channel);
    if (WrapperForOZChannel)
    {
      [(CHChannelBase *)self dealloc];
      v8 = WrapperForOZChannel;
    }

    else
    {
      v11.receiver = self;
      v11.super_class = CHChannelBase;
      v9 = [(CHChannelBase *)&v11 init];
      v8 = v9;
      if (v9)
      {
        v9->_pOZChannel = channel;
        v9->_freeWhenDone = done;
        objc_sync_enter(@"CHChannelWrapperLock");
        channel->var9 = v8;
        objc_sync_exit(@"CHChannelWrapperLock");
      }
    }

    objc_sync_exit(@"CHChannelWrapperLock");
  }

  else
  {
    [(CHChannelBase *)self dealloc];
    return 0;
  }

  return v8;
}

- (CHChannelBase)initWithParent:(id)parent name:(id)name channelID:(unsigned int)d flags:(unsigned int)flags
{
  v7 = -[CHChannelBase initWithOZChannel:freeWhenDone:](self, "initWithOZChannel:freeWhenDone:", [objc_opt_class() _newOZChannelWithName:name channelID:*&d flags:*&flags], 1);
  if (v7)
  {
    [parent addChild:v7];
  }

  return v7;
}

- (CHChannelBase)initWithParent:(id)parent name:(id)name channelID:(unsigned int)d
{
  v5 = *&d;
  _defaultChannelFlags = [objc_opt_class() _defaultChannelFlags];

  return [(CHChannelBase *)self initWithParent:parent name:name channelID:v5 flags:_defaultChannelFlags];
}

- (CHChannelBase)initWithParent:(id)parent name:(id)name
{
  if (parent)
  {
    _newChannelIdForChild = [parent _newChannelIdForChild];
  }

  else
  {
    _newChannelIdForChild = [objc_opt_class() _newChannelId];
  }

  v8 = _newChannelIdForChild;
  _defaultChannelFlags = [objc_opt_class() _defaultChannelFlags];

  return [(CHChannelBase *)self initWithParent:parent name:name channelID:v8 flags:_defaultChannelFlags];
}

- (void)release
{
  objc_sync_enter(@"CHChannelWrapperLock");
  v3.receiver = self;
  v3.super_class = CHChannelBase;
  [(CHChannelBase *)&v3 release];
  objc_sync_exit(@"CHChannelWrapperLock");
}

- (void)dealloc
{
  pOZChannel = self->_pOZChannel;
  if (pOZChannel)
  {
    objc_sync_enter(@"CHChannelWrapperLock");
    pOZChannel->var9 = 0;
    objc_sync_exit(@"CHChannelWrapperLock");
    if ([(CHChannelBase *)self _shouldDeleteOZChannelOnDealloc])
    {
      v4 = self->_pOZChannel;
      if (v4)
      {
        (*(v4->var0 + 1))(v4);
      }
    }
  }

  v5.receiver = self;
  v5.super_class = CHChannelBase;
  [(CHChannelBase *)&v5 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = ChannelStateCopy(self->_pOZChannel, 0);
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithOZChannel:v3 freeWhenDone:1];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, oz=%p, name='%@', ID=%lu>", NSStringFromClass(v4), self, self->_pOZChannel, -[CHChannelBase name](self, "name"), -[CHChannelBase channelID](self, "channelID")];
}

- (id)parent
{
  result = self->_pOZChannel->var6;
  if (result)
  {
    return CHChannelWrapperForOZChannel(result, 0);
  }

  return result;
}

- (id)rootBase
{
  result = OZChannelBase::getChannelRootBase(self->_pOZChannel);
  if (result)
  {

    return CHChannelWrapperForOZChannel(result, 0);
  }

  return result;
}

- (id)channelRefPath:(id)path
{
  ozChannel = [path ozChannel];
  if (!ozChannel)
  {
    return 0;
  }

  pOZChannel = self->_pOZChannel;
  if (!pOZChannel)
  {
    return 0;
  }

  OZChannelRef::OZChannelRef(v9, pOZChannel, ozChannel);
  if (v10 >= 0)
  {
    v6 = v9;
  }

  else
  {
    v6 = v9[0];
  }

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
  OZChannelRef::~OZChannelRef(v9);
  return v7;
}

- (id)channelFromChannelRefPath:(id)path
{
  v3 = 0;
  if (path && self->_pOZChannel)
  {
    if ([path length])
    {
      PCURL::PCURL(&v8, path);
      OZChannelRef::OZChannelRef(v9, &v8);
      PCString::~PCString(&v8);
      Channel = OZChannelRef::getChannel(v9, self->_pOZChannel);
      v3 = CHChannelWrapperForOZChannel(Channel, 0);
      OZChannelRef::~OZChannelRef(v9);
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

- (void)setName:(id)name
{
  pOZChannel = self->_pOZChannel;
  v4.var0 = 0;
  PCString::set(&v4, name);
  OZChannelBase::setName(pOZChannel, &v4, 0);
  PCString::~PCString(&v4);
}

- (BOOL)getResetCallback:(void *)callback context:(void *)context
{
  v11 = 0;
  v12 = 0;
  v10 = 0;
  ResetCallback = OZChannelBase::getResetCallback(self->_pOZChannel, &v12, &v11, &v10);
  if (ResetCallback)
  {
    if (callback)
    {
      if (v10)
      {
        v7 = v12;
      }

      else
      {
        v7 = 0;
      }

      *callback = v7;
    }

    if (context)
    {
      if (v10)
      {
        v8 = v11;
      }

      else
      {
        v8 = 0;
      }

      *context = v8;
    }
  }

  return ResetCallback;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)convertGlobalToLocal:(SEL)local
{
  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  return (*(self->_pOZChannel->var0 + 41))(self->_pOZChannel, a4);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)convertLocalToGlobal:(SEL)global
{
  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  return (*(self->_pOZChannel->var0 + 42))(self->_pOZChannel, a4);
}

- (void)getMD5Value:(unsigned int *)value
{
  OZChannelBase::getHash(self->_pOZChannel);
  if (value)
  {
    *value = v4;
  }
}

- (id)channelState
{
  ChannelState = OZChannelBase::createChannelState(self->_pOZChannel, 1, 1);

  return ChannelState;
}

- (id)keyframes:(id *)keyframes
{
  pOZChannel = self->_pOZChannel;
  v4 = *&keyframes->var0.var3;
  v15 = *&keyframes->var0.var0;
  v16 = v4;
  v17 = *&keyframes->var1.var1;
  (*(pOZChannel->var0 + 65))(&v18);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = v18;
  if (v19 != v18)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = [FigTimeObj alloc];
      v10 = &v18[24 * v7];
      v11 = *(v10 + 2);
      v15 = *v10;
      *&v16 = v11;
      v12 = [(FigTimeObj *)v9 initWithFigTime:&v15];
      [v5 addObject:v12];

      v7 = v8;
      v6 = v18;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v19 - v18) >> 3) > v8++);
  }

  if (v6)
  {
    v19 = v6;
    operator delete(v6);
  }

  return v5;
}

- (void)_replaceChannel:(OZChannelBase *)channel flagsOnly:(BOOL)only
{
  onlyCopy = only;
  pOZChannel = self->_pOZChannel;
  var6 = pOZChannel->var6;
  (*(pOZChannel->var0 + 44))(pOZChannel, a2);
  if (onlyCopy)
  {
    OZChannelBase::setFlags(pOZChannel, channel->var7);
  }

  else
  {
    (*(pOZChannel->var0 + 32))(pOZChannel, channel);
  }

  (*(pOZChannel->var0 + 45))(pOZChannel);
  pOZChannel->var6 = var6;
}

- (id)reverseDNSName:(id)name
{
  if (name == self)
  {
    return 0;
  }

  v4 = [-[CHChannelBase parent](self "parent")];
  result = [(CHChannelBase *)self name];
  if (v4)
  {
    return [v4 stringByAppendingFormat:@".%@", result];
  }

  return result;
}

@end