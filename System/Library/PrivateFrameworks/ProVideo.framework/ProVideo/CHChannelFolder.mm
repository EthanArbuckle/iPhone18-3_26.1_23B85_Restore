@interface CHChannelFolder
- (BOOL)_shouldDeleteDescendantsOnRemoval;
- (BOOL)hasDescendant:(id)descendant;
- (BOOL)hasDescendantWithFadeHandle;
- (BOOL)hasModifiedDescendant;
- (BOOL)hasTimeVaryingDescendant;
- (BOOL)testFolderFlag:(unsigned int)flag;
- (id)channelStateForDescendants:(BOOL)descendants;
- (id)childAtIndex:(unint64_t)index;
- (id)childWithChannelID:(unsigned int)d;
- (id)children;
- (id)debugDescrptionWithIndentLevel:(unsigned int)level;
- (id)descendantAtPath:(id)path;
- (id)description;
- (id)pathToDescendant:(id)descendant;
- (unint64_t)indexOfChild:(id)child;
- (unsigned)_newChannelIdForChild;
- (unsigned)numberOfChildren;
- (void)addChild:(id)child;
- (void)dealloc;
- (void)insertChild:(id)child atIndex:(unint64_t)index;
- (void)iterateDescendantsWithOptions:(unsigned int)options usingBlock:(id)block;
- (void)iterateDescendantsWithOptions:(unsigned int)options usingFunction:(void *)function contextInfo:(void *)info;
- (void)iterateDescendantsWithOptions:(unsigned int)options usingSelector:(SEL)selector delegate:(id)delegate contextInfo:(void *)info;
- (void)ozChannel;
- (void)removeAllChildren;
- (void)removeChild:(id)child;
- (void)resetFolderFlag:(unsigned int)flag;
- (void)setFolderFlag:(unsigned int)flag;
- (void)setFolderFlags:(unsigned int)flags;
@end

@implementation CHChannelFolder

- (void)dealloc
{
  if ([(CHChannelBase *)self _shouldDeleteOZChannelOnDealloc])
  {
    pOZChannel = self->super._pOZChannel;
    if (pOZChannel)
    {
    }

    DeleteDescendants(pOZChannel);
  }

  v4.receiver = self;
  v4.super_class = CHChannelFolder;
  [(CHChannelBase *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, oz=%p, name='%@', ID=%lu, #children=%lu>", NSStringFromClass(v4), self, self->super._pOZChannel, -[CHChannelBase name](self, "name"), -[CHChannelBase channelID](self, "channelID"), -[CHChannelFolder numberOfChildren](self, "numberOfChildren")];
}

- (id)debugDescrptionWithIndentLevel:(unsigned int)level
{
  v15 = 2 * level;
  v5 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"%*s%@", v15, ", -[CHChannelFolder description](self, "description"")];
  objc_msgSend(v5, "appendString:", @"(");
  if (v6)
  {
    v7 = v6[1] - *v6;
    if ((v7 & 0x7FFFFFFF8) != 0)
    {
      v8 = 0;
      v9 = (v7 >> 3);
      while (1)
      {
        v10 = *(*v6 + 8 * v8);
        if (!CHChannelWrapperClassForOZChannel(v10))
        {
          break;
        }

        v11 = CHChannelWrapperForOZChannel(v10, 0);
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v12 = [(OZChannelBase *)v11 description];
          goto LABEL_9;
        }

        v12 = [(OZChannelBase *)v11 debugDescrptionWithIndentLevel:level + 1];
        v13 = 0;
LABEL_10:
        [v5 appendFormat:@"\n%*s%@", v13, "", v12];
        if (v9 == ++v8)
        {
          goto LABEL_11;
        }
      }

      v12 = CHDescriptionForOZChannel(v10);
LABEL_9:
      v13 = (v15 + 2);
      goto LABEL_10;
    }
  }

LABEL_11:
  [v5 appendFormat:@"\n%*s"], v15, "");

  return v5;
}

- (void)ozChannel
{
  result = self->super._pOZChannel;
  if (result)
  {
  }

  return result;
}

- (BOOL)testFolderFlag:(unsigned int)flag
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  return OZChannelFolder::testFoldFlag(pOZChannel, flag);
}

- (void)setFolderFlag:(unsigned int)flag
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannelFolder::setFoldFlag(pOZChannel, flag);
}

- (void)resetFolderFlag:(unsigned int)flag
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannelFolder::resetFoldFlag(pOZChannel, flag);
}

- (void)setFolderFlags:(unsigned int)flags
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  OZChannelFolder::setFoldFlags(pOZChannel, flags);
}

- (id)children
{
  if (v2)
  {
    v3 = (v2[1] - *v2) >> 3;
  }

  else
  {
    LODWORD(v3) = 0;
  }

  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:v3];
  if (v3)
  {
    v5 = 0;
    v6 = 8 * v3;
    do
    {
      [v4 addObject:{CHChannelWrapperForOZChannel(*(*v2 + v5), 0)}];
      v5 += 8;
    }

    while (v6 != v5);
  }

  return v4;
}

- (unsigned)numberOfChildren
{
  if (v2)
  {
    return (v2[1] - *v2) >> 3;
  }

  else
  {
    LODWORD(v3) = 0;
  }

  return v3;
}

- (id)childAtIndex:(unint64_t)index
{

  return CHChannelWrapperForOZChannel(v3, 0);
}

- (unint64_t)indexOfChild:(id)child
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  ozChannel = [child ozChannel];
  v7 = v5[14];
  if (!v7)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = *v7;
  v9 = *(v5[14] + 8) - v8;
  if (!(v9 >> 3))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = ozChannel;
  result = 0;
  v12 = (v9 >> 3);
  while (*(v8 + 8 * result) != v10)
  {
    if (v12 == ++result)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

- (id)childWithChannelID:(unsigned int)d
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  result = OZChannelFolder::getDescendant(pOZChannel, d);
  if (result)
  {

    return CHChannelWrapperForOZChannel(result, 0);
  }

  return result;
}

