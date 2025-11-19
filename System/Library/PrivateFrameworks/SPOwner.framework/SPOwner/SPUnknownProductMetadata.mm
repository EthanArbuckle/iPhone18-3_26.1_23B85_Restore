@interface SPUnknownProductMetadata
- (SPUnknownProductMetadata)initWithCoder:(id)a3;
- (SPUnknownProductMetadata)initWithTitle:(id)a3 description:(id)a4 percentageX:(double)a5 percentageY:(double)a6 image:(id)a7 image2x:(id)a8 image3x:(id)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPUnknownProductMetadata

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SPUnknownProductMetadata alloc];
  v5 = [(SPUnknownProductMetadata *)self title];
  v6 = [(SPUnknownProductMetadata *)self moreDescription];
  [(SPUnknownProductMetadata *)self percentageX];
  v8 = v7;
  [(SPUnknownProductMetadata *)self percentageY];
  v10 = v9;
  v11 = [(SPUnknownProductMetadata *)self image];
  v12 = [(SPUnknownProductMetadata *)self image2x];
  v13 = [(SPUnknownProductMetadata *)self image3x];
  v14 = [(SPUnknownProductMetadata *)v4 initWithTitle:v5 description:v6 percentageX:v11 percentageY:v12 image:v13 image2x:v8 image3x:v10];

  return v14;
}

- (SPUnknownProductMetadata)initWithTitle:(id)a3 description:(id)a4 percentageX:(double)a5 percentageY:(double)a6 image:(id)a7 image2x:(id)a8 image3x:(id)a9
{
  v24 = a3;
  v17 = a4;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v25.receiver = self;
  v25.super_class = SPUnknownProductMetadata;
  v21 = [(SPUnknownProductMetadata *)&v25 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_title, a3);
    objc_storeStrong(&v22->_moreDescription, a4);
    v22->_percentageX = a5;
    v22->_percentageY = a6;
    objc_storeStrong(&v22->_image, a7);
    objc_storeStrong(&v22->_image2x, a8);
    objc_storeStrong(&v22->_image3x, a9);
  }

  return v22;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"title"];
  [v5 encodeObject:self->_moreDescription forKey:@"moreDescription"];
  [v5 encodeDouble:@"percentageX" forKey:self->_percentageX];
  [v5 encodeDouble:@"percentageY" forKey:self->_percentageY];
  [v5 encodeObject:self->_image forKey:@"image"];
  [v5 encodeObject:self->_image2x forKey:@"image2x"];
  [v5 encodeObject:self->_image3x forKey:@"image3x"];
}

- (SPUnknownProductMetadata)initWithCoder:(id)a3
{
  v22[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  title = self->_title;
  self->_title = v5;

  v7 = MEMORY[0x277CBEB98];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"moreDescription"];
  moreDescription = self->_moreDescription;
  self->_moreDescription = v10;

  [v4 decodeDoubleForKey:@"percentageX"];
  self->_percentageX = v12;
  [v4 decodeDoubleForKey:@"percentageY"];
  self->_percentageY = v13;
  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"image"];
  image = self->_image;
  self->_image = v14;

  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"image2x"];
  image2x = self->_image2x;
  self->_image2x = v16;

  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"image3x"];

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