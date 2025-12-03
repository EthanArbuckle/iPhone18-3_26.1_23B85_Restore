@interface CHChannelCurve
- (id)addVertexChannelsWithXMLTypeInfoForX:(id)x andForY:(id)y;
- (id)vertexChannelFolders;
- (void)ozChannel;
@end

@implementation CHChannelCurve

- (void)ozChannel
{
  result = self->super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

- (id)addVertexChannelsWithXMLTypeInfoForX:(id)x andForY:(id)y
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  OZChannelCurve::addVertex(v5, MEMORY[0x277CC08F0], 0.0, 0.0);
}

- (id)vertexChannelFolders
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  v6 = (v5 + 36);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  __p = 0;
  v18 = 0;
  v19 = 0;
  (*(v5[36] + 288))(v5 + 36, &v20);
  v7 = (v5 + 65);
  (*(*v7 + 288))(v7, &__p);
  v8 = v20;
  if (v20 != v21)
  {
    v9 = __p;
    do
    {
      if (v9 == v18)
      {
        break;
      }

      v15 = 0;
      v16 = 0;
      (*(*v6 + 552))(v6, *v8, &v16);
      (*(*v7 + 552))(v7, *v9, &v15);
      v10 = objc_alloc(MEMORY[0x277CBEA60]);
      v11 = CHChannelWrapperForOZChannel(v16, 0);
      v12 = [v10 initWithObjects:{v11, CHChannelWrapperForOZChannel(v15, 0), 0}];
      [v3 addObject:v12];

      ++v8;
      ++v9;
    }

    while (v8 != v21);
  }

  v13 = [MEMORY[0x277CBEA60] arrayWithArray:v3];

  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  return v13;
}

@end