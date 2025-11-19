@interface SSResponseAction
+ (id)_actionWithActionType:(id)a3;
+ (id)_checkInAppQueueActionWithClientID:(id)a3 environment:(id)a4;
+ (id)_dialogActionWithDialog:(id)a3;
+ (id)_dialogActionWithTouchIDDialog:(id)a3;
+ (id)_invalidateURLBagsAction;
+ (id)_selectFooterActionWithSection:(id)a3;
+ (id)_setActiveAccountActionWithAccount:(id)a3;
+ (id)_setCreditsActionWithCredits:(id)a3 account:(id)a4;
+ (id)_urlActionWithType:(id)a3 URL:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation SSResponseAction

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  objc_storeStrong((v5 + 8), self->_account);
  v6 = [(NSString *)self->_actionType copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_clientIdentifier copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_creditsString copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  objc_storeStrong((v5 + 40), self->_dialog);
  v12 = [(NSString *)self->_footerSection copyWithZone:a3];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  v14 = [(NSURL *)self->_url copyWithZone:a3];
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

+ (id)_actionWithActionType:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [v3 copy];

  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

+ (id)_checkInAppQueueActionWithClientID:(id)a3 environment:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(objc_opt_class());
  v8 = v7[2];
  v7[2] = @"SSResponseActionTypeCheckInAppPurchaseQueue";

  v9 = [v6 copy];
  v10 = v7[3];
  v7[3] = v9;

  LODWORD(v6) = [v5 isEqualToString:@"sandbox"];
  v7[8] = v6;

  return v7;
}

+ (id)_dialogActionWithDialog:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4[2];
  v4[2] = @"SSResponseActionTypeShowDialog";

  v6 = v4[5];
  v4[5] = v3;

  return v4;
}

+ (id)_dialogActionWithTouchIDDialog:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4[2];
  v4[2] = @"SSResponseActionTypeShowTouchIDDialog";

  v6 = v4[5];
  v4[5] = v3;

  return v4;
}

+ (id)_invalidateURLBagsAction
{
  v2 = objc_alloc_init(objc_opt_class());
  v3 = v2[2];
  v2[2] = @"SSResponseActionTypeInvalidateURLBags";

  return v2;
}

+ (id)_selectFooterActionWithSection:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4[2];
  v4[2] = @"SSResponseActionTypeSelectFooterSection";

  v6 = [v3 copy];
  v7 = v4[6];
  v4[6] = v6;

  return v4;
}

+ (id)_setActiveAccountActionWithAccount:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4[2];
  v4[2] = @"SSResponseActionTypeSetActiveAccount";

  v6 = v4[1];
  v4[1] = v3;

  return v4;
}

+ (id)_setCreditsActionWithCredits:(id)a3 account:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(objc_opt_class());
  v8 = v7[2];
  v7[2] = @"SSResponseActionTypeSetAccountCredits";

  v9 = v7[1];
  v7[1] = v5;
  v10 = v5;

  v11 = [v6 copy];
  v12 = v7[4];
  v7[4] = v11;

  return v7;
}

+ (id)_urlActionWithType:(id)a3 URL:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(objc_opt_class());
  v8 = [v6 copy];

  v9 = v7[2];
  v7[2] = v8;

  v10 = [v5 copy];
  v11 = v7[7];
  v7[7] = v10;

  return v7;
}

@end