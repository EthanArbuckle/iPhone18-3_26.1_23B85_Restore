@interface SFUIShareSheetPopoverBackgroundView
+ (UIEdgeInsets)contentViewInsets;
+ (double)arrowBase;
+ (double)arrowHeight;
+ (double)effectiveBottomRadiusForView:(id)view;
- (SFUIShareSheetPopoverBackgroundView)initWithCoder:(id)coder;
- (double)arrowOffset;
- (unint64_t)arrowDirection;
- (void)setArrowDirection:(unint64_t)direction;
- (void)setArrowOffset:(double)offset;
@end

@implementation SFUIShareSheetPopoverBackgroundView

- (SFUIShareSheetPopoverBackgroundView)initWithCoder:(id)coder
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](coder);
  SFUIShareSheetPopoverBackgroundView.init(coder:)();
}

+ (double)arrowBase
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  return static SFUIShareSheetPopoverBackgroundView.arrowBase()();
}

+ (UIEdgeInsets)contentViewInsets
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v2 = static SFUIShareSheetPopoverBackgroundView.contentViewInsets()();
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

+ (double)arrowHeight
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  return static SFUIShareSheetPopoverBackgroundView.arrowHeight()();
}

- (unint64_t)arrowDirection
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  v5 = SFUIShareSheetPopoverBackgroundView.arrowDirection.getter();
  MEMORY[0x1E69E5920](self);
  return v5;
}

- (void)setArrowDirection:(unint64_t)direction
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  SFUIShareSheetPopoverBackgroundView.arrowDirection.setter();
  MEMORY[0x1E69E5920](self);
}

- (double)arrowOffset
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  v5 = SFUIShareSheetPopoverBackgroundView.arrowOffset.getter();
  MEMORY[0x1E69E5920](self);
  return v5;
}

- (void)setArrowOffset:(double)offset
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  SFUIShareSheetPopoverBackgroundView.arrowOffset.setter();
  MEMORY[0x1E69E5920](self);
}

+ (double)effectiveBottomRadiusForView:(id)view
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](view);
  swift_getObjCClassMetadata();
  v5 = static SFUIShareSheetPopoverBackgroundView.effectiveBottomRadius(view:)(view);
  MEMORY[0x1E69E5920](view);
  return v5;
}

@end