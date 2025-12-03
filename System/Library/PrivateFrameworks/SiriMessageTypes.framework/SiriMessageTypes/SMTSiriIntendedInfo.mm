@interface SMTSiriIntendedInfo
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SMTSiriIntendedInfo)initWithBuilder:(id)builder;
- (SMTSiriIntendedInfo)initWithCoder:(id)coder;
- (SMTSiriIntendedInfo)initWithOdldScore:(float)score aftmScore:(float)aftmScore spkrIdScore:(float)idScore lrnnScore:(float)lrnnScore checkerScore:(float)checkerScore invocationType:(id)type lrnnThreshold:(float)threshold lrnnScale:(float)self0 lrnnOffset:(float)self1 conversationalOdldScore:(float)self2;
- (SMTSiriIntendedInfo)initWithOdldScore:(float)score aftmScore:(float)aftmScore spkrIdScore:(float)idScore lrnnScore:(float)lrnnScore checkerScore:(float)checkerScore invocationType:(id)type lrnnThreshold:(float)threshold lrnnScale:(float)self0 lrnnOffset:(float)self1 conversationalOdldScore:(float)self2 spkrIdThreshold:(float)self3;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SMTSiriIntendedInfo

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  odldScore = self->_odldScore;
  coderCopy = coder;
  *&v7 = odldScore;
  v8 = [v4 numberWithFloat:v7];
  [coderCopy encodeObject:v8 forKey:@"SMTSiriIntendedInfo::odldScore"];

  *&v9 = self->_aftmScore;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  [coderCopy encodeObject:v10 forKey:@"SMTSiriIntendedInfo::aftmScore"];

  *&v11 = self->_spkrIdScore;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  [coderCopy encodeObject:v12 forKey:@"SMTSiriIntendedInfo::spkrIdScore"];

  *&v13 = self->_lrnnScore;
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  [coderCopy encodeObject:v14 forKey:@"SMTSiriIntendedInfo::lrnnScore"];

  *&v15 = self->_checkerScore;
  v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
  [coderCopy encodeObject:v16 forKey:@"SMTSiriIntendedInfo::checkerScore"];

  [coderCopy encodeObject:self->_invocationType forKey:@"SMTSiriIntendedInfo::invocationType"];
  *&v17 = self->_lrnnThreshold;
  v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
  [coderCopy encodeObject:v18 forKey:@"SMTSiriIntendedInfo::lrnnThreshold"];

  *&v19 = self->_lrnnScale;
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  [coderCopy encodeObject:v20 forKey:@"SMTSiriIntendedInfo::lrnnScale"];

  *&v21 = self->_lrnnOffset;
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  [coderCopy encodeObject:v22 forKey:@"SMTSiriIntendedInfo::lrnnOffset"];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:self->_isGazeSignalPresent];
  [coderCopy encodeObject:v23 forKey:@"SMTSiriIntendedInfo::isGazeSignalPresent"];

  *&v24 = self->_conversationalOdldScore;
  v25 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
  [coderCopy encodeObject:v25 forKey:@"SMTSiriIntendedInfo::conversationalOdldScore"];

  *&v26 = self->_spkrIdThreshold;
  v27 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
  [coderCopy encodeObject:v27 forKey:@"SMTSiriIntendedInfo::spkrIdThreshold"];

  *&v28 = self->_neuralCombinerScore;
  v29 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
  [coderCopy encodeObject:v29 forKey:@"SMTSiriIntendedInfo::neuralCombinerScore"];

  *&v30 = self->_neuralCombinerThreshold;
  v31 = [MEMORY[0x277CCABB0] numberWithFloat:v30];
  [coderCopy encodeObject:v31 forKey:@"SMTSiriIntendedInfo::neuralCombinerThreshold"];
}

