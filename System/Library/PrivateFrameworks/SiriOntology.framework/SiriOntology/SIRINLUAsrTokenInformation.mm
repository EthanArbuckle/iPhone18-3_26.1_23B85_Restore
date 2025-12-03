@interface SIRINLUAsrTokenInformation
- (SIRINLUAsrTokenInformation)initWithCoder:(id)coder;
- (SIRINLUAsrTokenInformation)initWithPostITNText:(id)text phoneSequence:(id)sequence ipaPhoneSequence:(id)phoneSequence addSpaceAfter:(BOOL)after removeSpaceAfter:(BOOL)spaceAfter removeSpaceBefore:(BOOL)before confidenceScore:(double)score beginIndex:(unsigned int)self0 endIndex:(unsigned int)self1;
- (SIRINLUAsrTokenInformation)initWithPostITNText:(id)text phoneSequence:(id)sequence ipaPhoneSequence:(id)phoneSequence addSpaceAfter:(BOOL)after removeSpaceAfter:(BOOL)spaceAfter removeSpaceBefore:(BOOL)before confidenceScore:(double)score beginIndex:(unsigned int)self0 endIndex:(unsigned int)self1 startMilliSeconds:(int)self2 endMilliSeconds:(int)self3;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIRINLUAsrTokenInformation

- (id)description
{
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i", -[SIRINLUAsrTokenInformation addSpaceAfter](self, "addSpaceAfter")];
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i", -[SIRINLUAsrTokenInformation removeSpaceAfter](self, "removeSpaceAfter")];
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i", -[SIRINLUAsrTokenInformation removeSpaceBefore](self, "removeSpaceBefore")];
  v3 = MEMORY[0x1E696AEC0];
  [(SIRINLUAsrTokenInformation *)self confidenceScore];
  v15 = [v3 stringWithFormat:@"%f", v4];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", -[SIRINLUAsrTokenInformation beginIndex](self, "beginIndex")];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", -[SIRINLUAsrTokenInformation endIndex](self, "endIndex")];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", -[SIRINLUAsrTokenInformation startMilliSeconds](self, "startMilliSeconds")];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", -[SIRINLUAsrTokenInformation endMilliSeconds](self, "endMilliSeconds")];
  v9 = MEMORY[0x1E696AEC0];
  postITNText = [(SIRINLUAsrTokenInformation *)self postITNText];
  phoneSequence = [(SIRINLUAsrTokenInformation *)self phoneSequence];
  ipaPhoneSequence = [(SIRINLUAsrTokenInformation *)self ipaPhoneSequence];
  v13 = [v9 stringWithFormat:@"{AsrTokenInformation:\n  postITNText: %@\n  phoneSequence: %@\n  ipaPhoneSequence: %@\n  addSpaceAfter: %@\n  removeSpaceAfter: %@\n  removeSpaceBefore: %@\n  confidenceScore: %@\n  beginIndex: %@\n  endIndex: %@\n  startMilliSeconds: %@\n  endMilliSeconds: %@\n}", postITNText, phoneSequence, ipaPhoneSequence, v18, v17, v16, v15, v5, v6, v7, v8];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  postITNText = [(SIRINLUAsrTokenInformation *)self postITNText];
  [coderCopy encodeObject:postITNText forKey:@"postITNText"];

  phoneSequence = [(SIRINLUAsrTokenInformation *)self phoneSequence];
  [coderCopy encodeObject:phoneSequence forKey:@"phoneSequence"];

  ipaPhoneSequence = [(SIRINLUAsrTokenInformation *)self ipaPhoneSequence];
  [coderCopy encodeObject:ipaPhoneSequence forKey:@"ipaPhoneSequence"];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_addSpaceAfter];
  [coderCopy encodeObject:v15 forKey:@"addSpaceAfter"];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_removeSpaceAfter];
  [coderCopy encodeObject:v8 forKey:@"removeSpaceAfter"];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_removeSpaceBefore];
  [coderCopy encodeObject:v9 forKey:@"removeSpaceBefore"];
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_confidenceScore];
  [coderCopy encodeObject:v10 forKey:@"confidenceScore"];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_beginIndex];
  [coderCopy encodeObject:v11 forKey:@"beginIndex"];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_endIndex];
  [coderCopy encodeObject:v12 forKey:@"endIndex"];
  v13 = [MEMORY[0x1E696AD98] numberWithInt:self->_startMilliSeconds];
  [coderCopy encodeObject:v13 forKey:@"startMilliSeconds"];
  v14 = [MEMORY[0x1E696AD98] numberWithInt:self->_endMilliSeconds];
  [coderCopy encodeObject:v14 forKey:@"endMilliSeconds"];
}

- (SIRINLUAsrTokenInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = SIRINLUAsrTokenInformation;
  v5 = [(SIRINLUAsrTokenInformation *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"postITNText"];
    postITNText = v5->_postITNText;
    v5->_postITNText = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneSequence"];
    phoneSequence = v5->_phoneSequence;
    v5->_phoneSequence = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ipaPhoneSequence"];
    ipaPhoneSequence = v5->_ipaPhoneSequence;
    v5->_ipaPhoneSequence = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"addSpaceAfter"];
    v5->_addSpaceAfter = [v12 BOOLValue];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"removeSpaceAfter"];
    v5->_removeSpaceAfter = [v13 BOOLValue];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"removeSpaceBefore"];
    v5->_removeSpaceBefore = [v14 BOOLValue];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"confidenceScore"];
    [v15 doubleValue];
    v5->_confidenceScore = v16;
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"beginIndex"];
    v5->_beginIndex = [v17 unsignedIntValue];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endIndex"];
    v5->_endIndex = [v18 unsignedIntValue];
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startMilliSeconds"];
    v5->_startMilliSeconds = [v19 intValue];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endMilliSeconds"];
    v5->_endMilliSeconds = [v20 intValue];
  }

  return v5;
}

- (SIRINLUAsrTokenInformation)initWithPostITNText:(id)text phoneSequence:(id)sequence ipaPhoneSequence:(id)phoneSequence addSpaceAfter:(BOOL)after removeSpaceAfter:(BOOL)spaceAfter removeSpaceBefore:(BOOL)before confidenceScore:(double)score beginIndex:(unsigned int)self0 endIndex:(unsigned int)self1
{
  textCopy = text;
  sequenceCopy = sequence;
  phoneSequenceCopy = phoneSequence;
  v25.receiver = self;
  v25.super_class = SIRINLUAsrTokenInformation;
  v22 = [(SIRINLUAsrTokenInformation *)&v25 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_postITNText, text);
    objc_storeStrong(&v23->_phoneSequence, sequence);
    objc_storeStrong(&v23->_ipaPhoneSequence, phoneSequence);
    v23->_addSpaceAfter = after;
    v23->_removeSpaceAfter = spaceAfter;
    v23->_removeSpaceBefore = before;
    v23->_confidenceScore = score;
    v23->_beginIndex = index;
    v23->_endIndex = endIndex;
  }

  return v23;
}

- (SIRINLUAsrTokenInformation)initWithPostITNText:(id)text phoneSequence:(id)sequence ipaPhoneSequence:(id)phoneSequence addSpaceAfter:(BOOL)after removeSpaceAfter:(BOOL)spaceAfter removeSpaceBefore:(BOOL)before confidenceScore:(double)score beginIndex:(unsigned int)self0 endIndex:(unsigned int)self1 startMilliSeconds:(int)self2 endMilliSeconds:(int)self3
{
  textCopy = text;
  sequenceCopy = sequence;
  phoneSequenceCopy = phoneSequence;
  v27.receiver = self;
  v27.super_class = SIRINLUAsrTokenInformation;
  v24 = [(SIRINLUAsrTokenInformation *)&v27 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_postITNText, text);
    objc_storeStrong(&v25->_phoneSequence, sequence);
    objc_storeStrong(&v25->_ipaPhoneSequence, phoneSequence);
    v25->_addSpaceAfter = after;
    v25->_removeSpaceAfter = spaceAfter;
    v25->_removeSpaceBefore = before;
    v25->_confidenceScore = score;
    v25->_beginIndex = index;
    v25->_endIndex = endIndex;
    v25->_startMilliSeconds = seconds;
    v25->_endMilliSeconds = milliSeconds;
  }

  return v25;
}

@end