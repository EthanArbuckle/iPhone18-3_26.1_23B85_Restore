@interface PVXFormEffect
+ (void)registerEffectWithID:(id)d displayName:(id)name;
- (HGRef<HGNode>)hgNodeForTime:(id *)time inputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context;
@end

@implementation PVXFormEffect

+ (void)registerEffectWithID:(id)d displayName:(id)name
{
  dCopy = d;
  nameCopy = name;
  v6 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{nameCopy, @"FFEffectProperty_DisplayName", @"Helium", @"FFEffectProperty_Category", @"effect.video.filter", @"FFEffectProperty_EffectType", 0}];
  [PVEffect registerEffectClass:objc_opt_class() forEffectID:dCopy withProperties:v6];
}

- (HGRef<HGNode>)hgNodeForTime:(id *)time inputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context
{
  v7 = v6;
  v8.var0 = PVInputHGNodeMap<unsigned int>::GetNode(inputs, 0, v6);
  {
    if (LODWORD(v8.var0))
    {
      [PVXFormEffect hgNodeForTime:inputs:renderer:igContext:]::s_numPasses = +[PVEnvironment PV_NUM_RENDER_PASSES];
    }
  }

  {
    if (LODWORD(v8.var0))
    {
      [PVXFormEffect hgNodeForTime:inputs:renderer:igContext:]::s_testType = +[PVEnvironment PV_RENDER_PASS_TEST_TYPE];
    }
  }

  if ([PVXFormEffect hgNodeForTime:inputs:renderer:igContext:]::s_numPasses >= 1)
  {
    v9 = 0;
    do
    {
      if ([PVXFormEffect hgNodeForTime:inputs:renderer:igContext:]::s_testType == 1)
      {
        v12 = HGObject::operator new(0x1F0uLL);
        HGColorMatrix::HGColorMatrix(v12);
      }

      if ([PVXFormEffect hgNodeForTime:inputs:renderer:igContext:]::s_testType)
      {
        NSLog(&cfstr_WarningUnknown_0.isa);
      }

      else
      {
        HGTransform::HGTransform(v13);
        HGTransform::Translate(v13, 10.0, 0.0, 0.0);
        v10 = HGObject::operator new(0x210uLL);
        HGXForm::HGXForm(v10);
        (*(*v10 + 120))(v10, 0, *v7);
        (*(*v10 + 576))(v10, v13);
        v11 = *v7;
        if (*v7 != v10)
        {
          if (v11)
          {
            (*(*v11 + 24))(v11);
          }

          *v7 = v10;
          (*(*v10 + 16))(v10);
        }

        (*(*v10 + 24))(v10);
        HGTransform::~HGTransform(v13);
      }

      v8.var0 = (*(**v7 + 136))(*v7, 0xFFFFFFFFLL, 32);
      ++v9;
    }

    while (v9 < [PVXFormEffect hgNodeForTime:inputs:renderer:igContext:]::s_numPasses);
  }

  return v8;
}

@end