@interface PRRecordedCorrection
- (PRRecordedCorrection)initWithCorrectionResult:(id)a3 correctedString:(id)a4;
- (id)description;
- (void)dealloc;
@end

@implementation PRRecordedCorrection

- (PRRecordedCorrection)initWithCorrectionResult:(id)a3 correctedString:(id)a4
{
  v8.receiver = self;
  v8.super_class = PRRecordedCorrection;
  v6 = [(PRRecordedCorrection *)&v8 init];
  if (v6)
  {
    v6->_correctionResult = [a3 copy];
    v6->_correctedString = [a4 copy];
    v6->_hasRecordedResponse = 0;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRRecordedCorrection;
  [(PRRecordedCorrection *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = PRRecordedCorrection;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@->%@ %d", -[PRRecordedCorrection description](&v3, sel_description), self->_correctedString, self->_correctionResult, self->_hasRecordedResponse];
}

@end