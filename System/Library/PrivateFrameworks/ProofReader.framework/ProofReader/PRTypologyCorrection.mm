@interface PRTypologyCorrection
+ (id)openTypologyCorrectionWithString:(id)a3 range:(_NSRange)a4 inString:(id)a5;
- (PRTypologyCorrection)initWithString:(id)a3 range:(_NSRange)a4;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addTypologyCorrectionLog:(id)a3;
- (void)closeTypologyCorrectionWithResult:(id)a3;
- (void)dealloc;
@end

@implementation PRTypologyCorrection

- (PRTypologyCorrection)initWithString:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v9.receiver = self;
  v9.super_class = PRTypologyCorrection;
  v7 = [(PRTypologyCorrection *)&v9 init];
  if (v7)
  {
    v7->_misspelling = [a3 copy];
    v7->_misspelledRange.location = location;
    v7->_misspelledRange.length = length;
    v7->_logs = objc_alloc_init(MEMORY[0x1E696AD60]);
    v7->_isOpen = 1;
    v7->_openTime = CFAbsoluteTimeGetCurrent();
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  if (self->_correctionResult)
  {
    v9.receiver = self;
    v9.super_class = PRTypologyCorrection;
    v4 = [(PRTypologyCorrection *)&v9 description];
    return [v3 stringWithFormat:@"%@: <%@> at %@->%@", v4, self->_misspelling, NSStringFromRange(self->_misspelledRange), self->_correctionResult];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PRTypologyCorrection;
    v6 = [(PRTypologyCorrection *)&v8 description];
    return [v3 stringWithFormat:@"%@: <%@> at %@ no correction", v6, self->_misspelling, NSStringFromRange(self->_misspelledRange), v7];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRTypologyCorrection;
  [(PRTypologyCorrection *)&v3 dealloc];
}

+ (id)openTypologyCorrectionWithString:(id)a3 range:(_NSRange)a4 inString:(id)a5
{
  v5 = 0;
  if ((_enabledLogTypes & 0x400) != 0 && _typologyRecords && _typologyRecordsSerialQueue != 0)
  {
    v5 = [[PRTypologyCorrection alloc] initWithString:a3 range:a4.location, a4.length];
    [+[PRTypologyRecord currentTypologyRecord](PRTypologyRecord "currentTypologyRecord")];
  }

  return v5;
}

- (void)addTypologyCorrectionLog:(id)a3
{
  if (self->_isOpen)
  {
    v3 = a3;
    if (a3)
    {
      v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:a3 locale:0 arguments:&v5];
    }

    [(NSMutableString *)self->_logs appendString:v3];
    [(NSMutableString *)self->_logs appendString:@"\n"];
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  misspelling = self->_misspelling;
  if (misspelling)
  {
    [v3 setObject:misspelling forKey:@"Misspelling"];
  }

  [v4 setObject:NSStringFromRange(self->_misspelledRange) forKey:@"MisspelledRange"];
  logs = self->_logs;
  if (logs)
  {
    [v4 setObject:logs forKey:@"Logs"];
  }

  correctionResult = self->_correctionResult;
  if (correctionResult)
  {
    [v4 setObject:-[NSTextCheckingResult description](correctionResult forKey:{"description"), @"CorrectionResult"}];
  }

  if (!self->_isOpen)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", self->_closeTime - self->_openTime), @"Time"}];
  }

  return v4;
}

- (void)closeTypologyCorrectionWithResult:(id)a3
{
  if (self->_isOpen)
  {
    self->_closeTime = CFAbsoluteTimeGetCurrent();
    self->_correctionResult = [a3 copy];
    self->_isOpen = 0;
  }
}

@end