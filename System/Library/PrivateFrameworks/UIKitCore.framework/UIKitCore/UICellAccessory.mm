@interface UICellAccessory
- (BOOL)_canDirectlyUpdateExistingAccessoryViewFrom:(id)from;
- (BOOL)_isDisplayedForEditingState:(BOOL)state;
- (BOOL)isEqual:(id)equal;
- (NSString)_identifier;
- (UICellAccessory)init;
- (UICellAccessory)initWithCoder:(NSCoder *)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)_compare:(id)_compare;
- (int64_t)_systemType;
- (int64_t)_systemTypePlacementForHeader:(BOOL)header;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UICellAccessory

- (UICellAccessory)init
{
  v9.receiver = self;
  v9.super_class = UICellAccessory;
  v3 = [(UICellAccessory *)&v9 init];
  if (v3)
  {
    v4 = objc_opt_class();
    if ([v4 isMemberOfClass:objc_opt_class()])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      [currentHandler handleFailureInMethod:a2 object:v3 file:@"UICellAccessory.m" lineNumber:30 description:{@"%@ is an abstract base class and should not be instantiated directly.", v8}];
    }

    v3->_displayedState = 0;
    v3->_reservedLayoutWidth = -1.79769313e308;
    v3->__monochromaticTreatment = -1;
  }

  return v3;
}

- (int64_t)_systemType
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (int64_t)_systemTypePlacementForHeader:(BOOL)header
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)_isDisplayedForEditingState:(BOOL)state
{
  displayedState = self->_displayedState;
  if (!displayedState)
  {
    return 1;
  }

  if (displayedState == 2)
  {
    return !state;
  }

  if (displayedState != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICellAccessory.m" lineNumber:65 description:{@"Unknown UICellAccessoryDisplayedState value (%ld)", self->_displayedState}];

    return 0;
  }

  return state;
}

- (NSString)_identifier
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return &stru_1EFB14550;
}

- (UICellAccessory)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v12.receiver = self;
  v12.super_class = UICellAccessory;
  v5 = [(UICellAccessory *)&v12 init];
  if (v5)
  {
    v5->_displayedState = [(NSCoder *)v4 decodeIntegerForKey:@"displayedState"];
    v5->_hidden = [(NSCoder *)v4 decodeBoolForKey:@"hidden"];
    [(NSCoder *)v4 decodeDoubleForKey:@"reservedLayoutWidth"];
    v5->_reservedLayoutWidth = v6;
    v7 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"tintColor"];
    tintColor = v5->_tintColor;
    v5->_tintColor = v7;

    v9 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v9;

    v5->__monochromaticTreatment = [(NSCoder *)v4 decodeIntegerForKey:@"monochromaticTreatment"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  displayedState = self->_displayedState;
  coderCopy = coder;
  [coderCopy encodeInteger:displayedState forKey:@"displayedState"];
  [coderCopy encodeBool:self->_hidden forKey:@"hidden"];
  [coderCopy encodeDouble:@"reservedLayoutWidth" forKey:self->_reservedLayoutWidth];
  [coderCopy encodeObject:self->_tintColor forKey:@"tintColor"];
  [coderCopy encodeObject:self->_backgroundColor forKey:@"backgroundColor"];
  [coderCopy encodeInteger:self->__monochromaticTreatment forKey:@"monochromaticTreatment"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    *(v4 + 24) = self->_displayedState;
    *(v4 + 8) = self->_hidden;
    *(v4 + 32) = self->_reservedLayoutWidth;
    objc_storeStrong((v4 + 40), self->_tintColor);
    objc_storeStrong((v5 + 16), self->_backgroundColor);
    *(v5 + 48) = self->__monochromaticTreatment;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = v6;
    if (self->_displayedState == v6[3] && self->_hidden == *(v6 + 8) && self->__monochromaticTreatment == v6[6] && self->_reservedLayoutWidth == *(v6 + 4) && _deferringTokenEqualToToken(self->_tintColor, v6[5]))
    {
      v8 = _deferringTokenEqualToToken(self->_backgroundColor, v7[2]);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_canDirectlyUpdateExistingAccessoryViewFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = fromCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_displayedState == v5->_displayedState && self->_hidden == v5->_hidden && self->_reservedLayoutWidth == v5->_reservedLayoutWidth;
  }

  return v6;
}

- (int64_t)_compare:(id)_compare
{
  _compareCopy = _compare;
  if (!_compareCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UICellAccessory.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"other != nil"}];
  }

  if (self == _compareCopy)
  {
    v8 = 0;
  }

  else
  {
    _identifier = [(UICellAccessory *)self _identifier];
    _identifier2 = [(UICellAccessory *)_compareCopy _identifier];
    v8 = [_identifier compare:_identifier2];
  }

  return v8;
}

@end