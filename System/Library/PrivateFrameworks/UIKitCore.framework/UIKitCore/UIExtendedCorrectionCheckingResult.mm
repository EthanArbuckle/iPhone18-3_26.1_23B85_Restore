@interface UIExtendedCorrectionCheckingResult
- (UIExtendedCorrectionCheckingResult)initWithRange:(_NSRange)range replacementString:(id)string sentenceRange:(_NSRange)sentenceRange detail:(id)detail;
- (_NSRange)sentenceRange;
@end

@implementation UIExtendedCorrectionCheckingResult

- (UIExtendedCorrectionCheckingResult)initWithRange:(_NSRange)range replacementString:(id)string sentenceRange:(_NSRange)sentenceRange detail:(id)detail
{
  length = sentenceRange.length;
  location = sentenceRange.location;
  v9 = range.length;
  v10 = range.location;
  detailCopy = detail;
  v18.receiver = self;
  v18.super_class = UIExtendedCorrectionCheckingResult;
  string = [(NSSubstitutionCheckingResult *)&v18 initWithRange:v10 replacementString:v9, string];
  v14 = string;
  if (string)
  {
    string->_sentenceRange.location = location;
    string->_sentenceRange.length = length;
    v15 = [detailCopy copy];
    detail = v14->_detail;
    v14->_detail = v15;
  }

  return v14;
}

- (_NSRange)sentenceRange
{
  p_sentenceRange = &self->_sentenceRange;
  location = self->_sentenceRange.location;
  length = p_sentenceRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end