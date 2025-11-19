@interface VKCTextElement
+ (id)textElementFromCROutputRegion:(id)a3 parentDocument:(id)a4;
- (NSArray)_children;
- (NSArray)candidates;
- (NSArray)components;
- (void)createChildrenIfNecessary;
@end

@implementation VKCTextElement

+ (id)textElementFromCROutputRegion:(id)a3 parentDocument:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(VKCTextElement);
  [(VKCBaseElement *)v7 setParentCRDocument:v5];

  [(VKCBaseElement *)v7 setCrOutputRegion:v6];

  return v7;
}

- (NSArray)_children
{
  [(VKCTextElement *)self createChildrenIfNecessary];
  children = self->__children;

  return children;
}

- (NSArray)components
{
  [(VKCTextElement *)self createChildrenIfNecessary];
  components = self->_components;

  return components;
}

- (NSArray)candidates
{
  [(VKCTextElement *)self createChildrenIfNecessary];
  candidates = self->_candidates;

  return candidates;
}

- (void)createChildrenIfNecessary
{
  if (![(VKCTextElement *)self childrenCreated])
  {
    [(VKCTextElement *)self setChildrenCreated:1];
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
    v4 = [(VKCBaseElement *)self crOutputRegion];
    v5 = [v4 children];
    v6 = [v5 count];

    if (v6)
    {
      v7 = [(VKCBaseElement *)self crOutputRegion];
      v8 = [v7 children];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __43__VKCTextElement_createChildrenIfNecessary__block_invoke;
      v19[3] = &unk_1E7BE64E0;
      v19[4] = self;
      v9 = [v8 vk_compactMap:v19];

      [(VKCTextElement *)self setComponents:v9];
    }

    v10 = [(VKCBaseElement *)self crOutputRegion];
    v11 = [v10 candidates];
    v12 = [v11 count];

    if (v12)
    {
      v13 = [(VKCBaseElement *)self crOutputRegion];
      v14 = [v13 candidates];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __43__VKCTextElement_createChildrenIfNecessary__block_invoke_2;
      v18[3] = &unk_1E7BE64E0;
      v18[4] = self;
      v15 = [v14 vk_compactMap:v18];

      [(VKCTextElement *)self setCandidates:v15];
    }

    v16 = [v3 copy];
    children = self->__children;
    self->__children = v16;
  }
}

id __43__VKCTextElement_createChildrenIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 parentCRDocument];
  v5 = [VKCTextElement textElementFromCROutputRegion:v3 parentDocument:v4];

  return v5;
}

id __43__VKCTextElement_createChildrenIfNecessary__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 parentCRDocument];
  v5 = [VKCTextElement textElementFromCROutputRegion:v3 parentDocument:v4];

  return v5;
}

@end