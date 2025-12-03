@interface CTXPCContextInfo
+ (id)csd_unknownContextInfoForAccountID:(id)d;
- (BOOL)csd_isThumper;
- (BOOL)csd_isUnknown;
@end

@implementation CTXPCContextInfo

+ (id)csd_unknownContextInfoForAccountID:(id)d
{
  dCopy = d;
  csd_UUIDv5 = [dCopy csd_UUIDv5];
  if (csd_UUIDv5)
  {
    v5 = [[CTXPCContextInfo alloc] initWithUUID:csd_UUIDv5 andAccountID:dCopy andSlot:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)csd_isThumper
{
  accountID = [(CTXPCContextInfo *)self accountID];
  if ([accountID length])
  {
    v4 = [(CTXPCContextInfo *)self slotID]== 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)csd_isUnknown
{
  accountID = [(CTXPCContextInfo *)self accountID];
  v7 = [accountID length] && (objc_msgSend(accountID, "csd_UUIDv5"), v4 = objc_claimAutoreleasedReturnValue(), -[CTXPCContextInfo uuid](self, "uuid"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "isEqual:", v5), v5, v4, v6) && -[CTXPCContextInfo slotID](self, "slotID") == 0;

  return v7;
}

@end