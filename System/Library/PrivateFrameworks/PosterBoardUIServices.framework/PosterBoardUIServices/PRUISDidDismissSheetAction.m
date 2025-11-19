@interface PRUISDidDismissSheetAction
- (PRUISDidDismissSheetAction)initWithResponse:(id)a3;
- (PRUISModalEntryPointResponse)response;
@end

@implementation PRUISDidDismissSheetAction

- (PRUISDidDismissSheetAction)initWithResponse:(id)a3
{
  v4 = MEMORY[0x1E698E700];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setObject:v5 forSetting:1];

  v9.receiver = self;
  v9.super_class = PRUISDidDismissSheetAction;
  v7 = [(PRUISDidDismissSheetAction *)&v9 initWithInfo:v6 responder:0];

  return v7;
}

- (PRUISModalEntryPointResponse)response
{
  v2 = [(PRUISDidDismissSheetAction *)self info];
  v3 = [v2 objectForSetting:1];

  return v3;
}

@end