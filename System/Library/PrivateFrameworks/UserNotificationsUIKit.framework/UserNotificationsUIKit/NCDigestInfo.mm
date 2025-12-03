@interface NCDigestInfo
- (BOOL)isEqual:(id)equal;
- (NCDigestInfo)initWithDigestInfo:(id)info;
- (id)_stringForDeliveryOrder:(int64_t)order;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (unint64_t)hash;
@end

@implementation NCDigestInfo

- (NCDigestInfo)initWithDigestInfo:(id)info
{
  infoCopy = info;
  v19.receiver = self;
  v19.super_class = NCDigestInfo;
  v5 = [(NCDigestInfo *)&v19 init];
  if (v5)
  {
    scheduleTime = [infoCopy scheduleTime];
    v7 = [scheduleTime copy];
    scheduleTime = v5->_scheduleTime;
    v5->_scheduleTime = v7;

    scheduleDate = [infoCopy scheduleDate];
    v10 = [scheduleDate copy];
    scheduleDate = v5->_scheduleDate;
    v5->_scheduleDate = v10;

    titleString = [infoCopy titleString];
    v13 = [titleString copy];
    titleString = v5->_titleString;
    v5->_titleString = v13;

    headerString = [infoCopy headerString];
    v16 = [headerString copy];
    headerString = v5->_headerString;
    v5->_headerString = v16;

    v5->_deliveryOrder = [infoCopy deliveryOrder];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  scheduleTime = [(NCDigestInfo *)self scheduleTime];
  scheduleTime2 = [equalCopy scheduleTime];
  if ([scheduleTime isEqual:scheduleTime2])
  {
    scheduleDate = [(NCDigestInfo *)self scheduleDate];
    scheduleDate2 = [equalCopy scheduleDate];
    if ([scheduleDate isEqualToDate:scheduleDate2])
    {
      titleString = [(NCDigestInfo *)self titleString];
      titleString2 = [equalCopy titleString];
      if ([titleString isEqualToString:titleString2])
      {
        headerString = [(NCDigestInfo *)self headerString];
        headerString2 = [equalCopy headerString];
        if ([headerString isEqualToString:headerString2])
        {
          deliveryOrder = [(NCDigestInfo *)self deliveryOrder];
          v14 = deliveryOrder == [equalCopy deliveryOrder];
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [NCMutableDigestInfo alloc];

  return [(NCDigestInfo *)v4 initWithDigestInfo:self];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(NCDigestInfo *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x277CF0C00];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  v7 = MEMORY[0x277CCACA8];
  scheduleTime = [(NCDigestInfo *)self scheduleTime];
  hour = [scheduleTime hour];
  scheduleTime2 = [(NCDigestInfo *)self scheduleTime];
  v11 = [v7 stringWithFormat:@"{h:%lu m:%lu}", hour, objc_msgSend(scheduleTime2, "minute")];

  v12 = objc_alloc_init(MEMORY[0x277CCA968]);
  systemLocale = [MEMORY[0x277CBEAF8] systemLocale];
  [v12 setLocale:systemLocale];

  [v12 setDateStyle:1];
  [v12 setTimeStyle:3];
  scheduleDate = [(NCDigestInfo *)self scheduleDate];
  v15 = [v12 stringFromDate:scheduleDate];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __54__NCDigestInfo_descriptionBuilderWithMultilinePrefix___block_invoke;
  v21[3] = &unk_278371788;
  v16 = v6;
  v22 = v16;
  v23 = v11;
  v24 = v15;
  selfCopy = self;
  v17 = v15;
  v18 = v11;
  [v16 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v21];

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

- (id)_stringForDeliveryOrder:(int64_t)order
{
  if (order > 2)
  {
    return 0;
  }

  else
  {
    return off_2783717A8[order];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(NCDigestInfo *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

@end