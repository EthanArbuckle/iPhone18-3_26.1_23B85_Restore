@interface PVInstructionGraphSourceNode
- (BOOL)isPortrait;
- (CGAffineTransform)transform;
- (HGRef<HGNode>)applyWrapModeToInput:(HGRef<HGNode>)input;
- (PVInstructionGraphSourceNode)init;
- (id)instructionGraphNodeDescription;
- (void)setTransform:(CGAffineTransform *)transform;
@end

@implementation PVInstructionGraphSourceNode

- (PVInstructionGraphSourceNode)init
{
  v8.receiver = self;
  v8.super_class = PVInstructionGraphSourceNode;
  v2 = [(PVInstructionGraphNode *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v5 = *(MEMORY[0x277CBF2C0] + 16);
    v4 = *(MEMORY[0x277CBF2C0] + 32);
    *&v2->_timedMetadataGroup = *MEMORY[0x277CBF2C0];
    *&v2->_transform.b = v5;
    *&v2->_transform.d = v4;
    v6 = *&v2->_textureWrapMode;
    *&v2->_textureWrapMode = 0;

    *&v3->_isOverlayTrack = 0;
  }

  return v3;
}

- (BOOL)isPortrait
{
  v5 = 0u;
  v6 = 0u;
  [(PVInstructionGraphSourceNode *)self transform:0];
  v2 = atan2(*&v5, *(&v5 + 1));
  return fabsf(fabsf(v2) + -3.1416) >= 0.00001 && v2 != 0.0;
}

- (HGRef<HGNode>)applyWrapModeToInput:(HGRef<HGNode>)input
{
  v6 = v3;
  v7 = *input.var0;
  *v3 = *input.var0;
  if (v7)
  {
    (*(*v7 + 16))(v7, a2);
  }

  v8.var0 = [(PVInstructionGraphSourceNode *)self textureWrapMode];
  if (LODWORD(v8.var0) == 1)
  {
    v9 = HGObject::operator new(0x1D0uLL);
    HGTextureWrap::HGTextureWrap(v9);
    (*(*v9 + 120))(v9, 0, *input.var0);
    HGTextureWrap::SetTextureWrapMode(v9, 1, v10);
    if (v7 != v9)
    {
      if (v7)
      {
        (*(*v7 + 24))(v7);
      }

      *v6 = v9;
      (*(*v9 + 16))(v9);
    }

    return (*(*v9 + 24))(v9);
  }

  return v8;
}

- (id)instructionGraphNodeDescription
{
  v12[4] = *MEMORY[0x277D85DE8];
  v11[0] = @"address";
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", self];
  v12[0] = v3;
  v11[1] = @"class";
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v12[1] = v5;
  v11[2] = @"sourceTransform";
  [(PVInstructionGraphSourceNode *)self transform];
  v6 = NSStringFromCGAffineTransform(&transform);
  v12[2] = v6;
  v11[3] = @"isPortrait";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[PVInstructionGraphSourceNode isPortrait](self, "isPortrait")}];
  v12[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];

  return v8;
}

- (CGAffineTransform)transform
{
  v3 = *&self[1].c;
  *&retstr->a = *&self[1].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].tx;
  return self;
}

- (void)setTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_timedMetadataGroup = *&transform->a;
  *&self->_transform.b = v4;
  *&self->_transform.d = v3;
}

@end