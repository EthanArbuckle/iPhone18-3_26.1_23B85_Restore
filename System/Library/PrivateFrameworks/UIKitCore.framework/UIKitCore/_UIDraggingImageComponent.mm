@interface _UIDraggingImageComponent
- (CGRect)frame;
- (_UIDraggingImageComponent)initWithImage:(id)image frame:(CGRect)frame ignoreAccessibilityFilters:(BOOL)filters;
- (_UIDraggingImageComponent)initWithView:(id)view;
- (id)_initWithNoImageAndFrame:(CGRect)frame;
- (id)description;
- (id)initHidingDragImage;
@end

@implementation _UIDraggingImageComponent

- (_UIDraggingImageComponent)initWithImage:(id)image frame:(CGRect)frame ignoreAccessibilityFilters:(BOOL)filters
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  imageCopy = image;
  if (!imageCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"image must be non-nil"];
  }

  v16.receiver = self;
  v16.super_class = _UIDraggingImageComponent;
  v13 = [(_UIDraggingImageComponent *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_image, image);
    v14->_ignoresAccessibilityFilters = filters;
    v14->_frame.origin.x = x;
    v14->_frame.origin.y = y;
    v14->_frame.size.width = width;
    v14->_frame.size.height = height;
  }

  return v14;
}

- (_UIDraggingImageComponent)initWithView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"view must be non-nil"];
  }

  [viewCopy bounds];
  v6 = [(_UIDraggingImageComponent *)self _initWithNoImageAndFrame:?];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 2, view);
    v7->_ignoresAccessibilityFilters = [viewCopy accessibilityIgnoresInvertColors];
  }

  return v7;
}

- (id)initHidingDragImage
{
  result = [(_UIDraggingImageComponent *)self _initWithNoImageAndFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (result)
  {
    *(result + 9) = 1;
  }

  return result;
}

- (id)_initWithNoImageAndFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = _UIDraggingImageComponent;
  result = [(_UIDraggingImageComponent *)&v8 init];
  if (result)
  {
    *(result + 4) = x;
    *(result + 5) = y;
    *(result + 6) = width;
    *(result + 7) = height;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  image = self->_image;
  [(_UIDraggingImageComponent *)self frame];
  v6 = NSStringFromCGRect(v10);
  v7 = [v3 stringWithFormat:@"<%@ %p image=%@ frame=%@>", v4, self, image, v6];

  return v7;
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

@end