@interface PFPosterShuffleConfiguration
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PFPosterShuffleConfiguration)initWithCoder:(id)coder;
- (PFPosterShuffleConfiguration)initWithShuffleType:(int64_t)type;
- (id)analyticsPayload;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setIncludeCityscapes:(BOOL)cityscapes;
- (void)setIncludeLandscapes:(BOOL)landscapes;
- (void)setIncludePeople:(BOOL)people;
- (void)setIncludePets:(BOOL)pets;
@end

@implementation PFPosterShuffleConfiguration

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  shuffleType = [(PFPosterShuffleConfiguration *)self shuffleType];
  v7 = @"Manual";
  if (!shuffleType)
  {
    v7 = @"Smart Albums";
  }

  if (shuffleType == 2)
  {
    v7 = @"User Album";
  }

  v8 = v7;
  shuffleFrequency = [(PFPosterShuffleConfiguration *)self shuffleFrequency];
  if ((shuffleFrequency - 1) > 3)
  {
    v10 = @"None";
  }

  else
  {
    v10 = off_1E7B64860[shuffleFrequency - 1];
  }

  v11 = v10;
  personLocalIdentifiers = [(PFPosterShuffleConfiguration *)self personLocalIdentifiers];
  [(PFPosterShuffleConfiguration *)self shuffleSmartAlbums];
  v13 = PFBitmaskDescription();
  albumCloudIdentifiers = [(PFPosterShuffleConfiguration *)self albumCloudIdentifiers];
  v15 = [v3 initWithFormat:@"<%@ %p; type: %@; frequency: %@; person IDs: %@, Smart Albums: %@, albumCloudIdentifiers: %@>", v5, self, v8, v11, personLocalIdentifiers, v13, albumCloudIdentifiers];

  return v15;
}

- (PFPosterShuffleConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[PFPosterShuffleConfiguration initWithShuffleType:](self, "initWithShuffleType:", [coderCopy decodeIntegerForKey:@"shuffleType"]);
  if (v5)
  {
    v5->_shuffleFrequency = [coderCopy decodeIntegerForKey:@"shuffleFrequency"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"personLocalIdentifiers"];
    personLocalIdentifiers = v5->_personLocalIdentifiers;
    v5->_personLocalIdentifiers = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shuffleSmartAlbums"];
    v5->_shuffleSmartAlbums = [v11 unsignedIntegerValue];

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"albumCloudIdentifiers"];
    albumCloudIdentifiers = v5->_albumCloudIdentifiers;
    v5->_albumCloudIdentifiers = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[PFPosterShuffleConfiguration shuffleType](self forKey:{"shuffleType"), @"shuffleType"}];
  [coderCopy encodeInteger:-[PFPosterShuffleConfiguration shuffleFrequency](self forKey:{"shuffleFrequency"), @"shuffleFrequency"}];
  personLocalIdentifiers = [(PFPosterShuffleConfiguration *)self personLocalIdentifiers];
  [coderCopy encodeObject:personLocalIdentifiers forKey:@"personLocalIdentifiers"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PFPosterShuffleConfiguration shuffleSmartAlbums](self, "shuffleSmartAlbums")}];
  [coderCopy encodeObject:v6 forKey:@"shuffleSmartAlbums"];

  albumCloudIdentifiers = [(PFPosterShuffleConfiguration *)self albumCloudIdentifiers];
  [coderCopy encodeObject:albumCloudIdentifiers forKey:@"albumCloudIdentifiers"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PFPosterShuffleConfiguration allocWithZone:zone];
  v4->_shuffleFrequency = self->_shuffleFrequency;
  v5 = [(NSSet *)self->_personLocalIdentifiers copy];
  personLocalIdentifiers = v4->_personLocalIdentifiers;
  v4->_personLocalIdentifiers = v5;

  v4->_shuffleSmartAlbums = self->_shuffleSmartAlbums;
  v4->_shuffleType = self->_shuffleType;
  v7 = [(NSSet *)self->_albumCloudIdentifiers copy];
  albumCloudIdentifiers = v4->_albumCloudIdentifiers;
  v4->_albumCloudIdentifiers = v7;

  return v4;
}

