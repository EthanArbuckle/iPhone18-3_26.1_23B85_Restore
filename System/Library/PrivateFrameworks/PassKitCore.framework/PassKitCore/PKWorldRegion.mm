@interface PKWorldRegion
+ (unint64_t)mostConstrainingTypeInRegions:(id)regions;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToWorldRegion:(id)region;
- (BOOL)isIncludedInRegions:(id)regions;
- (PKWorldRegion)init;
- (PKWorldRegion)initWithCoder:(id)coder;
- (id)description;
- (id)regionOfType:(unint64_t)type;
- (id)searchString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setDisplayRegion:(id *)region;
@end

@implementation PKWorldRegion

- (PKWorldRegion)init
{
  v4.receiver = self;
  v4.super_class = PKWorldRegion;
  result = [(PKWorldRegion *)&v4 init];
  if (result)
  {
    v3 = *MEMORY[0x1E6985CC0];
    *&result->_latitude = *MEMORY[0x1E6985CC0];
    *&result->_latitudeDelta = v3;
  }

  return result;
}

- (PKWorldRegion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = PKWorldRegion;
  v5 = [(PKWorldRegion *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_muid = [coderCopy decodeInt64ForKey:@"muid"];
    v5->_resultProviderIdentifier = [coderCopy decodeInt32ForKey:@"resultProviderIdentifier"];
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    [coderCopy decodeDoubleForKey:@"latitude"];
    v5->_latitude = v8;
    [coderCopy decodeDoubleForKey:@"longitude"];
    v5->_longitude = v9;
    [coderCopy decodeDoubleForKey:@"latitudeDelta"];
    v5->_latitudeDelta = v10;
    [coderCopy decodeDoubleForKey:@"longitudeDelta"];
    v5->_longitudeDelta = v11;
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];
    localizedName = v5->_localizedName;
    v5->_localizedName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localeIdentifier"];
    localeIdentifier = v5->_localeIdentifier;
    v5->_localeIdentifier = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"abbreviationCode"];
    abbreviationCode = v5->_abbreviationCode;
    v5->_abbreviationCode = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parentRegion"];
    parentRegion = v5->_parentRegion;
    v5->_parentRegion = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeInt64:self->_muid forKey:@"muid"];
  [coderCopy encodeInt32:self->_resultProviderIdentifier forKey:@"resultProviderIdentifier"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeObject:self->_localizedName forKey:@"localizedName"];
  [coderCopy encodeObject:self->_localeIdentifier forKey:@"localeIdentifier"];
  [coderCopy encodeObject:self->_abbreviationCode forKey:@"abbreviationCode"];
  [coderCopy encodeDouble:@"latitude" forKey:self->_latitude];
  [coderCopy encodeDouble:@"longitude" forKey:self->_longitude];
  [coderCopy encodeDouble:@"latitudeDelta" forKey:self->_latitudeDelta];
  [coderCopy encodeDouble:@"longitudeDelta" forKey:self->_longitudeDelta];
  [coderCopy encodeObject:self->_parentRegion forKey:@"parentRegion"];
}

- (void)setDisplayRegion:(id *)region
{
  self->_latitude = v3;
  self->_longitude = v4;
  self->_latitudeDelta = v5;
  self->_longitudeDelta = v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKWorldRegion *)self isEqualToWorldRegion:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToWorldRegion:(id)region
{
  regionCopy = region;
  localizedName = self->_localizedName;
  localizedName = [regionCopy localizedName];
  v7 = localizedName;
  v8 = localizedName;
  v9 = v8;
  if (v7 == v8)
  {

    goto LABEL_10;
  }

  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = 0;
    v12 = v8;
    goto LABEL_33;
  }

  v13 = [(NSString *)v7 isEqualToString:v8];

  if (v13)
  {
LABEL_10:
    abbreviationCode = self->_abbreviationCode;
    abbreviationCode = [regionCopy abbreviationCode];
    v12 = abbreviationCode;
    v16 = abbreviationCode;
    v7 = v16;
    if (v12 == v16)
    {
    }

    else
    {
      if (!v12 || !v16)
      {

        goto LABEL_32;
      }

      v17 = [(NSString *)v12 isEqualToString:v16];

      if (!v17)
      {
        v11 = 0;
LABEL_34:

        goto LABEL_35;
      }
    }

    localeIdentifier = self->_localeIdentifier;
    localeIdentifier = [regionCopy localeIdentifier];
    v20 = localeIdentifier;
    v21 = localeIdentifier;
    v12 = v21;
    if (v20 == v21)
    {

LABEL_24:
      type = self->_type;
      if (type != [regionCopy type] || self->_muid != *(regionCopy + 1) || self->_resultProviderIdentifier != *(regionCopy + 4) || self->_latitude != *(regionCopy + 4) || self->_longitude != *(regionCopy + 5) || self->_latitudeDelta != *(regionCopy + 6))
      {
        goto LABEL_32;
      }

      v11 = self->_longitudeDelta == *(regionCopy + 7);
LABEL_33:

      goto LABEL_34;
    }

    if (v20 && v21)
    {
      v22 = [(NSString *)v20 isEqualToString:v21];

      if (!v22)
      {
        goto LABEL_32;
      }

      goto LABEL_24;
    }

LABEL_32:
    v11 = 0;
    goto LABEL_33;
  }

  v11 = 0;
