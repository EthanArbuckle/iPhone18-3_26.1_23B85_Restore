@interface PTGlobalVideoMetadata
+ (id)deserializeMetadataWithType:(unsigned int)type fromGlobalMetadata:(id)metadata error:(id *)error;
+ (void)initialize;
- (BOOL)writeToData:(id)data withOptions:(id)options;
- (unsigned)sizeOfSerializedObjectWithOptions:(id)options;
- (void)setMetadata:(id)metadata ofType:(unsigned int)type;
@end

@implementation PTGlobalVideoMetadata

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    xmmword_27D0C8694 = xmmword_2244C63D0;
  }
}

- (void)setMetadata:(id)metadata ofType:(unsigned int)type
{
  metadataCopy = metadata;
  if (type - 1 <= 3)
  {
    v8 = metadataCopy;
    objc_storeStrong(&self->_atoms[type], metadata);
    metadataCopy = v8;
  }
}

- (unsigned)sizeOfSerializedObjectWithOptions:(id)options
{
  v5 = 8;
  for (i = 2; i != 6; ++i)
  {
    if (*(&self->super.isa + i))
    {
      v5 += [(PTGlobalVideoMetadata *)self _sizeOfAtomOfType:(i - 1) withOptions:options];
    }
  }

  return v5;
}

- (BOOL)writeToData:(id)data withOptions:(id)options
{
  v24 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  optionsCopy = options;
  v8 = [(PTGlobalVideoMetadata *)self sizeOfSerializedObjectWithOptions:optionsCopy];
  v9 = [dataCopy length];
  v10 = v9;
  if (v9 >= v8)
  {
    v20 = v9;
    mutableBytes = [dataCopy mutableBytes];
    v21 = v8;
    *mutableBytes = bswap32(v8);
    mutableBytes[1] = 1684633187;
    v12 = mutableBytes + 2;
    v13 = &xmmword_27D0C8694;
    for (i = 2; i != 6; ++i)
    {
      if (*(&self->super.isa + i))
      {
        v15 = [(PTGlobalVideoMetadata *)self _sizeOfAtomOfType:(i - 1) withOptions:optionsCopy];
        *v12 = bswap32(v15);
        v12[1] = bswap32(*v13);
        v16 = [MEMORY[0x277CBEB28] dataWithLength:v15 - 8];
        [*(&self->super.isa + i) writeToData:v16 withOptions:optionsCopy];
        memcpy(v12 + 2, [v16 mutableBytes], objc_msgSend(v16, "length"));
        v12 = (v12 + v15);
      }

      ++v13;
    }

    v10 = v20;
    v8 = v21;
    if (PTSerializationDebugIsEnabled())
    {
      v17 = _PTLogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v19 = NSStringFromBytes([dataCopy mutableBytes], v21);
        *buf = 138412290;
        v23 = v19;
        _os_log_debug_impl(&dword_2243FB000, v17, OS_LOG_TYPE_DEBUG, "w[+]: %@", buf, 0xCu);
      }
    }
  }

  return v10 >= v8;
}

+ (id)deserializeMetadataWithType:(unsigned int)type fromGlobalMetadata:(id)metadata error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  if ([metadataCopy length] >= 8 && (v7 = objc_msgSend(metadataCopy, "bytes"), v8 = bswap32(*v7), objc_msgSend(metadataCopy, "length") >= v8) && v7[1] == 1684633187 && (v9 = v7 + 2, (v7 + 2) < objc_msgSend(metadataCopy, "bytes") + v8))
  {
    while (1)
    {
      v10 = bswap32(*v9);
      v11 = bswap32(v9[1]);
      v12 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v9 + 2 length:v10 - 8 freeWhenDone:0];
      v13 = v12;
      if (kAtomIdentifiers[type] == v11)
      {
        break;
      }

      v9 = (v9 + v10);

      if (v9 >= [metadataCopy bytes] + v8)
      {
        goto LABEL_7;
      }
    }

    if (PTSerializationDebugIsEnabled())
    {
      v15 = _PTLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v17 = NSStringFromBytes([v13 bytes], v8);
        v18 = 138412290;
        v19 = v17;
        _os_log_debug_impl(&dword_2243FB000, v15, OS_LOG_TYPE_DEBUG, "r[+]: %@", &v18, 0xCu);
      }
    }

    if (type - 1 > 3)
    {
      v14 = 0;
    }

    else
    {
      v14 = [(__objc2_class *)*off_2785237A8[type - 1] objectFromData:v13];
    }
  }

  else
  {
LABEL_7:
    v14 = 0;
  }

  return v14;
}

@end