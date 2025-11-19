@interface PFPosterShuffleConfiguration
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PFPosterShuffleConfiguration)initWithCoder:(id)a3;
- (PFPosterShuffleConfiguration)initWithShuffleType:(int64_t)a3;
- (id)analyticsPayload;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setIncludeCityscapes:(BOOL)a3;
- (void)setIncludeLandscapes:(BOOL)a3;
- (void)setIncludePeople:(BOOL)a3;
- (void)setIncludePets:(BOOL)a3;
@end

@implementation PFPosterShuffleConfiguration

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PFPosterShuffleConfiguration *)self shuffleType];
  v7 = @"Manual";
  if (!v6)
  {
    v7 = @"Smart Albums";
  }

  if (v6 == 2)
  {
    v7 = @"User Album";
  }

  v8 = v7;
  v9 = [(PFPosterShuffleConfiguration *)self shuffleFrequency];
  if ((v9 - 1) > 3)
  {
    v10 = @"None";
  }

  else
  {
    v10 = off_1E7B64860[v9 - 1];
  }

  v11 = v10;
  v12 = [(PFPosterShuffleConfiguration *)self personLocalIdentifiers];
  [(PFPosterShuffleConfiguration *)self shuffleSmartAlbums];
  v13 = PFBitmaskDescription();
  v14 = [(PFPosterShuffleConfiguration *)self albumCloudIdentifiers];
  v15 = [v3 initWithFormat:@"<%@ %p; type: %@; frequency: %@; person IDs: %@, Smart Albums: %@, albumCloudIdentifiers: %@>", v5, self, v8, v11, v12, v13, v14];

  return v15;
}

