@interface PESCAPReviewPayload
+ (id)legacyPayloadWithReason:(int64_t)a3;
- (PESCAPReviewPayload)initWithActionType:(int64_t)a3 reason:(int64_t)a4 score:(double)a5 adjustmentsDescription:(id)a6;
- (id)debugDescription;
@end

@implementation PESCAPReviewPayload

- (id)debugDescription
{
  if ([(PESCAPReviewPayload *)self actionType]== 1)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [(PESCAPReviewPayload *)self actionType];
    v5 = @"Smart C&P";
    if (!v4)
    {
      v5 = @"Legacy C&P";
    }

    v6 = v5;
    goto LABEL_10;
  }

  v7 = [(PESCAPReviewPayload *)self reason];
  if ((v7 - 1) > 6)
  {
    v8 = @"Unknown";
  }

  else
  {
    v8 = off_279A308C0[v7 - 1];
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

- (PESCAPReviewPayload)initWithActionType:(int64_t)a3 reason:(int64_t)a4 score:(double)a5 adjustmentsDescription:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = PESCAPReviewPayload;
  v12 = [(PESCAPReviewPayload *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_actionType = a3;
    v12->_reason = a4;
    v12->_score = a5;
    objc_storeStrong(&v12->_adjustmentsDescription, a6);
  }

  return v13;
}

+ (id)legacyPayloadWithReason:(int64_t)a3
{
  v3 = [[a1 alloc] initWithActionType:0 reason:a3 score:0 adjustmentsDescription:-1.0];

  return v3;
}

@end