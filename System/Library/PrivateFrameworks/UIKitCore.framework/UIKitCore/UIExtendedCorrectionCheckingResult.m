@interface UIExtendedCorrectionCheckingResult
- (UIExtendedCorrectionCheckingResult)initWithRange:(_NSRange)a3 replacementString:(id)a4 sentenceRange:(_NSRange)a5 detail:(id)a6;
- (_NSRange)sentenceRange;
@end

@implementation UIExtendedCorrectionCheckingResult

- (UIExtendedCorrectionCheckingResult)initWithRange:(_NSRange)a3 replacementString:(id)a4 sentenceRange:(_NSRange)a5 detail:(id)a6
{
  length = a5.length;
  location = a5.location;
  v9 = a3.length;
  v10 = a3.location;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = UIExtendedCorrectionCheckingResult;
  v13 = [(NSSubstitutionCheckingResult *)&v18 initWithRange:v10 replacementString:v9, a4];
  v14 = v13;
  if (v13)
  {
    v13->_sentenceRange.location = location;
    v13->_sentenceRange.length = length;
    v15 = [v12 copy];
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