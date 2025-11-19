@interface SBDodgingItemPreference
- (CGPoint)preferredCenter;
- (CGSize)minimumSize;
- (CGSize)preferredSize;
- (SBDodgingItemPreference)initWithPreferredSize:(CGSize)a3 preferredCenter:(CGPoint)a4 updateInteractively:(BOOL)a5 dodgingAxisMask:(unint64_t)a6 minimumSize:(CGSize)a7 canBePositionedOutsideContainerBounds:(BOOL)a8 excludedDodgingIdentifiers:(id)a9;
@end

@implementation SBDodgingItemPreference

- (SBDodgingItemPreference)initWithPreferredSize:(CGSize)a3 preferredCenter:(CGPoint)a4 updateInteractively:(BOOL)a5 dodgingAxisMask:(unint64_t)a6 minimumSize:(CGSize)a7 canBePositionedOutsideContainerBounds:(BOOL)a8 excludedDodgingIdentifiers:(id)a9
{
  height = a7.height;
  width = a7.width;
  y = a4.y;
  x = a4.x;
  v16 = a3.height;
  v17 = a3.width;
  v19 = a9;
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
    v20->_updateInteractively = a5;
    v20->_dodgingAxisMask = a6;
    v20->_minimumSize.width = width;
    v20->_minimumSize.height = height;
    v20->_canBePositionedOutsideContainerBounds = a8;
    v22 = [v19 copy];
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