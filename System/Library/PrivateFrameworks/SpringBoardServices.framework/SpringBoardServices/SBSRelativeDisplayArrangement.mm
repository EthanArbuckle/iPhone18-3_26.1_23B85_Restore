@interface SBSRelativeDisplayArrangement
- (SBSRelativeDisplayArrangement)initWithCoder:(id)a3;
- (SBSRelativeDisplayArrangement)initWithDisplayIdentifier:(id)a3 edge:(unsigned int)a4 offset:(double)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBSRelativeDisplayArrangement

- (SBSRelativeDisplayArrangement)initWithDisplayIdentifier:(id)a3 edge:(unsigned int)a4 offset:(double)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = SBSRelativeDisplayArrangement;
  v10 = [(SBSRelativeDisplayArrangement *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_displayIdentifier, a3);
    v11->_edge = a4;
    v11->_offset = a5;
  }

  return v11;
}

- (SBSRelativeDisplayArrangement)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBSRelativeDisplayArrangement;
  v5 = [(SBSRelativeDisplayArrangement *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayID"];
    displayIdentifier = v5->_displayIdentifier;
    v5->_displayIdentifier = v6;

    v5->_edge = [v4 decodeInt32ForKey:@"edge"];
    [v4 decodeDoubleForKey:@"offset"];
    v5->_offset = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  displayIdentifier = self->_displayIdentifier;
  v5 = a3;
  [v5 encodeObject:displayIdentifier forKey:@"displayID"];
  [v5 encodeInt32:self->_edge forKey:@"edge"];
  [v5 encodeDouble:@"offset" forKey:self->_offset];
}

@end