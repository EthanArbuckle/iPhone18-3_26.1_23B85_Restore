@interface SBSUnlockOptions
- (SBSUnlockOptions)initWithBSXPCCoder:(id)coder;
- (SBSUnlockOptions)initWithXPCDictionary:(id)dictionary;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation SBSUnlockOptions

- (SBSUnlockOptions)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = SBSUnlockOptions;
  v5 = [(SBSUnlockOptions *)&v13 init];
  if (v5)
  {
    v5->_aboveOtherContexts = xpc_dictionary_get_BOOL(dictionaryCopy, [@"aboveOtherContexts" UTF8String]);
    string = xpc_dictionary_get_string(dictionaryCopy, [@"title" UTF8String]);
    if (string)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
      title = v5->_title;
      v5->_title = v7;
    }

    v9 = xpc_dictionary_get_string(dictionaryCopy, [@"subtitle" UTF8String]);
    if (v9)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
      subtitle = v5->_subtitle;
      v5->_subtitle = v10;
    }
  }

  return v5;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  xdict = dictionary;
  xpc_dictionary_set_BOOL(xdict, [@"aboveOtherContexts" UTF8String], self->_aboveOtherContexts);
  title = [(SBSUnlockOptions *)self title];

  if (title)
  {
    title2 = [(SBSUnlockOptions *)self title];
    uTF8String = [title2 UTF8String];

    xpc_dictionary_set_string(xdict, [@"title" UTF8String], uTF8String);
  }

  subtitle = [(SBSUnlockOptions *)self subtitle];

  if (subtitle)
  {
    subtitle2 = [(SBSUnlockOptions *)self subtitle];
    uTF8String2 = [subtitle2 UTF8String];

    xpc_dictionary_set_string(xdict, [@"subtitle" UTF8String], uTF8String2);
  }
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:self->_aboveOtherContexts forKey:@"aboveOtherContexts"];
  title = [(SBSUnlockOptions *)self title];

  if (title)
  {
    title2 = [(SBSUnlockOptions *)self title];
    [coderCopy encodeObject:title2 forKey:@"title"];
  }

  subtitle = [(SBSUnlockOptions *)self subtitle];

  if (subtitle)
  {
    subtitle2 = [(SBSUnlockOptions *)self subtitle];
    [coderCopy encodeObject:subtitle2 forKey:@"subtitle"];
  }
}

- (SBSUnlockOptions)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SBSUnlockOptions;
  v5 = [(SBSUnlockOptions *)&v9 init];
  if (v5)
  {
    v5->_aboveOtherContexts = [coderCopy decodeBoolForKey:@"aboveOtherContexts"];
    v6 = [coderCopy decodeStringForKey:@"title"];
    [(SBSUnlockOptions *)v5 _setTitle:v6];

    v7 = [coderCopy decodeStringForKey:@"subtitle"];
    [(SBSUnlockOptions *)v5 _setSubtitle:v7];
  }

  return v5;
}

@end