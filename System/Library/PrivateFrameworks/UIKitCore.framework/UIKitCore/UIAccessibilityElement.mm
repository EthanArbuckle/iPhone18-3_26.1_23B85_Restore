@interface UIAccessibilityElement
- (BOOL)canBecomeFocused;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (CGRect)accessibilityFrameInContainerSpace;
- (CGRect)frame;
- (NSString)accessibilityHint;
- (NSString)accessibilityLabel;
- (NSString)accessibilityValue;
- (UIAccessibilityElement)initWithAccessibilityContainer:(id)container;
- (UIAccessibilityTraits)accessibilityTraits;
- (UIFocusEnvironment)parentFocusEnvironment;
- (id)_firstViewAncestor;
- (id)focusItemsInRect:(CGRect)a3;
- (id)nextResponder;
- (void)dealloc;
- (void)setAccessibilityFrame:(CGRect)accessibilityFrame;
- (void)setAccessibilityFrameInContainerSpace:(CGRect)accessibilityFrameInContainerSpace;
- (void)setAccessibilityHint:(NSString *)accessibilityHint;
- (void)setAccessibilityLabel:(NSString *)accessibilityLabel;
- (void)setAccessibilityTraits:(UIAccessibilityTraits)accessibilityTraits;
- (void)setAccessibilityValue:(NSString *)accessibilityValue;
- (void)setIsAccessibilityElement:(BOOL)isAccessibilityElement;
- (void)setNeedsFocusUpdate;
- (void)updateFocusIfNeeded;
@end

@implementation UIAccessibilityElement

- (UIAccessibilityTraits)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = UIAccessibilityElement;
  return [&v3 accessibilityTraits];
}

- (UIAccessibilityElement)initWithAccessibilityContainer:(id)container
{
  v8.receiver = self;
  v8.super_class = UIAccessibilityElement;
  v4 = [(UIAccessibilityElement *)&v8 init];
  v5 = v4;
  if (v4)
  {
    [v4 setAccessibilityContainer:container];
    [(UIAccessibilityElement *)v5 setIsAccessibilityElement:1];
    v6 = *(MEMORY[0x1E695F050] + 16);
    v5->_accessibilityFrameInContainerSpace.origin = *MEMORY[0x1E695F050];
    v5->_accessibilityFrameInContainerSpace.size = v6;
  }

  return v5;
}

- (void)dealloc
{
  [(UIAccessibilityElement *)self _destroyFocusLayer];
  v3.receiver = self;
  v3.super_class = UIAccessibilityElement;
  [(UIResponder *)&v3 dealloc];
}

- (BOOL)isAccessibilityElement
{
  v3.receiver = self;
  v3.super_class = UIAccessibilityElement;
  return [&v3 isAccessibilityElement];
}

- (void)setIsAccessibilityElement:(BOOL)isAccessibilityElement
{
  v3.receiver = self;
  v3.super_class = UIAccessibilityElement;
  [&v3 setIsAccessibilityElement:isAccessibilityElement];
}

- (NSString)accessibilityLabel
{
  v3.receiver = self;
  v3.super_class = UIAccessibilityElement;
  return [&v3 accessibilityLabel];
}

- (void)setAccessibilityLabel:(NSString *)accessibilityLabel
{
  v3.receiver = self;
  v3.super_class = UIAccessibilityElement;
  [&v3 setAccessibilityLabel:accessibilityLabel];
}

- (NSString)accessibilityHint
{
  v3.receiver = self;
  v3.super_class = UIAccessibilityElement;
  return [&v3 accessibilityHint];
}

- (void)setAccessibilityHint:(NSString *)accessibilityHint
{
  v3.receiver = self;
  v3.super_class = UIAccessibilityElement;
  [&v3 setAccessibilityHint:accessibilityHint];
}

- (NSString)accessibilityValue
{
  v3.receiver = self;
  v3.super_class = UIAccessibilityElement;
  return [&v3 accessibilityValue];
}

- (void)setAccessibilityValue:(NSString *)accessibilityValue
{
  v3.receiver = self;
  v3.super_class = UIAccessibilityElement;
  [&v3 setAccessibilityValue:accessibilityValue];
}

