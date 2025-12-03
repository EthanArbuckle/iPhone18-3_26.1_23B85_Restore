@interface UIViewConfigurationState
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (UIViewConfigurationState)initWithCoder:(NSCoder *)coder;
- (UIViewConfigurationState)initWithTraitCollection:(UITraitCollection *)traitCollection;
- (id)_initWithState:(id)state;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)_contextMenuGroupLocation;
- (unint64_t)_viewConfigurationState;
- (unint64_t)hash;
- (void)_appendPropertiesForDescription:(id)description;
- (void)_configureWithViewConfigurationState:(unint64_t)state;
- (void)_setContextMenuGroupLocation:(int64_t)location;
- (void)encodeWithCoder:(id)coder;
- (void)setCustomState:(id)state forKey:(id)key;
- (void)setDisabled:(BOOL)disabled;
- (void)setFocused:(BOOL)focused;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setPinned:(BOOL)pinned;
- (void)setSelected:(BOOL)selected;
- (void)setTraitCollection:(UITraitCollection *)traitCollection;
@end

@implementation UIViewConfigurationState

- (unint64_t)_viewConfigurationState
{
  v3 = (*&self->_stateFlags & 0xC | (__rbit32(*&self->_stateFlags) >> 30)) & 0xFFFFFFFFFFFFF7FFLL | ((((*&self->_stateFlags & 0x10) >> 4) & 1) << 11);
  if ([(UIViewConfigurationState *)self _contextMenuGroupLocation])
  {
    return v3 & 0xFFFFFFFFFFFF8FFFLL | (([(UIViewConfigurationState *)self _contextMenuGroupLocation]& 7) << 12);
  }

  return v3;
}

- (int64_t)_contextMenuGroupLocation
{
  v2 = [(UIViewConfigurationState *)self customStateForKey:@"_UICompactContextMenuGroupLocation"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (UIViewConfigurationState)initWithTraitCollection:(UITraitCollection *)traitCollection
{
  v6 = traitCollection;
  if (!v6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIViewConfigurationState.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"traitCollection != nil"}];
  }

  v11.receiver = self;
  v11.super_class = UIViewConfigurationState;
  v7 = [(UIViewConfigurationState *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_traitCollection, traitCollection);
  }

  return v8;
}

- (id)_initWithState:(id)state
{
  stateCopy = state;
  if (!stateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIViewConfigurationState.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"state != nil"}];
  }

  v6 = [(UIViewConfigurationState *)self initWithTraitCollection:*(stateCopy + 4)];
  v7 = v6;
  if (v6)
  {
    v6->_stateFlags = *(stateCopy + 6);
    v8 = [*(stateCopy + 2) mutableCopy];
    customStates = v7->_customStates;
    v7->_customStates = v8;
  }

  return v7;
}

