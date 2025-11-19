@interface VKCElementCollection
+ (id)collectionWithTitle:(id)a3 children:(id)a4 parent:(id)a5;
+ (id)collectionWithTitle:(id)a3 elementInfoText:(id)a4 parent:(id)a5;
@end

@implementation VKCElementCollection

+ (id)collectionWithTitle:(id)a3 elementInfoText:(id)a4 parent:(id)a5
{
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a3;
  v10 = [VKCElementInfo infoWithText:a4 parent:0];
  v14[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12 = [a1 collectionWithTitle:v9 children:v11 parent:v8];

  return v12;
}

+ (id)collectionWithTitle:(id)a3 children:(id)a4 parent:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(VKCElementCollection);
  [(VKCElementCollection *)v10 setTitle:v9];

  [(VKCElementCollection *)v10 set_children:v8];
  [(VKCBaseElement *)v10 setParent:v7];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__VKCElementCollection_collectionWithTitle_children_parent___block_invoke;
  v13[3] = &unk_1E7BE6030;
  v11 = v10;
  v14 = v11;
  [v8 enumerateObjectsUsingBlock:v13];

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