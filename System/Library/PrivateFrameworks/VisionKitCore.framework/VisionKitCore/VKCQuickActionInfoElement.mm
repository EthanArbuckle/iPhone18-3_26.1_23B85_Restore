@interface VKCQuickActionInfoElement
+ (id)elementFromElement:(id)element;
+ (id)elementFromUIAction:(id)action;
+ (id)elementFromUIMenu:(id)menu;
+ (id)elementFromUIMenuElement:(id)element;
- (id)linearizeElements;
- (void)performAction;
@end

@implementation VKCQuickActionInfoElement

- (void)performAction
{
  representedMenuElement = [(VKCQuickActionInfoElement *)self representedMenuElement];
  v3 = VKProtocolCast(&unk_1F2C7AE00, representedMenuElement);

  [v3 performWithSender:0 target:0];
}

- (id)linearizeElements
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 addObject:self];
  children = [(VKCQuickActionInfoElement *)self children];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__VKCQuickActionInfoElement_linearizeElements__block_invoke;
  v7[3] = &unk_1E7BE5FD0;
  v5 = v3;
  v8 = v5;
  [children enumerateObjectsUsingBlock:v7];

  return v5;
}

void __46__VKCQuickActionInfoElement_linearizeElements__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 linearizeElements];
  [v2 addObjectsFromArray:v3];
}

+ (id)elementFromElement:(id)element
{
  elementCopy = element;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [self elementFromUIMenu:elementCopy];
LABEL_7:
    v6 = v5;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [self elementFromUIAction:elementCopy];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [self elementFromUIMenuElement:elementCopy];
    goto LABEL_7;
  }

  +[VKAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](VKAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "__objc_no", "+[VKCQuickActionInfoElement elementFromElement:]", 0, 0, @"Unexpected type for element from element.");
  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)elementFromUIMenu:(id)menu
{
  menuCopy = menu;
  v5 = objc_alloc_init(VKCQuickActionInfoElement);
  [(VKCQuickActionInfoElement *)v5 setRepresentedMenuElement:menuCopy];
  title = [menuCopy title];
  [(VKCQuickActionInfoElement *)v5 setText:title];

  image = [menuCopy image];
  [(VKCQuickActionInfoElement *)v5 setImage:image];

  children = [menuCopy children];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__VKCQuickActionInfoElement_elementFromUIMenu___block_invoke;
  v11[3] = &__block_descriptor_40_e29__32__0__UIMenuElement_8q16q24l;
  v11[4] = self;
  v9 = [children vk_compactMap:v11];
  [(VKCQuickActionInfoElement *)v5 setChildren:v9];

  return v5;
}

+ (id)elementFromUIAction:(id)action
{
  actionCopy = action;
  v4 = objc_alloc_init(VKCQuickActionInfoElement);
  [(VKCQuickActionInfoElement *)v4 setRepresentedMenuElement:actionCopy];
  title = [actionCopy title];
  [(VKCQuickActionInfoElement *)v4 setText:title];

  image = [actionCopy image];

  [(VKCQuickActionInfoElement *)v4 setImage:image];
  [(VKCQuickActionInfoElement *)v4 setIsLeaf:1];

  return v4;
}

+ (id)elementFromUIMenuElement:(id)element
{
  elementCopy = element;
  v4 = objc_alloc_init(VKCQuickActionInfoElement);
  [(VKCQuickActionInfoElement *)v4 setRepresentedMenuElement:elementCopy];
  title = [elementCopy title];
  [(VKCQuickActionInfoElement *)v4 setText:title];

  image = [elementCopy image];

  [(VKCQuickActionInfoElement *)v4 setImage:image];
  [(VKCQuickActionInfoElement *)v4 setIsLeaf:1];

  return v4;
}

@end