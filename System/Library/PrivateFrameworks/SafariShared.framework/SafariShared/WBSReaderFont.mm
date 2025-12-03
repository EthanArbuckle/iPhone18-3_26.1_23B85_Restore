@interface WBSReaderFont
+ (WBSReaderFont)fontWithFamilyName:(id)name displayName:(id)displayName;
+ (WBSReaderFont)systemSerifFont;
+ (id)systemFontWithDisplayName:(id)name;
+ (void)postActivateNotification:(id)notification;
- (BOOL)isEqual:(id)equal;
- (BOOL)isInstalled;
- (NSString)displayName;
- (NSString)familyNameForWebContent;
- (__CTFontDescriptor)_createFontDescriptorRefForFontFamilyName:(id)name restrictToEnabled:(BOOL)enabled;
- (id)_initWithFamilyName:(id)name displayName:(id)displayName type:(int64_t)type;
- (id)_localizedName;
- (id)description;
- (unint64_t)hash;
@end

@implementation WBSReaderFont

+ (id)systemFontWithDisplayName:(id)name
{
  nameCopy = name;
  v5 = [[self alloc] _initWithFamilyName:@"System" displayName:nameCopy type:1];

  return v5;
}

+ (WBSReaderFont)systemSerifFont
{
  v2 = [[self alloc] _initWithFamilyName:@"System Serif" displayName:@"New York" type:2];

  return v2;
}

+ (WBSReaderFont)fontWithFamilyName:(id)name displayName:(id)displayName
{
  nameCopy = name;
  displayNameCopy = displayName;
  v8 = [[self alloc] _initWithFamilyName:nameCopy displayName:displayNameCopy type:0];

  return v8;
}

- (id)_initWithFamilyName:(id)name displayName:(id)displayName type:(int64_t)type
{
  nameCopy = name;
  displayNameCopy = displayName;
  v17.receiver = self;
  v17.super_class = WBSReaderFont;
  v10 = [(WBSReaderFont *)&v17 init];
  if (v10)
  {
    v11 = [nameCopy copy];
    familyName = v10->_familyName;
    v10->_familyName = v11;

    v13 = [displayNameCopy copy];
    displayName = v10->_displayName;
    v10->_displayName = v13;

    v10->_type = type;
    v15 = v10;
  }

  return v10;
}

- (NSString)familyNameForWebContent
{
  if (self->_type > 1uLL)
  {
    v3 = @"ui-serif";
  }

  else
  {
    v3 = self->_familyName;
  }

  return v3;
}

- (NSString)displayName
{
  displayName = self->_displayName;
  if (displayName)
  {
    _localizedName = displayName;
  }

  else
  {
    _localizedName = [(WBSReaderFont *)self _localizedName];
  }

  return _localizedName;
}

- (BOOL)isInstalled
{
  if ((self->_type - 1) < 2)
  {
    return 1;
  }

  v3 = [(WBSReaderFont *)self _createFontDescriptorRefForFontFamilyName:self->_familyName restrictToEnabled:1];
  v2 = v3 != 0;

  return v2;
}

+ (void)postActivateNotification:(id)notification
{
  v7[1] = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = @"FontActivateNotificationFontFamilyKey";
  v7[0] = notificationCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [defaultCenter postNotificationName:@"FontActivateNotification" object:0 userInfo:v5];
}

- (id)_localizedName
{
  if (self->_hasCalculatedLocalizedName)
  {
    p_localizedName = &self->_localizedName;
  }

  else
  {
    v4 = [(WBSReaderFont *)self _createFontDescriptorRefForFontFamilyName:self->_familyName restrictToEnabled:0];
    if (v4)
    {
      v5 = v4;
      v6 = CTFontDescriptorCopyLocalizedAttribute(v4, *MEMORY[0x1E6965790], 0);
      localizedName = self->_localizedName;
      self->_localizedName = v6;

      CFRelease(v5);
    }

    p_localizedName = &self->_localizedName;
    if (![(NSString *)self->_localizedName length])
    {
      objc_storeStrong(&self->_localizedName, self->_familyName);
    }

    self->_hasCalculatedLocalizedName = 1;
  }

  v8 = *p_localizedName;

  return v8;
}

- (__CTFontDescriptor)_createFontDescriptorRefForFontFamilyName:(id)name restrictToEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v6 setObject:self->_familyName forKeyedSubscript:*MEMORY[0x1E6965790]];
  if (enabledCopy)
  {
    [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6965780]];
  }

  v7 = CTFontDescriptorCreateWithAttributes(v6);
  v8 = v7;
  if (v7)
  {
    MatchingFontDescriptor = CTFontDescriptorCreateMatchingFontDescriptor(v7, 0);
    CFRelease(v8);
  }

  else
  {
    MatchingFontDescriptor = 0;
  }

  return MatchingFontDescriptor;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      familyName = [(WBSReaderFont *)self familyName];
      familyName2 = [(WBSReaderFont *)v5 familyName];
      if (WBSIsEqual())
      {
        displayName = [(WBSReaderFont *)self displayName];
        displayName2 = [(WBSReaderFont *)v5 displayName];
        if (WBSIsEqual())
        {
          v10 = self->_type == v5->_type;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  familyName = [(WBSReaderFont *)self familyName];
  v4 = [familyName hash];
  displayName = [(WBSReaderFont *)self displayName];
  v6 = [displayName hash] ^ v4;
  type = self->_type;

  return v6 ^ type;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  type = self->_type;
  v6 = @"Named";
  if (type == 1)
  {
    v6 = @"System";
  }

  if (type == 2)
  {
    v7 = @"System Serif";
  }

  else
  {
    v7 = v6;
  }

  v8 = [v3 stringWithFormat:@"<%@: %p familyName = %@; displayName = %@; type = %@>", v4, self, self->_familyName, self->_displayName, v7];;

  return v8;
}

@end