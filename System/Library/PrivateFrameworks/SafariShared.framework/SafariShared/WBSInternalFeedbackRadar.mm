@interface WBSInternalFeedbackRadar
- (NSURL)continueInTapToRadarURL;
- (WBSInternalFeedbackRadar)initWithComponent:(id)component title:(id)title descriptionTemplate:(id)template;
@end

@implementation WBSInternalFeedbackRadar

- (WBSInternalFeedbackRadar)initWithComponent:(id)component title:(id)title descriptionTemplate:(id)template
{
  componentCopy = component;
  titleCopy = title;
  templateCopy = template;
  result = [MEMORY[0x1E69C8880] isInternalInstall];
  if (result)
  {
    v20.receiver = self;
    v20.super_class = WBSInternalFeedbackRadar;
    v12 = [(WBSInternalFeedbackRadar *)&v20 init];
    if (v12)
    {
      v13 = [componentCopy copy];
      component = v12->_component;
      v12->_component = v13;

      v15 = [titleCopy copy];
      title = v12->_title;
      v12->_title = v15;

      v17 = [templateCopy copy];
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
  array = [MEMORY[0x1E695DF70] array];
  identifier = [(WBSInternalFeedbackRadarComponent *)self->_component identifier];
  appendToQueryItems(array, @"ComponentID", identifier);

  name = [(WBSInternalFeedbackRadarComponent *)self->_component name];
  appendToQueryItems(array, @"ComponentName", name);

  version = [(WBSInternalFeedbackRadarComponent *)self->_component version];
  appendToQueryItems(array, @"ComponentVersion", version);

  appendToQueryItems(array, @"Title", self->_title);
  appendToQueryItems(array, @"Description", self->_descriptionTemplate);
  appendToQueryItems(array, @"Classification", self->_classification);
  appendToQueryItems(array, @"Reproducibility", self->_reproducibility);
  v8 = [(NSArray *)self->_keywords componentsJoinedByString:@", "];
  appendToQueryItems(array, @"Keywords", v8);

  v9 = [(NSArray *)self->_attachmentPaths componentsJoinedByString:@", "];
  appendToQueryItems(array, @"Attachments", v9);

  [v3 setQueryItems:array];
  v10 = [v3 URL];

  return v10;
}

@end