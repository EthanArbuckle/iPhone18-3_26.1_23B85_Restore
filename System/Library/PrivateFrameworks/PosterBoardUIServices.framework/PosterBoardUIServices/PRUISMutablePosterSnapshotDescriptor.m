@interface PRUISMutablePosterSnapshotDescriptor
- (void)setContentOcclusionRectangles:(id)a3;
- (void)setDisplayConfiguration:(id)a3;
- (void)setSalientContentRectangle:(CGRect)a3;
@end

@implementation PRUISMutablePosterSnapshotDescriptor

- (void)setDisplayConfiguration:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x1E699FAC0] pui_mainDisplayConfiguration];
  }

  self->super._predicateOptions |= 0x200uLL;
  v7 = v4;
  if (([(FBSDisplayConfiguration *)self->super._displayConfiguration isEqual:v4]& 1) == 0)
  {
    v5 = [v7 copy];
    displayConfiguration = self->super._displayConfiguration;
    self->super._displayConfiguration = v5;
  }
}

- (void)setSalientContentRectangle:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsEmpty(a3))
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

- (void)setContentOcclusionRectangles:(id)a3
{
  v6 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [v6 copy];
    contentOcclusionRectangles = self->super._contentOcclusionRectangles;
    self->super._contentOcclusionRectangles = v4;

    self->super._predicateOptions |= 0x800uLL;
  }
}

@end