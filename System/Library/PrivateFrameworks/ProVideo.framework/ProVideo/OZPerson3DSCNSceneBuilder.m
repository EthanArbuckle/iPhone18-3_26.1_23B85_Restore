@interface OZPerson3DSCNSceneBuilder
- (OZPerson3DSCNSceneBuilder)initWithName:(id)a3;
- (SCNMatrix4Pair)getJointTransformsForLimb:(SEL)a3;
- (id).cxx_construct;
- (id)newNodeForJoint:(unint64_t)a3;
- (id)newNodeForLimb:(unint64_t)a3;
- (id)newRoundCylinderForRoot;
- (uint64_t)setTransform:(__n128)a3 node:(__n128)a4;
- (uint64_t)setTransform:(double)a3 forJoint:(double)a4;
- (void)addNode:(id)a3 joint:(unint64_t)a4 node:(id)a5;
- (void)addNode:(id)a3 limb:(unint64_t)a4 node:(id)a5;
- (void)buildPersonGeometry:(id)a3;
- (void)enablePhysics:(BOOL)a3;
- (void)runOnAllBodyGeometry:(id)a3;
- (void)setFriction:(float)a3;
- (void)setMass:(float)a3;
- (void)setOpacity:(float)a3;
- (void)updateConeLimbGeometry:(id)a3 upperRadius:(float)a4 lowerRadius:(float)a5 length:(float)a6;
- (void)updateCylinderLimbGeometry:(id)a3 length:(float)a4;
- (void)updateSimpleGeometry:(float)a3;
@end

@implementation OZPerson3DSCNSceneBuilder

- (OZPerson3DSCNSceneBuilder)initWithName:(id)a3
{
  v7.receiver = self;
  v7.super_class = OZPerson3DSCNSceneBuilder;
  v4 = [(OZPerson3DSCNSceneBuilder *)&v7 init];
  if (v4)
  {
    v5 = objc_opt_new();
    v4->_geometryMode = 1;
    v4->_rootNode = v5;
    [(OZPerson3DSCNSceneBuilder *)v4 buildPersonGeometry:a3];
  }

  return v4;
}

- (void)enablePhysics:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = *"";
  v3[2] = __43__OZPerson3DSCNSceneBuilder_enablePhysics___block_invoke_2;
  v3[3] = &unk_279AAA878;
  v3[4] = self;
  v3[5] = &__block_literal_global_85;
  v4 = a3;
  [(OZPerson3DSCNSceneBuilder *)self runOnAllBodyGeometry:v3];
}

uint64_t __43__OZPerson3DSCNSceneBuilder_enablePhysics___block_invoke(uint64_t a1, int a2, void *a3)
{
  if (a2)
  {
    result = [a3 physicsBody];
    if (result)
    {
      return result;
    }

    v5 = [MEMORY[0x277CDBAB0] kinematicBody];
  }

  else
  {
    v5 = 0;
  }

  return [a3 setPhysicsBody:v5];
}

uint64_t __43__OZPerson3DSCNSceneBuilder_enablePhysics___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 56))
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [a2 childNodes];
    result = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (result)
    {
      v5 = result;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          (*(*(a1 + 40) + 16))();
          ++v7;
        }

        while (v5 != v7);
        result = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        v5 = result;
      }

      while (result);
    }
  }

  else
  {
    v8 = *(*(a1 + 40) + 16);

    return v8();
  }

  return result;
}

- (void)setMass:(float)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = *"";
  v3[2] = __37__OZPerson3DSCNSceneBuilder_setMass___block_invoke;
  v3[3] = &__block_descriptor_36_e17_v16__0__SCNNode_8l;
  v4 = a3;
  [(OZPerson3DSCNSceneBuilder *)self runOnAllBodyGeometry:v3];
}

uint64_t __37__OZPerson3DSCNSceneBuilder_setMass___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 physicsBody];

  return [v3 setMass:v2];
}

- (void)setFriction:(float)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = *"";
  v3[2] = __41__OZPerson3DSCNSceneBuilder_setFriction___block_invoke;
  v3[3] = &__block_descriptor_36_e17_v16__0__SCNNode_8l;
  v4 = a3;
  [(OZPerson3DSCNSceneBuilder *)self runOnAllBodyGeometry:v3];
}

uint64_t __41__OZPerson3DSCNSceneBuilder_setFriction___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 physicsBody];

  return [v3 setFriction:v2];
}

