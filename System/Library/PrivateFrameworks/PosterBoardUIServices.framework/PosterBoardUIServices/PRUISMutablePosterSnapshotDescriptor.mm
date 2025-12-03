@interface PRUISMutablePosterSnapshotDescriptor
- (void)setContentOcclusionRectangles:(id)rectangles;
- (void)setDisplayConfiguration:(id)configuration;
- (void)setSalientContentRectangle:(CGRect)rectangle;
@end

@implementation PRUISMutablePosterSnapshotDescriptor

- (void)setDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    configurationCopy = [MEMORY[0x1E699FAC0] pui_mainDisplayConfiguration];
  }

  self->super._predicateOptions |= 0x200uLL;
  v7 = configurationCopy;
  if (([(FBSDisplayConfiguration *)self->super._displayConfiguration isEqual:configurationCopy]& 1) == 0)
  {
    v5 = [v7 copy];
    displayConfiguration = self->super._displayConfiguration;
    self->super._displayConfiguration = v5;
  }
}

- (void)setSalientContentRectangle:(CGRect)rectangle
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  if (CGRectIsEmpty(rectangle))
  {
    x = *MEMORY[0x1E695F040];
    y = *(MEMORY[0x1E695F040] + 8);
    width = *(MEMORY[0x1E695F040] + 16);
    height = *(MEMORY[0x1E695F040] + 24);
  }

  self->super._salientContentRectangle.origin.x = x;
  self->super._salientContentRectangle.origin.y = y;
  self->super._salientContentRectangle.size.width = width;
  self->super._salientContentRectangle.size.height = height;
  self->super._predicateOptions |= 0x400uLL;
}

- (void)setContentOcclusionRectangles:(id)rectangles
{
  rectanglesCopy = rectangles;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [rectanglesCopy copy];
    contentOcclusionRectangles = self->super._contentOcclusionRectangles;
    self->super._contentOcclusionRectangles = v4;

    self->super._predicateOptions |= 0x800uLL;
  }
}

@end