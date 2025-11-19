@interface SBDataPlanExpirationAlertItem
- (SBDataPlanExpirationAlertItem)initWithAccountURL:(id)a3 expirationDate:(id)a4;
- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4;
@end

@implementation SBDataPlanExpirationAlertItem

- (SBDataPlanExpirationAlertItem)initWithAccountURL:(id)a3 expirationDate:(id)a4
{
  v6 = a4;
  v7 = [(SBDataPlanAccountAlertItem *)self initWithAccountURL:a3];
  v8 = v7;
  if (v7)
  {
    [(SBDataPlanExpirationAlertItem *)v7 setExpirationDate:v6];
  }

  return v8;
}

- (void)configure:(BOOL)a3 requirePasscodeForActions:(BOOL)a4
{
  v16.receiver = self;
  v16.super_class = SBDataPlanExpirationAlertItem;
  [(SBDataPlanAccountAlertItem *)&v16 configure:a3 requirePasscodeForActions:a4];
  v5 = [(SBAlertItem *)self alertController];
  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [v6 localizedStringForKey:@"DATA_PLAN_ADD_TITLE" value:&stru_283094718 table:@"SpringBoard"];
  [v5 setTitle:v7];
  [(NSDate *)self->_expirationDate timeIntervalSinceNow];
  if (v8 >= 3600.0)
  {
    if (v8 <= 84600.0)
    {
      v9 = fmax(floor(v8 / 3600.0), 1.0);
      v10 = @"DATA_PLAN_ADD_EXPIRATION_BODY_HOURS";
    }

    else
    {
      v9 = fmax(ceil(v8 / 86400.0), 1.0);
      v11 = -(v8 - v9 * 86400.0) / 86400.0;
      if (v11 >= 0.75)
      {
        --v9;
        v10 = @"DATA_PLAN_ADD_EXPIRATION_BODY_DAYS";
      }

      else
      {
        v10 = @"DATA_PLAN_ADD_EXPIRATION_BODY_LESS_THAN_DAYS";
      }
    }
  }

  else
  {
    v9 = vcvtad_u64_f64(fmax(v8 / 60.0, 2.0));
    v10 = @"DATA_PLAN_ADD_EXPIRATION_BODY_MINUTES";
  }

  v12 = MEMORY[0x277CCACA8];
  v13 = [MEMORY[0x277CCA8D8] mainBundle];
  v14 = [v13 localizedStringForKey:v10 value:&stru_283094718 table:@"SpringBoardPlurals"];
  v15 = [v12 localizedStringWithFormat:v14, v9];

  [v5 setMessage:v15];
}

@end