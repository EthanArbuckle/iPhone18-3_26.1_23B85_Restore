@interface PRUISDidDismissSheetAction
- (PRUISDidDismissSheetAction)initWithResponse:(id)response;
- (PRUISModalEntryPointResponse)response;
@end

@implementation PRUISDidDismissSheetAction

- (PRUISDidDismissSheetAction)initWithResponse:(id)response
{
  v4 = MEMORY[0x1E698E700];
  responseCopy = response;
  v6 = objc_alloc_init(v4);
  [v6 setObject:responseCopy forSetting:1];

  v9.receiver = self;
  v9.super_class = PRUISDidDismissSheetAction;
  v7 = [(PRUISDidDismissSheetAction *)&v9 initWithInfo:v6 responder:0];

  return v7;
}

- (PRUISModalEntryPointResponse)response
{
  info = [(PRUISDidDismissSheetAction *)self info];
  v3 = [info objectForSetting:1];

  return v3;
}

@end