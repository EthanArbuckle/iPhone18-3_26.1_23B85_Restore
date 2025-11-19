@interface SFExperimentTriggeredFeedback
- (SFExperimentTriggeredFeedback)init;
- (SFExperimentTriggeredFeedback)initWithCodepathId:(id)a3;
- (SFExperimentTriggeredFeedback)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFExperimentTriggeredFeedback

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SFExperimentTriggeredFeedback;
  [(SFFeedback *)&v8 encodeWithCoder:v4];
  v5 = [(SFExperimentTriggeredFeedback *)self counterfactual];
  if (v5)
  {
    [v4 encodeBool:1 forKey:@"_hasCF"];
    [v4 encodeBool:objc_msgSend(v5 forKey:{"cfDiffered"), @"_cfDiffered"}];
    [v4 encodeBool:objc_msgSend(v5 forKey:{"cfUsed"), @"_cfUsed"}];
    [v4 encodeInt64:objc_msgSend(v5 forKey:{"cfError"), @"_cfError"}];
  }

  v6 = [(SFExperimentTriggeredFeedback *)self codepathId];

  if (v6)
  {
    v7 = [(SFExperimentTriggeredFeedback *)self codepathId];
    [v4 encodeObject:v7 forKey:@"_codepathId"];
  }
}

- (SFExperimentTriggeredFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFExperimentTriggeredFeedback;
  v5 = [(SFFeedback *)&v9 initWithCoder:v4];
  if (v5)
  {
    if ([v4 decodeBoolForKey:@"_hasCF"])
    {
      v6 = objc_alloc_init(SFCounterfactualInfo);
      -[SFCounterfactualInfo setCfDiffered:](v6, "setCfDiffered:", [v4 decodeBoolForKey:@"_cfDiffered"]);
      -[SFCounterfactualInfo setCfUsed:](v6, "setCfUsed:", [v4 decodeBoolForKey:@"_cfUsed"]);
      -[SFCounterfactualInfo setCfError:](v6, "setCfError:", [v4 decodeInt64ForKey:@"_cfError"]);
      [(SFExperimentTriggeredFeedback *)v5 setCounterfactual:v6];
    }

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_codepathId"];
    [(SFExperimentTriggeredFeedback *)v5 setCodepathId:v7];
  }

  return v5;
}

- (SFExperimentTriggeredFeedback)initWithCodepathId:(id)a3
{
  v4 = a3;
  v5 = [(SFExperimentTriggeredFeedback *)self init];
  v6 = v5;
  if (v5)
  {
    [(SFExperimentTriggeredFeedback *)v5 setCodepathId:v4];
    v7 = v6;
  }

  return v6;
}

- (SFExperimentTriggeredFeedback)init
{
  v3.receiver = self;
  v3.super_class = SFExperimentTriggeredFeedback;
  return [(SFFeedback *)&v3 init];
}

@end