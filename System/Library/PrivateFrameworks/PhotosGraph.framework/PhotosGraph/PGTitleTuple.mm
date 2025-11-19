@interface PGTitleTuple
- (BOOL)isEqual:(id)a3;
- (PGTitleTuple)initWithWithTitle:(id)a3 subtitle:(id)a4 locationNames:(id)a5;
- (id)description;
@end

@implementation PGTitleTuple

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PGTitle *)self->_title description];
  v7 = [(PGTitle *)self->_subtitle description];
  v8 = [v3 stringWithFormat:@"<%@: %p> title: %@, subtitle: %@", v5, self, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
    goto LABEL_17;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_3;
  }

  title = self->_title;
  v8 = [(PGTitleTuple *)v4 title];
  v9 = v8;
  if (title == v8)
  {
  }

  else
  {
    v10 = self->_title;
    v11 = [(PGTitleTuple *)v4 title];
    LODWORD(v10) = [(PGTitle *)v10 isEqual:v11];

    if (!v10)
    {
      goto LABEL_3;
    }
  }

  subtitle = self->_subtitle;
  v13 = [(PGTitleTuple *)v4 subtitle];
  v14 = v13;
  if (subtitle != v13)
  {
    v15 = self->_subtitle;
    v16 = [(PGTitleTuple *)v4 subtitle];
    LODWORD(v15) = [(PGTitle *)v15 isEqual:v16];

    if (v15)
    {
      goto LABEL_13;
    }

LABEL_3:
    v6 = 0;
    goto LABEL_17;
  }

LABEL_13:
  locationNames = self->_locationNames;
  v18 = [(PGTitleTuple *)v4 locationNames];
  if (locationNames == v18)
  {
    v6 = 1;
  }

  else
  {
    v19 = self->_locationNames;
    v20 = [(PGTitleTuple *)v4 locationNames];
    v6 = [(NSArray *)v19 isEqual:v20];
  }

LABEL_17:
  return v6;
}

- (PGTitleTuple)initWithWithTitle:(id)a3 subtitle:(id)a4 locationNames:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PGTitleTuple;
  v12 = [(PGTitleTuple *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, a3);
    objc_storeStrong(&v13->_subtitle, a4);
    objc_storeStrong(&v13->_locationNames, a5);
  }

  return v13;
}

@end