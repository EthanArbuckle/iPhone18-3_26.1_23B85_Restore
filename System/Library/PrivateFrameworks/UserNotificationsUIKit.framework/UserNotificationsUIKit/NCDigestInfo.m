@interface NCDigestInfo
- (BOOL)isEqual:(id)a3;
- (NCDigestInfo)initWithDigestInfo:(id)a3;
- (id)_stringForDeliveryOrder:(int64_t)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (unint64_t)hash;
@end

@implementation NCDigestInfo

- (NCDigestInfo)initWithDigestInfo:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = NCDigestInfo;
  v5 = [(NCDigestInfo *)&v19 init];
  if (v5)
  {
    v6 = [v4 scheduleTime];
    v7 = [v6 copy];
    scheduleTime = v5->_scheduleTime;
    v5->_scheduleTime = v7;

    v9 = [v4 scheduleDate];
    v10 = [v9 copy];
    scheduleDate = v5->_scheduleDate;
    v5->_scheduleDate = v10;

    v12 = [v4 titleString];
    v13 = [v12 copy];
    titleString = v5->_titleString;
    v5->_titleString = v13;

    v15 = [v4 headerString];
    v16 = [v15 copy];
    headerString = v5->_headerString;
    v5->_headerString = v16;

    v5->_deliveryOrder = [v4 deliveryOrder];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(NCDigestInfo *)self scheduleTime];
  v6 = [v4 scheduleTime];
  if ([v5 isEqual:v6])
  {
    v7 = [(NCDigestInfo *)self scheduleDate];
    v8 = [v4 scheduleDate];
    if ([v7 isEqualToDate:v8])
    {
      v9 = [(NCDigestInfo *)self titleString];
      v10 = [v4 titleString];
      if ([v9 isEqualToString:v10])
      {
        v11 = [(NCDigestInfo *)self headerString];
        v12 = [v4 headerString];
        if ([v11 isEqualToString:v12])
        {
          v13 = [(NCDigestInfo *)self deliveryOrder];
          v14 = v13 == [v4 deliveryOrder];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSDateComponents *)self->_scheduleTime hash];
  v4 = [(NSDate *)self->_scheduleDate hash]+ v3;
  v5 = [(NSString *)self->_titleString hash];
  return v4 + v5 + [(NSString *)self->_headerString hash]+ self->_deliveryOrder;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [NCMutableDigestInfo alloc];

  return [(NCDigestInfo *)v4 initWithDigestInfo:self];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(NCDigestInfo *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x277CF0C00];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  v7 = MEMORY[0x277CCACA8];
  v8 = [(NCDigestInfo *)self scheduleTime];
  v9 = [v8 hour];
  v10 = [(NCDigestInfo *)self scheduleTime];
  v11 = [v7 stringWithFormat:@"{h:%lu m:%lu}", v9, objc_msgSend(v10, "minute")];

  v12 = objc_alloc_init(MEMORY[0x277CCA968]);
  v13 = [MEMORY[0x277CBEAF8] systemLocale];
  [v12 setLocale:v13];

  [v12 setDateStyle:1];
  [v12 setTimeStyle:3];
  v14 = [(NCDigestInfo *)self scheduleDate];
  v15 = [v12 stringFromDate:v14];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __54__NCDigestInfo_descriptionBuilderWithMultilinePrefix___block_invoke;
  v21[3] = &unk_278371788;
  v16 = v6;
  v22 = v16;
  v23 = v11;
  v24 = v15;
  v25 = self;
  v17 = v15;
  v18 = v11;
  [v16 appendBodySectionWithName:0 multilinePrefix:v5 block:v21];

  v19 = v16;
  return v16;
}

void __54__NCDigestInfo_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendString:*(a1 + 40) withName:@"scheduleTime"];
  [*(a1 + 32) appendString:*(a1 + 48) withName:@"scheduleDate"];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 56) titleString];
  [v2 appendString:v3 withName:@"titleString"];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 56) headerString];
  [v4 appendString:v5 withName:@"headerString"];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 56) _stringForDeliveryOrder:{objc_msgSend(*(a1 + 56), "deliveryOrder")}];
  [v6 appendString:v7 withName:@"deliveryOrder"];
}

- (id)_stringForDeliveryOrder:(int64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_2783717A8[a3];
  }
}

- (id)succinctDescription
{
  v2 = [(NCDigestInfo *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

@end