- (SMTSiriIntendedInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMTSiriIntendedInfo::odldScore"];
  [v5 floatValue];
  v45 = v6;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMTSiriIntendedInfo::aftmScore"];
  [v7 floatValue];
  v44 = v8;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMTSiriIntendedInfo::spkrIdScore"];
  [v9 floatValue];
  v43 = v10;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMTSiriIntendedInfo::lrnnScore"];
  [v11 floatValue];
  v42 = v12;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMTSiriIntendedInfo::checkerScore"];
  [v13 floatValue];
  v15 = v14;

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMTSiriIntendedInfo::invocationType"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMTSiriIntendedInfo::lrnnThreshold"];
  [v17 floatValue];
  v19 = v18;

  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMTSiriIntendedInfo::lrnnScale"];
  [v20 floatValue];
  v22 = v21;

  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMTSiriIntendedInfo::lrnnOffset"];
  [v23 floatValue];
  v25 = v24;

  v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMTSiriIntendedInfo::isGazeSignalPresent"];
  [v26 BOOLValue];

  v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMTSiriIntendedInfo::conversationalOdldScore"];
  [v27 floatValue];
  v29 = v28;

  v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMTSiriIntendedInfo::spkrIdThreshold"];
  [v30 floatValue];
  v32 = v31;

  v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMTSiriIntendedInfo::neuralCombinerScore"];
  [v33 floatValue];
  v35 = v34;

  v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SMTSiriIntendedInfo::neuralCombinerThreshold"];

  [v36 floatValue];
  v38 = v37;

  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __37__SMTSiriIntendedInfo_initWithCoder___block_invoke;
  v46[3] = &unk_2784D5D20;
  v48 = v45;
  v49 = v44;
  v50 = v43;
  v51 = v42;
  v47 = v16;
  v52 = v15;
  v53 = v19;
  v54 = v22;
  v55 = v25;
  v56 = v29;
  v57 = v32;
  v58 = v35;
  v59 = v38;
  v39 = v16;
  v40 = [(SMTSiriIntendedInfo *)self initWithBuilder:v46];

  return v40;
}

void __37__SMTSiriIntendedInfo_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v16 = a2;
  LODWORD(v4) = v3;
  [v16 setOdldScore:v4];
  LODWORD(v5) = *(a1 + 44);
  [v16 setAftmScore:v5];
  LODWORD(v6) = *(a1 + 48);
  [v16 setSpkrIdScore:v6];
  LODWORD(v7) = *(a1 + 52);
  [v16 setLrnnScore:v7];
  LODWORD(v8) = *(a1 + 56);
  [v16 setCheckerScore:v8];
  [v16 setInvocationType:*(a1 + 32)];
  LODWORD(v9) = *(a1 + 60);
  [v16 setLrnnThreshold:v9];
  LODWORD(v10) = *(a1 + 64);
  [v16 setLrnnScale:v10];
  LODWORD(v11) = *(a1 + 68);
  [v16 setLrnnOffset:v11];
  LODWORD(v12) = *(a1 + 72);
  [v16 setConversationalOdldScore:v12];
  LODWORD(v13) = *(a1 + 76);
  [v16 setSpkrIdThreshold:v13];
  LODWORD(v14) = *(a1 + 80);
  [v16 setNeuralCombinerScore:v14];
  LODWORD(v15) = *(a1 + 84);
  [v16 setNeuralCombinerThreshold:v15];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v31 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      odldScore = self->_odldScore;
      [(SMTSiriIntendedInfo *)v5 odldScore];
      if (odldScore != v7)
      {
        goto LABEL_16;
      }

      aftmScore = self->_aftmScore;
      [(SMTSiriIntendedInfo *)v5 aftmScore];
      if (aftmScore != v9)
      {
        goto LABEL_16;
      }

      spkrIdScore = self->_spkrIdScore;
      [(SMTSiriIntendedInfo *)v5 spkrIdScore];
      if (spkrIdScore != v11)
      {
        goto LABEL_16;
      }

      lrnnScore = self->_lrnnScore;
      [(SMTSiriIntendedInfo *)v5 lrnnScore];
      if (lrnnScore != v13)
      {
        goto LABEL_16;
      }

      checkerScore = self->_checkerScore;
      [(SMTSiriIntendedInfo *)v5 checkerScore];
      if (checkerScore != v15)
      {
        goto LABEL_16;
      }

      invocationType = self->_invocationType;
      invocationType = [(SMTSiriIntendedInfo *)v5 invocationType];

      if (invocationType != invocationType)
      {
        goto LABEL_16;
      }

      lrnnThreshold = self->_lrnnThreshold;
      [(SMTSiriIntendedInfo *)v5 lrnnThreshold];
      if (lrnnThreshold != v19)
      {
        goto LABEL_16;
      }

      lrnnScale = self->_lrnnScale;
      [(SMTSiriIntendedInfo *)v5 lrnnScale];
      if (lrnnScale != v21)
      {
        goto LABEL_16;
      }

      lrnnOffset = self->_lrnnOffset;
      [(SMTSiriIntendedInfo *)v5 lrnnOffset];
      if (lrnnOffset != v23)
      {
        goto LABEL_16;
      }

      isGazeSignalPresent = self->_isGazeSignalPresent;
      if (isGazeSignalPresent == [(SMTSiriIntendedInfo *)v5 isGazeSignalPresent]&& (conversationalOdldScore = self->_conversationalOdldScore, [(SMTSiriIntendedInfo *)v5 conversationalOdldScore], conversationalOdldScore == v26) && (spkrIdThreshold = self->_spkrIdThreshold, [(SMTSiriIntendedInfo *)v5 spkrIdThreshold], spkrIdThreshold == v28) && (neuralCombinerScore = self->_neuralCombinerScore, [(SMTSiriIntendedInfo *)v5 neuralCombinerScore], neuralCombinerScore == v30))
      {
        neuralCombinerThreshold = self->_neuralCombinerThreshold;
        [(SMTSiriIntendedInfo *)v5 neuralCombinerThreshold];
        v31 = neuralCombinerThreshold == v34;
      }

      else
      {
LABEL_16:
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
    }
  }

  return v31;
}

