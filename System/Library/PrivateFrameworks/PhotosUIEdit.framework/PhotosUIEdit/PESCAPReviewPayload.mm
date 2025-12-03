@interface PESCAPReviewPayload
+ (id)legacyPayloadWithReason:(int64_t)reason;
- (PESCAPReviewPayload)initWithActionType:(int64_t)type reason:(int64_t)reason score:(double)score adjustmentsDescription:(id)description;
- (id)debugDescription;
@end

@implementation PESCAPReviewPayload

- (id)debugDescription
{
  if ([(PESCAPReviewPayload *)self actionType]== 1)
  {
    v3 = MEMORY[0x277CCACA8];
    actionType = [(PESCAPReviewPayload *)self actionType];
    v5 = @"Smart C&P";
    if (!actionType)
    {
      v5 = @"Legacy C&P";
    }

    v6 = v5;
    goto LABEL_10;
  }

  reason = [(PESCAPReviewPayload *)self reason];
  if ((reason - 1) > 6)
  {
    v8 = @"Unknown";
  }

  else
  {
    v8 = off_279A308C0[reason - 1];
  }

  v6 = v8;
  if ([(PESCAPReviewPayload *)self reason]== 6)
  {
    v3 = MEMORY[0x277CCACA8];
LABEL_10:
    [(PESCAPReviewPayload *)self score];
    v10 = [v3 stringWithFormat:@"%@ - %f", v6, v9];
    goto LABEL_12;
  }

  v10 = v6;
LABEL_12:
  v11 = v10;

  return v11;
}

- (PESCAPReviewPayload)initWithActionType:(int64_t)type reason:(int64_t)reason score:(double)score adjustmentsDescription:(id)description
{
  descriptionCopy = description;
  v15.receiver = self;
  v15.super_class = PESCAPReviewPayload;
  v12 = [(PESCAPReviewPayload *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_actionType = type;
    v12->_reason = reason;
    v12->_score = score;
    objc_storeStrong(&v12->_adjustmentsDescription, description);
  }

  return v13;
}

+ (id)legacyPayloadWithReason:(int64_t)reason
{
  v3 = [[self alloc] initWithActionType:0 reason:reason score:0 adjustmentsDescription:-1.0];

  return v3;
}

@end