@interface TLITunesTone
+ (id)_identifierForPropertyListRepresentation:(id)a3;
- (BOOL)isDuplicateOfTone:(id)a3;
- (BOOL)isEqual:(id)a3;
- (TLITunesTone)initWithPropertyListRepresentation:(id)a3 filePath:(id)a4;
- (TLITunesTone)initWithToneStoreDownload:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation TLITunesTone

- (TLITunesTone)initWithPropertyListRepresentation:(id)a3 filePath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v83.receiver = self;
  v83.super_class = TLITunesTone;
  v8 = [(TLITunesTone *)&v83 init];
  if (v8)
  {
    v9 = [objc_opt_class() _identifierForPropertyListRepresentation:v6];
    v10 = [v6 objectForKey:@"Name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v9)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      v14 = TLLogToneManagement();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(TLITunesTone *)v8 initWithPropertyListRepresentation:v6 filePath:v14];
      }

      fadeOutDurationNumber = v8;
      v8 = 0;
    }

    else
    {
      v16 = [v9 copy];
      identifier = v8->_identifier;
      v8->_identifier = v16;

      v18 = [v12 copy];
      name = v8->_name;
      v8->_name = v18;

      v20 = [v7 copy];
      filePath = v8->_filePath;
      v8->_filePath = v20;

      v22 = [v6 objectForKey:@"Album"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v24 = v22;
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;

      v26 = [v25 copy];
      albumTitle = v8->_albumTitle;
      v8->_albumTitle = v26;

      v28 = [v6 objectForKey:@"Artist"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = v29;

      v31 = [v30 copy];
      artistName = v8->_artistName;
      v8->_artistName = v31;

      v33 = [v6 objectForKey:@"Genre"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      v35 = v34;

      v36 = [v35 copy];
      genreName = v8->_genreName;
      v8->_genreName = v36;

      v38 = [v6 objectForKey:@"Purchased"];
      if (objc_opt_respondsToSelector())
      {
        v39 = [v38 BOOLValue];
      }

      else
      {
        v39 = 0;
      }

      v8->_purchased = v39;

      v40 = [v6 objectForKey:@"PID"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v41 = v40;
      }

      else
      {
        v41 = 0;
      }

      v42 = v41;

      v43 = [v42 copy];
      syncIdentifier = v8->_syncIdentifier;
      v8->_syncIdentifier = v43;

      v45 = [v6 objectForKey:@"Store Item ID"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v46 = v45;
      }

      else
      {
        v46 = 0;
      }

      if (v46)
      {
        v47 = v46;
        v48 = [v47 unsignedLongLongValue];
      }

      else
      {
        v82 = v9;
        v49 = v45;
        v50 = 0;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v51 = v49;
        }

        else
        {
          v51 = 0;
        }

        v52 = v51;

        v48 = [v52 UTF8String];
        if (v48)
        {
          v48 = strtoull(v48, 0, 10);
        }

        v9 = v82;
      }

      v8->_storeItemIdentifier = v48;
      v53 = [v6 objectForKey:@"Store Front ID"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v54 = v53;
      }

      else
      {
        v54 = 0;
      }

      v55 = v54;

      v56 = [v55 copy];
      storeFrontIdentifier = v8->_storeFrontIdentifier;
      v8->_storeFrontIdentifier = v56;

      v58 = [v6 objectForKey:@"Artwork File"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v59 = v58;
      }

      else
      {
        v59 = 0;
      }

      v60 = v59;

      v61 = [v60 copy];
      artworkFile = v8->_artworkFile;
      v8->_artworkFile = v61;

      v63 = [v6 objectForKey:@"Total Time"];
      v64 = objc_opt_respondsToSelector();
      v65 = 0.0;
      if (v64)
      {
        v65 = [v63 unsignedIntegerValue];
      }

      v8->_duration = v65 / 1000.0;

      v66 = [v6 objectForKey:@"Protected Content"];
      if (objc_opt_respondsToSelector())
      {
        v67 = [v66 BOOLValue];
      }

      else
      {
        v67 = 0;
      }

      v8->_protectedContent = v67;

      v68 = [v6 objectForKey:@"Private"];
      if (objc_opt_respondsToSelector())
      {
        v69 = [v68 BOOLValue];
      }

      else
      {
        v69 = 0;
      }

      v8->_privateTone = v69;

      v70 = [v6 objectForKey:@"Media Kind"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v71 = v70;
      }

      else
      {
        v71 = 0;
      }

      v72 = v71;

      v73 = [v72 isEqualToString:@"tone"];
      v8->_ringtone = v73 ^ 1;
      v74 = [v6 objectForKey:@"Fade In"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v75 = v74;
      }

      else
      {
        v75 = 0;
      }

      v76 = v75;

      fadeInDurationNumber = v8->_fadeInDurationNumber;
      v8->_fadeInDurationNumber = v76;

      v78 = [v6 objectForKey:@"Fade Out"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v79 = v78;
      }

      else
      {
        v79 = 0;
      }

      v80 = v79;

      fadeOutDurationNumber = v8->_fadeOutDurationNumber;
      v8->_fadeOutDurationNumber = v80;
    }
  }

  return v8;
}

