@interface FxHeliumImage
- (FxHeliumImage)initWithInfo:(id *)info;
- (FxHeliumImage)initWithInfo:(id *)info andHeliumNode:(void *)node;
- (FxHeliumImage)initWithInfo:(id *)info andHeliumRef:(const void *)ref;
- (HGRef<HGNode>)heliumRef;
- (void)dealloc;
- (void)setHeliumNode:(void *)node;
- (void)setHeliumRef:(const void *)ref;
@end

@implementation FxHeliumImage

- (FxHeliumImage)initWithInfo:(id *)info
{
  v3 = *&info->var6;
  v7[2] = *&info->var4;
  v7[3] = v3;
  var8 = info->var8;
  v4 = *&info->var2;
  v7[0] = *&info->var0;
  v7[1] = v4;
  v6.receiver = self;
  v6.super_class = FxHeliumImage;
  if ([(FxImage *)&v6 initWithInfo:v7])
  {
    operator new();
  }

  return 0;
}

- (FxHeliumImage)initWithInfo:(id *)info andHeliumNode:(void *)node
{
  v4 = *&info->var6;
  v8[2] = *&info->var4;
  v8[3] = v4;
  var8 = info->var8;
  v5 = *&info->var2;
  v8[0] = *&info->var0;
  v8[1] = v5;
  v7.receiver = self;
  v7.super_class = FxHeliumImage;
  if ([(FxImage *)&v7 initWithInfo:v8])
  {
    operator new();
  }

  return 0;
}

- (FxHeliumImage)initWithInfo:(id *)info andHeliumRef:(const void *)ref
{
  v4 = *&info->var6;
  v8[2] = *&info->var4;
  v8[3] = v4;
  var8 = info->var8;
  v5 = *&info->var2;
  v8[0] = *&info->var0;
  v8[1] = v5;
  v7.receiver = self;
  v7.super_class = FxHeliumImage;
  if ([(FxImage *)&v7 initWithInfo:v8])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  heliumImagePriv = self->_heliumImagePriv;
  if (heliumImagePriv)
  {
    if (*heliumImagePriv)
    {
      (*(**heliumImagePriv + 24))(*heliumImagePriv, a2);
    }

    MEMORY[0x2666E9F00](heliumImagePriv, 0x20C4093837F09);
  }

  v4.receiver = self;
  v4.super_class = FxHeliumImage;
  [(FxImage *)&v4 dealloc];
}

- (void)setHeliumNode:(void *)node
{
  if (node)
  {
    (*(*node + 16))(node, a2);
    heliumImagePriv = self->_heliumImagePriv;
    v6 = *heliumImagePriv;
    if (*heliumImagePriv == node)
    {
      (*(*node + 24))(node);
      return;
    }
  }

  else
  {
    heliumImagePriv = self->_heliumImagePriv;
    v6 = *heliumImagePriv;
    if (!*heliumImagePriv)
    {
      return;
    }
  }

  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  *heliumImagePriv = node;
}

- (void)setHeliumRef:(const void *)ref
{
  heliumImagePriv = self->_heliumImagePriv;
  v4 = *heliumImagePriv;
  v5 = *ref;
  if (*heliumImagePriv != *ref)
  {
    if (v4)
    {
      (*(*v4 + 24))(*heliumImagePriv, a2);
      v5 = *ref;
    }

    *heliumImagePriv = v5;
    if (v5)
    {
      v7 = *(*v5 + 16);

      v7();
    }
  }
}

- (HGRef<HGNode>)heliumRef
{
  heliumImagePriv = self->_heliumImagePriv;
  v4.var0 = heliumImagePriv->var0;
  *v2 = heliumImagePriv->var0;
  if (v4.var0)
  {
    return (*(*v4.var0 + 16))();
  }

  return v4;
}

@end