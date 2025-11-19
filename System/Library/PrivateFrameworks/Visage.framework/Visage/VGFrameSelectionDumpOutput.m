@interface VGFrameSelectionDumpOutput
- (VGFrameSelectionDumpOutput)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VGFrameSelectionDumpOutput

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  selectedPoses = self->_selectedPoses;
  v5 = NSStringFromSelector(sel_selectedPoses);
  [v6 encodeObject:selectedPoses forKey:v5];
}

- (VGFrameSelectionDumpOutput)initWithCoder:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = VGFrameSelectionDumpOutput;
  v5 = [(VGFrameSelectionDumpOutput *)&v15 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = NSStringFromSelector(sel_selectedPoses);
    v10 = [v4 decodeObjectOfClasses:v8 forKey:v9];
    selectedPoses = v5->_selectedPoses;
    v5->_selectedPoses = v10;

    v12 = v5;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

@end