- (TLITunesTone)initWithToneStoreDownload:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = TLITunesTone;
  v5 = [(TLITunesTone *)&v23 init];
  if (v5)
  {
    v6 = [v4 toneIdentifier];
    if (!v6)
    {
      v6 = [v4 identifier];
    }

    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 name];
    v10 = [v9 copy];
    name = v5->_name;
    v5->_name = v10;

    v12 = [v4 albumTitle];
    v13 = [v12 copy];
    albumTitle = v5->_albumTitle;
    v5->_albumTitle = v13;

    v15 = [v4 artistName];
    v16 = [v15 copy];
    artistName = v5->_artistName;
    v5->_artistName = v16;

    v18 = [v4 genreName];
    v19 = [v18 copy];
    genreName = v5->_genreName;
    v5->_genreName = v19;

    v5->_storeItemIdentifier = [v4 storeItemIdentifier];
    [v4 duration];
    v5->_duration = v21;
    v5->_ringtone = [v4 isRingtone];
    v5->_purchased = 1;
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  [v6 appendFormat:@"; identifier = %@", self->_identifier];
  [v6 appendFormat:@"; name = %@", self->_name];
  if (self->_albumTitle)
  {
    [v6 appendFormat:@"; albumTitle = %@", self->_albumTitle];
  }

  if (self->_artistName)
  {
    [v6 appendFormat:@"; artistName = %@", self->_artistName];
  }

  if (self->_genreName)
  {
    [v6 appendFormat:@"; genreName = %@", self->_genreName];
  }

  if (self->_duration > 0.00000011920929)
  {
    [v6 appendFormat:@"; duration = %f", *&self->_duration];
  }

  v7 = kToneMediaKindRingtone;
  if (!self->_ringtone)
  {
    v7 = kToneMediaKindAlertTone;
  }

  [v6 appendFormat:@"; mediaKind = %@", *v7];
  if (self->_purchased)
  {
    [v6 appendString:@"; isPurchased = YES"];
  }

  if (self->_protectedContent)
  {
    [v6 appendString:@"; isProtectedContent = YES"];
  }

  if (self->_privateTone)
  {
    [v6 appendString:@"; isPrivateTone = YES"];
  }

  if (self->_storeItemIdentifier)
  {
    [v6 appendFormat:@"; storeItemIdentifier = %llu", self->_storeItemIdentifier];
  }

  if (self->_storeFrontIdentifier)
  {
    [v6 appendFormat:@"; storeFrontIdentifier = %@", self->_storeFrontIdentifier];
  }

  if (self->_syncIdentifier)
  {
    [v6 appendFormat:@"; syncIdentifier = %@", self->_syncIdentifier];
  }

  if (self->_filePath)
  {
    [v6 appendFormat:@"; filePath = %@", self->_filePath];
  }

  [v6 appendString:@">"];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      identifier = v5->_identifier;
      v7 = self->_identifier;
      v8 = identifier;
      v9 = v8;
      if (!(v7 | v8))
      {
        goto LABEL_11;
      }

      LOBYTE(v10) = 0;
      if (!v7 || !v8)
      {
        goto LABEL_88;
      }

      if (v7 == v8)
      {
LABEL_11:
      }

      else
      {
        v10 = [v7 isEqualToString:v8];

        if (!v10)
        {
          goto LABEL_89;
        }
      }

      name = v5->_name;
      v7 = self->_name;
      v12 = name;
      v9 = v12;
      if (!(v7 | v12))
      {
        goto LABEL_18;
      }

      LOBYTE(v10) = 0;
      if (!v7 || !v12)
      {
        goto LABEL_88;
      }

      if (v7 == v12)
      {
LABEL_18:
      }

      else
      {
        v10 = [v7 isEqualToString:v12];

        if (!v10)
        {
          goto LABEL_89;
        }
      }

      filePath = v5->_filePath;
      v7 = self->_filePath;
      v14 = filePath;
      v9 = v14;
      if (!(v7 | v14))
      {
        goto LABEL_25;
      }

      LOBYTE(v10) = 0;
      if (!v7 || !v14)
      {
        goto LABEL_88;
      }

      if (v7 == v14)
      {
LABEL_25:
      }

      else
      {
        v10 = [v7 isEqualToString:v14];

        if (!v10)
        {
          goto LABEL_89;
        }
      }

      albumTitle = v5->_albumTitle;
      v7 = self->_albumTitle;
      v16 = albumTitle;
      v9 = v16;
      if (!(v7 | v16))
      {
        goto LABEL_32;
      }

      LOBYTE(v10) = 0;
      if (!v7 || !v16)
      {
        goto LABEL_88;
      }

      if (v7 == v16)
      {
LABEL_32:
      }

      else
      {
        v10 = [v7 isEqualToString:v16];

        if (!v10)
        {
          goto LABEL_89;
        }
      }

      artistName = v5->_artistName;
      v7 = self->_artistName;
      v18 = artistName;
      v9 = v18;
      if (!(v7 | v18))
      {
        goto LABEL_39;
      }

      LOBYTE(v10) = 0;
      if (!v7 || !v18)
      {
        goto LABEL_88;
      }

      if (v7 == v18)
      {
LABEL_39:
      }

      else
      {
        v10 = [v7 isEqualToString:v18];

        if (!v10)
        {
          goto LABEL_89;
        }
      }

      genreName = v5->_genreName;
      v7 = self->_genreName;
      v20 = genreName;
      v9 = v20;
      if (!(v7 | v20))
      {
        goto LABEL_46;
      }

      LOBYTE(v10) = 0;
      if (!v7 || !v20)
      {
        goto LABEL_88;
      }

      if (v7 == v20)
      {
LABEL_46:
      }

      else
      {
        v10 = [v7 isEqualToString:v20];

        if (!v10)
        {
          goto LABEL_89;
        }
      }

      if (self->_purchased != v5->_purchased)
      {
        goto LABEL_80;
      }

      syncIdentifier = v5->_syncIdentifier;
      v7 = self->_syncIdentifier;
      v22 = syncIdentifier;
      v9 = v22;
      if (!(v7 | v22))
      {
        goto LABEL_54;
      }

      LOBYTE(v10) = 0;
      if (!v7 || !v22)
      {
        goto LABEL_88;
      }

      if (v7 == v22)
      {
LABEL_54:
      }

      else
      {
        v10 = [v7 isEqualToNumber:v22];

        if (!v10)
        {
          goto LABEL_89;
        }
      }

      if (self->_storeItemIdentifier != v5->_storeItemIdentifier)
      {
        goto LABEL_80;
      }

      storeFrontIdentifier = v5->_storeFrontIdentifier;
      v7 = self->_storeFrontIdentifier;
      v24 = storeFrontIdentifier;
      v9 = v24;
      if (!(v7 | v24))
      {
        goto LABEL_62;
      }

      LOBYTE(v10) = 0;
      if (!v7 || !v24)
      {
        goto LABEL_88;
      }

      if (v7 == v24)
      {
LABEL_62:
      }

      else
      {
        v10 = [v7 isEqualToString:v24];

        if (!v10)
        {
          goto LABEL_89;
        }
      }

      artworkFile = v5->_artworkFile;
      v7 = self->_artworkFile;
      v26 = artworkFile;
      v9 = v26;
      if (!(v7 | v26))
      {
        goto LABEL_69;
      }

      LOBYTE(v10) = 0;
      if (!v7 || !v26)
      {
        goto LABEL_88;
      }

      if (v7 == v26)
      {
LABEL_69:
      }

      else
      {
        v10 = [v7 isEqualToString:v26];

        if (!v10)
        {
          goto LABEL_89;
        }
      }

      if (llround(self->_duration) != llround(v5->_duration) || self->_protectedContent != v5->_protectedContent || self->_privateTone != v5->_privateTone || self->_ringtone != v5->_ringtone)
      {
LABEL_80:
        LOBYTE(v10) = 0;
LABEL_89:

        goto LABEL_90;
      }

      fadeInDurationNumber = v5->_fadeInDurationNumber;
      v7 = self->_fadeInDurationNumber;
      v28 = fadeInDurationNumber;
      v9 = v28;
      if (!(v7 | v28))
      {
        goto LABEL_81;
      }

      LOBYTE(v10) = 0;
      if (!v7 || !v28)
      {
        goto LABEL_88;
      }

      if (v7 == v28)
      {
LABEL_81:
      }

      else
      {
        v10 = [v7 isEqualToNumber:v28];

        if (!v10)
        {
          goto LABEL_89;
        }
      }

      fadeOutDurationNumber = self->_fadeOutDurationNumber;
      v30 = v5->_fadeOutDurationNumber;
      v7 = fadeOutDurationNumber;
      v31 = v30;
      v9 = v31;
      if (!(v7 | v31))
      {
        goto LABEL_87;
      }

      LOBYTE(v10) = 0;
      if (!v7 || !v31)
      {
        goto LABEL_88;
      }

      if (v7 == v31)
      {
LABEL_87:
        LOBYTE(v10) = 1;
      }

      else
      {
        LOBYTE(v10) = [v7 isEqualToNumber:v31];
      }

