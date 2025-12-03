@interface SBDodgingItemPreference
- (CGPoint)preferredCenter;
- (CGSize)minimumSize;
- (CGSize)preferredSize;
- (SBDodgingItemPreference)initWithPreferredSize:(CGSize)size preferredCenter:(CGPoint)center updateInteractively:(BOOL)interactively dodgingAxisMask:(unint64_t)mask minimumSize:(CGSize)minimumSize canBePositionedOutsideContainerBounds:(BOOL)bounds excludedDodgingIdentifiers:(id)identifiers;
@end

@implementation SBDodgingItemPreference

- (SBDodgingItemPreference)initWithPreferredSize:(CGSize)size preferredCenter:(CGPoint)center updateInteractively:(BOOL)interactively dodgingAxisMask:(unint64_t)mask minimumSize:(CGSize)minimumSize canBePositionedOutsideContainerBounds:(BOOL)bounds excludedDodgingIdentifiers:(id)identifiers
{
  height = minimumSize.height;
  width = minimumSize.width;
  y = center.y;
  x = center.x;
  v16 = size.height;
  v17 = size.width;
  identifiersCopy = identifiers;
  v25.receiver = self;
  v25.super_class = SBDodgingItemPreference;
  v20 = [(SBDodgingItemPreference *)&v25 init];
  v21 = v20;
  if (v20)
  {
    v20->_preferredSize.width = v17;
    v20->_preferredSize.height = v16;
    v20->_preferredCenter.x = x;
    v20->_preferredCenter.y = y;
    v20->_updateInteractively = interactively;
    v20->_dodgingAxisMask = mask;
    v20->_minimumSize.width = width;
    v20->_minimumSize.height = height;
    v20->_canBePositionedOutsideContainerBounds = bounds;
    v22 = [identifiersCopy copy];
    excludedDodgingIdentifiers = v21->_excludedDodgingIdentifiers;
    v21->_excludedDodgingIdentifiers = v22;
  }

  return v21;
}

- (CGSize)preferredSize
{
  width = self->_preferredSize.width;
  height = self->_preferredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)preferredCenter
{
  x = self->_preferredCenter.x;
  y = self->_preferredCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)minimumSize
{
  width = self->_minimumSize.width;
  height = self->_minimumSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end