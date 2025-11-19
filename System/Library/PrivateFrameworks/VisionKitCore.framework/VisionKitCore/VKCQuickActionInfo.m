@interface VKCQuickActionInfo
+ (id)quickActionInfoFromActionInfoButton:(id)a3;
- (id)linearizedElements;
- (void)performDefaultAction;
@end

@implementation VKCQuickActionInfo

+ (id)quickActionInfoFromActionInfoButton:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = VKDynamicCast(v4, v3);
  v6 = objc_opt_class();
  v7 = VKDynamicCast(v6, v3);
  v8 = objc_opt_class();
  v9 = VKDynamicCast(v8, v3);

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
    v11 = [v7 text];
    [(VKCQuickActionInfo *)v10 setText:v11];

    v12 = [v7 image];
    [(VKCQuickActionInfo *)v10 setImage:v12];

    v13 = [v7 defaultAction];
    [(VKCQuickActionInfo *)v10 setDefaultAction:v13];

    v14 = [v7 correlationIdentifier];
    [(VKCQuickActionInfo *)v10 setCorrelationIdentifier:v14];

    -[VKCQuickActionInfo setQuickActionType:](v10, "setQuickActionType:", [v7 quickActionType]);
    v15 = [v7 representedElement];
    -[VKCQuickActionInfo setDataDetectorTypes:](v10, "setDataDetectorTypes:", [v15 dataDetectorTypes]);

    [(VKCQuickActionInfo *)v10 setActionInfoButton:v7];
    v16 = [v7 menu];
    v17 = [v16 children];
    v18 = [v17 vk_compactMap:&__block_literal_global_260];
    [(VKCQuickActionInfo *)v10 setChildren:v18];
  }

LABEL_7:

  return v10;
}

- (id)linearizedElements
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(VKCQuickActionInfo *)self children];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__VKCQuickActionInfo_linearizedElements__block_invoke;
  v7[3] = &unk_1E7BE5FD0;
  v5 = v3;
  v8 = v5;
  [v4 enumerateObjectsUsingBlock:v7];

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
  v2 = [(VKCQuickActionInfo *)self actionInfoButton];
  [v2 performDefaultElementAction];
}

@end