LABEL_88:

      goto LABEL_89;
    }

    LOBYTE(v10) = 0;
  }

LABEL_90:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_name hash]^ v3;
  v5 = [(NSString *)self->_filePath hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_albumTitle hash];
  v7 = [(NSString *)self->_artistName hash];
  v8 = v6 ^ v7 ^ [(NSString *)self->_genreName hash]^ self->_purchased;
  v9 = [(NSNumber *)self->_syncIdentifier hash]^ self->_storeItemIdentifier;
  v10 = v9 ^ [(NSString *)self->_storeFrontIdentifier hash];
  v11 = v8 ^ v10 ^ [(NSString *)self->_artworkFile hash]^ self->_protectedContent ^ self->_privateTone ^ llround(self->_duration);
  ringtone = self->_ringtone;
  v13 = ringtone ^ [(NSNumber *)self->_fadeInDurationNumber hash];
  return v11 ^ v13 ^ [(NSNumber *)self->_fadeOutDurationNumber hash];
}

- (BOOL)isDuplicateOfTone:(id)a3
{
  v4 = a3;
  v5 = v4;
  storeItemIdentifier = self->_storeItemIdentifier;
  if (!storeItemIdentifier || storeItemIdentifier != *(v4 + 9))
  {
    v8 = *(v4 + 3);
    v9 = self->_name;
    v10 = v8;
    v11 = v10;
    if (!(v9 | v10))
    {
      goto LABEL_10;
    }

    if (!v9 || !v10)
    {
      goto LABEL_31;
    }

    if (v9 == v10)
    {
LABEL_10:
    }

    else
    {
      v12 = [(NSString *)v9 isEqualToString:v10];

      if (!v12)
      {
        goto LABEL_32;
      }
    }

    v13 = *(v5 + 4);
    v9 = self->_albumTitle;
    v14 = v13;
    v11 = v14;
    if (!(v9 | v14))
    {
      goto LABEL_17;
    }

    if (!v9 || !v14)
    {
      goto LABEL_31;
    }

    if (v9 == v14)
    {
LABEL_17:
    }

    else
    {
      v15 = [(NSString *)v9 isEqualToString:v14];

      if (!v15)
      {
        goto LABEL_32;
      }
    }

    v16 = *(v5 + 5);
    v9 = self->_artistName;
    v17 = v16;
    v11 = v17;
    if (!(v9 | v17))
    {
      goto LABEL_24;
    }

    if (!v9 || !v17)
    {
      goto LABEL_31;
    }

    if (v9 == v17)
    {
LABEL_24:
    }

    else
    {
      v18 = [(NSString *)v9 isEqualToString:v17];

      if (!v18)
      {
        goto LABEL_32;
      }
    }

    v19 = *(v5 + 6);
    v9 = self->_genreName;
    v20 = v19;
    v11 = v20;
    if (!(v9 | v20))
    {
      goto LABEL_34;
    }

    if (v9 && v20)
    {
      if (v9 != v20)
      {
        v21 = [(NSString *)v9 isEqualToString:v20];

        if (v21)
        {
          goto LABEL_35;
        }

LABEL_32:
        v7 = 0;
        goto LABEL_33;
      }

LABEL_34:

LABEL_35:
      if (self->_purchased == v5[8] && self->_privateTone == v5[11] && self->_ringtone == v5[9])
      {
        v7 = llround(self->_duration) == llround(*(v5 + 12));
        goto LABEL_33;
      }

      goto LABEL_32;
    }

LABEL_31:

    goto LABEL_32;
  }

  v7 = 1;
LABEL_33:

  return v7;
}

+ (id)_identifierForPropertyListRepresentation:(id)a3
{
  v3 = [a3 objectForKey:@"GUID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [@"itunes:" stringByAppendingString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)initWithPropertyListRepresentation:(NSObject *)a3 filePath:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = v5;
  v7 = [a2 allKeys];
  v9 = 138543618;
  v10 = v5;
  v11 = 2114;
  v12 = v7;
  _os_log_error_impl(&dword_1D9356000, a3, OS_LOG_TYPE_ERROR, "%{public}@: Returning nil from initializer because of a missing identifier. Available keys in property list representation: %{public}@.", &v9, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

@end