@interface SFExperimentTriggeredFeedback
- (SFExperimentTriggeredFeedback)init;
- (SFExperimentTriggeredFeedback)initWithCodepathId:(id)id;
- (SFExperimentTriggeredFeedback)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFExperimentTriggeredFeedback

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = SFExperimentTriggeredFeedback;
  [(SFFeedback *)&v8 encodeWithCoder:coderCopy];
  counterfactual = [(SFExperimentTriggeredFeedback *)self counterfactual];
  if (counterfactual)
  {
    [coderCopy encodeBool:1 forKey:@"_hasCF"];
    [coderCopy encodeBool:objc_msgSend(counterfactual forKey:{"cfDiffered"), @"_cfDiffered"}];
    [coderCopy encodeBool:objc_msgSend(counterfactual forKey:{"cfUsed"), @"_cfUsed"}];
    [coderCopy encodeInt64:objc_msgSend(counterfactual forKey:{"cfError"), @"_cfError"}];
  }

  codepathId = [(SFExperimentTriggeredFeedback *)self codepathId];

  if (codepathId)
  {
    codepathId2 = [(SFExperimentTriggeredFeedback *)self codepathId];
    [coderCopy encodeObject:codepathId2 forKey:@"_codepathId"];
  }
}

- (SFExperimentTriggeredFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SFExperimentTriggeredFeedback;
  v5 = [(SFFeedback *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    if ([coderCopy decodeBoolForKey:@"_hasCF"])
    {
      v6 = objc_alloc_init(SFCounterfactualInfo);
      -[SFCounterfactualInfo setCfDiffered:](v6, "setCfDiffered:", [coderCopy decodeBoolForKey:@"_cfDiffered"]);
      -[SFCounterfactualInfo setCfUsed:](v6, "setCfUsed:", [coderCopy decodeBoolForKey:@"_cfUsed"]);
      -[SFCounterfactualInfo setCfError:](v6, "setCfError:", [coderCopy decodeInt64ForKey:@"_cfError"]);
      [(SFExperimentTriggeredFeedback *)v5 setCounterfactual:v6];
    }

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_codepathId"];
    [(SFExperimentTriggeredFeedback *)v5 setCodepathId:v7];
  }

  return v5;
}

- (SFExperimentTriggeredFeedback)initWithCodepathId:(id)id
{
  idCopy = id;
  v5 = [(SFExperimentTriggeredFeedback *)self init];
  v6 = v5;
  if (v5)
  {
    [(SFExperimentTriggeredFeedback *)v5 setCodepathId:idCopy];
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