- (PFPosterShuffleConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = -[PFPosterShuffleConfiguration initWithShuffleType:](self, "initWithShuffleType:", [v4 decodeIntegerForKey:@"shuffleType"]);
  if (v5)
  {
    v5->_shuffleFrequency = [v4 decodeIntegerForKey:@"shuffleFrequency"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"personLocalIdentifiers"];
    personLocalIdentifiers = v5->_personLocalIdentifiers;
    v5->_personLocalIdentifiers = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shuffleSmartAlbums"];
    v5->_shuffleSmartAlbums = [v11 unsignedIntegerValue];

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"albumCloudIdentifiers"];
    albumCloudIdentifiers = v5->_albumCloudIdentifiers;
    v5->_albumCloudIdentifiers = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[PFPosterShuffleConfiguration shuffleType](self forKey:{"shuffleType"), @"shuffleType"}];
  [v4 encodeInteger:-[PFPosterShuffleConfiguration shuffleFrequency](self forKey:{"shuffleFrequency"), @"shuffleFrequency"}];
  v5 = [(PFPosterShuffleConfiguration *)self personLocalIdentifiers];
  [v4 encodeObject:v5 forKey:@"personLocalIdentifiers"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PFPosterShuffleConfiguration shuffleSmartAlbums](self, "shuffleSmartAlbums")}];
  [v4 encodeObject:v6 forKey:@"shuffleSmartAlbums"];

  v7 = [(PFPosterShuffleConfiguration *)self albumCloudIdentifiers];
  [v4 encodeObject:v7 forKey:@"albumCloudIdentifiers"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PFPosterShuffleConfiguration allocWithZone:a3];
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
  v3 = [(PFPosterShuffleConfiguration *)self shuffleSmartAlbums];
  v4 = [(PFPosterShuffleConfiguration *)self shuffleSmartAlbums];
  v5 = [(PFPosterShuffleConfiguration *)self shuffleSmartAlbums];
  v6 = [(PFPosterShuffleConfiguration *)self shuffleSmartAlbums];
  v21[0] = @"shuffle_type";
  v7 = [(PFPosterShuffleConfiguration *)self shuffleType];
  if (v7 > 2)
  {
    v8 = @"??";
  }

  else
  {
    v8 = off_1E7B64560[v7];
  }

  v22[0] = v8;
  v21[1] = @"shuffle_frequency";
  v9 = [(PFPosterShuffleConfiguration *)self shuffleFrequency];
  if (v9 > 4)
  {
    v10 = @"??";
  }

  else
  {
    v10 = off_1E7B64578[v9];
  }

  v11 = (v4 >> 1) & 1;
  v22[1] = v10;
  v21[2] = @"shuffle_people_count";
  v12 = MEMORY[0x1E696AD98];
  v13 = [(PFPosterShuffleConfiguration *)self personLocalIdentifiers];
  v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
  v22[2] = v14;
  v21[3] = @"people_enabled";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:v3 & 1];
  v22[3] = v15;
  v21[4] = @"pet_enabled";
  v16 = [MEMORY[0x1E696AD98] numberWithBool:v11];
  v22[4] = v16;
  v21[5] = @"nature_enabled";
  v17 = [MEMORY[0x1E696AD98] numberWithBool:(v5 >> 2) & 1];
  v22[5] = v17;
  v21[6] = @"urban_enabled";
  v18 = [MEMORY[0x1E696AD98] numberWithBool:(v6 >> 3) & 1];
  v22[6] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:7];

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PFPosterShuffleConfiguration *)self shuffleType];
      if (v6 == [(PFPosterShuffleConfiguration *)v5 shuffleType]&& (v7 = [(PFPosterShuffleConfiguration *)self shuffleFrequency], v7 == [(PFPosterShuffleConfiguration *)v5 shuffleFrequency]))
      {
        v8 = [(PFPosterShuffleConfiguration *)self personLocalIdentifiers];
        v9 = [(PFPosterShuffleConfiguration *)v5 personLocalIdentifiers];
        if ((v8 == v9 || [v8 isEqual:v9]) && (v10 = -[PFPosterShuffleConfiguration shuffleSmartAlbums](self, "shuffleSmartAlbums"), v10 == -[PFPosterShuffleConfiguration shuffleSmartAlbums](v5, "shuffleSmartAlbums")))
        {
          v11 = [(PFPosterShuffleConfiguration *)self albumCloudIdentifiers];
          v12 = [(PFPosterShuffleConfiguration *)v5 albumCloudIdentifiers];
          if (v11 == v12)
          {
            v13 = 1;
          }

          else
          {
            v13 = [v11 isEqual:v12];
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

- (PFPosterShuffleConfiguration)initWithShuffleType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = PFPosterShuffleConfiguration;
  result = [(PFPosterShuffleConfiguration *)&v5 init];
  if (result)
  {
    result->_shuffleType = a3;
    result->_shuffleFrequency = 3;
  }

  return result;
}

- (void)setIncludeCityscapes:(BOOL)a3
{
  v3 = a3;
  v5 = [(PFPosterShuffleConfiguration *)self shuffleSmartAlbums]& 0xFFFFFFFFFFFFFFF7;
  v6 = 8;
  if (!v3)
  {
    v6 = 0;
  }

  [(PFPosterShuffleConfiguration *)self setShuffleSmartAlbums:v5 | v6];
}

- (void)setIncludeLandscapes:(BOOL)a3
{
  v3 = a3;
  v5 = [(PFPosterShuffleConfiguration *)self shuffleSmartAlbums]& 0xFFFFFFFFFFFFFFFBLL;
  v6 = 4;
  if (!v3)
  {
    v6 = 0;
  }

  [(PFPosterShuffleConfiguration *)self setShuffleSmartAlbums:v5 | v6];
}

- (void)setIncludePets:(BOOL)a3
{
  v3 = a3;
  v5 = [(PFPosterShuffleConfiguration *)self shuffleSmartAlbums]& 0xFFFFFFFFFFFFFFFDLL;
  v6 = 2;
  if (!v3)
  {
    v6 = 0;
  }

  [(PFPosterShuffleConfiguration *)self setShuffleSmartAlbums:v5 | v6];
}

- (void)setIncludePeople:(BOOL)a3
{
  v4 = [(PFPosterShuffleConfiguration *)self shuffleSmartAlbums]& 0xFFFFFFFFFFFFFFFELL | a3;

  [(PFPosterShuffleConfiguration *)self setShuffleSmartAlbums:v4];
}

@end