- (unint64_t)hash
{
  *&v2 = self->_odldScore;
  v42 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  v4 = [v42 hash];
  *&v5 = self->_aftmScore;
  v41 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  v6 = [v41 hash] ^ v4;
  *&v7 = self->_spkrIdScore;
  v40 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v8 = [v40 hash];
  *&v9 = self->_lrnnScore;
  v39 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  v10 = v6 ^ v8 ^ [v39 hash];
  *&v11 = self->_checkerScore;
  v38 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v12 = [v38 hash];
  v13 = v12 ^ [(NSNumber *)self->_invocationType hash];
  *&v14 = self->_lrnnThreshold;
  v37 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  v15 = v10 ^ v13 ^ [v37 hash];
  *&v16 = self->_lrnnScale;
  v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  v18 = [v17 hash];
  *&v19 = self->_lrnnOffset;
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  v21 = v18 ^ [v20 hash];
  v22 = [MEMORY[0x277CCABB0] numberWithBool:self->_isGazeSignalPresent];
  v23 = v21 ^ [v22 hash];
  *&v24 = self->_conversationalOdldScore;
  v25 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
  v36 = v15 ^ v23 ^ [v25 hash];
  *&v26 = self->_spkrIdThreshold;
  v27 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
  v28 = [v27 hash];
  *&v29 = self->_neuralCombinerScore;
  v30 = [MEMORY[0x277CCABB0] numberWithFloat:v29];
  v31 = v28 ^ [v30 hash];
  *&v32 = self->_neuralCombinerThreshold;
  v33 = [MEMORY[0x277CCABB0] numberWithFloat:v32];
  v34 = v31 ^ [v33 hash];

  return v36 ^ v34;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = SMTSiriIntendedInfo;
  v5 = [(SMTSiriIntendedInfo *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {odldScore = %f, aftmScore = %f, spkrIdScore = %f, lrnnScore = %f, checkerScore = %f, invocationType = %@, lrnnThreshold = %f, lrnnScale = %f, lrnnOffset = %f, gazeSignalPresent = %u, conversationalOdldScore = %f, spkrIdThreshold = %f, neuralCombinerScore = %f, ncThreshold = %f }", v5, self->_odldScore, self->_aftmScore, self->_spkrIdScore, self->_lrnnScore, self->_checkerScore, self->_invocationType, self->_lrnnThreshold, self->_lrnnScale, self->_lrnnOffset, self->_isGazeSignalPresent, self->_conversationalOdldScore, self->_spkrIdThreshold, self->_neuralCombinerScore, self->_neuralCombinerThreshold];

  return v6;
}

- (SMTSiriIntendedInfo)initWithOdldScore:(float)score aftmScore:(float)aftmScore spkrIdScore:(float)idScore lrnnScore:(float)lrnnScore checkerScore:(float)checkerScore invocationType:(id)type lrnnThreshold:(float)threshold lrnnScale:(float)self0 lrnnOffset:(float)self1 conversationalOdldScore:(float)self2 spkrIdThreshold:(float)self3
{
  typeCopy = type;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __176__SMTSiriIntendedInfo_initWithOdldScore_aftmScore_spkrIdScore_lrnnScore_checkerScore_invocationType_lrnnThreshold_lrnnScale_lrnnOffset_conversationalOdldScore_spkrIdThreshold___block_invoke;
  v26[3] = &unk_2784D5CF8;
  scoreCopy = score;
  aftmScoreCopy = aftmScore;
  idScoreCopy = idScore;
  lrnnScoreCopy = lrnnScore;
  v27 = typeCopy;
  checkerScoreCopy = checkerScore;
  thresholdCopy = threshold;
  scaleCopy = scale;
  offsetCopy = offset;
  odldScoreCopy = odldScore;
  idThresholdCopy = idThreshold;
  v21 = typeCopy;
  v22 = [(SMTSiriIntendedInfo *)self initWithBuilder:v26];

  return v22;
}

void __176__SMTSiriIntendedInfo_initWithOdldScore_aftmScore_spkrIdScore_lrnnScore_checkerScore_invocationType_lrnnThreshold_lrnnScale_lrnnOffset_conversationalOdldScore_spkrIdThreshold___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v14 = a2;
  LODWORD(v4) = v3;
  [v14 setOdldScore:v4];
  LODWORD(v5) = *(a1 + 44);
  [v14 setAftmScore:v5];
  LODWORD(v6) = *(a1 + 48);
  [v14 setSpkrIdScore:v6];
  LODWORD(v7) = *(a1 + 52);
  [v14 setLrnnScore:v7];
  LODWORD(v8) = *(a1 + 56);
  [v14 setCheckerScore:v8];
  [v14 setInvocationType:*(a1 + 32)];
  LODWORD(v9) = *(a1 + 60);
  [v14 setLrnnThreshold:v9];
  LODWORD(v10) = *(a1 + 64);
  [v14 setLrnnScale:v10];
  LODWORD(v11) = *(a1 + 68);
  [v14 setLrnnOffset:v11];
  LODWORD(v12) = *(a1 + 72);
  [v14 setConversationalOdldScore:v12];
  LODWORD(v13) = *(a1 + 76);
  [v14 setSpkrIdThreshold:v13];
}

- (SMTSiriIntendedInfo)initWithOdldScore:(float)score aftmScore:(float)aftmScore spkrIdScore:(float)idScore lrnnScore:(float)lrnnScore checkerScore:(float)checkerScore invocationType:(id)type lrnnThreshold:(float)threshold lrnnScale:(float)self0 lrnnOffset:(float)self1 conversationalOdldScore:(float)self2
{
  typeCopy = type;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __160__SMTSiriIntendedInfo_initWithOdldScore_aftmScore_spkrIdScore_lrnnScore_checkerScore_invocationType_lrnnThreshold_lrnnScale_lrnnOffset_conversationalOdldScore___block_invoke;
  v25[3] = &unk_2784D5CD0;
  scoreCopy = score;
  aftmScoreCopy = aftmScore;
  idScoreCopy = idScore;
  lrnnScoreCopy = lrnnScore;
  v26 = typeCopy;
  checkerScoreCopy = checkerScore;
  thresholdCopy = threshold;
  scaleCopy = scale;
  offsetCopy = offset;
  odldScoreCopy = odldScore;
  v21 = typeCopy;
  v22 = [(SMTSiriIntendedInfo *)self initWithBuilder:v25];

  return v22;
}

void __160__SMTSiriIntendedInfo_initWithOdldScore_aftmScore_spkrIdScore_lrnnScore_checkerScore_invocationType_lrnnThreshold_lrnnScale_lrnnOffset_conversationalOdldScore___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v13 = a2;
  LODWORD(v4) = v3;
  [v13 setOdldScore:v4];
  LODWORD(v5) = *(a1 + 44);
  [v13 setAftmScore:v5];
  LODWORD(v6) = *(a1 + 48);
  [v13 setSpkrIdScore:v6];
  LODWORD(v7) = *(a1 + 52);
  [v13 setLrnnScore:v7];
  LODWORD(v8) = *(a1 + 56);
  [v13 setCheckerScore:v8];
  [v13 setInvocationType:*(a1 + 32)];
  LODWORD(v9) = *(a1 + 60);
  [v13 setLrnnThreshold:v9];
  LODWORD(v10) = *(a1 + 64);
  [v13 setLrnnScale:v10];
  LODWORD(v11) = *(a1 + 68);
  [v13 setLrnnOffset:v11];
  LODWORD(v12) = *(a1 + 72);
  [v13 setConversationalOdldScore:v12];
}

