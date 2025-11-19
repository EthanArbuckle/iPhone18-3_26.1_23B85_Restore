@interface UICellAccessory
- (BOOL)_canDirectlyUpdateExistingAccessoryViewFrom:(id)a3;
- (BOOL)_isDisplayedForEditingState:(BOOL)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)_identifier;
- (UICellAccessory)init;
- (UICellAccessory)initWithCoder:(NSCoder *)coder;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)_compare:(id)a3;
- (int64_t)_systemType;
- (int64_t)_systemTypePlacementForHeader:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
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
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      [v6 handleFailureInMethod:a2 object:v3 file:@"UICellAccessory.m" lineNumber:30 description:{@"%@ is an abstract base class and should not be instantiated directly.", v8}];
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

- (int64_t)_systemTypePlacementForHeader:(BOOL)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)_isDisplayedForEditingState:(BOOL)a3
{
  displayedState = self->_displayedState;
  if (!displayedState)
  {
    return 1;
  }

  if (displayedState == 2)
  {
    return !a3;
  }

  if (displayedState != 1)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"UICellAccessory.m" lineNumber:65 description:{@"Unknown UICellAccessoryDisplayedState value (%ld)", self->_displayedState}];

    return 0;
  }

  return a3;
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

- (void)encodeWithCoder:(id)a3
{
  displayedState = self->_displayedState;
  v5 = a3;
  [v5 encodeInteger:displayedState forKey:@"displayedState"];
  [v5 encodeBool:self->_hidden forKey:@"hidden"];
  [v5 encodeDouble:@"reservedLayoutWidth" forKey:self->_reservedLayoutWidth];
  [v5 encodeObject:self->_tintColor forKey:@"tintColor"];
  [v5 encodeObject:self->_backgroundColor forKey:@"backgroundColor"];
  [v5 encodeInteger:self->__monochromaticTreatment forKey:@"monochromaticTreatment"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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

- (BOOL)_canDirectlyUpdateExistingAccessoryViewFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_displayedState == v5->_displayedState && self->_hidden == v5->_hidden && self->_reservedLayoutWidth == v5->_reservedLayoutWidth;
  }

  return v6;
}

- (int64_t)_compare:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"UICellAccessory.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"other != nil"}];
  }

  if (self == v5)
  {
    v8 = 0;
  }

  else
  {
    v6 = [(UICellAccessory *)self _identifier];
    v7 = [(UICellAccessory *)v5 _identifier];
    v8 = [v6 compare:v7];
  }

  return v8;
}

@end