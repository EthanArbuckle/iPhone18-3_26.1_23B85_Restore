@interface PFPosterMedia
- (BOOL)isEqual:(id)equal;
- (PFPosterMedia)initWithAssetUUID:(id)d;
- (PFPosterMedia)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PFPosterMedia

- (PFPosterMedia)initWithCoder:(id)coder
{
  v19 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [(PFPosterMedia *)self init];
  if (v5)
  {
    v5->_mediaType = [coderCopy decodeIntegerForKey:@"mediaType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetUUID"];
    assetUUID = v5->_assetUUID;
    v5->_assetUUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subpath"];
    subpath = v5->_subpath;
    v5->_subpath = v8;

    v5->_version = [coderCopy decodeIntegerForKey:@"version"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"editConfiguration"];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[PFPosterMedia mediaType](self forKey:{"mediaType"), @"mediaType"}];
  assetUUID = [(PFPosterMedia *)self assetUUID];
  [coderCopy encodeObject:assetUUID forKey:@"assetUUID"];

  subpath = [(PFPosterMedia *)self subpath];
  [coderCopy encodeObject:subpath forKey:@"subpath"];

  [coderCopy encodeInteger:-[PFPosterMedia version](self forKey:{"version"), @"version"}];
  editConfiguration = [(PFPosterMedia *)self editConfiguration];
  [coderCopy encodeObject:editConfiguration forKey:@"editConfiguration"];
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

  subpath = [(PFPosterMedia *)self subpath];
  version = [(PFPosterMedia *)self version];
  editConfiguration = [(PFPosterMedia *)self editConfiguration];
  v11 = [v3 initWithFormat:@"<%@ %p; type: %@; subpath: %@; version: %lul, editConfig: %@>", v5, self, v7, subpath, version, editConfiguration];

  return v11;
}

- (unint64_t)hash
{
  mediaType = [(PFPosterMedia *)self mediaType];
  assetUUID = [(PFPosterMedia *)self assetUUID];
  v5 = mediaType ^ (2 * [assetUUID hash]);
  subpath = [(PFPosterMedia *)self subpath];
  v7 = v5 ^ (4 * [subpath hash]);
  v8 = v7 ^ (8 * [(PFPosterMedia *)self version]);
  editConfiguration = [(PFPosterMedia *)self editConfiguration];
  v10 = v8 ^ (16 * [editConfiguration hash]);

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      mediaType = [(PFPosterMedia *)self mediaType];
      if (mediaType == [(PFPosterMedia *)v5 mediaType])
      {
        assetUUID = [(PFPosterMedia *)self assetUUID];
        assetUUID2 = [(PFPosterMedia *)v5 assetUUID];
        if (assetUUID == assetUUID2 || [assetUUID isEqual:assetUUID2])
        {
          subpath = [(PFPosterMedia *)self subpath];
          subpath2 = [(PFPosterMedia *)v5 subpath];
          if ((subpath == subpath2 || [subpath isEqual:subpath2]) && (v11 = -[PFPosterMedia version](self, "version"), v11 == -[PFPosterMedia version](v5, "version")))
          {
            editConfiguration = [(PFPosterMedia *)self editConfiguration];
            editConfiguration2 = [(PFPosterMedia *)v5 editConfiguration];
            if (editConfiguration == editConfiguration2)
            {
              v14 = 1;
            }

            else
            {
              v14 = [editConfiguration isEqual:editConfiguration2];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithAssetUUID:", self->_assetUUID}];
  *(v4 + 8) = self->_mediaType;
  objc_storeStrong((v4 + 16), self->_subpath);
  *(v4 + 32) = self->_version;
  v5 = [(PFPosterEditConfiguration *)self->_editConfiguration copy];
  v6 = *(v4 + 40);
  *(v4 + 40) = v5;

  return v4;
}

- (PFPosterMedia)initWithAssetUUID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = PFPosterMedia;
  v5 = [(PFPosterMedia *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(PFPosterMedia *)v5 setMediaType:1];
    [(PFPosterMedia *)v6 setAssetUUID:dCopy];
    if (dCopy)
    {
      [(PFPosterMedia *)v6 setSubpath:dCopy];
    }

    else
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      [(PFPosterMedia *)v6 setSubpath:uUIDString];
    }
  }

  return v6;
}

@end