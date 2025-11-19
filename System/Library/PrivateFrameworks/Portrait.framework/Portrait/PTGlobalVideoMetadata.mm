@interface PTGlobalVideoMetadata
+ (id)deserializeMetadataWithType:(unsigned int)a3 fromGlobalMetadata:(id)a4 error:(id *)a5;
+ (void)initialize;
- (BOOL)writeToData:(id)a3 withOptions:(id)a4;
- (unsigned)sizeOfSerializedObjectWithOptions:(id)a3;
- (void)setMetadata:(id)a3 ofType:(unsigned int)a4;
@end

@implementation PTGlobalVideoMetadata

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    xmmword_27D0C8694 = xmmword_2244C63D0;
  }
}

- (void)setMetadata:(id)a3 ofType:(unsigned int)a4
{
  v7 = a3;
  if (a4 - 1 <= 3)
  {
    v8 = v7;
    objc_storeStrong(&self->_atoms[a4], a3);
    v7 = v8;
  }
}

- (unsigned)sizeOfSerializedObjectWithOptions:(id)a3
{
  v5 = 8;
  for (i = 2; i != 6; ++i)
  {
    if (*(&self->super.isa + i))
    {
      v5 += [(PTGlobalVideoMetadata *)self _sizeOfAtomOfType:(i - 1) withOptions:a3];
    }
  }

  return v5;
}

- (BOOL)writeToData:(id)a3 withOptions:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PTGlobalVideoMetadata *)self sizeOfSerializedObjectWithOptions:v7];
  v9 = [v6 length];
  v10 = v9;
  if (v9 >= v8)
  {
    v20 = v9;
    v11 = [v6 mutableBytes];
    v21 = v8;
    *v11 = bswap32(v8);
    v11[1] = 1684633187;
    v12 = v11 + 2;
    v13 = &xmmword_27D0C8694;
    for (i = 2; i != 6; ++i)
    {
      if (*(&self->super.isa + i))
      {
        v15 = [(PTGlobalVideoMetadata *)self _sizeOfAtomOfType:(i - 1) withOptions:v7];
        *v12 = bswap32(v15);
        v12[1] = bswap32(*v13);
        v16 = [MEMORY[0x277CBEB28] dataWithLength:v15 - 8];
        [*(&self->super.isa + i) writeToData:v16 withOptions:v7];
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
        v19 = NSStringFromBytes([v6 mutableBytes], v21);
        *buf = 138412290;
        v23 = v19;
        _os_log_debug_impl(&dword_2243FB000, v17, OS_LOG_TYPE_DEBUG, "w[+]: %@", buf, 0xCu);
      }
    }
  }

  return v10 >= v8;
}

+ (id)deserializeMetadataWithType:(unsigned int)a3 fromGlobalMetadata:(id)a4 error:(id *)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([v6 length] >= 8 && (v7 = objc_msgSend(v6, "bytes"), v8 = bswap32(*v7), objc_msgSend(v6, "length") >= v8) && v7[1] == 1684633187 && (v9 = v7 + 2, (v7 + 2) < objc_msgSend(v6, "bytes") + v8))
  {
    while (1)
    {
      v10 = bswap32(*v9);
      v11 = bswap32(v9[1]);
      v12 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v9 + 2 length:v10 - 8 freeWhenDone:0];
      v13 = v12;
      if (kAtomIdentifiers[a3] == v11)
      {
        break;
      }

      v9 = (v9 + v10);

      if (v9 >= [v6 bytes] + v8)
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

    if (a3 - 1 > 3)
    {
      v14 = 0;
    }

    else
    {
      v14 = [(__objc2_class *)*off_2785237A8[a3 - 1] objectFromData:v13];
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