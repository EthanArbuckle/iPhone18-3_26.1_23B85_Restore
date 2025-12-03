@interface PRTypologyCandidate
+ (id)openTypologyCandidate:(id)candidate selectedRange:(_NSRange)range inString:(id)string;
- (PRTypologyCandidate)initWithString:(id)string range:(_NSRange)range;
- (id)description;
- (id)dictionaryRepresentation;
- (void)closeTypologyCandidateWithResult:(id)result;
- (void)dealloc;
@end

@implementation PRTypologyCandidate

- (PRTypologyCandidate)initWithString:(id)string range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v9.receiver = self;
  v9.super_class = PRTypologyCandidate;
  v7 = [(PRTypologyCandidate *)&v9 init];
  if (v7)
  {
    v7->_candidateString = [string copy];
    v7->_selectedRange.location = location;
    v7->_selectedRange.length = length;
    v7->_isOpen = 1;
    v7->_openTime = CFAbsoluteTimeGetCurrent();
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  if (self->_result)
  {
    v9.receiver = self;
    v9.super_class = PRTypologyCandidate;
    v4 = [(PRTypologyCandidate *)&v9 description];
    return [v3 stringWithFormat:@"%@: <%@> at %@->%@", v4, self->_candidateString, NSStringFromRange(self->_selectedRange), self->_result];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PRTypologyCandidate;
    v6 = [(PRTypologyCandidate *)&v8 description];
    return [v3 stringWithFormat:@"%@: <%@> at %@", v6, self->_candidateString, NSStringFromRange(self->_selectedRange), v7];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRTypologyCandidate;
  [(PRTypologyCandidate *)&v3 dealloc];
}

+ (id)openTypologyCandidate:(id)candidate selectedRange:(_NSRange)range inString:(id)string
{
  v5 = 0;
  if ((_enabledLogTypes & 0x400) != 0 && _typologyRecords && _typologyRecordsSerialQueue != 0)
  {
    v5 = [[PRTypologyCandidate alloc] initWithString:candidate range:range.location, range.length];
    [+[PRTypologyRecord currentTypologyRecord](PRTypologyRecord "currentTypologyRecord")];
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  candidateString = self->_candidateString;
  if (candidateString)
  {
    [dictionary setObject:candidateString forKey:@"CandidateString"];
  }

  [v4 setObject:NSStringFromRange(self->_selectedRange) forKey:@"SelectedRange"];
  v6 = self->_result;
  if (v6)
  {
    [v4 setObject:-[NSTextCheckingResult description](v6 forKey:{"description"), @"Result"}];
  }

  if (!self->_isOpen)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", self->_closeTime - self->_openTime), @"Time"}];
  }

  return v4;
}

- (void)closeTypologyCandidateWithResult:(id)result
{
  if (self->_isOpen)
  {
    self->_closeTime = CFAbsoluteTimeGetCurrent();
    self->_result = [result copy];
    self->_isOpen = 0;
  }
}

@end