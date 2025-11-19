@interface PKWorldRegion
+ (unint64_t)mostConstrainingTypeInRegions:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToWorldRegion:(id)a3;
- (BOOL)isIncludedInRegions:(id)a3;
- (PKWorldRegion)init;
- (PKWorldRegion)initWithCoder:(id)a3;
- (id)description;
- (id)regionOfType:(unint64_t)a3;
- (id)searchString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setDisplayRegion:(id *)a3;
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

- (PKWorldRegion)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKWorldRegion;
  v5 = [(PKWorldRegion *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_muid = [v4 decodeInt64ForKey:@"muid"];
    v5->_resultProviderIdentifier = [v4 decodeInt32ForKey:@"resultProviderIdentifier"];
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    [v4 decodeDoubleForKey:@"latitude"];
    v5->_latitude = v8;
    [v4 decodeDoubleForKey:@"longitude"];
    v5->_longitude = v9;
    [v4 decodeDoubleForKey:@"latitudeDelta"];
    v5->_latitudeDelta = v10;
    [v4 decodeDoubleForKey:@"longitudeDelta"];
    v5->_longitudeDelta = v11;
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];
    localizedName = v5->_localizedName;
    v5->_localizedName = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localeIdentifier"];
    localeIdentifier = v5->_localeIdentifier;
    v5->_localeIdentifier = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"abbreviationCode"];
    abbreviationCode = v5->_abbreviationCode;
    v5->_abbreviationCode = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentRegion"];
    parentRegion = v5->_parentRegion;
    v5->_parentRegion = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeInt64:self->_muid forKey:@"muid"];
  [v5 encodeInt32:self->_resultProviderIdentifier forKey:@"resultProviderIdentifier"];
  [v5 encodeInteger:self->_type forKey:@"type"];
  [v5 encodeObject:self->_localizedName forKey:@"localizedName"];
  [v5 encodeObject:self->_localeIdentifier forKey:@"localeIdentifier"];
  [v5 encodeObject:self->_abbreviationCode forKey:@"abbreviationCode"];
  [v5 encodeDouble:@"latitude" forKey:self->_latitude];
  [v5 encodeDouble:@"longitude" forKey:self->_longitude];
  [v5 encodeDouble:@"latitudeDelta" forKey:self->_latitudeDelta];
  [v5 encodeDouble:@"longitudeDelta" forKey:self->_longitudeDelta];
  [v5 encodeObject:self->_parentRegion forKey:@"parentRegion"];
}

- (void)setDisplayRegion:(id *)a3
{
  self->_latitude = v3;
  self->_longitude = v4;
  self->_latitudeDelta = v5;
  self->_longitudeDelta = v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKWorldRegion *)self isEqualToWorldRegion:v4];
  }

  return v5;
}

- (BOOL)isEqualToWorldRegion:(id)a3
{
  v4 = a3;
  localizedName = self->_localizedName;
  v6 = [v4 localizedName];
  v7 = localizedName;
  v8 = v6;
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
    v15 = [v4 abbreviationCode];
    v12 = abbreviationCode;
    v16 = v15;
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
    v19 = [v4 localeIdentifier];
    v20 = localeIdentifier;
    v21 = v19;
    v12 = v21;
    if (v20 == v21)
    {

LABEL_24:
      type = self->_type;
      if (type != [v4 type] || self->_muid != *(v4 + 1) || self->_resultProviderIdentifier != *(v4 + 4) || self->_latitude != *(v4 + 4) || self->_longitude != *(v4 + 5) || self->_latitudeDelta != *(v4 + 6))
      {
        goto LABEL_32;
      }

      v11 = self->_longitudeDelta == *(v4 + 7);
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
  v10 = [(PKWorldRegion *)self->_parentRegion identifier];
  v11 = [v3 stringWithFormat:@"<%@: %p identifier: %@, type: %lu, name: %@, locale: %@, code: %@, parentID: %@, displayRegion: %.4f/%.4f, %.4f/%.4f>", v4, self, identifier, type, localizedName, localeIdentifier, abbreviationCode, v10, *&self->_latitude, *&self->_longitude, *&self->_latitudeDelta, *&self->_longitudeDelta];;

  return v11;
}

- (id)regionOfType:(unint64_t)a3
{
  if (self->_type == a3)
  {
    v3 = self;
  }

  else
  {
    v3 = [(PKWorldRegion *)self parentRegion];
    if (v3)
    {
      do
      {
        if ([(PKWorldRegion *)v3 type]== a3)
        {
          break;
        }

        v5 = [(PKWorldRegion *)v3 parentRegion];

        v3 = v5;
      }

      while (v5);
    }
  }

  return v3;
}

- (id)searchString
{
  v3 = 0;
  type = self->_type;
  if (type > 2)
  {
    if (type == 3)
    {
      v5 = [(PKWorldRegion *)self regionOfType:4];
      v17 = [MEMORY[0x1E695DF58] currentLocale];
      v18 = [v5 abbreviationCode];
      v19 = PKLocalizedStringForCountryCode(v17, v18);

      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@", self->_localizedName, v19];

      goto LABEL_14;
    }

    if (type != 4)
    {
      goto LABEL_15;
    }

    v5 = [MEMORY[0x1E695DF58] currentLocale];
    v14 = PKLocalizedStringForCountryCode(v5, self->_abbreviationCode);
  }

  else
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_15;
      }

      v5 = [(PKWorldRegion *)self regionOfType:3];
      v6 = [(PKWorldRegion *)self regionOfType:4];
      v7 = [MEMORY[0x1E695DF58] currentLocale];
      v8 = [v6 abbreviationCode];
      v9 = PKLocalizedStringForCountryCode(v7, v8);

      v10 = [v5 localizedName];

      v11 = MEMORY[0x1E696AEC0];
      localizedName = self->_localizedName;
      if (v10)
      {
        v13 = [v5 localizedName];
        v3 = [v11 stringWithFormat:@"%@, %@, %@", localizedName, v13, v9];
      }

      else
      {
        v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@", self->_localizedName, v9];
      }

      goto LABEL_14;
    }

    v15 = MEMORY[0x1E696AEC0];
    v16 = self->_localizedName;
    v5 = [(PKWorldRegion *)self->_parentRegion localizedName];
    v14 = [v15 stringWithFormat:@"%@, %@", v16, v5];
  }

  v3 = v14;
LABEL_14:

LABEL_15:

  return v3;
}

- (BOOL)isIncludedInRegions:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [(PKWorldRegion *)self parentRegion];
        if (v10)
        {
          v11 = v10;
          do
          {
            v12 = [v9 identifier];
            v13 = [v11 identifier];
            v14 = v12;
            v15 = v13;
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

            v18 = [v11 parentRegion];

            if (v17)
            {
              break;
            }

            v11 = v18;
          }

          while (v18);

          if (v17)
          {
            v19 = 1;
            goto LABEL_20;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

+ (unint64_t)mostConstrainingTypeInRegions:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) type];
        if (v9 < v7)
        {
          v7 = v9;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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