- (void)setOpacity:(float)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = *"";
  v3[2] = __40__OZPerson3DSCNSceneBuilder_setOpacity___block_invoke;
  v3[3] = &__block_descriptor_36_e17_v16__0__SCNNode_8l;
  v4 = a3;
  [(OZPerson3DSCNSceneBuilder *)self runOnAllBodyGeometry:v3];
}

uint64_t __40__OZPerson3DSCNSceneBuilder_setOpacity___block_invoke(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:1.0 alpha:*(a1 + 32)];
  v4 = [objc_msgSend(objc_msgSend(a2 "geometry")];

  return [v4 setContents:v3];
}

- (void)runOnAllBodyGeometry:(id)a3
{
  begin_node = self->_jointNodeMap.__tree_.__begin_node_;
  p_end_node = &self->_jointNodeMap.__tree_.__end_node_;
  if (begin_node != &self->_jointNodeMap.__tree_.__end_node_)
  {
    do
    {
      (*(a3 + 2))(a3, begin_node->_limbNodeMap.__tree_.__end_node_.__left_);
      isa = begin_node->_jointNodeMap.__tree_.__begin_node_;
      if (isa)
      {
        do
        {
          left = isa;
          isa = isa->super.isa;
        }

        while (isa);
      }

      else
      {
        do
        {
          left = begin_node->_jointNodeMap.__tree_.__end_node_.__left_;
          v9 = left->super.isa == begin_node;
          begin_node = left;
        }

        while (!v9);
      }

      begin_node = left;
    }

    while (left != p_end_node);
  }

  v10 = self->_limbNodeMap.__tree_.__begin_node_;
  v11 = &self->_limbNodeMap.__tree_.__end_node_;
  if (v10 != v11)
  {
    do
    {
      (*(a3 + 2))(a3, v10[5].__left_);
      v12 = v10[1].__left_;
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = v12->__left_;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v10[2].__left_;
          v9 = v13->__left_ == v10;
          v10 = v13;
        }

        while (!v9);
      }

      v10 = v13;
    }

    while (v13 != v11);
  }
}

- (uint64_t)setTransform:(double)a3 forJoint:(double)a4
{
  v8[0] = a7;
  v8[2] = v8;
  return [a1 setTransform:std::__tree<std::__value_type<unsigned long long node:{PCNSRef<SCNRenderer *>>, std::__map_value_compare<unsigned long long, std::__value_type<unsigned long long, PCNSRef<SCNRenderer *>>, std::less<unsigned long long>, true>, std::allocator<std::__value_type<unsigned long long, PCNSRef<SCNRenderer *>>>>::__emplace_unique_key_args<unsigned long long, std::piecewise_construct_t const&, std::tuple<unsigned long long const&>, std::tuple<>>(a1 + 8, v8)[5], a2, a3, a4, a5}];
}

- (void)updateSimpleGeometry:(float)a3
{
  v4 = [(NSArray *)[(SCNNode *)self->_rootNode childNodes] firstObject];
  v5 = [objc_msgSend(v4 "childNodes")];
  [v5 geometry];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 geometry];
    v7 = a3 + -400.0;
    [v6 setHeight:v7];
    if ([v5 physicsBody])
    {
      [v5 setPhysicsBody:0];
      [v5 setPhysicsBody:{objc_msgSend(MEMORY[0x277CDBAB0], "kinematicBody")}];
      [objc_msgSend(v5 "physicsBody")];
    }
  }

  else
  {
    v7 = a3 + -400.0;
  }

  v8 = [objc_msgSend(v4 "childNodes")];
  v9 = v7 * 0.5;
  v10 = 1065353216;
  v12 = 0;
  v11 = 0;
  v13 = 1065353216;
  v14 = 0;
  v15 = 0;
  v16 = 1065353216;
  v17 = 0;
  v18 = v9;
  v19 = 0x3F80000000000000;
  [v8 setTransform:&v10];
}