- (CGRect)accessibilityFrame
{
  v6.receiver = self;
  v6.super_class = UIAccessibilityElement;
  [&v6 accessibilityFrame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setAccessibilityFrame:(CGRect)accessibilityFrame
{
  v4 = *(MEMORY[0x1E695F050] + 16);
  self->_accessibilityFrameInContainerSpace.origin = *MEMORY[0x1E695F050];
  self->_accessibilityFrameInContainerSpace.size = v4;
  v5.receiver = self;
  v5.super_class = UIAccessibilityElement;
  [&v5 setAccessibilityFrame:accessibilityFrame.origin.x, accessibilityFrame.origin.y, accessibilityFrame.size.width, accessibilityFrame.size.height];
  [(UIAccessibilityElement *)self _updateFocusLayerFrame];
}

- (void)setAccessibilityTraits:(UIAccessibilityTraits)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = UIAccessibilityElement;
  [&v3 setAccessibilityTraits:accessibilityTraits];
}

- (void)setAccessibilityFrameInContainerSpace:(CGRect)accessibilityFrameInContainerSpace
{
  height = accessibilityFrameInContainerSpace.size.height;
  width = accessibilityFrameInContainerSpace.size.width;
  y = accessibilityFrameInContainerSpace.origin.y;
  x = accessibilityFrameInContainerSpace.origin.x;
  p_accessibilityFrameInContainerSpace = &self->_accessibilityFrameInContainerSpace;
  if (!CGRectEqualToRect(self->_accessibilityFrameInContainerSpace, accessibilityFrameInContainerSpace))
  {
    p_accessibilityFrameInContainerSpace->origin.x = x;
    p_accessibilityFrameInContainerSpace->origin.y = y;
    p_accessibilityFrameInContainerSpace->size.width = width;
    p_accessibilityFrameInContainerSpace->size.height = height;

    [(UIAccessibilityElement *)self _updateFocusLayerFrame];
  }
}

- (UIFocusEnvironment)parentFocusEnvironment
{
  for (i = -[NSObject accessibilityContainer](self, "accessibilityContainer"); i; i = [i accessibilityContainer])
  {
    if ([i conformsToProtocol:&unk_1EFE40A90])
    {
      break;
    }
  }

  return i;
}

- (void)setNeedsFocusUpdate
{
  [[UIFocusSystem focusSystemForEnvironment:?], "requestFocusUpdateToEnvironment:", self];

  [(UIAccessibilityElement *)self _updateFocusLayerFrame];
}

- (void)updateFocusIfNeeded
{
  [[UIFocusSystem focusSystemForEnvironment:?]];

  [(UIAccessibilityElement *)self _updateFocusLayerFrame];
}

- (BOOL)canBecomeFocused
{
  v3 = [(UIAccessibilityElement *)self isAccessibilityElement];
  if (v3)
  {

    LOBYTE(v3) = [self accessibilityRespondsToUserInteraction];
  }

  return v3;
}

- (CGRect)frame
{
  v3 = [(UIAccessibilityElement *)self _firstViewAncestor];
  v4 = [v3 window];
  [(UIAccessibilityElement *)self accessibilityFrame];

  [v4 convertRect:v3 toView:?];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (id)focusItemsInRect:(CGRect)a3
{
  v3 = [self accessibilityElements:a3.origin.x];
  v4 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_2];

  return [(NSArray *)v3 filteredArrayUsingPredicate:v4];
}

uint64_t __43__UIAccessibilityElement_focusItemsInRect___block_invoke(uint64_t a1, void *a2)
{
  if (_IsKindOfUIView(a2))
  {
    return 0;
  }

  return [a2 conformsToProtocol:&unk_1EFE40ED8];
}

- (id)_firstViewAncestor
{
  v2 = [self accessibilityContainer];
  objc_opt_class();
  while ((objc_opt_isKindOfClass() & 1) == 0 && v2)
  {
    v2 = [v2 accessibilityContainer];
    objc_opt_class();
  }

  return v2;
}

- (id)nextResponder
{
  v2 = [self accessibilityContainer];
  v3 = [v2 __isKindOfUIResponder];
  if (v2 && (v3 & 1) == 0)
  {
    do
    {
      v2 = [v2 accessibilityContainer];
      v4 = [v2 __isKindOfUIResponder];
    }

    while (v2 && !v4);
  }

  return v2;
}

- (CGRect)accessibilityFrameInContainerSpace
{
  x = self->_accessibilityFrameInContainerSpace.origin.x;
  y = self->_accessibilityFrameInContainerSpace.origin.y;
  width = self->_accessibilityFrameInContainerSpace.size.width;
  height = self->_accessibilityFrameInContainerSpace.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end