- (UIViewConfigurationState)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v5 = [(NSCoder *)v4 decodeObjectOfClass:objc_opt_class() forKey:@"traitCollection"];
  if (v5)
  {
    v15.receiver = self;
    v15.super_class = UIViewConfigurationState;
    v6 = [(UIViewConfigurationState *)&v15 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_traitCollection, v5);
      *&v7->_stateFlags = *&v7->_stateFlags & 0xFE | [(NSCoder *)v4 decodeBoolForKey:@"disabled"];
      if ([(NSCoder *)v4 decodeBoolForKey:@"highlighted"])
      {
        v8 = 2;
      }

      else
      {
        v8 = 0;
      }

      *&v7->_stateFlags = *&v7->_stateFlags & 0xFD | v8;
      if ([(NSCoder *)v4 decodeBoolForKey:@"selected"])
      {
        v9 = 4;
      }

      else
      {
        v9 = 0;
      }

      *&v7->_stateFlags = *&v7->_stateFlags & 0xFB | v9;
      if ([(NSCoder *)v4 decodeBoolForKey:@"focused"])
      {
        v10 = 8;
      }

      else
      {
        v10 = 0;
      }

      *&v7->_stateFlags = *&v7->_stateFlags & 0xF7 | v10;
      if ([(NSCoder *)v4 decodeBoolForKey:@"pinned"])
      {
        v11 = 16;
      }

      else
      {
        v11 = 0;
      }

      *&v7->_stateFlags = *&v7->_stateFlags & 0xEF | v11;
      if (![(NSCoder *)v4 requiresSecureCoding])
      {
        v12 = [(NSCoder *)v4 decodeObjectForKey:@"customStates"];
        customStates = v7->_customStates;
        v7->_customStates = v12;
      }
    }
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_traitCollection forKey:@"traitCollection"];
  [coderCopy encodeBool:*&self->_stateFlags & 1 forKey:@"disabled"];
  [coderCopy encodeBool:(*&self->_stateFlags >> 1) & 1 forKey:@"highlighted"];
  [coderCopy encodeBool:(*&self->_stateFlags >> 2) & 1 forKey:@"selected"];
  [coderCopy encodeBool:(*&self->_stateFlags >> 3) & 1 forKey:@"focused"];
  [coderCopy encodeBool:(*&self->_stateFlags >> 4) & 1 forKey:@"pinned"];
  if (([coderCopy requiresSecureCoding] & 1) == 0)
  {
    [coderCopy encodeObject:self->_customStates forKey:@"customStates"];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 _initWithState:self];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = v6;
        if (((*&v6->_stateFlags ^ *&self->_stateFlags) & 0x1F) != 0)
        {
          LOBYTE(v8) = 0;
LABEL_20:

          goto LABEL_21;
        }

        traitCollection = v6->_traitCollection;
        v10 = self->_traitCollection;
        v11 = traitCollection;
        v12 = v11;
        if (v10 == v11)
        {
        }

        else
        {
          LOBYTE(v8) = 0;
          if (!v10 || !v11)
          {
LABEL_19:

            goto LABEL_20;
          }

          v8 = [(UITraitCollection *)v10 isEqual:v11];

          if (!v8)
          {
            goto LABEL_20;
          }
        }

        customStates = self->_customStates;
        v14 = v7->_customStates;
        v10 = customStates;
        v15 = v14;
        v12 = v15;
        if (v10 == v15)
        {
          LOBYTE(v8) = 1;
        }

        else
        {
          LOBYTE(v8) = 0;
          if (v10 && v15)
          {
            LOBYTE(v8) = [(UITraitCollection *)v10 isEqual:v15];
          }
        }

        goto LABEL_19;
      }
    }

    LOBYTE(v8) = 0;
  }

LABEL_21:

  return v8;
}

- (unint64_t)hash
{
  v3 = *&self->_stateFlags & 0x1F;
  v4 = [(UITraitCollection *)self->_traitCollection hash]^ v3;
  return v4 ^ [(NSMutableDictionary *)self->_customStates hash];
}