- (SMTSiriIntendedInfo)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v23.receiver = self;
  v23.super_class = SMTSiriIntendedInfo;
  v5 = [(SMTSiriIntendedInfo *)&v23 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_SMTSiriIntendedInfoMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_SMTSiriIntendedInfoMutation *)v7 isDirty])
    {
      [(_SMTSiriIntendedInfoMutation *)v7 getOdldScore];
      v6->_odldScore = v8;
      [(_SMTSiriIntendedInfoMutation *)v7 getAftmScore];
      v6->_aftmScore = v9;
      [(_SMTSiriIntendedInfoMutation *)v7 getSpkrIdScore];
      v6->_spkrIdScore = v10;
      [(_SMTSiriIntendedInfoMutation *)v7 getLrnnScore];
      v6->_lrnnScore = v11;
      [(_SMTSiriIntendedInfoMutation *)v7 getCheckerScore];
      v6->_checkerScore = v12;
      getInvocationType = [(_SMTSiriIntendedInfoMutation *)v7 getInvocationType];
      invocationType = v6->_invocationType;
      v6->_invocationType = getInvocationType;

      [(_SMTSiriIntendedInfoMutation *)v7 getLrnnThreshold];
      v6->_lrnnThreshold = v15;
      [(_SMTSiriIntendedInfoMutation *)v7 getLrnnScale];
      v6->_lrnnScale = v16;
      [(_SMTSiriIntendedInfoMutation *)v7 getLrnnOffset];
      v6->_lrnnOffset = v17;
      v6->_isGazeSignalPresent = [(_SMTSiriIntendedInfoMutation *)v7 getGazeSignal];
      [(_SMTSiriIntendedInfoMutation *)v7 getConversationalOdldScore];
      v6->_conversationalOdldScore = v18;
      [(_SMTSiriIntendedInfoMutation *)v7 getSpkrIdThreshold];
      v6->_spkrIdThreshold = v19;
      [(_SMTSiriIntendedInfoMutation *)v7 getNeuralCombinerScore];
      v6->_neuralCombinerScore = v20;
      [(_SMTSiriIntendedInfoMutation *)v7 getNeuralCombinerThreshold];
      v6->_neuralCombinerThreshold = v21;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SMTSiriIntendedInfoMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_SMTSiriIntendedInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(SMTSiriIntendedInfo);
      [(_SMTSiriIntendedInfoMutation *)v5 getOdldScore];
      v6->_odldScore = v7;
      [(_SMTSiriIntendedInfoMutation *)v5 getAftmScore];
      v6->_aftmScore = v8;
      [(_SMTSiriIntendedInfoMutation *)v5 getSpkrIdScore];
      v6->_spkrIdScore = v9;
      [(_SMTSiriIntendedInfoMutation *)v5 getLrnnScore];
      v6->_lrnnScore = v10;
      [(_SMTSiriIntendedInfoMutation *)v5 getCheckerScore];
      v6->_checkerScore = v11;
      getInvocationType = [(_SMTSiriIntendedInfoMutation *)v5 getInvocationType];
      invocationType = v6->_invocationType;
      v6->_invocationType = getInvocationType;

      [(_SMTSiriIntendedInfoMutation *)v5 getLrnnThreshold];
      v6->_lrnnThreshold = v14;
      [(_SMTSiriIntendedInfoMutation *)v5 getLrnnScale];
      v6->_lrnnScale = v15;
      [(_SMTSiriIntendedInfoMutation *)v5 getLrnnOffset];
      v6->_lrnnOffset = v16;
      v6->_isGazeSignalPresent = [(_SMTSiriIntendedInfoMutation *)v5 getGazeSignal];
      [(_SMTSiriIntendedInfoMutation *)v5 getConversationalOdldScore];
      v6->_conversationalOdldScore = v17;
      [(_SMTSiriIntendedInfoMutation *)v5 getSpkrIdThreshold];
      v6->_spkrIdThreshold = v18;
      [(_SMTSiriIntendedInfoMutation *)v5 getNeuralCombinerScore];
      v6->_neuralCombinerScore = v19;
      [(_SMTSiriIntendedInfoMutation *)v5 getNeuralCombinerThreshold];
      v6->_neuralCombinerThreshold = v20;
    }

    else
    {
      v6 = [(SMTSiriIntendedInfo *)self copy];
    }
  }

  else
  {
    v6 = [(SMTSiriIntendedInfo *)self copy];
  }

  return v6;
}

@end