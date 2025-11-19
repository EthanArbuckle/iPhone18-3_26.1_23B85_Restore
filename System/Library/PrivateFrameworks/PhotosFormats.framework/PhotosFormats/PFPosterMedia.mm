@interface PFPosterMedia
- (BOOL)isEqual:(id)a3;
- (PFPosterMedia)initWithAssetUUID:(id)a3;
- (PFPosterMedia)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PFPosterMedia

- (PFPosterMedia)initWithCoder:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PFPosterMedia *)self init];
  if (v5)
  {
    v5->_mediaType = [v4 decodeIntegerForKey:@"mediaType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetUUID"];
    assetUUID = v5->_assetUUID;
    v5->_assetUUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subpath"];
    subpath = v5->_subpath;
    v5->_subpath = v8;

    v5->_version = [v4 decodeIntegerForKey:@"version"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"editConfiguration"];
    editConfiguration = v5->_editConfiguration;
    v5->_editConfiguration = v10;

    if (!v5->_subpath && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v13 = v5->_assetUUID;
      version = v5->_version;
      v15 = 138543618;
      v16 = v13;
      v17 = 2050;
      v18 = version;
      _os_log_fault_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFPosterMedia failed to decode subpath: assetUUID: %{public}@, version: %{public}lu", &v15, 0x16u);
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[PFPosterMedia mediaType](self forKey:{"mediaType"), @"mediaType"}];
  v5 = [(PFPosterMedia *)self assetUUID];
  [v4 encodeObject:v5 forKey:@"assetUUID"];

  v6 = [(PFPosterMedia *)self subpath];
  [v4 encodeObject:v6 forKey:@"subpath"];

  [v4 encodeInteger:-[PFPosterMedia version](self forKey:{"version"), @"version"}];
  v7 = [(PFPosterMedia *)self editConfiguration];
  [v4 encodeObject:v7 forKey:@"editConfiguration"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PFPosterMedia *)self mediaType]- 1;
  if (v6 > 3)
  {
    v7 = @"Undefined";
  }

  else
  {
    v7 = off_1E7B64640[v6];
  }

  v8 = [(PFPosterMedia *)self subpath];
  v9 = [(PFPosterMedia *)self version];
  v10 = [(PFPosterMedia *)self editConfiguration];
  v11 = [v3 initWithFormat:@"<%@ %p; type: %@; subpath: %@; version: %lul, editConfig: %@>", v5, self, v7, v8, v9, v10];

  return v11;
}

- (unint64_t)hash
{
  v3 = [(PFPosterMedia *)self mediaType];
  v4 = [(PFPosterMedia *)self assetUUID];
  v5 = v3 ^ (2 * [v4 hash]);
  v6 = [(PFPosterMedia *)self subpath];
  v7 = v5 ^ (4 * [v6 hash]);
  v8 = v7 ^ (8 * [(PFPosterMedia *)self version]);
  v9 = [(PFPosterMedia *)self editConfiguration];
  v10 = v8 ^ (16 * [v9 hash]);

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PFPosterMedia *)self mediaType];
      if (v6 == [(PFPosterMedia *)v5 mediaType])
      {
        v7 = [(PFPosterMedia *)self assetUUID];
        v8 = [(PFPosterMedia *)v5 assetUUID];
        if (v7 == v8 || [v7 isEqual:v8])
        {
          v9 = [(PFPosterMedia *)self subpath];
          v10 = [(PFPosterMedia *)v5 subpath];
          if ((v9 == v10 || [v9 isEqual:v10]) && (v11 = -[PFPosterMedia version](self, "version"), v11 == -[PFPosterMedia version](v5, "version")))
          {
            v12 = [(PFPosterMedia *)self editConfiguration];
            v13 = [(PFPosterMedia *)v5 editConfiguration];
            if (v12 == v13)
            {
              v14 = 1;
            }

            else
            {
              v14 = [v12 isEqual:v13];
            }
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithAssetUUID:", self->_assetUUID}];
  *(v4 + 8) = self->_mediaType;
  objc_storeStrong((v4 + 16), self->_subpath);
  *(v4 + 32) = self->_version;
  v5 = [(PFPosterEditConfiguration *)self->_editConfiguration copy];
  v6 = *(v4 + 40);
  *(v4 + 40) = v5;

  return v4;
}

- (PFPosterMedia)initWithAssetUUID:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PFPosterMedia;
  v5 = [(PFPosterMedia *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(PFPosterMedia *)v5 setMediaType:1];
    [(PFPosterMedia *)v6 setAssetUUID:v4];
    if (v4)
    {
      [(PFPosterMedia *)v6 setSubpath:v4];
    }

    else
    {
      v7 = [MEMORY[0x1E696AFB0] UUID];
      v8 = [v7 UUIDString];
      [(PFPosterMedia *)v6 setSubpath:v8];
    }
  }

  return v6;
}

@end