@interface WBSInternalFeedbackRadar
- (NSURL)continueInTapToRadarURL;
- (WBSInternalFeedbackRadar)initWithComponent:(id)a3 title:(id)a4 descriptionTemplate:(id)a5;
@end

@implementation WBSInternalFeedbackRadar

- (WBSInternalFeedbackRadar)initWithComponent:(id)a3 title:(id)a4 descriptionTemplate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  result = [MEMORY[0x1E69C8880] isInternalInstall];
  if (result)
  {
    v20.receiver = self;
    v20.super_class = WBSInternalFeedbackRadar;
    v12 = [(WBSInternalFeedbackRadar *)&v20 init];
    if (v12)
    {
      v13 = [v8 copy];
      component = v12->_component;
      v12->_component = v13;

      v15 = [v9 copy];
      title = v12->_title;
      v12->_title = v15;

      v17 = [v10 copy];
      descriptionTemplate = v12->_descriptionTemplate;
      v12->_descriptionTemplate = v17;

      v19 = v12;
    }

    return v12;
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

- (NSURL)continueInTapToRadarURL
{
  v3 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v3 setScheme:@"tap-to-radar"];
  [v3 setHost:@"new"];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [(WBSInternalFeedbackRadarComponent *)self->_component identifier];
  appendToQueryItems(v4, @"ComponentID", v5);

  v6 = [(WBSInternalFeedbackRadarComponent *)self->_component name];
  appendToQueryItems(v4, @"ComponentName", v6);

  v7 = [(WBSInternalFeedbackRadarComponent *)self->_component version];
  appendToQueryItems(v4, @"ComponentVersion", v7);

  appendToQueryItems(v4, @"Title", self->_title);
  appendToQueryItems(v4, @"Description", self->_descriptionTemplate);
  appendToQueryItems(v4, @"Classification", self->_classification);
  appendToQueryItems(v4, @"Reproducibility", self->_reproducibility);
  v8 = [(NSArray *)self->_keywords componentsJoinedByString:@", "];
  appendToQueryItems(v4, @"Keywords", v8);

  v9 = [(NSArray *)self->_attachmentPaths componentsJoinedByString:@", "];
  appendToQueryItems(v4, @"Attachments", v9);

  [v3 setQueryItems:v4];
  v10 = [v3 URL];

  return v10;
}

@end