@interface SSResponseAction
+ (id)_actionWithActionType:(id)type;
+ (id)_checkInAppQueueActionWithClientID:(id)d environment:(id)environment;
+ (id)_dialogActionWithDialog:(id)dialog;
+ (id)_dialogActionWithTouchIDDialog:(id)dialog;
+ (id)_invalidateURLBagsAction;
+ (id)_selectFooterActionWithSection:(id)section;
+ (id)_setActiveAccountActionWithAccount:(id)account;
+ (id)_setCreditsActionWithCredits:(id)credits account:(id)account;
+ (id)_urlActionWithType:(id)type URL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation SSResponseAction

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong((v5 + 8), self->_account);
  v6 = [(NSString *)self->_actionType copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_clientIdentifier copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_creditsString copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  objc_storeStrong((v5 + 40), self->_dialog);
  v12 = [(NSString *)self->_footerSection copyWithZone:zone];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  v14 = [(NSURL *)self->_url copyWithZone:zone];
  v15 = *(v5 + 56);
  *(v5 + 56) = v14;

  *(v5 + 64) = self->_urlBagType;
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = SSResponseAction;
  v4 = [(SSResponseAction *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: %@", v4, self->_actionType];

  return v5;
}

+ (id)_actionWithActionType:(id)type
{
  typeCopy = type;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [typeCopy copy];

  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

+ (id)_checkInAppQueueActionWithClientID:(id)d environment:(id)environment
{
  environmentCopy = environment;
  dCopy = d;
  v7 = objc_alloc_init(objc_opt_class());
  v8 = v7[2];
  v7[2] = @"SSResponseActionTypeCheckInAppPurchaseQueue";

  v9 = [dCopy copy];
  v10 = v7[3];
  v7[3] = v9;

  LODWORD(dCopy) = [environmentCopy isEqualToString:@"sandbox"];
  v7[8] = dCopy;

  return v7;
}

+ (id)_dialogActionWithDialog:(id)dialog
{
  dialogCopy = dialog;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4[2];
  v4[2] = @"SSResponseActionTypeShowDialog";

  v6 = v4[5];
  v4[5] = dialogCopy;

  return v4;
}

+ (id)_dialogActionWithTouchIDDialog:(id)dialog
{
  dialogCopy = dialog;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4[2];
  v4[2] = @"SSResponseActionTypeShowTouchIDDialog";

  v6 = v4[5];
  v4[5] = dialogCopy;

  return v4;
}

+ (id)_invalidateURLBagsAction
{
  v2 = objc_alloc_init(objc_opt_class());
  v3 = v2[2];
  v2[2] = @"SSResponseActionTypeInvalidateURLBags";

  return v2;
}

+ (id)_selectFooterActionWithSection:(id)section
{
  sectionCopy = section;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4[2];
  v4[2] = @"SSResponseActionTypeSelectFooterSection";

  v6 = [sectionCopy copy];
  v7 = v4[6];
  v4[6] = v6;

  return v4;
}

+ (id)_setActiveAccountActionWithAccount:(id)account
{
  accountCopy = account;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4[2];
  v4[2] = @"SSResponseActionTypeSetActiveAccount";

  v6 = v4[1];
  v4[1] = accountCopy;

  return v4;
}

+ (id)_setCreditsActionWithCredits:(id)credits account:(id)account
{
  accountCopy = account;
  creditsCopy = credits;
  v7 = objc_alloc_init(objc_opt_class());
  v8 = v7[2];
  v7[2] = @"SSResponseActionTypeSetAccountCredits";

  v9 = v7[1];
  v7[1] = accountCopy;
  v10 = accountCopy;

  v11 = [creditsCopy copy];
  v12 = v7[4];
  v7[4] = v11;

  return v7;
}

+ (id)_urlActionWithType:(id)type URL:(id)l
{
  lCopy = l;
  typeCopy = type;
  v7 = objc_alloc_init(objc_opt_class());
  v8 = [typeCopy copy];

  v9 = v7[2];
  v7[2] = v8;

  v10 = [lCopy copy];
  v11 = v7[7];
  v7[7] = v10;

  return v7;
}

@end