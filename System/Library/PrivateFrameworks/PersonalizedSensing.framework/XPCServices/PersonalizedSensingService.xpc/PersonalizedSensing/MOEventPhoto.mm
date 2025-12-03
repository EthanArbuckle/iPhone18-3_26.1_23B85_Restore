@interface MOEventPhoto
+ (id)descriptionOfPhotoMomentSource:(unint64_t)source;
- (MOEventPhoto)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOEventPhoto

+ (id)descriptionOfPhotoMomentSource:(unint64_t)source
{
  if (source > 3)
  {
    return @"Invalid";
  }

  else
  {
    return off_1000B60B0[source];
  }
}

- (void)encodeWithCoder:(id)coder
{
  extendedAttributes = self->_extendedAttributes;
  coderCopy = coder;
  [coderCopy encodeObject:extendedAttributes forKey:@"extendedAttributes"];
  [coderCopy encodeInteger:self->_photoMomentSource forKey:@"photoMomentSource"];
  [coderCopy encodeObject:self->_photoMemoryTitle forKey:@"photoMemoryTitle"];
  [coderCopy encodeInteger:self->_photoMemoryCategory forKey:@"photoMemoryCategory"];
  [coderCopy encodeInteger:self->_photoMemorySubCategory forKey:@"photoMemorySubCategory"];
  [coderCopy encodeInteger:self->_photoMemoryRelevanceScore forKey:@"photoMemoryRelevanceScore"];
  [coderCopy encodeInteger:self->_photoMemoryIsFavorite forKey:@"photoMemoryIsFavorite"];
}

- (MOEventPhoto)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MOEventPhoto;
  v5 = [(MOEventPhoto *)&v11 init];
  if (v5)
  {
    v5->_photoMomentSource = [coderCopy decodeIntForKey:@"photoMomentSource"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extendedAttributes"];
    extendedAttributes = v5->_extendedAttributes;
    v5->_extendedAttributes = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"photoMemoryTitle"];
    photoMemoryTitle = v5->_photoMemoryTitle;
    v5->_photoMemoryTitle = v8;

    v5->_photoMemoryCategory = [coderCopy decodeIntegerForKey:@"photoMemoryCategory"];
    v5->_photoMemorySubCategory = [coderCopy decodeIntegerForKey:@"photoMemorySubCategory"];
    v5->_photoMemoryRelevanceScore = [coderCopy decodeIntegerForKey:@"photoMemoryRelevanceScore"];
    v5->_photoMemoryIsFavorite = [coderCopy decodeIntegerForKey:@"photoMemoryIsFavorite"] != 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MOEventPhoto);
  v4->_photoMomentSource = self->_photoMomentSource;
  objc_storeStrong(&v4->_extendedAttributes, self->_extendedAttributes);
  objc_storeStrong(&v4->_photoMemoryTitle, self->_photoMemoryTitle);
  v4->_photoMemoryCategory = self->_photoMemoryCategory;
  v4->_photoMemorySubCategory = self->_photoMemorySubCategory;
  v4->_photoMemoryRelevanceScore = self->_photoMemoryRelevanceScore;
  v4->_photoMemoryIsFavorite = self->_photoMemoryIsFavorite;
  objc_storeStrong(&v4->_photoAsset, self->_photoAsset);
  objc_storeStrong(&v4->_photoMemoryAssets, self->_photoMemoryAssets);
  return v4;
}

- (id)description
{
  v3 = [NSString alloc];
  extendedAttributes = self->_extendedAttributes;
  v5 = [MOEventPhoto descriptionOfPhotoMomentSource:self->_photoMomentSource];
  mask = [(NSString *)self->_photoMemoryTitle mask];
  v7 = [v3 initWithFormat:@"extendedAttributes, %@, photo source, %@, photoMemoryTitle, %@, photoMemoryCategory, %lu, photoMemorySubCategory, %lu, photoMemoryRelevanceScore, %f, photoMemoryIsFavorite, %d", extendedAttributes, v5, mask, self->_photoMemoryCategory, self->_photoMemorySubCategory, *&self->_photoMemoryRelevanceScore, self->_photoMemoryIsFavorite];

  return v7;
}

@end