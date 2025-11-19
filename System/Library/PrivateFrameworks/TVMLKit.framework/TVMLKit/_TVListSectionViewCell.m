@interface _TVListSectionViewCell
- (void)prepareForReuse;
@end

@implementation _TVListSectionViewCell

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = _TVListSectionViewCell;
  [(_TVListSectionViewCell *)&v4 prepareForReuse];
  v3 = [(_TVListSectionViewCell *)self contentView];
  [TVMLUtilities disassociateIKViewElementsRecursivelyFromView:v3];
}

@end