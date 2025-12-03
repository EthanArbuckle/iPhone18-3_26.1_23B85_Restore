@interface SLShareableContentRepresentation
- (NSString)description;
- (SLShareableContentRepresentation)initWithBSXPCCoder:(id)coder;
- (SLShareableContentRepresentation)initWithCoder:(id)coder;
- (SLShareableContentRepresentation)initWithTypeIdentifier:(id)identifier preferredRepresentation:(int64_t)representation;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SLShareableContentRepresentation

- (SLShareableContentRepresentation)initWithTypeIdentifier:(id)identifier preferredRepresentation:(int64_t)representation
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = SLShareableContentRepresentation;
  v8 = [(SLShareableContentRepresentation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_typeIdentifier, identifier);
    v9->_preferredRepresentation = representation;
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  typeIdentifier = [(SLShareableContentRepresentation *)self typeIdentifier];
  preferredRepresentation = [(SLShareableContentRepresentation *)self preferredRepresentation];
  v6 = @"Data";
  if (preferredRepresentation == 1)
  {
    v6 = @"FileCopy";
  }

  if (preferredRepresentation == 2)
  {
    v6 = @"OpenInPlace";
  }

  v7 = [v3 stringWithFormat:@"%@ (%@)", typeIdentifier, v6];

  return v7;
}

- (SLShareableContentRepresentation)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_typeIdentifier);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = NSStringFromSelector(sel_preferredRepresentation);
  v9 = [coderCopy decodeInt64ForKey:v8];

  v10 = [(SLShareableContentRepresentation *)self initWithTypeIdentifier:v7 preferredRepresentation:v9];
  return v10;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  typeIdentifier = [(SLShareableContentRepresentation *)self typeIdentifier];
  v6 = NSStringFromSelector(sel_typeIdentifier);
  [coderCopy encodeObject:typeIdentifier forKey:v6];

  preferredRepresentation = [(SLShareableContentRepresentation *)self preferredRepresentation];
  v8 = NSStringFromSelector(sel_preferredRepresentation);
  [coderCopy encodeInt64:preferredRepresentation forKey:v8];
}

- (SLShareableContentRepresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_typeIdentifier);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = NSStringFromSelector(sel_preferredRepresentation);
  v9 = [coderCopy decodeIntegerForKey:v8];

  v10 = [(SLShareableContentRepresentation *)self initWithTypeIdentifier:v7 preferredRepresentation:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  typeIdentifier = [(SLShareableContentRepresentation *)self typeIdentifier];
  v6 = NSStringFromSelector(sel_typeIdentifier);
  [coderCopy encodeObject:typeIdentifier forKey:v6];

  preferredRepresentation = [(SLShareableContentRepresentation *)self preferredRepresentation];
  v8 = NSStringFromSelector(sel_preferredRepresentation);
  [coderCopy encodeInteger:preferredRepresentation forKey:v8];
}

@end