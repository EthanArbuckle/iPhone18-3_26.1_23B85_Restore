@interface CTXPCContextInfo
+ (id)csd_unknownContextInfoForAccountID:(id)a3;
- (BOOL)csd_isThumper;
- (BOOL)csd_isUnknown;
@end

@implementation CTXPCContextInfo

+ (id)csd_unknownContextInfoForAccountID:(id)a3
{
  v3 = a3;
  v4 = [v3 csd_UUIDv5];
  if (v4)
  {
    v5 = [[CTXPCContextInfo alloc] initWithUUID:v4 andAccountID:v3 andSlot:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)csd_isThumper
{
  v3 = [(CTXPCContextInfo *)self accountID];
  if ([v3 length])
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
  v3 = [(CTXPCContextInfo *)self accountID];
  v7 = [v3 length] && (objc_msgSend(v3, "csd_UUIDv5"), v4 = objc_claimAutoreleasedReturnValue(), -[CTXPCContextInfo uuid](self, "uuid"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "isEqual:", v5), v5, v4, v6) && -[CTXPCContextInfo slotID](self, "slotID") == 0;

  return v7;
}

@end