- (void)iterateDescendantsWithOptions:(unsigned int)options usingBlock:(id)block
{
  v5 = *&options;
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  IterateDescendants(pOZChannel, v5, block);
}

- (void)iterateDescendantsWithOptions:(unsigned int)options usingFunction:(void *)function contextInfo:(void *)info
{
  v7 = *&options;
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = *"";
  v9[2] = __75__CHChannelFolder_iterateDescendantsWithOptions_usingFunction_contextInfo___block_invoke;
  v9[3] = &__block_descriptor_48_e23_B16__0__CHChannelBase_8l;
  v9[4] = function;
  v9[5] = info;
  IterateDescendants(pOZChannel, v7, v9);
}

- (void)iterateDescendantsWithOptions:(unsigned int)options usingSelector:(SEL)selector delegate:(id)delegate contextInfo:(void *)info
{
  v9 = *&options;
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = *"";
  v11[2] = __84__CHChannelFolder_iterateDescendantsWithOptions_usingSelector_delegate_contextInfo___block_invoke;
  v11[3] = &unk_279AA9A28;
  v11[4] = delegate;
  v11[5] = selector;
  v11[6] = info;
  IterateDescendants(pOZChannel, v9, v11);
}

- (unsigned)_newChannelIdForChild
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v3 = 0;
  }

  do
  {
    _newChannelId = [objc_opt_class() _newChannelId];
  }

  while (OZChannelFolder::getDescendant(v3, _newChannelId));
  return _newChannelId;
}

- (void)addChild:(id)child
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  ozChannel = [child ozChannel];
  FixupNewChild(v5, ozChannel);

  OZChannelFolder::push_back(v5, ozChannel);
}

- (void)insertChild:(id)child atIndex:(unint64_t)index
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v7 = 0;
  }

  ozChannel = [child ozChannel];
  FixupNewChild(v7, ozChannel);
  v9 = *(v7 + 14);
  if (v9 && (v10 = *v9, index != ((*(*(v7 + 14) + 8) - v10) >> 3)))
  {
    v11 = *(v10 + 8 * index);
  }

  else
  {
    v11 = 0;
  }

  OZChannelFolder::insertDescendantBefore(v7, v11, ozChannel);
}

- (BOOL)_shouldDeleteDescendantsOnRemoval
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v3 = 0;
  }

  {
    return 0;
  }

  do
  {
    result = [CHPreexistingChannelWrapperForOZChannel(v3) _shouldDeleteOZChannelOnDealloc];
    if (result)
    {
      break;
    }

    v3 = v3[6];
  }

  while (v3);
  return result;
}

- (void)removeChild:(id)child
{
  if (child)
  {
    pOZChannel = self->super._pOZChannel;
    if (pOZChannel)
    {
    }

    else
    {
      v6 = 0;
    }

    ozChannel = [child ozChannel];
    if ([(CHChannelFolder *)self _shouldDeleteDescendantsOnRemoval])
    {

      DeleteDescendant(v6, ozChannel);
    }

    else
    {

      OZChannelFolder::removeDescendant(v6, ozChannel);
    }
  }
}

- (void)removeAllChildren
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v4 = 0;
  }

  if ([(CHChannelFolder *)self _shouldDeleteDescendantsOnRemoval])
  {

    DeleteDescendants(v4);
  }

  else
  {

    OZChannelFolder::removeAllDescendants(v4, 1);
  }
}

- (id)channelStateForDescendants:(BOOL)descendants
{
  ChannelState = OZChannelBase::createChannelState(self->super._pOZChannel, 1, descendants);

  return ChannelState;
}

- (BOOL)hasDescendant:(id)descendant
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  ozChannel = [descendant ozChannel];

  return OZChannelBase::isDescendantOf(ozChannel, v5);
}

- (id)pathToDescendant:(id)descendant
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  OZChannelRef::OZChannelRef(v9, [descendant ozChannel], v5);
  if (v10 >= 0)
  {
    v6 = v9;
  }

  else
  {
    v6 = v9[0];
  }

  v7 = [MEMORY[0x277CCACA8] stringWithCString:v6 encoding:1];
  OZChannelRef::~OZChannelRef(v9);
  return v7;
}

- (id)descendantAtPath:(id)path
{
  v9.var0 = 0;
  PCString::set(&v9, path);
  OZChannelRef::OZChannelRef(v10, &v9);
  PCString::~PCString(&v9);
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  Channel = OZChannelRef::getChannel(v10, v5);
  v7 = CHChannelWrapperForOZChannel(Channel, 0);
  OZChannelRef::~OZChannelRef(v10);
  return v7;
}

- (BOOL)hasModifiedDescendant
{
  if (!v2)
  {
    return 0;
  }

  v3 = v2[1];
  if (*v2 == v3)
  {
    return 0;
  }

  v4 = *v2 + 8;
  do
  {
    result = (*(**(v4 - 8) + 496))(*(v4 - 8), 1);
    if (result)
    {
      break;
    }

    v6 = v4 == v3;
    v4 += 8;
  }

  while (!v6);
  return result;
}

- (BOOL)hasDescendantWithFadeHandle
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  v3 = *(*pOZChannel + 664);

  return v3();
}

- (BOOL)hasTimeVaryingDescendant
{
  pOZChannel = self->super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v3 = 0;
  }

  if ((*(*v3 + 560))(v3))
  {
    return 1;
  }

  v5 = *(*v3 + 664);

  return v5(v3);
}

@end