- (void)buildPersonGeometry:(id)a3
{
  if (self->_geometryMode)
  {
    v8 = [(OZPerson3DSCNSceneBuilder *)self newRoundCylinderForRoot];
    [v8 setName:a3];
    [(OZPerson3DSCNSceneBuilder *)self addNode:v8 joint:0 node:self->_rootNode];
  }

  else
  {
    v8 = [(OZPerson3DSCNSceneBuilder *)self newNodeForJoint:0];
    [v8 setName:a3];
    [(OZPerson3DSCNSceneBuilder *)self addNode:v8 joint:0 node:self->_rootNode];
    for (i = 0; i != 16; ++i)
    {
      v6 = [(OZPerson3DSCNSceneBuilder *)self newNodeForJoint:i];
      [(OZPerson3DSCNSceneBuilder *)self addNode:v6 joint:i node:v8];
      [(OZPerson3DSCNSceneBuilder *)self defaultTransform:i];
      [(OZPerson3DSCNSceneBuilder *)self setTransform:v6 node:?];
    }

    for (j = 0; j != 9; ++j)
    {
      [(OZPerson3DSCNSceneBuilder *)self addNode:[(OZPerson3DSCNSceneBuilder *)self newNodeForLimb:j] limb:j node:v8];
    }
  }
}

- (uint64_t)setTransform:(__n128)a3 node:(__n128)a4
{
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  return [a7 setTransform:v8];
}

- (void)addNode:(id)a3 joint:(unint64_t)a4 node:(id)a5
{
  v7[0] = a4;
  v7[1] = a3;
  std::__tree<std::__value_type<unsigned long,SCNNode *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,SCNNode *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,SCNNode *>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,SCNNode *>>(&self->_jointNodeMap, v7);
  [a5 addChildNode:a3];
}

- (void)addNode:(id)a3 limb:(unint64_t)a4 node:(id)a5
{
  v7[0] = a4;
  v7[2] = v7;
  std::__tree<std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_limbNodeMap, v7)[5] = a3;
  [a5 addChildNode:a3];
}

- (id)newRoundCylinderForRoot
{
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  [v3 setName:@"LIMB core"];
  [v3 setGeometry:{objc_msgSend(MEMORY[0x277CDBA60], "cylinderWithRadius:height:", 200.0, 1000.0)}];
  [v2 addChildNode:v3];

  v4 = objc_opt_new();
  [v4 setName:@"LIMB top"];
  [v4 setGeometry:{objc_msgSend(MEMORY[0x277CDBB08], "sphereWithRadius:", 200.0)}];
  v6 = 1065353216;
  v8 = 0;
  v7 = 0;
  v9 = 1065353216;
  v10 = 0;
  v11 = 0;
  v12 = xmmword_2608544F0;
  v13 = 0x3F80000000000000;
  [v4 setTransform:&v6];
  [v2 addChildNode:v4];

  return v2;
}

- (id)newNodeForJoint:(unint64_t)a3
{
  v4 = objc_opt_new();
  [v4 setName:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"JOINT %lu", a3)}];
  [v4 setGeometry:{objc_msgSend(MEMORY[0x277CDBB08], "sphereWithRadius:", 100.0)}];
  [objc_msgSend(objc_msgSend(objc_msgSend(v4 "geometry")];
  return v4;
}

- (id)newNodeForLimb:(unint64_t)a3
{
  v4 = objc_opt_new();
  [v4 setName:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"LIMB %lu", a3)}];
  if (a3)
  {
    v5 = [MEMORY[0x277CDBA60] cylinderWithRadius:100.0 height:10.0];
  }

  else
  {
    v5 = [MEMORY[0x277CDBA58] coneWithTopRadius:100.0 bottomRadius:50.0 height:10.0];
  }

  [v4 setGeometry:v5];
  [objc_msgSend(objc_msgSend(objc_msgSend(v4 "geometry")];
  return v4;
}

- (SCNMatrix4Pair)getJointTransformsForLimb:(SEL)a3
{
  *&retstr->var1.m31 = 0u;
  *&retstr->var1.m41 = 0u;
  *&retstr->var1.m11 = 0u;
  *&retstr->var1.m21 = 0u;
  *&retstr->var0.m31 = 0u;
  *&retstr->var0.m41 = 0u;
  *&retstr->var0.m11 = 0u;
  *&retstr->var0.m21 = 0u;
  return self;
}

- (void)updateConeLimbGeometry:(id)a3 upperRadius:(float)a4 lowerRadius:(float)a5 length:(float)a6
{
  v9 = [a3 geometry];
  [v9 setHeight:a6];
  [v9 setTopRadius:a4];

  [v9 setBottomRadius:a5];
}

- (void)updateCylinderLimbGeometry:(id)a3 length:(float)a4
{
  v5 = [a3 geometry];

  [v5 setHeight:a4];
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  *(self + 6) = 0;
  *(self + 5) = 0;
  *(self + 3) = 0;
  *(self + 4) = self + 40;
  return self;
}

@end