@interface SXComponentBlueprint
- (CGRect)absoluteFrame;
- (CGRect)backgroundViewFrame;
- (CGRect)componentViewFrame;
- (CGRect)contentFrame;
- (CGRect)contentViewFrame;
- (CGRect)frame;
- (CGSize)suggestedSizeAfterInvalidation;
- (SXComponentBlueprint)initWithComponent:(id)a3 componentLayout:(id)a4 componentSizer:(id)a5;
- (SXLayoutBlueprint)parentLayoutBlueprint;
- (SXLayoutBlueprint)rootLayoutBlueprint;
- (UIEdgeInsets)borderInsets;
- (UIEdgeInsets)contentInsets;
- (UIEdgeInsets)layoutMargins;
- (_NSRange)columnRange;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)invalidateLayout;
- (void)invalidatePosition;
- (void)invalidateSize;
@end

@implementation SXComponentBlueprint

- (SXComponentBlueprint)initWithComponent:(id)a3 componentLayout:(id)a4 componentSizer:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = SXComponentBlueprint;
  v12 = [(SXComponentBlueprint *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_component, a3);
    objc_storeStrong(&v13->_componentLayout, a4);
    objc_storeStrong(&v13->_componentSizer, a5);
    v14 = *(MEMORY[0x1E695F058] + 16);
    v13->_frame.origin = *MEMORY[0x1E695F058];
    v13->_frame.size = v14;
    v13->_columnRange.location = [v10 columnRange];
    v13->_columnRange.length = v15;
    v16 = objc_opt_new();
    componentState = v13->_componentState;
    v13->_componentState = v16;
  }

  return v13;
}

- (SXLayoutBlueprint)rootLayoutBlueprint
{
  WeakRetained = objc_loadWeakRetained(&self->_parentLayoutBlueprint);
  v3 = [WeakRetained parentLayoutBlueprint];

  if (v3)
  {
    do
    {
      v4 = [WeakRetained parentLayoutBlueprint];

      v5 = [v4 parentLayoutBlueprint];

      WeakRetained = v4;
    }

    while (v5);
  }

  else
  {
    v4 = WeakRetained;
  }

  return v4;
}

- (void)invalidateLayout
{
  [(SXComponentBlueprint *)self invalidateSize];

  [(SXComponentBlueprint *)self invalidatePosition];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  objc_storeStrong((v4 + 16), self->_component);
  objc_storeStrong((v4 + 40), self->_componentLayout);
  objc_storeStrong((v4 + 32), self->_componentSizer);
  v5 = *&self->_contentInsets.bottom;
  *(v4 + 128) = *&self->_contentInsets.top;
  *(v4 + 144) = v5;
  v6 = *&self->_layoutMargins.bottom;
  *(v4 + 160) = *&self->_layoutMargins.top;
  *(v4 + 176) = v6;
  objc_storeStrong((v4 + 56), self->_infoFromLayouting);
  *(v4 + 64) = self->_columnRange;
  WeakRetained = objc_loadWeakRetained(&self->_parentLayoutBlueprint);
  objc_storeWeak((v4 + 48), WeakRetained);

  *(v4 + 8) = self->_hasValidSize;
  *(v4 + 9) = self->_hasValidPosition;
  size = self->_frame.size;
  *(v4 + 96) = self->_frame.origin;
  *(v4 + 112) = size;
  v9 = self->_absoluteFrame.size;
  *(v4 + 224) = self->_absoluteFrame.origin;
  *(v4 + 240) = v9;
  v10 = self->_componentViewFrame.size;
  *(v4 + 256) = self->_componentViewFrame.origin;
  *(v4 + 272) = v10;
  v11 = self->_contentViewFrame.size;
  *(v4 + 288) = self->_contentViewFrame.origin;
  *(v4 + 304) = v11;
  v12 = self->_contentFrame.size;
  *(v4 + 320) = self->_contentFrame.origin;
  *(v4 + 336) = v12;
  *(v4 + 80) = self->_suggestedSizeAfterInvalidation;
  objc_storeStrong((v4 + 24), self->_componentState);
  v13 = *&self->_borderInsets.bottom;
  *(v4 + 192) = *&self->_borderInsets.top;
  *(v4 + 208) = v13;
  v14 = self->_backgroundViewFrame.size;
  *(v4 + 352) = self->_backgroundViewFrame.origin;
  *(v4 + 368) = v14;
  return v4;
}

- (id)description
{
  v18 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v17 = NSStringFromClass(v3);
  [(SXComponentBlueprint *)self frame];
  v16 = NSStringFromCGRect(v22);
  v15 = [(SXComponentBlueprint *)self hasValidPosition];
  v4 = [(SXComponentBlueprint *)self hasValidSize];
  v5 = [(SXComponentBlueprint *)self hasValidLayout];
  v6 = [(SXComponentBlueprint *)self component];
  v7 = objc_opt_class();
  v8 = [(SXComponentBlueprint *)self component];
  v9 = [v8 identifier];
  v10 = [(SXComponentBlueprint *)self componentLayout];
  v20.location = [v10 columnRange];
  v11 = NSStringFromRange(v20);
  v21.location = [(SXComponentBlueprint *)self columnRange];
  v12 = NSStringFromRange(v21);
  v13 = [v18 stringWithFormat:@"<%@: %p frame: %@; hasValidPosition: %d; hasValidSize: %d; hasValidLayout: %d, component: %@, identifier: %@, columnRange: %@, convertedColumnRange: %@>", v17, self, v16, v15, v4, v5, v7, v9, v11, v12];;

  return v13;
}

- (SXLayoutBlueprint)parentLayoutBlueprint
{
  WeakRetained = objc_loadWeakRetained(&self->_parentLayoutBlueprint);

  return WeakRetained;
}

- (_NSRange)columnRange
{
  length = self->_columnRange.length;
  location = self->_columnRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)layoutMargins
{
  top = self->_layoutMargins.top;
  left = self->_layoutMargins.left;
  bottom = self->_layoutMargins.bottom;
  right = self->_layoutMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)borderInsets
{
  top = self->_borderInsets.top;
  left = self->_borderInsets.left;
  bottom = self->_borderInsets.bottom;
  right = self->_borderInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)absoluteFrame
{
  x = self->_absoluteFrame.origin.x;
  y = self->_absoluteFrame.origin.y;
  width = self->_absoluteFrame.size.width;
  height = self->_absoluteFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)componentViewFrame
{
  x = self->_componentViewFrame.origin.x;
  y = self->_componentViewFrame.origin.y;
  width = self->_componentViewFrame.size.width;
  height = self->_componentViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)contentViewFrame
{
  x = self->_contentViewFrame.origin.x;
  y = self->_contentViewFrame.origin.y;
  width = self->_contentViewFrame.size.width;
  height = self->_contentViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)contentFrame
{
  x = self->_contentFrame.origin.x;
  y = self->_contentFrame.origin.y;
  width = self->_contentFrame.size.width;
  height = self->_contentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)backgroundViewFrame
{
  x = self->_backgroundViewFrame.origin.x;
  y = self->_backgroundViewFrame.origin.y;
  width = self->_backgroundViewFrame.size.width;
  height = self->_backgroundViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)suggestedSizeAfterInvalidation
{
  width = self->_suggestedSizeAfterInvalidation.width;
  height = self->_suggestedSizeAfterInvalidation.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)invalidatePosition
{
  if (self)
  {
    self->_hasValidPosition = 0;
  }
}

- (void)invalidateSize
{
  if (self)
  {
    self->_hasValidSize = 0;
  }
}

@end