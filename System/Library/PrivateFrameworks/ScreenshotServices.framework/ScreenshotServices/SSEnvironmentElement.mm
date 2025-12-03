@interface SSEnvironmentElement
+ (id)_metadataIdentifierBlocklist;
- (BOOL)isAppLauncher;
- (BOOL)supportsMetadataCapture;
- (CGRect)rect;
- (NSString)loggableDescription;
- (SSEnvironmentElement)init;
- (SSEnvironmentElement)initWithBSXPCCoder:(id)coder;
- (SSEnvironmentElement)initWithDisplayLayoutElement:(id)element;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation SSEnvironmentElement

- (SSEnvironmentElement)init
{
  v7.receiver = self;
  v7.super_class = SSEnvironmentElement;
  v2 = [(SSEnvironmentElement *)&v7 init];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  bundleIdentifier = v2->_bundleIdentifier;
  v2->_bundleIdentifier = bundleIdentifier;

  return v2;
}

- (SSEnvironmentElement)initWithDisplayLayoutElement:(id)element
{
  v17.receiver = self;
  v17.super_class = SSEnvironmentElement;
  elementCopy = element;
  v4 = [(SSEnvironmentElement *)&v17 init];
  [elementCopy frame];
  v4->_rect.origin.x = v5;
  v4->_rect.origin.y = v6;
  v4->_rect.size.width = v7;
  v4->_rect.size.height = v8;
  bundleIdentifier = [elementCopy bundleIdentifier];
  bundleIdentifier = v4->_bundleIdentifier;
  v4->_bundleIdentifier = bundleIdentifier;

  identifier = [elementCopy identifier];
  elementIdentifier = v4->_elementIdentifier;
  v4->_elementIdentifier = identifier;

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  identifier = v4->_identifier;
  v4->_identifier = uUIDString;

  LOBYTE(uUID) = [elementCopy hasKeyboardFocus];
  v4->_hasKeyboardFocus = uUID;
  return v4;
}

- (NSString)loggableDescription
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = MEMORY[0x1E696AEC0];
  identifier = [(SSEnvironmentElement *)self identifier];
  shorterLoggableString = [identifier shorterLoggableString];
  v7 = [v4 stringWithFormat:@"identifier: %@ ", shorterLoggableString];
  [string appendString:v7];

  v8 = MEMORY[0x1E696AEC0];
  [(SSEnvironmentElement *)self rect];
  v9 = NSStringFromCGRect(v13);
  v10 = [v8 stringWithFormat:@"rect: %@", v9];
  [string appendString:v10];

  return string;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [(SSEnvironmentElement *)self rect];
  [coderCopy encodeCGRect:@"SSEnvironmentElementRect" forKey:?];
  bundleIdentifier = [(SSEnvironmentElement *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"SSEnvironmentElementBundleIdentifier"];

  elementIdentifier = [(SSEnvironmentElement *)self elementIdentifier];
  [coderCopy encodeObject:elementIdentifier forKey:@"SSEnvironmentElementIdentifier"];

  identifier = [(SSEnvironmentElement *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"SSEnvironmentElementUUID"];

  [coderCopy encodeBool:-[SSEnvironmentElement hasKeyboardFocus](self forKey:{"hasKeyboardFocus"), @"SSEnvironmentElementHasKeyboardFocusKey"}];
}

- (SSEnvironmentElement)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SSEnvironmentElement *)self init];
  [coderCopy decodeCGRectForKey:@"SSEnvironmentElementRect"];
  v5->_rect.origin.x = v6;
  v5->_rect.origin.y = v7;
  v5->_rect.size.width = v8;
  v5->_rect.size.height = v9;
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentElementBundleIdentifier"];
  bundleIdentifier = v5->_bundleIdentifier;
  v5->_bundleIdentifier = v10;

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentElementIdentifier"];
  elementIdentifier = v5->_elementIdentifier;
  v5->_elementIdentifier = v12;

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSEnvironmentElementUUID"];
  identifier = v5->_identifier;
  v5->_identifier = v14;

  v16 = [coderCopy decodeBoolForKey:@"SSEnvironmentElementHasKeyboardFocusKey"];
  v5->_hasKeyboardFocus = v16;
  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [(SSEnvironmentElement *)self rect];
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  v4[4] = v8;
  bundleIdentifier = [(SSEnvironmentElement *)self bundleIdentifier];
  v10 = v4[5];
  v4[5] = bundleIdentifier;

  elementIdentifier = [(SSEnvironmentElement *)self elementIdentifier];
  v12 = v4[6];
  v4[6] = elementIdentifier;

  identifier = [(SSEnvironmentElement *)self identifier];
  v14 = v4[7];
  v4[7] = identifier;

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
  _metadataIdentifierBlocklist = [objc_opt_class() _metadataIdentifierBlocklist];
  bundleIdentifier = [(SSEnvironmentElement *)self bundleIdentifier];
  if ([_metadataIdentifierBlocklist containsObject:bundleIdentifier])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    _metadataIdentifierBlocklist2 = [objc_opt_class() _metadataIdentifierBlocklist];
    elementIdentifier = [(SSEnvironmentElement *)self elementIdentifier];
    v5 = [_metadataIdentifierBlocklist2 containsObject:elementIdentifier] ^ 1;
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