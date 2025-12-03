@interface PRTypologyCorrection
+ (id)openTypologyCorrectionWithString:(id)string range:(_NSRange)range inString:(id)inString;
- (PRTypologyCorrection)initWithString:(id)string range:(_NSRange)range;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addTypologyCorrectionLog:(id)log;
- (void)closeTypologyCorrectionWithResult:(id)result;
- (void)dealloc;
@end

@implementation PRTypologyCorrection

- (PRTypologyCorrection)initWithString:(id)string range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v9.receiver = self;
  v9.super_class = PRTypologyCorrection;
  v7 = [(PRTypologyCorrection *)&v9 init];
  if (v7)
  {
    v7->_misspelling = [string copy];
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

+ (id)openTypologyCorrectionWithString:(id)string range:(_NSRange)range inString:(id)inString
{
  v5 = 0;
  if ((_enabledLogTypes & 0x400) != 0 && _typologyRecords && _typologyRecordsSerialQueue != 0)
  {
    v5 = [[PRTypologyCorrection alloc] initWithString:string range:range.location, range.length];
    [+[PRTypologyRecord currentTypologyRecord](PRTypologyRecord "currentTypologyRecord")];
  }

  return v5;
}

- (void)addTypologyCorrectionLog:(id)log
{
  if (self->_isOpen)
  {
    logCopy = log;
    if (log)
    {
      logCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:log locale:0 arguments:&v5];
    }

    [(NSMutableString *)self->_logs appendString:logCopy];
    [(NSMutableString *)self->_logs appendString:@"\n"];
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  misspelling = self->_misspelling;
  if (misspelling)
  {
    [dictionary setObject:misspelling forKey:@"Misspelling"];
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

- (void)closeTypologyCorrectionWithResult:(id)result
{
  if (self->_isOpen)
  {
    self->_closeTime = CFAbsoluteTimeGetCurrent();
    self->_correctionResult = [result copy];
    self->_isOpen = 0;
  }
}

@end