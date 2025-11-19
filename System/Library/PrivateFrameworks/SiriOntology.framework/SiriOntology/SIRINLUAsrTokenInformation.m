@interface SIRINLUAsrTokenInformation
- (SIRINLUAsrTokenInformation)initWithCoder:(id)a3;
- (SIRINLUAsrTokenInformation)initWithPostITNText:(id)a3 phoneSequence:(id)a4 ipaPhoneSequence:(id)a5 addSpaceAfter:(BOOL)a6 removeSpaceAfter:(BOOL)a7 removeSpaceBefore:(BOOL)a8 confidenceScore:(double)a9 beginIndex:(unsigned int)a10 endIndex:(unsigned int)a11;
- (SIRINLUAsrTokenInformation)initWithPostITNText:(id)a3 phoneSequence:(id)a4 ipaPhoneSequence:(id)a5 addSpaceAfter:(BOOL)a6 removeSpaceAfter:(BOOL)a7 removeSpaceBefore:(BOOL)a8 confidenceScore:(double)a9 beginIndex:(unsigned int)a10 endIndex:(unsigned int)a11 startMilliSeconds:(int)a12 endMilliSeconds:(int)a13;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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
  v10 = [(SIRINLUAsrTokenInformation *)self postITNText];
  v11 = [(SIRINLUAsrTokenInformation *)self phoneSequence];
  v12 = [(SIRINLUAsrTokenInformation *)self ipaPhoneSequence];
  v13 = [v9 stringWithFormat:@"{AsrTokenInformation:\n  postITNText: %@\n  phoneSequence: %@\n  ipaPhoneSequence: %@\n  addSpaceAfter: %@\n  removeSpaceAfter: %@\n  removeSpaceBefore: %@\n  confidenceScore: %@\n  beginIndex: %@\n  endIndex: %@\n  startMilliSeconds: %@\n  endMilliSeconds: %@\n}", v10, v11, v12, v18, v17, v16, v15, v5, v6, v7, v8];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SIRINLUAsrTokenInformation *)self postITNText];
  [v4 encodeObject:v5 forKey:@"postITNText"];

  v6 = [(SIRINLUAsrTokenInformation *)self phoneSequence];
  [v4 encodeObject:v6 forKey:@"phoneSequence"];

  v7 = [(SIRINLUAsrTokenInformation *)self ipaPhoneSequence];
  [v4 encodeObject:v7 forKey:@"ipaPhoneSequence"];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_addSpaceAfter];
  [v4 encodeObject:v15 forKey:@"addSpaceAfter"];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_removeSpaceAfter];
  [v4 encodeObject:v8 forKey:@"removeSpaceAfter"];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_removeSpaceBefore];
  [v4 encodeObject:v9 forKey:@"removeSpaceBefore"];
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_confidenceScore];
  [v4 encodeObject:v10 forKey:@"confidenceScore"];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_beginIndex];
  [v4 encodeObject:v11 forKey:@"beginIndex"];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_endIndex];
  [v4 encodeObject:v12 forKey:@"endIndex"];
  v13 = [MEMORY[0x1E696AD98] numberWithInt:self->_startMilliSeconds];
  [v4 encodeObject:v13 forKey:@"startMilliSeconds"];
  v14 = [MEMORY[0x1E696AD98] numberWithInt:self->_endMilliSeconds];
  [v4 encodeObject:v14 forKey:@"endMilliSeconds"];
}

- (SIRINLUAsrTokenInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = SIRINLUAsrTokenInformation;
  v5 = [(SIRINLUAsrTokenInformation *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"postITNText"];
    postITNText = v5->_postITNText;
    v5->_postITNText = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneSequence"];
    phoneSequence = v5->_phoneSequence;
    v5->_phoneSequence = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ipaPhoneSequence"];
    ipaPhoneSequence = v5->_ipaPhoneSequence;
    v5->_ipaPhoneSequence = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"addSpaceAfter"];
    v5->_addSpaceAfter = [v12 BOOLValue];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"removeSpaceAfter"];
    v5->_removeSpaceAfter = [v13 BOOLValue];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"removeSpaceBefore"];
    v5->_removeSpaceBefore = [v14 BOOLValue];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"confidenceScore"];
    [v15 doubleValue];
    v5->_confidenceScore = v16;
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"beginIndex"];
    v5->_beginIndex = [v17 unsignedIntValue];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endIndex"];
    v5->_endIndex = [v18 unsignedIntValue];
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startMilliSeconds"];
    v5->_startMilliSeconds = [v19 intValue];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endMilliSeconds"];
    v5->_endMilliSeconds = [v20 intValue];
  }

  return v5;
}

- (SIRINLUAsrTokenInformation)initWithPostITNText:(id)a3 phoneSequence:(id)a4 ipaPhoneSequence:(id)a5 addSpaceAfter:(BOOL)a6 removeSpaceAfter:(BOOL)a7 removeSpaceBefore:(BOOL)a8 confidenceScore:(double)a9 beginIndex:(unsigned int)a10 endIndex:(unsigned int)a11
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v25.receiver = self;
  v25.super_class = SIRINLUAsrTokenInformation;
  v22 = [(SIRINLUAsrTokenInformation *)&v25 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_postITNText, a3);
    objc_storeStrong(&v23->_phoneSequence, a4);
    objc_storeStrong(&v23->_ipaPhoneSequence, a5);
    v23->_addSpaceAfter = a6;
    v23->_removeSpaceAfter = a7;
    v23->_removeSpaceBefore = a8;
    v23->_confidenceScore = a9;
    v23->_beginIndex = a10;
    v23->_endIndex = a11;
  }

  return v23;
}

- (SIRINLUAsrTokenInformation)initWithPostITNText:(id)a3 phoneSequence:(id)a4 ipaPhoneSequence:(id)a5 addSpaceAfter:(BOOL)a6 removeSpaceAfter:(BOOL)a7 removeSpaceBefore:(BOOL)a8 confidenceScore:(double)a9 beginIndex:(unsigned int)a10 endIndex:(unsigned int)a11 startMilliSeconds:(int)a12 endMilliSeconds:(int)a13
{
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v27.receiver = self;
  v27.super_class = SIRINLUAsrTokenInformation;
  v24 = [(SIRINLUAsrTokenInformation *)&v27 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_postITNText, a3);
    objc_storeStrong(&v25->_phoneSequence, a4);
    objc_storeStrong(&v25->_ipaPhoneSequence, a5);
    v25->_addSpaceAfter = a6;
    v25->_removeSpaceAfter = a7;
    v25->_removeSpaceBefore = a8;
    v25->_confidenceScore = a9;
    v25->_beginIndex = a10;
    v25->_endIndex = a11;
    v25->_startMilliSeconds = a12;
    v25->_endMilliSeconds = a13;
  }

  return v25;
}

@end