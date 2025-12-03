@interface PSResourceStream
- (BOOL)isEqual:(id)equal;
- (PSResourceStream)init;
- (PSResourceStream)initWithCoder:(id)coder;
- (const)typeDescription;
- (id)description;
- (ps_resource_options)options;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PSResourceStream

- (PSResourceStream)init
{
  v5.receiver = self;
  v5.super_class = PSResourceStream;
  v2 = [(PSResourceStream *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PSResourceStream *)v2 setProvider:9];
    [(PSResourceStream *)v3 setSupportsSetupResume:0];
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_key forKey:@"key"];
  [coderCopy encodeBytes:&self->_resourceClass length:8 forKey:@"resourceClass"];
  [coderCopy encodeBytes:&self->_options length:16 forKey:@"options"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeInteger:self->_framerate forKey:@"framerate"];
  [coderCopy encodeInteger:self->_totalBufferCountHint forKey:@"totalBufferCountHint"];
  [coderCopy encodeInteger:self->_reservedForReaderBufferCountHint forKey:@"reservedForReaderBufferCountHint"];
  [coderCopy encodeInteger:self->_retainedISPRCCount forKey:@"retainedISPRCCount"];
  [coderCopy encodeInteger:self->_provider forKey:@"provider"];
  if ([(NSDictionary *)self->_supportedStrides count])
  {
    [coderCopy encodeObject:self->_supportedStrides forKey:@"supportedStrides"];
  }

  defaultStride = self->_defaultStride;
  if (defaultStride)
  {
    [coderCopy encodeObject:defaultStride forKey:@"defaultStride"];
  }

  baseMSGSyncID = self->_baseMSGSyncID;
  if (baseMSGSyncID)
  {
    [coderCopy encodeObject:baseMSGSyncID forKey:@"baseMSGSyncID"];
  }

  domain = self->_domain;
  if (domain)
  {
    [coderCopy encodeObject:domain forKey:@"domain"];
  }

  else
  {
    v7 = +[PSStreamDomain mixedDomain];
    [coderCopy encodeObject:v7 forKey:@"domain"];
  }
}

- (PSResourceStream)initWithCoder:(id)coder
{
  v40[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v38.receiver = self;
  v38.super_class = PSResourceStream;
  v5 = [(PSResourceStream *)&v38 init];
  if (v5)
  {
    v37 = 0;
    v6 = coderCopy;
    v7 = [coderCopy decodeBytesForKey:@"resourceClass" returnedLength:&v37];
    v36 = 0;
    v8 = coderCopy;
    v9 = [coderCopy decodeBytesForKey:@"options" returnedLength:&v36];
    v10 = 0;
    if (v37 == 8 && v36 == 16)
    {
      v11 = v9;
      obj = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
      v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
      v12 = [coderCopy decodeIntegerForKey:@"type"];
      v13 = [coderCopy decodeIntegerForKey:@"framerate"];
      v14 = [coderCopy decodeIntForKey:@"totalBufferCountHint"];
      v15 = [coderCopy decodeIntForKey:@"reservedForReaderBufferCountHint"];
      v16 = [coderCopy decodeIntForKey:@"retainedISPRCCount"];
      v17 = [coderCopy decodeIntegerForKey:@"provider"];
      objc_storeStrong(&v5->_key, obj);
      objc_storeStrong(&v5->_domain, v35);
      resolvedDomain = v5->_resolvedDomain;
      v5->_resolvedDomain = 0;

      v5->_resourceClass = *v7;
      v5->_options = *v11;
      if ((v12 - 1) >= 6)
      {
        v19 = 0;
      }

      else
      {
        v19 = v12;
      }

      v5->_type = v19;
      v5->_framerate = v13;
      v5->_totalBufferCountHint = v14;
      v5->_reservedForReaderBufferCountHint = v15;
      v5->_retainedISPRCCount = v16;
      v5->_provider = v17;
      v20 = MEMORY[0x277CBEB98];
      v40[0] = objc_opt_class();
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
      v22 = [v20 setWithArray:v21];
      v23 = MEMORY[0x277CBEB98];
      v39 = objc_opt_class();
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
      v25 = [v23 setWithArray:v24];
      v26 = [coderCopy decodeDictionaryWithKeysOfClasses:v22 objectsOfClasses:v25 forKey:@"supportedStrides"];
      supportedStrides = v5->_supportedStrides;
      v5->_supportedStrides = v26;

      v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultStride"];
      defaultStride = v5->_defaultStride;
      v5->_defaultStride = v28;

      v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseMSGSyncID"];
      baseMSGSyncID = v5->_baseMSGSyncID;
      v5->_baseMSGSyncID = v30;

      v10 = v5;
    }
  }

  else
  {
    v10 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v20 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    key = self->_key;
    v8 = [(PSResourceStream *)v6 key];
    if (![(NSString *)key isEqualToString:v8])
    {
      goto LABEL_16;
    }

    resourceClass = self->_resourceClass;
    if (resourceClass != [(PSResourceStream *)v6 resourceClass])
    {
      goto LABEL_16;
    }

    creation_mode = self->_options.creation_mode;
    [(PSResourceStream *)v6 options];
    if (creation_mode != v11)
    {
      goto LABEL_16;
    }

    storage_mode = self->_options.storage_mode;
    if (storage_mode == [(PSResourceStream *)v6 options]&& (type = self->_type, type == [(PSResourceStream *)v6 type]) && (framerate = self->_framerate, framerate == [(PSResourceStream *)v6 framerate]) && (totalBufferCountHint = self->_totalBufferCountHint, totalBufferCountHint == [(PSResourceStream *)v6 totalBufferCountHint]) && (reservedForReaderBufferCountHint = self->_reservedForReaderBufferCountHint, reservedForReaderBufferCountHint == [(PSResourceStream *)v6 reservedForReaderBufferCountHint]) && (retainedISPRCCount = self->_retainedISPRCCount, retainedISPRCCount == [(PSResourceStream *)v6 retainedISPRCCount]))
    {
      baseMSGSyncID = self->_baseMSGSyncID;
      baseMSGSyncID = [(PSResourceStream *)v6 baseMSGSyncID];
      v20 = baseMSGSyncID == baseMSGSyncID;
    }

    else
    {
LABEL_16:
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (unint64_t)hash
{
  v2 = [(PSResourceStream *)self key];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PSResourceStream *)self key];
  v5 = ps_resource_class_description([(PSResourceStream *)self resourceClass]);
  v6 = ps_resource_storage_mode_description([(PSResourceStream *)self options]);
  [(PSResourceStream *)self options];
  v8 = [v3 stringWithFormat:@"key: %@\n\tclass: %s\n\tstorage: %s\n\tcreation: %s\n\ttype: %s\n\tframerate:%lu", v4, v5, v6, ps_resource_creation_mode_description(v7), -[PSResourceStream typeDescription](self, "typeDescription"), -[PSResourceStream framerate](self, "framerate")];

  return v8;
}

- (const)typeDescription
{
  type = [(PSResourceStream *)self type];
  if (type - 1 > 5)
  {
    return "Unknown";
  }

  else
  {
    return off_279A4E1D0[type - 1];
  }
}

- (ps_resource_options)options
{
  creation_mode = self->_options.creation_mode;
  storage_mode = self->_options.storage_mode;
  result.creation_mode = creation_mode;
  result.storage_mode = storage_mode;
  return result;
}

@end