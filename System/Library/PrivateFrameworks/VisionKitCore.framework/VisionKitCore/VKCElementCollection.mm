@interface VKCElementCollection
+ (id)collectionWithTitle:(id)title children:(id)children parent:(id)parent;
+ (id)collectionWithTitle:(id)title elementInfoText:(id)text parent:(id)parent;
@end

@implementation VKCElementCollection

+ (id)collectionWithTitle:(id)title elementInfoText:(id)text parent:(id)parent
{
  v14[1] = *MEMORY[0x1E69E9840];
  parentCopy = parent;
  titleCopy = title;
  v10 = [VKCElementInfo infoWithText:text parent:0];
  v14[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12 = [self collectionWithTitle:titleCopy children:v11 parent:parentCopy];

  return v12;
}

+ (id)collectionWithTitle:(id)title children:(id)children parent:(id)parent
{
  parentCopy = parent;
  childrenCopy = children;
  titleCopy = title;
  v10 = objc_alloc_init(VKCElementCollection);
  [(VKCElementCollection *)v10 setTitle:titleCopy];

  [(VKCElementCollection *)v10 set_children:childrenCopy];
  [(VKCBaseElement *)v10 setParent:parentCopy];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__VKCElementCollection_collectionWithTitle_children_parent___block_invoke;
  v13[3] = &unk_1E7BE6030;
  v11 = v10;
  v14 = v11;
  [childrenCopy enumerateObjectsUsingBlock:v13];

  return v11;
}

void __60__VKCElementCollection_collectionWithTitle_children_parent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setParent:*(a1 + 32)];
  v4 = [v3 children];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__VKCElementCollection_collectionWithTitle_children_parent___block_invoke_2;
  v6[3] = &unk_1E7BE6030;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

@end