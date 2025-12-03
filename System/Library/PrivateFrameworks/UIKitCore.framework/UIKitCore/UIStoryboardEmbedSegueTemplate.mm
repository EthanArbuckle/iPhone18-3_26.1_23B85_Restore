@interface UIStoryboardEmbedSegueTemplate
- (UIStoryboardEmbedSegueTemplate)initWithCoder:(id)coder;
- (id)newDefaultPerformHandlerForSegue:(id)segue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIStoryboardEmbedSegueTemplate

- (UIStoryboardEmbedSegueTemplate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = UIStoryboardEmbedSegueTemplate;
  v5 = [(UIStoryboardSegueTemplate *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"UIContainerView"];
    containerView = v5->_containerView;
    v5->_containerView = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = UIStoryboardEmbedSegueTemplate;
  coderCopy = coder;
  [(UIStoryboardSegueTemplate *)&v6 encodeWithCoder:coderCopy];
  v5 = [(UIStoryboardEmbedSegueTemplate *)self containerView:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"UIContainerView"];
}

- (id)newDefaultPerformHandlerForSegue:(id)segue
{
  segueCopy = segue;
  containerView = [(UIStoryboardEmbedSegueTemplate *)self containerView];
  objc_initWeak(&location, segueCopy);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__UIStoryboardEmbedSegueTemplate_newDefaultPerformHandlerForSegue___block_invoke;
  aBlock[3] = &unk_1E70F9070;
  objc_copyWeak(v13, &location);
  v13[1] = a2;
  v11 = containerView;
  selfCopy = self;
  v7 = containerView;
  v8 = _Block_copy(aBlock);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);

  return v8;
}

void __67__UIStoryboardEmbedSegueTemplate_newDefaultPerformHandlerForSegue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = *(a1 + 32);
  if (!v2)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"UIStoryboardEmbedSegueTemplate.m" lineNumber:38 description:@"containerView is required."];

    v2 = *(a1 + 32);
  }

  v3 = [v2 subviews];
  v4 = [v3 count];

  if (v4)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"UIStoryboardEmbedSegueTemplate.m" lineNumber:39 description:@"There are unexpected subviews in the container view. Perhaps the embed segue has already fired once or a subview was added programmatically?"];
  }

  v5 = [WeakRetained sourceViewController];
  v6 = [WeakRetained destinationViewController];
  v7 = [v6 view];
  [v5 addChildViewController:v6];
  [*(a1 + 32) addSubview:v7];
  [v7 setAutoresizingMask:18];
  if (([v7 translatesAutoresizingMaskIntoConstraints] & 1) == 0)
  {
    v8 = _NSDictionaryOfVariableBindings(&cfstr_Childview.isa, v7, 0);
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"H:|[childView]|" options:0 metrics:0 views:v8];
    [v9 addConstraints:v10];

    v11 = *(a1 + 32);
    v12 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"V:|[childView]|" options:0 metrics:0 views:v8];
    [v11 addConstraints:v12];
  }

  [*(a1 + 32) bounds];
  [v7 setFrame:?];
  [v6 didMoveToParentViewController:v5];
}

@end