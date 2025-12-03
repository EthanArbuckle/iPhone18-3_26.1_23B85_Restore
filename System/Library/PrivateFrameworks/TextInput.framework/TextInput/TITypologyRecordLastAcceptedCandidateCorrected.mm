@interface TITypologyRecordLastAcceptedCandidateCorrected
- (TITypologyRecordLastAcceptedCandidateCorrected)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TITypologyRecordLastAcceptedCandidateCorrected

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = TITypologyRecordLastAcceptedCandidateCorrected;
  [(TITypologyRecord *)&v3 encodeWithCoder:coder];
}

- (TITypologyRecordLastAcceptedCandidateCorrected)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = TITypologyRecordLastAcceptedCandidateCorrected;
  return [(TITypologyRecord *)&v4 initWithCoder:coder];
}

@end