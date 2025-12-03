@interface PVVideoCompositionInstruction
- ($948BFCBB2DDE7F94AFEDE1DD48437795)timeRange;
- (NSString)description;
- (PVVideoCompositionInstruction)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)videoInstructionDescription;
- (void)loadInstructionGraphNodes:(HGRef<PVInstructionGraphContext>)nodes;
- (void)setOutputNode:(id)node;
- (void)setTimeRange:(id *)range;
- (void)unloadInstructionGraphNodes;
@end

@implementation PVVideoCompositionInstruction

- (PVVideoCompositionInstruction)init
{
  v10.receiver = self;
  v10.super_class = PVVideoCompositionInstruction;
  v2 = [(PVVideoCompositionInstruction *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v4 = *MEMORY[0x277CC08E0];
    v5 = *(MEMORY[0x277CC08E0] + 16);
    *(v2 + 40) = *(MEMORY[0x277CC08E0] + 32);
    *(v2 + 24) = v5;
    *(v2 + 8) = v4;
    *(v2 + 28) = 0;
    v6 = *(v2 + 8);
    *(v2 + 8) = 0;

    m_requiredSourceSampleDataTrackIDs = v3->m_requiredSourceSampleDataTrackIDs;
    v3->m_requiredSourceSampleDataTrackIDs = 0;

    v3->m_passthroughTrackID = 0;
    m_outputIGNode = v3->m_outputIGNode;
    v3->m_outputIGNode = 0;
  }

  return v3;
}

- (void)setOutputNode:(id)node
{
  nodeCopy = node;
  objc_storeStrong(&self->m_outputIGNode, node);
  m_requiredSourceTrackIDs = self->m_requiredSourceTrackIDs;
  self->m_requiredSourceTrackIDs = 0;

  m_requiredSourceSampleDataTrackIDs = self->m_requiredSourceSampleDataTrackIDs;
  self->m_requiredSourceSampleDataTrackIDs = 0;

  self->m_passthroughTrackID = 0;
  m_outputIGNode = self->m_outputIGNode;
  if (m_outputIGNode)
  {
    requiredSourceTrackIDs = [(PVInstructionGraphNode *)m_outputIGNode requiredSourceTrackIDs];
    allObjects = [requiredSourceTrackIDs allObjects];
    v10 = self->m_requiredSourceTrackIDs;
    self->m_requiredSourceTrackIDs = allObjects;

    requiredSourceSampleDataTrackIDs = [(PVInstructionGraphNode *)self->m_outputIGNode requiredSourceSampleDataTrackIDs];
    allObjects2 = [requiredSourceSampleDataTrackIDs allObjects];
    v13 = self->m_requiredSourceSampleDataTrackIDs;
    self->m_requiredSourceSampleDataTrackIDs = allObjects2;

    if (+[PVEnvironment PV_ENABLE_CHECK_PASSTHRUS]&& [(PVInstructionGraphNode *)self->m_outputIGNode isPassthru])
    {
      v14 = [(NSArray *)self->m_requiredSourceTrackIDs objectAtIndex:0];
      self->m_passthroughTrackID = [v14 intValue];
    }
  }
}

- (id)videoInstructionDescription
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = *&self->m_timeRange.start.epoch;
  *&range.start.value = *&self->m_timeRange.start.value;
  *&range.start.epoch = v3;
  *&range.duration.timescale = *&self->m_timeRange.duration.timescale;
  v4 = CMTimeRangeCopyAsDictionary(&range, 0);
  v19[0] = v4;
  v18[0] = @"timeRange";
  v18[1] = @"enablePostPorcessing";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:self->m_enablePostProcessing];
  v19[1] = v16;
  v18[2] = @"containsTweening";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:self->m_containsTweening];
  v18[3] = @"isFreezeFrame";
  v15 = v20;
  v21 = [MEMORY[0x277CCABB0] numberWithBool:self->_isFreezeFrame];
  v18[4] = @"passthroughTrackID";
  v14 = v21;
  v22 = [MEMORY[0x277CCABB0] numberWithInt:self->m_passthroughTrackID];
  v18[5] = @"requiredSourceTrackIDs";
  v13 = v22;
  requiredSourceTrackIDs = [(PVVideoCompositionInstruction *)self requiredSourceTrackIDs];
  if (requiredSourceTrackIDs)
  {
    [(PVVideoCompositionInstruction *)self requiredSourceTrackIDs];
  }

  else
  {
    [MEMORY[0x277CBEA60] array];
  }
  v6 = ;
  v23 = v6;
  v18[6] = @"requiredSourceSampleDataTrackIDs";
  requiredSourceSampleDataTrackIDs = [(PVVideoCompositionInstruction *)self requiredSourceSampleDataTrackIDs];
  if (requiredSourceSampleDataTrackIDs)
  {
    [(PVVideoCompositionInstruction *)self requiredSourceSampleDataTrackIDs];
  }

  else
  {
    [MEMORY[0x277CBEA60] array];
  }
  v8 = ;
  v24 = v8;
  v18[7] = @"instructionGraph";
  m_outputIGNode = self->m_outputIGNode;
  if (m_outputIGNode)
  {
    [(PVInstructionGraphNode *)m_outputIGNode instructionGraphNodeDescription];
  }

  else
  {
    [MEMORY[0x277CBEAC0] dictionary];
  }
  v10 = ;
  v25 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:8];

  CFRelease(v4);

  return v11;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  videoInstructionDescription = [(PVVideoCompositionInstruction *)self videoInstructionDescription];
  v4 = [v2 stringWithFormat:@"%@", videoInstructionDescription];

  return v4;
}

- (void)loadInstructionGraphNodes:(HGRef<PVInstructionGraphContext>)nodes
{
  m_outputIGNode = self->m_outputIGNode;
  if (m_outputIGNode)
  {
    v4 = *nodes.m_Obj;
    v5 = v4;
    if (v4)
    {
      (*(*v4 + 16))(v4, a2);
    }

    [(PVInstructionGraphNode *)m_outputIGNode loadIGNode:&v5];
    if (v5)
    {
      (*(*v5 + 24))(v5);
    }
  }
}

- (void)unloadInstructionGraphNodes
{
  m_outputIGNode = self->m_outputIGNode;
  if (m_outputIGNode)
  {
    [(PVInstructionGraphNode *)m_outputIGNode unloadIGNode];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PVVideoCompositionInstruction allocWithZone:?]];
  [(PVVideoCompositionInstruction *)self timeRange];
  v7[0] = v7[3];
  v7[1] = v7[4];
  v7[2] = v7[5];
  [(PVVideoCompositionInstruction *)v4 setTimeRange:v7];
  [(PVVideoCompositionInstruction *)v4 setEnablePostProcessing:[(PVVideoCompositionInstruction *)self enablePostProcessing]];
  [(PVVideoCompositionInstruction *)v4 setContainsTweening:[(PVVideoCompositionInstruction *)self containsTweening]];
  outputNode = [(PVVideoCompositionInstruction *)self outputNode];
  [(PVVideoCompositionInstruction *)v4 setOutputNode:outputNode];

  return v4;
}

- ($948BFCBB2DDE7F94AFEDE1DD48437795)timeRange
{
  v3 = *&self->var1.var0;
  *&retstr->var0.var0 = *&self->var0.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self->var1.var3;
  return self;
}

- (void)setTimeRange:(id *)range
{
  v3 = *&range->var0.var0;
  v4 = *&range->var0.var3;
  *&self->m_timeRange.duration.timescale = *&range->var1.var1;
  *&self->m_timeRange.start.epoch = v4;
  *&self->m_timeRange.start.value = v3;
}

@end