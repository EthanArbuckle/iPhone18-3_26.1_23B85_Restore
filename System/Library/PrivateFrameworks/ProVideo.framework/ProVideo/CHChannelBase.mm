@interface CHChannelBase
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)convertGlobalToLocal:(SEL)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)convertLocalToGlobal:(SEL)a3;
- (BOOL)getResetCallback:(void *)a3 context:(void *)a4;
- (CHChannelBase)initWithOZChannel:(OZChannelBase *)a3 freeWhenDone:(BOOL)a4;
- (CHChannelBase)initWithParent:(id)a3 name:(id)a4;
- (CHChannelBase)initWithParent:(id)a3 name:(id)a4 channelID:(unsigned int)a5;
- (CHChannelBase)initWithParent:(id)a3 name:(id)a4 channelID:(unsigned int)a5 flags:(unsigned int)a6;
- (id)channelFromChannelRefPath:(id)a3;
- (id)channelRefPath:(id)a3;
- (id)channelState;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)keyframes:(id *)a3;
- (id)parent;
- (id)reverseDNSName:(id)a3;
- (id)rootBase;
- (void)_replaceChannel:(OZChannelBase *)a3 flagsOnly:(BOOL)a4;
- (void)dealloc;
- (void)getMD5Value:(unsigned int *)a3;
- (void)release;
- (void)setName:(id)a3;
@end

@implementation CHChannelBase

- (CHChannelBase)initWithOZChannel:(OZChannelBase *)a3 freeWhenDone:(BOOL)a4
{
  if ([objc_opt_class() _isOZChannelClassOK:a3])
  {
    objc_sync_enter(@"CHChannelWrapperLock");
    WrapperForOZChannel = GetWrapperForOZChannel(a3);
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
        v9->_pOZChannel = a3;
        v9->_freeWhenDone = a4;
        objc_sync_enter(@"CHChannelWrapperLock");
        a3->var9 = v8;
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

- (CHChannelBase)initWithParent:(id)a3 name:(id)a4 channelID:(unsigned int)a5 flags:(unsigned int)a6
{
  v7 = -[CHChannelBase initWithOZChannel:freeWhenDone:](self, "initWithOZChannel:freeWhenDone:", [objc_opt_class() _newOZChannelWithName:a4 channelID:*&a5 flags:*&a6], 1);
  if (v7)
  {
    [a3 addChild:v7];
  }

  return v7;
}

- (CHChannelBase)initWithParent:(id)a3 name:(id)a4 channelID:(unsigned int)a5
{
  v5 = *&a5;
  v9 = [objc_opt_class() _defaultChannelFlags];

  return [(CHChannelBase *)self initWithParent:a3 name:a4 channelID:v5 flags:v9];
}

- (CHChannelBase)initWithParent:(id)a3 name:(id)a4
{
  if (a3)
  {
    v7 = [a3 _newChannelIdForChild];
  }

  else
  {
    v7 = [objc_opt_class() _newChannelId];
  }

  v8 = v7;
  v9 = [objc_opt_class() _defaultChannelFlags];

  return [(CHChannelBase *)self initWithParent:a3 name:a4 channelID:v8 flags:v9];
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

- (id)copyWithZone:(_NSZone *)a3
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

- (id)channelRefPath:(id)a3
{
  v4 = [a3 ozChannel];
  if (!v4)
  {
    return 0;
  }

  pOZChannel = self->_pOZChannel;
  if (!pOZChannel)
  {
    return 0;
  }

  OZChannelRef::OZChannelRef(v9, pOZChannel, v4);
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

- (id)channelFromChannelRefPath:(id)a3
{
  v3 = 0;
  if (a3 && self->_pOZChannel)
  {
    if ([a3 length])
    {
      PCURL::PCURL(&v8, a3);
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

- (void)setName:(id)a3
{
  pOZChannel = self->_pOZChannel;
  v4.var0 = 0;
  PCString::set(&v4, a3);
  OZChannelBase::setName(pOZChannel, &v4, 0);
  PCString::~PCString(&v4);
}

- (BOOL)getResetCallback:(void *)a3 context:(void *)a4
{
  v11 = 0;
  v12 = 0;
  v10 = 0;
  ResetCallback = OZChannelBase::getResetCallback(self->_pOZChannel, &v12, &v11, &v10);
  if (ResetCallback)
  {
    if (a3)
    {
      if (v10)
      {
        v7 = v12;
      }

      else
      {
        v7 = 0;
      }

      *a3 = v7;
    }

    if (a4)
    {
      if (v10)
      {
        v8 = v11;
      }

      else
      {
        v8 = 0;
      }

      *a4 = v8;
    }
  }

  return ResetCallback;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)convertGlobalToLocal:(SEL)a3
{
  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  return (*(self->_pOZChannel->var0 + 41))(self->_pOZChannel, a4);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)convertLocalToGlobal:(SEL)a3
{
  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  return (*(self->_pOZChannel->var0 + 42))(self->_pOZChannel, a4);
}

- (void)getMD5Value:(unsigned int *)a3
{
  OZChannelBase::getHash(self->_pOZChannel);
  if (a3)
  {
    *a3 = v4;
  }
}

- (id)channelState
{
  ChannelState = OZChannelBase::createChannelState(self->_pOZChannel, 1, 1);

  return ChannelState;
}

- (id)keyframes:(id *)a3
{
  pOZChannel = self->_pOZChannel;
  v4 = *&a3->var0.var3;
  v15 = *&a3->var0.var0;
  v16 = v4;
  v17 = *&a3->var1.var1;
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

- (void)_replaceChannel:(OZChannelBase *)a3 flagsOnly:(BOOL)a4
{
  v4 = a4;
  pOZChannel = self->_pOZChannel;
  var6 = pOZChannel->var6;
  (*(pOZChannel->var0 + 44))(pOZChannel, a2);
  if (v4)
  {
    OZChannelBase::setFlags(pOZChannel, a3->var7);
  }

  else
  {
    (*(pOZChannel->var0 + 32))(pOZChannel, a3);
  }

  (*(pOZChannel->var0 + 45))(pOZChannel);
  pOZChannel->var6 = var6;
}

- (id)reverseDNSName:(id)a3
{
  if (a3 == self)
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