@interface VKCQuickActionInfo
+ (id)quickActionInfoFromActionInfoButton:(id)button;
- (id)linearizedElements;
- (void)performDefaultAction;
@end

@implementation VKCQuickActionInfo

+ (id)quickActionInfoFromActionInfoButton:(id)button
{
  buttonCopy = button;
  v4 = objc_opt_class();
  v5 = VKDynamicCast(v4, buttonCopy);
  v6 = objc_opt_class();
  v7 = VKDynamicCast(v6, buttonCopy);
  v8 = objc_opt_class();
  v9 = VKDynamicCast(v8, buttonCopy);

  if (v9)
  {
    goto LABEL_2;
  }

  if (v5)
  {
    v10 = objc_alloc_init(VKCQuickActionInfo);
    [(VKCQuickActionInfo *)v10 setQuickActionType:1];
  }

  else
  {
    if (!v7)
    {
LABEL_2:
      v10 = 0;
      goto LABEL_7;
    }

    v10 = objc_alloc_init(VKCQuickActionInfo);
    text = [v7 text];
    [(VKCQuickActionInfo *)v10 setText:text];

    image = [v7 image];
    [(VKCQuickActionInfo *)v10 setImage:image];

    defaultAction = [v7 defaultAction];
    [(VKCQuickActionInfo *)v10 setDefaultAction:defaultAction];

    correlationIdentifier = [v7 correlationIdentifier];
    [(VKCQuickActionInfo *)v10 setCorrelationIdentifier:correlationIdentifier];

    -[VKCQuickActionInfo setQuickActionType:](v10, "setQuickActionType:", [v7 quickActionType]);
    representedElement = [v7 representedElement];
    -[VKCQuickActionInfo setDataDetectorTypes:](v10, "setDataDetectorTypes:", [representedElement dataDetectorTypes]);

    [(VKCQuickActionInfo *)v10 setActionInfoButton:v7];
    menu = [v7 menu];
    children = [menu children];
    v18 = [children vk_compactMap:&__block_literal_global_260];
    [(VKCQuickActionInfo *)v10 setChildren:v18];
  }

LABEL_7:

  return v10;
}

- (id)linearizedElements
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  children = [(VKCQuickActionInfo *)self children];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__VKCQuickActionInfo_linearizedElements__block_invoke;
  v7[3] = &unk_1E7BE5FD0;
  v5 = v3;
  v8 = v5;
  [children enumerateObjectsUsingBlock:v7];

  return v5;
}

void __40__VKCQuickActionInfo_linearizedElements__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 linearizeElements];
  [v2 addObjectsFromArray:v3];
}

- (void)performDefaultAction
{
  actionInfoButton = [(VKCQuickActionInfo *)self actionInfoButton];
  [actionInfoButton performDefaultElementAction];
}

@end