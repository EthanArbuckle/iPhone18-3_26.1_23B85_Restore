@interface WFSettingsClientBookmark
- (WFSettingsClientBookmark)initWithActionReversalState:(id)a3;
- (WFSettingsClientBookmark)initWithBiomeBookmark:(id)a3;
- (WFSettingsClientBookmark)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFSettingsClientBookmark

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFSettingsClientBookmark *)self biomeBookmark];
  [v4 encodeObject:v5 forKey:@"biomeBookmark"];
}

- (WFSettingsClientBookmark)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AB10];
  v5 = a3;
  v6 = [v4 bm_allowedClassesForSecureCodingBMBookmark];
  v7 = [v5 decodeObjectOfClasses:v6 forKey:@"biomeBookmark"];

  if (v7)
  {
    self = [(WFSettingsClientBookmark *)self initWithBiomeBookmark:v7];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (WFSettingsClientBookmark)initWithBiomeBookmark:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFSettingsClientBookmark;
  v6 = [(WFSettingsClientBookmark *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_biomeBookmark, a3);
    v8 = v7;
  }

  return v7;
}

- (WFSettingsClientBookmark)initWithActionReversalState:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"WFSettingsClientBookmark+WFActionReversalState.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"reversalState"}];

    goto LABEL_5;
  }

  v7 = v5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_5:

    v7 = 0;
    v8 = 0;
    goto LABEL_6;
  }

  v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:0];
LABEL_6:

  return v8;
}

@end