LABEL_35:

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_abbreviationCode];
  [v3 safelyAddObject:self->_localizedName];
  [v3 safelyAddObject:self->_localeIdentifier];
  [v3 safelyAddObject:self->_parentRegion];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_type - v4 + 32 * v4;
  v6 = self->_muid - v5 + 32 * v5;
  v7 = self->_resultProviderIdentifier - v6 + 32 * v6;
  v8 = self->_latitude - v7 + 32 * v7;
  v9 = self->_longitude - v8 + 32 * v8;
  v10 = self->_latitudeDelta - v9 + 32 * v9;
  v11 = self->_longitudeDelta - v10 + 32 * v10;

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  type = self->_type;
  localizedName = self->_localizedName;
  localeIdentifier = self->_localeIdentifier;
  identifier = self->_identifier;
  abbreviationCode = self->_abbreviationCode;
  identifier = [(PKWorldRegion *)self->_parentRegion identifier];
  v11 = [v3 stringWithFormat:@"<%@: %p identifier: %@, type: %lu, name: %@, locale: %@, code: %@, parentID: %@, displayRegion: %.4f/%.4f, %.4f/%.4f>", v4, self, identifier, type, localizedName, localeIdentifier, abbreviationCode, identifier, *&self->_latitude, *&self->_longitude, *&self->_latitudeDelta, *&self->_longitudeDelta];;

  return v11;
}

- (id)regionOfType:(unint64_t)type
{
  if (self->_type == type)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(PKWorldRegion *)self parentRegion];
    if (selfCopy)
    {
      do
      {
        if ([(PKWorldRegion *)selfCopy type]== type)
        {
          break;
        }

        parentRegion = [(PKWorldRegion *)selfCopy parentRegion];

        selfCopy = parentRegion;
      }

      while (parentRegion);
    }
  }

  return selfCopy;
}

- (id)searchString
{
  v3 = 0;
  type = self->_type;
  if (type > 2)
  {
    if (type == 3)
    {
      currentLocale2 = [(PKWorldRegion *)self regionOfType:4];
      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
      abbreviationCode = [currentLocale2 abbreviationCode];
      v19 = PKLocalizedStringForCountryCode(currentLocale, abbreviationCode);

      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@", self->_localizedName, v19];

      goto LABEL_14;
    }

    if (type != 4)
    {
      goto LABEL_15;
    }

    currentLocale2 = [MEMORY[0x1E695DF58] currentLocale];
    v14 = PKLocalizedStringForCountryCode(currentLocale2, self->_abbreviationCode);
  }

  else
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_15;
      }

      currentLocale2 = [(PKWorldRegion *)self regionOfType:3];
      v6 = [(PKWorldRegion *)self regionOfType:4];
      currentLocale3 = [MEMORY[0x1E695DF58] currentLocale];
      abbreviationCode2 = [v6 abbreviationCode];
      v9 = PKLocalizedStringForCountryCode(currentLocale3, abbreviationCode2);

      localizedName = [currentLocale2 localizedName];

      v11 = MEMORY[0x1E696AEC0];
      localizedName = self->_localizedName;
      if (localizedName)
      {
        localizedName2 = [currentLocale2 localizedName];
        v3 = [v11 stringWithFormat:@"%@, %@, %@", localizedName, localizedName2, v9];
      }

      else
      {
        v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@", self->_localizedName, v9];
      }

      goto LABEL_14;
    }

    v15 = MEMORY[0x1E696AEC0];
    v16 = self->_localizedName;
    currentLocale2 = [(PKWorldRegion *)self->_parentRegion localizedName];
    v14 = [v15 stringWithFormat:@"%@, %@", v16, currentLocale2];
  }

  v3 = v14;
LABEL_14:

LABEL_15:

  return v3;
}

- (BOOL)isIncludedInRegions:(id)regions
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  regionsCopy = regions;
  v5 = [regionsCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(regionsCopy);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        parentRegion = [(PKWorldRegion *)self parentRegion];
        if (parentRegion)
        {
          v11 = parentRegion;
          do
          {
            identifier = [v9 identifier];
            identifier2 = [v11 identifier];
            v14 = identifier;
            v15 = identifier2;
            v16 = v15;
            if (v14 == v15)
            {
              v17 = 1;
            }

            else
            {
              v17 = 0;
              if (v14 && v15)
              {
                v17 = [v14 isEqualToString:v15];
              }
            }

            parentRegion2 = [v11 parentRegion];

            if (v17)
            {
              break;
            }

            v11 = parentRegion2;
          }

          while (parentRegion2);

          if (v17)
          {
            v19 = 1;
            goto LABEL_20;
          }
        }
      }

      v6 = [regionsCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_20:

  return v19;
}

+ (unint64_t)mostConstrainingTypeInRegions:(id)regions
{
  v16 = *MEMORY[0x1E69E9840];
  regionsCopy = regions;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [regionsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = 4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(regionsCopy);
        }

        type = [*(*(&v11 + 1) + 8 * i) type];
        if (type < v7)
        {
          v7 = type;
        }
      }

      v5 = [regionsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 4;
  }

  return v7;
}

@end