@interface SPUnknownProductMetadata
- (SPUnknownProductMetadata)initWithCoder:(id)coder;
- (SPUnknownProductMetadata)initWithTitle:(id)title description:(id)description percentageX:(double)x percentageY:(double)y image:(id)image image2x:(id)image2x image3x:(id)image3x;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPUnknownProductMetadata

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SPUnknownProductMetadata alloc];
  title = [(SPUnknownProductMetadata *)self title];
  moreDescription = [(SPUnknownProductMetadata *)self moreDescription];
  [(SPUnknownProductMetadata *)self percentageX];
  v8 = v7;
  [(SPUnknownProductMetadata *)self percentageY];
  v10 = v9;
  image = [(SPUnknownProductMetadata *)self image];
  image2x = [(SPUnknownProductMetadata *)self image2x];
  image3x = [(SPUnknownProductMetadata *)self image3x];
  v14 = [(SPUnknownProductMetadata *)v4 initWithTitle:title description:moreDescription percentageX:image percentageY:image2x image:image3x image2x:v8 image3x:v10];

  return v14;
}

- (SPUnknownProductMetadata)initWithTitle:(id)title description:(id)description percentageX:(double)x percentageY:(double)y image:(id)image image2x:(id)image2x image3x:(id)image3x
{
  titleCopy = title;
  descriptionCopy = description;
  imageCopy = image;
  image2xCopy = image2x;
  image3xCopy = image3x;
  v25.receiver = self;
  v25.super_class = SPUnknownProductMetadata;
  v21 = [(SPUnknownProductMetadata *)&v25 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_title, title);
    objc_storeStrong(&v22->_moreDescription, description);
    v22->_percentageX = x;
    v22->_percentageY = y;
    objc_storeStrong(&v22->_image, image);
    objc_storeStrong(&v22->_image2x, image2x);
    objc_storeStrong(&v22->_image3x, image3x);
  }

  return v22;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_moreDescription forKey:@"moreDescription"];
  [coderCopy encodeDouble:@"percentageX" forKey:self->_percentageX];
  [coderCopy encodeDouble:@"percentageY" forKey:self->_percentageY];
  [coderCopy encodeObject:self->_image forKey:@"image"];
  [coderCopy encodeObject:self->_image2x forKey:@"image2x"];
  [coderCopy encodeObject:self->_image3x forKey:@"image3x"];
}

- (SPUnknownProductMetadata)initWithCoder:(id)coder
{
  v22[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  title = self->_title;
  self->_title = v5;

  v7 = MEMORY[0x277CBEB98];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"moreDescription"];
  moreDescription = self->_moreDescription;
  self->_moreDescription = v10;

  [coderCopy decodeDoubleForKey:@"percentageX"];
  self->_percentageX = v12;
  [coderCopy decodeDoubleForKey:@"percentageY"];
  self->_percentageY = v13;
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];
  image = self->_image;
  self->_image = v14;

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image2x"];
  image2x = self->_image2x;
  self->_image2x = v16;

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image3x"];

  image3x = self->_image3x;
  self->_image3x = v18;

  v20 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(SPUnknownProductMetadata *)self percentageX];
  v6 = v5;
  [(SPUnknownProductMetadata *)self percentageY];
  return [v3 stringWithFormat:@"<%@ %p: %.06f/%.06f>", v4, self, v6, v7];
}

@end