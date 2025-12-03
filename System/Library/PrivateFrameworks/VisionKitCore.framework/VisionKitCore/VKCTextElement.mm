@interface VKCTextElement
+ (id)textElementFromCROutputRegion:(id)region parentDocument:(id)document;
- (NSArray)_children;
- (NSArray)candidates;
- (NSArray)components;
- (void)createChildrenIfNecessary;
@end

@implementation VKCTextElement

+ (id)textElementFromCROutputRegion:(id)region parentDocument:(id)document
{
  documentCopy = document;
  regionCopy = region;
  v7 = objc_alloc_init(VKCTextElement);
  [(VKCBaseElement *)v7 setParentCRDocument:documentCopy];

  [(VKCBaseElement *)v7 setCrOutputRegion:regionCopy];

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
    crOutputRegion = [(VKCBaseElement *)self crOutputRegion];
    children = [crOutputRegion children];
    v6 = [children count];

    if (v6)
    {
      crOutputRegion2 = [(VKCBaseElement *)self crOutputRegion];
      children2 = [crOutputRegion2 children];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __43__VKCTextElement_createChildrenIfNecessary__block_invoke;
      v19[3] = &unk_1E7BE64E0;
      v19[4] = self;
      v9 = [children2 vk_compactMap:v19];

      [(VKCTextElement *)self setComponents:v9];
    }

    crOutputRegion3 = [(VKCBaseElement *)self crOutputRegion];
    candidates = [crOutputRegion3 candidates];
    v12 = [candidates count];

    if (v12)
    {
      crOutputRegion4 = [(VKCBaseElement *)self crOutputRegion];
      candidates2 = [crOutputRegion4 candidates];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __43__VKCTextElement_createChildrenIfNecessary__block_invoke_2;
      v18[3] = &unk_1E7BE64E0;
      v18[4] = self;
      v15 = [candidates2 vk_compactMap:v18];

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