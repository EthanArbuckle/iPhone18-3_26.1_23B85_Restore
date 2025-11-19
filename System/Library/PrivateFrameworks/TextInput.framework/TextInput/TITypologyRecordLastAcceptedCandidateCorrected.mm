@interface TITypologyRecordLastAcceptedCandidateCorrected
- (TITypologyRecordLastAcceptedCandidateCorrected)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TITypologyRecordLastAcceptedCandidateCorrected

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = TITypologyRecordLastAcceptedCandidateCorrected;
  [(TITypologyRecord *)&v3 encodeWithCoder:a3];
}

- (TITypologyRecordLastAcceptedCandidateCorrected)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = TITypologyRecordLastAcceptedCandidateCorrected;
  return [(TITypologyRecord *)&v4 initWithCoder:a3];
}

@end