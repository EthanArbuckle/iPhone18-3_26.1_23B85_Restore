@interface SUIBIntelligenceFlowProgressUpdate
- (SUIBIntelligenceFlowProgressUpdate)initWithBuilder:(id)builder;
- (SUIBIntelligenceFlowProgressUpdate)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUIBIntelligenceFlowProgressUpdate

- (SUIBIntelligenceFlowProgressUpdate)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v16.receiver = self;
  v16.super_class = SUIBIntelligenceFlowProgressUpdate;
  v5 = [(SUIBIntelligenceFlowProgressUpdate *)&v16 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = objc_alloc_init(SUIBIntelligenceFlowProgressUpdateMutation);
    builderCopy[2](builderCopy, v7);
    [(SUIBIntelligenceFlowProgressUpdateMutation *)v7 progress];
    v6->_progress = v8;
    progressDescription = [(SUIBIntelligenceFlowProgressUpdateMutation *)v7 progressDescription];
    v10 = [progressDescription copy];
    progressDescription = v6->_progressDescription;
    v6->_progressDescription = v10;

    additionalProgressDescription = [(SUIBIntelligenceFlowProgressUpdateMutation *)v7 additionalProgressDescription];
    v13 = [additionalProgressDescription copy];
    additionalProgressDescription = v6->_additionalProgressDescription;
    v6->_additionalProgressDescription = v13;
  }

  return v6;
}

- (SUIBIntelligenceFlowProgressUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeFloatForKey:@"SUIBIntelligenceFlowProgressUpdate::progress"];
  v6 = v5;
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SUIBIntelligenceFlowProgressUpdate::progressDescription"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SUIBIntelligenceFlowProgressUpdate::additionalProgressDescription"];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__SUIBIntelligenceFlowProgressUpdate_initWithCoder___block_invoke;
  v13[3] = &unk_2784BFD30;
  v16 = v6;
  v14 = v7;
  v15 = v8;
  v9 = v8;
  v10 = v7;
  v11 = [(SUIBIntelligenceFlowProgressUpdate *)self initWithBuilder:v13];

  return v11;
}

void __52__SUIBIntelligenceFlowProgressUpdate_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v5 = a2;
  LODWORD(v4) = v3;
  [v5 setProgress:v4];
  [v5 setProgressDescription:*(a1 + 32)];
  [v5 setAdditionalProgressDescription:*(a1 + 40)];
}

- (void)encodeWithCoder:(id)coder
{
  progress = self->_progress;
  coderCopy = coder;
  *&v5 = progress;
  [coderCopy encodeFloat:@"SUIBIntelligenceFlowProgressUpdate::progress" forKey:v5];
  [coderCopy encodeObject:self->_progressDescription forKey:@"SUIBIntelligenceFlowProgressUpdate::progressDescription"];
  [coderCopy encodeObject:self->_additionalProgressDescription forKey:@"SUIBIntelligenceFlowProgressUpdate::additionalProgressDescription"];
}

@end