@interface SSEnvironmentElement
+ (id)_metadataIdentifierBlocklist;
- (BOOL)isAppLauncher;
- (BOOL)supportsMetadataCapture;
- (CGRect)rect;
- (NSString)loggableDescription;
- (SSEnvironmentElement)init;
- (SSEnvironmentElement)initWithBSXPCCoder:(id)a3;
- (SSEnvironmentElement)initWithDisplayLayoutElement:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation SSEnvironmentElement

- (SSEnvironmentElement)init
{
  v7.receiver = self;
  v7.super_class = SSEnvironmentElement;
  v2 = [(SSEnvironmentElement *)&v7 init];
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 bundleIdentifier];
  bundleIdentifier = v2->_bundleIdentifier;
  v2->_bundleIdentifier = v4;

  return v2;
}

- (SSEnvironmentElement)initWithDisplayLayoutElement:(id)a3
{
  v17.receiver = self;
  v17.super_class = SSEnvironmentElement;
  v3 = a3;
  v4 = [(SSEnvironmentElement *)&v17 init];
  [v3 frame];
  v4->_rect.origin.x = v5;
  v4->_rect.origin.y = v6;
  v4->_rect.size.width = v7;
  v4->_rect.size.height = v8;
  v9 = [v3 bundleIdentifier];
  bundleIdentifier = v4->_bundleIdentifier;
  v4->_bundleIdentifier = v9;

  v11 = [v3 identifier];
  elementIdentifier = v4->_elementIdentifier;
  v4->_elementIdentifier = v11;

  v13 = [MEMORY[0x1E696AFB0] UUID];
  v14 = [v13 UUIDString];
  identifier = v4->_identifier;
  v4->_identifier = v14;

  LOBYTE(v13) = [v3 hasKeyboardFocus];
  v4->_hasKeyboardFocus = v13;
  return v4;
}

- (NSString)loggableDescription
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(SSEnvironmentElement *)self identifier];
  v6 = [v5 shorterLoggableString];
  v7 = [v4 stringWithFormat:@"identifier: %@ ", v6];
  [v3 appendString:v7];

  v8 = MEMORY[0x1E696AEC0];
  [(SSEnvironmentElement *)self rect];
  v9 = NSStringFromCGRect(v13);
  v10 = [v8 stringWithFormat:@"rect: %@", v9];
  [v3 appendString:v10];

  return v3;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v7 = a3;
  [(SSEnvironmentElement *)self rect];
  [v7 encodeCGRect:@"SSEnvironmentElementRect" forKey:?];
  v4 = [(SSEnvironmentElement *)self bundleIdentifier];
  [v7 encodeObject:v4 forKey:@"SSEnvironmentElementBundleIdentifier"];

  v5 = [(SSEnvironmentElement *)self elementIdentifier];
  [v7 encodeObject:v5 forKey:@"SSEnvironmentElementIdentifier"];

  v6 = [(SSEnvironmentElement *)self identifier];
  [v7 encodeObject:v6 forKey:@"SSEnvironmentElementUUID"];

  [v7 encodeBool:-[SSEnvironmentElement hasKeyboardFocus](self forKey:{"hasKeyboardFocus"), @"SSEnvironmentElementHasKeyboardFocusKey"}];
}

- (SSEnvironmentElement)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(SSEnvironmentElement *)self init];
  [v4 decodeCGRectForKey:@"SSEnvironmentElementRect"];
  v5->_rect.origin.x = v6;
  v5->_rect.origin.y = v7;
  v5->_rect.size.width = v8;
  v5->_rect.size.height = v9;
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentElementBundleIdentifier"];
  bundleIdentifier = v5->_bundleIdentifier;
  v5->_bundleIdentifier = v10;

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentElementIdentifier"];
  elementIdentifier = v5->_elementIdentifier;
  v5->_elementIdentifier = v12;

  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentElementUUID"];
  identifier = v5->_identifier;
  v5->_identifier = v14;

  v16 = [v4 decodeBoolForKey:@"SSEnvironmentElementHasKeyboardFocusKey"];
  v5->_hasKeyboardFocus = v16;
  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [(SSEnvironmentElement *)self rect];
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  v4[4] = v8;
  v9 = [(SSEnvironmentElement *)self bundleIdentifier];
  v10 = v4[5];
  v4[5] = v9;

  v11 = [(SSEnvironmentElement *)self elementIdentifier];
  v12 = v4[6];
  v4[6] = v11;

  v13 = [(SSEnvironmentElement *)self identifier];
  v14 = v4[7];
  v4[7] = v13;

  *(v4 + 64) = [(SSEnvironmentElement *)self hasKeyboardFocus];
  return v4;
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

+ (id)_metadataIdentifierBlocklist
{
  if (_metadataIdentifierBlocklist_onceToken != -1)
  {
    +[SSEnvironmentElement _metadataIdentifierBlocklist];
  }

  v3 = _metadataIdentifierBlocklist___metadataIdentifierBlocklist;

  return v3;
}

uint64_t __52__SSEnvironmentElement__metadataIdentifierBlocklist__block_invoke()
{
  _metadataIdentifierBlocklist___metadataIdentifierBlocklist = [MEMORY[0x1E695DFA8] setWithObjects:{*MEMORY[0x1E69D43D8], *MEMORY[0x1E69D43B8], *MEMORY[0x1E69D4410], *MEMORY[0x1E69D43F8], *MEMORY[0x1E69D43C0], *MEMORY[0x1E69D43F0], *MEMORY[0x1E69D4400], *MEMORY[0x1E69D43E8], *MEMORY[0x1E69D43D0], *MEMORY[0x1E699F8A0], *MEMORY[0x1E699F8B0], *MEMORY[0x1E699F898], *MEMORY[0x1E699F8A8], *MEMORY[0x1E69D43C8], *MEMORY[0x1E69D4408], 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)supportsMetadataCapture
{
  v3 = [objc_opt_class() _metadataIdentifierBlocklist];
  v4 = [(SSEnvironmentElement *)self bundleIdentifier];
  if ([v3 containsObject:v4])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = [objc_opt_class() _metadataIdentifierBlocklist];
    v7 = [(SSEnvironmentElement *)self elementIdentifier];
    v5 = [v6 containsObject:v7] ^ 1;
  }

  return v5;
}

- (BOOL)isAppLauncher
{
  if (([(NSString *)self->_elementIdentifier isEqual:*MEMORY[0x1E69D43A8]]& 1) != 0 || ([(NSString *)self->_elementIdentifier isEqual:*MEMORY[0x1E69D43B0]]& 1) != 0 || ([(NSString *)self->_elementIdentifier isEqual:*MEMORY[0x1E69D4420]]& 1) != 0)
  {
    return 1;
  }

  elementIdentifier = self->_elementIdentifier;
  v5 = *MEMORY[0x1E69D43E0];

  return [(NSString *)elementIdentifier isEqual:v5];
}

@end