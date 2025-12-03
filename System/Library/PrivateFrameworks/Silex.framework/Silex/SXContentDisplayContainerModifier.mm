@interface SXContentDisplayContainerModifier
- (SXContentDisplayContainerModifier)init;
- (void)ensureWrappingContainerComponentForComponents:(id)components parentComponent:(id)component;
- (void)modifyDOM:(id)m context:(id)context;
@end

@implementation SXContentDisplayContainerModifier

- (SXContentDisplayContainerModifier)init
{
  v6.receiver = self;
  v6.super_class = SXContentDisplayContainerModifier;
  v2 = [(SXContentDisplayContainerModifier *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    containers = v2->_containers;
    v2->_containers = dictionary;
  }

  return v2;
}

- (void)modifyDOM:(id)m context:(id)context
{
  components = [m components];
  [(SXContentDisplayContainerModifier *)self ensureWrappingContainerComponentForComponents:components parentComponent:0];
}

- (void)ensureWrappingContainerComponentForComponents:(id)components parentComponent:(id)component
{
  v34[5] = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  componentCopy = component;
  if ([componentsCopy count])
  {
    v8 = 0;
    v9 = &selRef_videoPlayerViewController_initiatedPlaybackOfVideo_;
    v30 = componentCopy;
    selfCopy = self;
    while (1)
    {
      v10 = [componentsCopy componentAtIndex:{v8, v30}];
      contentDisplay = [componentCopy contentDisplay];
      if (![contentDisplay conformsToProtocol:v9[213]])
      {
        break;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        goto LABEL_8;
      }

      containers = [(SXContentDisplayContainerModifier *)self containers];
      identifier = [v10 identifier];
      v15 = [containers objectForKey:identifier];

      identifier2 = [v15 identifier];
      v17 = identifier2;
      if (identifier2)
      {
        uUIDString = identifier2;
      }

      else
      {
        uUID = [MEMORY[0x1E696AFB0] UUID];
        uUIDString = [uUID UUIDString];
      }

      v33[0] = @"identifier";
      v33[1] = @"type";
      v34[0] = uUIDString;
      v34[1] = @"container";
      v34[2] = @"container";
      v33[2] = @"role";
      v33[3] = @"layout";
      layout = [v10 layout];
      v34[3] = layout;
      v33[4] = @"components";
      jSONRepresentation = [v10 JSONRepresentation];
      v32 = jSONRepresentation;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
      v34[4] = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:5];

      v25 = [SXContainerComponent alloc];
      specificationVersion = [v10 specificationVersion];
      v27 = [(SXJSONObject *)v25 initWithJSONObject:v24 andVersion:specificationVersion];

      [componentsCopy replaceComponentAtIndex:v8 withComponent:v27];
      self = selfCopy;
      containers2 = [(SXContentDisplayContainerModifier *)selfCopy containers];
      identifier3 = [v10 identifier];
      [containers2 setObject:v27 forKey:identifier3];

      componentCopy = v30;
      v9 = &selRef_videoPlayerViewController_initiatedPlaybackOfVideo_;
LABEL_12:

      if (++v8 >= [componentsCopy count])
      {
        goto LABEL_13;
      }
    }

LABEL_8:
    identifier4 = [v10 identifier];
    v15 = [componentsCopy componentsForContainerComponentWithIdentifier:identifier4];

    if (v15)
    {
      [(SXContentDisplayContainerModifier *)self ensureWrappingContainerComponentForComponents:v15 parentComponent:v10];
    }

    goto LABEL_12;
  }

LABEL_13:
}

@end