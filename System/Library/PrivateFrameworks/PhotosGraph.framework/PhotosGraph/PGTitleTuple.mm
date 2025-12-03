@interface PGTitleTuple
- (BOOL)isEqual:(id)equal;
- (PGTitleTuple)initWithWithTitle:(id)title subtitle:(id)subtitle locationNames:(id)names;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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
  title = [(PGTitleTuple *)equalCopy title];
  v9 = title;
  if (title == title)
  {
  }

  else
  {
    v10 = self->_title;
    title2 = [(PGTitleTuple *)equalCopy title];
    LODWORD(v10) = [(PGTitle *)v10 isEqual:title2];

    if (!v10)
    {
      goto LABEL_3;
    }
  }

  subtitle = self->_subtitle;
  subtitle = [(PGTitleTuple *)equalCopy subtitle];
  v14 = subtitle;
  if (subtitle != subtitle)
  {
    v15 = self->_subtitle;
    subtitle2 = [(PGTitleTuple *)equalCopy subtitle];
    LODWORD(v15) = [(PGTitle *)v15 isEqual:subtitle2];

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
  locationNames = [(PGTitleTuple *)equalCopy locationNames];
  if (locationNames == locationNames)
  {
    v6 = 1;
  }

  else
  {
    v19 = self->_locationNames;
    locationNames2 = [(PGTitleTuple *)equalCopy locationNames];
    v6 = [(NSArray *)v19 isEqual:locationNames2];
  }

LABEL_17:
  return v6;
}

- (PGTitleTuple)initWithWithTitle:(id)title subtitle:(id)subtitle locationNames:(id)names
{
  titleCopy = title;
  subtitleCopy = subtitle;
  namesCopy = names;
  v15.receiver = self;
  v15.super_class = PGTitleTuple;
  v12 = [(PGTitleTuple *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, title);
    objc_storeStrong(&v13->_subtitle, subtitle);
    objc_storeStrong(&v13->_locationNames, names);
  }

  return v13;
}

@end