- (id)analyticsPayload
{
  v22[7] = *MEMORY[0x1E69E9840];
  shuffleSmartAlbums = [(PFPosterShuffleConfiguration *)self shuffleSmartAlbums];
  shuffleSmartAlbums2 = [(PFPosterShuffleConfiguration *)self shuffleSmartAlbums];
  shuffleSmartAlbums3 = [(PFPosterShuffleConfiguration *)self shuffleSmartAlbums];
  shuffleSmartAlbums4 = [(PFPosterShuffleConfiguration *)self shuffleSmartAlbums];
  v21[0] = @"shuffle_type";
  shuffleType = [(PFPosterShuffleConfiguration *)self shuffleType];
  if (shuffleType > 2)
  {
    v8 = @"??";
  }

  else
  {
    v8 = off_1E7B64560[shuffleType];
  }

  v22[0] = v8;
  v21[1] = @"shuffle_frequency";
  shuffleFrequency = [(PFPosterShuffleConfiguration *)self shuffleFrequency];
  if (shuffleFrequency > 4)
  {
    v10 = @"??";
  }

  else
  {
    v10 = off_1E7B64578[shuffleFrequency];
  }

  v11 = (shuffleSmartAlbums2 >> 1) & 1;
  v22[1] = v10;
  v21[2] = @"shuffle_people_count";
  v12 = MEMORY[0x1E696AD98];
  personLocalIdentifiers = [(PFPosterShuffleConfiguration *)self personLocalIdentifiers];
  v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(personLocalIdentifiers, "count")}];
  v22[2] = v14;
  v21[3] = @"people_enabled";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:shuffleSmartAlbums & 1];
  v22[3] = v15;
  v21[4] = @"pet_enabled";
  v16 = [MEMORY[0x1E696AD98] numberWithBool:v11];
  v22[4] = v16;
  v21[5] = @"nature_enabled";
  v17 = [MEMORY[0x1E696AD98] numberWithBool:(shuffleSmartAlbums3 >> 2) & 1];
  v22[5] = v17;
  v21[6] = @"urban_enabled";
  v18 = [MEMORY[0x1E696AD98] numberWithBool:(shuffleSmartAlbums4 >> 3) & 1];
  v22[6] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:7];

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      shuffleType = [(PFPosterShuffleConfiguration *)self shuffleType];
      if (shuffleType == [(PFPosterShuffleConfiguration *)v5 shuffleType]&& (v7 = [(PFPosterShuffleConfiguration *)self shuffleFrequency], v7 == [(PFPosterShuffleConfiguration *)v5 shuffleFrequency]))
      {
        personLocalIdentifiers = [(PFPosterShuffleConfiguration *)self personLocalIdentifiers];
        personLocalIdentifiers2 = [(PFPosterShuffleConfiguration *)v5 personLocalIdentifiers];
        if ((personLocalIdentifiers == personLocalIdentifiers2 || [personLocalIdentifiers isEqual:personLocalIdentifiers2]) && (v10 = -[PFPosterShuffleConfiguration shuffleSmartAlbums](self, "shuffleSmartAlbums"), v10 == -[PFPosterShuffleConfiguration shuffleSmartAlbums](v5, "shuffleSmartAlbums")))
        {
          albumCloudIdentifiers = [(PFPosterShuffleConfiguration *)self albumCloudIdentifiers];
          albumCloudIdentifiers2 = [(PFPosterShuffleConfiguration *)v5 albumCloudIdentifiers];
          if (albumCloudIdentifiers == albumCloudIdentifiers2)
          {
            v13 = 1;
          }

          else
          {
            v13 = [albumCloudIdentifiers isEqual:albumCloudIdentifiers2];
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_shuffleSmartAlbums];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_shuffleType];
  v6 = [v5 hash] ^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_shuffleFrequency];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (PFPosterShuffleConfiguration)initWithShuffleType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = PFPosterShuffleConfiguration;
  result = [(PFPosterShuffleConfiguration *)&v5 init];
  if (result)
  {
    result->_shuffleType = type;
    result->_shuffleFrequency = 3;
  }

  return result;
}

- (void)setIncludeCityscapes:(BOOL)cityscapes
{
  cityscapesCopy = cityscapes;
  v5 = [(PFPosterShuffleConfiguration *)self shuffleSmartAlbums]& 0xFFFFFFFFFFFFFFF7;
  v6 = 8;
  if (!cityscapesCopy)
  {
    v6 = 0;
  }

  [(PFPosterShuffleConfiguration *)self setShuffleSmartAlbums:v5 | v6];
}

- (void)setIncludeLandscapes:(BOOL)landscapes
{
  landscapesCopy = landscapes;
  v5 = [(PFPosterShuffleConfiguration *)self shuffleSmartAlbums]& 0xFFFFFFFFFFFFFFFBLL;
  v6 = 4;
  if (!landscapesCopy)
  {
    v6 = 0;
  }

  [(PFPosterShuffleConfiguration *)self setShuffleSmartAlbums:v5 | v6];
}

- (void)setIncludePets:(BOOL)pets
{
  petsCopy = pets;
  v5 = [(PFPosterShuffleConfiguration *)self shuffleSmartAlbums]& 0xFFFFFFFFFFFFFFFDLL;
  v6 = 2;
  if (!petsCopy)
  {
    v6 = 0;
  }

  [(PFPosterShuffleConfiguration *)self setShuffleSmartAlbums:v5 | v6];
}

- (void)setIncludePeople:(BOOL)people
{
  v4 = [(PFPosterShuffleConfiguration *)self shuffleSmartAlbums]& 0xFFFFFFFFFFFFFFFELL | people;

  [(PFPosterShuffleConfiguration *)self setShuffleSmartAlbums:v4];
}

@end