- (void)_appendPropertiesForDescription:(id)description
{
  descriptionCopy = description;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"traitCollection = %@", self->_traitCollection];
  [descriptionCopy addObject:v4];

  stateFlags = self->_stateFlags;
  if (stateFlags)
  {
    [descriptionCopy addObject:@"Disabled"];
    stateFlags = self->_stateFlags;
    if ((stateFlags & 2) == 0)
    {
LABEL_3:
      if ((stateFlags & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_stateFlags & 2) == 0)
  {
    goto LABEL_3;
  }

  [descriptionCopy addObject:@"Highlighted"];
  stateFlags = self->_stateFlags;
  if ((stateFlags & 4) == 0)
  {
LABEL_4:
    if ((stateFlags & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [descriptionCopy addObject:@"Selected"];
  stateFlags = self->_stateFlags;
  if ((stateFlags & 8) == 0)
  {
LABEL_5:
    if ((stateFlags & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  [descriptionCopy addObject:@"Focused"];
  if ((*&self->_stateFlags & 0x10) != 0)
  {
LABEL_6:
    [descriptionCopy addObject:@"Pinned"];
  }

LABEL_7:
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(UIViewConfigurationState *)self _appendPropertiesForDescription:v3];
  if (self->_customStates)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Custom = %@", self->_customStates];
    [v3 addObject:v4];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 componentsJoinedByString:@" "];;
  v9 = [v5 stringWithFormat:@"<%@: %p %@>", v7, self, v8];;

  return v9;
}

- (void)setDisabled:(BOOL)disabled
{
  stateFlags = self->_stateFlags;
  if ((stateFlags & 1) != disabled)
  {
    ++self->_mutations;
    *&self->_stateFlags = stateFlags & 0xFE | disabled;
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  stateFlags = self->_stateFlags;
  if (((((stateFlags & 2) == 0) ^ highlighted) & 1) == 0)
  {
    ++self->_mutations;
    if (highlighted)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    *&self->_stateFlags = stateFlags & 0xFD | v4;
  }
}

- (void)setSelected:(BOOL)selected
{
  stateFlags = self->_stateFlags;
  if (((((stateFlags & 4) == 0) ^ selected) & 1) == 0)
  {
    ++self->_mutations;
    if (selected)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    *&self->_stateFlags = stateFlags & 0xFB | v4;
  }
}

- (void)setFocused:(BOOL)focused
{
  stateFlags = self->_stateFlags;
  if (((((stateFlags & 8) == 0) ^ focused) & 1) == 0)
  {
    ++self->_mutations;
    if (focused)
    {
      v4 = 8;
    }

    else
    {
      v4 = 0;
    }

    *&self->_stateFlags = stateFlags & 0xF7 | v4;
  }
}

- (void)setPinned:(BOOL)pinned
{
  stateFlags = self->_stateFlags;
  if (((((stateFlags & 0x10) == 0) ^ pinned) & 1) == 0)
  {
    ++self->_mutations;
    if (pinned)
    {
      v4 = 16;
    }

    else
    {
      v4 = 0;
    }

    *&self->_stateFlags = stateFlags & 0xEF | v4;
  }
}

- (void)_setContextMenuGroupLocation:(int64_t)location
{
  if (location || self->_customStates)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [(UIViewConfigurationState *)self setCustomState:v4 forKey:@"_UICompactContextMenuGroupLocation"];
  }
}

- (void)setTraitCollection:(UITraitCollection *)traitCollection
{
  v6 = traitCollection;
  if (!v6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIViewConfigurationState.m" lineNumber:185 description:{@"Invalid parameter not satisfying: %@", @"traitCollection != nil"}];

    v6 = 0;
  }

  if (self->_traitCollection != v6)
  {
    ++self->_mutations;
    v8 = v6;
    objc_storeStrong(&self->_traitCollection, traitCollection);
    v6 = v8;
  }
}

- (void)setCustomState:(id)state forKey:(id)key
{
  stateCopy = state;
  keyCopy = key;
  if (self)
  {
    ++self->_mutations;
  }

  customStates = self->_customStates;
  if (!customStates)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_customStates;
    self->_customStates = v8;

    customStates = self->_customStates;
  }

  [(NSMutableDictionary *)customStates setObject:stateCopy forKeyedSubscript:keyCopy];
}

- (void)_configureWithViewConfigurationState:(unint64_t)state
{
  [(UIViewConfigurationState *)self setHighlighted:state & 1];
  [(UIViewConfigurationState *)self setDisabled:(state >> 1) & 1];
  [(UIViewConfigurationState *)self setSelected:(state >> 2) & 1];
  [(UIViewConfigurationState *)self setFocused:(state >> 3) & 1];
  [(UIViewConfigurationState *)self setPinned:(state >> 11) & 1];

  [(UIViewConfigurationState *)self _setContextMenuGroupLocation:(state >> 12) & 7];
}

@end