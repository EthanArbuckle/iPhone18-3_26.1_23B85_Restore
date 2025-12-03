@interface SBSRelativeDisplayArrangement
- (SBSRelativeDisplayArrangement)initWithCoder:(id)coder;
- (SBSRelativeDisplayArrangement)initWithDisplayIdentifier:(id)identifier edge:(unsigned int)edge offset:(double)offset;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBSRelativeDisplayArrangement

- (SBSRelativeDisplayArrangement)initWithDisplayIdentifier:(id)identifier edge:(unsigned int)edge offset:(double)offset
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = SBSRelativeDisplayArrangement;
  v10 = [(SBSRelativeDisplayArrangement *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_displayIdentifier, identifier);
    v11->_edge = edge;
    v11->_offset = offset;
  }

  return v11;
}

- (SBSRelativeDisplayArrangement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = SBSRelativeDisplayArrangement;
  v5 = [(SBSRelativeDisplayArrangement *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayID"];
    displayIdentifier = v5->_displayIdentifier;
    v5->_displayIdentifier = v6;

    v5->_edge = [coderCopy decodeInt32ForKey:@"edge"];
    [coderCopy decodeDoubleForKey:@"offset"];
    v5->_offset = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  displayIdentifier = self->_displayIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:displayIdentifier forKey:@"displayID"];
  [coderCopy encodeInt32:self->_edge forKey:@"edge"];
  [coderCopy encodeDouble:@"offset" forKey:self->_offset];
}

@end