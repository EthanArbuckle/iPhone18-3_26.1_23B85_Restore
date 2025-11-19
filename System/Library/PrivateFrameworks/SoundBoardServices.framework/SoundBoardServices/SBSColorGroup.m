@interface SBSColorGroup
- (SBSColorGroup)initWithBackground:(id)a3 primaryText:(id)a4 secondaryText:(id)a5;
- (SBSColorGroup)initWithCoder:(id)a3;
- (SBSColorGroup)initWithData:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBSColorGroup

- (SBSColorGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"background"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryText"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secondaryText"];

  v8 = [[SBSColorGroup alloc] initWithBackground:v5 primaryText:v6 secondaryText:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  background = self->_background;
  v5 = a3;
  [v5 encodeObject:background forKey:@"background"];
  [v5 encodeObject:self->_primaryText forKey:@"primaryText"];
  [v5 encodeObject:self->_secondaryText forKey:@"secondaryText"];
}

- (SBSColorGroup)initWithBackground:(id)a3 primaryText:(id)a4 secondaryText:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SBSColorGroup;
  v12 = [(SBSColorGroup *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_background, a3);
    objc_storeStrong(&v13->_primaryText, a4);
    objc_storeStrong(&v13->_secondaryText, a5);
  }

  return v13;
}

- (SBSColorGroup)initWithData:(id)a3
{
  v4 = MEMORY[0x277CCAAC8];
  v5 = a3;
  v9 = 0;
  v6 = [v4 unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v9];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end