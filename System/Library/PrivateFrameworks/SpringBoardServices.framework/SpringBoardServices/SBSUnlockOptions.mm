@interface SBSUnlockOptions
- (SBSUnlockOptions)initWithBSXPCCoder:(id)a3;
- (SBSUnlockOptions)initWithXPCDictionary:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation SBSUnlockOptions

- (SBSUnlockOptions)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SBSUnlockOptions;
  v5 = [(SBSUnlockOptions *)&v13 init];
  if (v5)
  {
    v5->_aboveOtherContexts = xpc_dictionary_get_BOOL(v4, [@"aboveOtherContexts" UTF8String]);
    string = xpc_dictionary_get_string(v4, [@"title" UTF8String]);
    if (string)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
      title = v5->_title;
      v5->_title = v7;
    }

    v9 = xpc_dictionary_get_string(v4, [@"subtitle" UTF8String]);
    if (v9)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
      subtitle = v5->_subtitle;
      v5->_subtitle = v10;
    }
  }

  return v5;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  xdict = a3;
  xpc_dictionary_set_BOOL(xdict, [@"aboveOtherContexts" UTF8String], self->_aboveOtherContexts);
  v4 = [(SBSUnlockOptions *)self title];

  if (v4)
  {
    v5 = [(SBSUnlockOptions *)self title];
    v6 = [v5 UTF8String];

    xpc_dictionary_set_string(xdict, [@"title" UTF8String], v6);
  }

  v7 = [(SBSUnlockOptions *)self subtitle];

  if (v7)
  {
    v8 = [(SBSUnlockOptions *)self subtitle];
    v9 = [v8 UTF8String];

    xpc_dictionary_set_string(xdict, [@"subtitle" UTF8String], v9);
  }
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v8 = a3;
  [v8 encodeBool:self->_aboveOtherContexts forKey:@"aboveOtherContexts"];
  v4 = [(SBSUnlockOptions *)self title];

  if (v4)
  {
    v5 = [(SBSUnlockOptions *)self title];
    [v8 encodeObject:v5 forKey:@"title"];
  }

  v6 = [(SBSUnlockOptions *)self subtitle];

  if (v6)
  {
    v7 = [(SBSUnlockOptions *)self subtitle];
    [v8 encodeObject:v7 forKey:@"subtitle"];
  }
}

- (SBSUnlockOptions)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBSUnlockOptions;
  v5 = [(SBSUnlockOptions *)&v9 init];
  if (v5)
  {
    v5->_aboveOtherContexts = [v4 decodeBoolForKey:@"aboveOtherContexts"];
    v6 = [v4 decodeStringForKey:@"title"];
    [(SBSUnlockOptions *)v5 _setTitle:v6];

    v7 = [v4 decodeStringForKey:@"subtitle"];
    [(SBSUnlockOptions *)v5 _setSubtitle:v7];
  }

  return v5;
}

@end