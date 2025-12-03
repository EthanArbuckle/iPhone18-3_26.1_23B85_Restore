@interface ICMusicSubscriptionStatusCacheKey
- (BOOL)isEqual:(id)equal;
- (ICMusicSubscriptionStatusCacheKey)init;
- (ICMusicSubscriptionStatusCacheKey)initWithDictionaryRepresentation:(id)representation requiringDSID:(BOOL)d;
- (ICMusicSubscriptionStatusCacheKey)initWithStringRepresentation:(id)representation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentationIncludingDSID:(BOOL)d;
- (id)stringRepresentation;
- (unint64_t)hash;
- (void)setDSID:(id)d;
- (void)setPhoneNumber:(id)number;
- (void)setStorefrontIdentifier:(id)identifier;
@end

@implementation ICMusicSubscriptionStatusCacheKey

- (ICMusicSubscriptionStatusCacheKey)init
{
  v8.receiver = self;
  v8.super_class = ICMusicSubscriptionStatusCacheKey;
  v2 = [(ICMusicSubscriptionStatusCacheKey *)&v8 init];
  v3 = v2;
  if (v2)
  {
    DSID = v2->_DSID;
    v2->_DSID = &unk_1F2C921E8;

    phoneNumber = v3->_phoneNumber;
    v3->_phoneNumber = &stru_1F2C4A680;

    storefrontIdentifier = v3->_storefrontIdentifier;
    v3->_storefrontIdentifier = &stru_1F2C4A680;
  }

  return v3;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  [v6 appendFormat:@"; DSID = %@", self->_DSID];
  if ([(NSString *)self->_phoneNumber length])
  {
    [v6 appendFormat:@"; phoneNumber = %@", self->_phoneNumber];
  }

  [v6 appendFormat:@"; storefrontIdentifier = %@", self->_storefrontIdentifier];
  [v6 appendString:@">"];

  return v6;
}

- (unint64_t)hash
{
  v3 = MSVHasherSharedSeed();
  v5 = v4;
  v6 = v3 ^ 0x736F6D6570736575;
  v7 = v4 ^ 0x646F72616E646F6DLL;
  v8 = v3 ^ 0x6C7967656E657261;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v10 hash];
  v12 = v5 ^ 0x7465646279746573 ^ v11;
  v13 = (v6 + v7) ^ __ROR8__(v7, 51);
  v14 = v8 + v12;
  v15 = (v8 + v12) ^ __ROR8__(v12, 48);
  v16 = v15 + __ROR8__(v6 + v7, 32);
  v78 = __ROR8__(v14 + v13, 32);
  v82 = v16 ^ __ROR8__(v15, 43);
  v17 = v16 ^ v11;
  v74 = (v14 + v13) ^ __ROR8__(v13, 47);

  v18 = self->_DSID;
  v19 = [(NSNumber *)v18 hash];
  v20 = (v17 + v74) ^ __ROR8__(v74, 51);
  v21 = v78 + (v82 ^ v19);
  v22 = __ROR8__(v82 ^ v19, 48);
  v23 = (v21 ^ v22) + __ROR8__(v17 + v74, 32);
  v24 = v23 ^ __ROR8__(v21 ^ v22, 43);
  v25 = v21 + v20;
  v79 = __ROR8__(v25, 32);
  v83 = v24;
  v71 = v23 ^ v19;
  v75 = v25 ^ __ROR8__(v20, 47);

  v26 = self->_phoneNumber;
  v27 = [(NSString *)v26 hash];
  v28 = (v71 + v75) ^ __ROR8__(v75, 51);
  v29 = v79 + (v83 ^ v27);
  v30 = __ROR8__(v83 ^ v27, 48);
  v31 = (v29 ^ v30) + __ROR8__(v71 + v75, 32);
  v32 = v31 ^ __ROR8__(v29 ^ v30, 43);
  v33 = v29 + v28;
  v80 = __ROR8__(v33, 32);
  v84 = v32;
  v72 = v31 ^ v27;
  v76 = v33 ^ __ROR8__(v28, 47);

  v34 = self->_storefrontIdentifier;
  v35 = [(NSString *)v34 hash];
  v36 = (v72 + v76) ^ __ROR8__(v76, 51);
  v37 = v80 + (v84 ^ v35);
  v38 = __ROR8__(v84 ^ v35, 48);
  v39 = (v37 ^ v38) + __ROR8__(v72 + v76, 32);
  v40 = v39 ^ __ROR8__(v37 ^ v38, 43);
  v41 = v37 + v36;
  v81 = __ROR8__(v41, 32);
  v85 = v40;
  v73 = v39 ^ v35;
  v77 = v41 ^ __ROR8__(v36, 47);

  v42 = (v73 + v77) ^ __ROR8__(v77, 51);
  v43 = v81 + (v85 ^ 0x2000000000000000);
  v44 = __ROR8__(v85 ^ 0x2000000000000000, 48);
  v45 = (v43 ^ v44) + __ROR8__(v73 + v77, 32);
  v46 = v45 ^ __ROR8__(v43 ^ v44, 43);
  v47 = v43 + v42;
  v48 = v47 ^ __ROR8__(v42, 47);
  v49 = (v45 ^ 0x2000000000000000) + v48;
  v50 = v49 ^ __ROR8__(v48, 51);
  v51 = (__ROR8__(v47, 32) ^ 0xFFLL) + v46;
  v52 = __ROR8__(v46, 48);
  v53 = __ROR8__(v49, 32) + (v51 ^ v52);
  v54 = v53 ^ __ROR8__(v51 ^ v52, 43);
  v55 = v50 + v51;
  v56 = v55 ^ __ROR8__(v50, 47);
  v57 = v56 + v53;
  v58 = v57 ^ __ROR8__(v56, 51);
  v59 = __ROR8__(v55, 32) + v54;
  v60 = __ROR8__(v54, 48);
  v61 = __ROR8__(v57, 32) + (v59 ^ v60);
  v62 = v61 ^ __ROR8__(v59 ^ v60, 43);
  v63 = v58 + v59;
  v64 = v63 ^ __ROR8__(v58, 47);
  v65 = v64 + v61;
  v66 = v65 ^ __ROR8__(v64, 51);
  v67 = __ROR8__(v63, 32) + v62;
  v68 = __ROR8__(v62, 48);
  v69 = __ROR8__(v65, 32) + (v67 ^ v68);
  return (v66 + v67) ^ __ROR8__(v66, 47) ^ v69 ^ __ROR8__(v66 + v67, 32) ^ v69 ^ __ROR8__(v67 ^ v68, 43);
}

- (id)stringRepresentation
{
  v2 = [(ICMusicSubscriptionStatusCacheKey *)self dictionaryRepresentationIncludingDSID:1];
  v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ICMusicSubscriptionStatusCacheKey)initWithStringRepresentation:(id)representation
{
  v4 = [representation dataUsingEncoding:4];
  v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:0 error:0];
  v6 = 0;
  if (_NSIsNSDictionary())
  {
    v6 = v5;
  }

  v7 = [(ICMusicSubscriptionStatusCacheKey *)self initWithDictionaryRepresentation:v6 requiringDSID:1];

  return v7;
}

- (id)dictionaryRepresentationIncludingDSID:(BOOL)d
{
  dCopy = d;
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"phoneNumber";
  v12[1] = @"storefrontID";
  storefrontIdentifier = self->_storefrontIdentifier;
  v13[0] = self->_phoneNumber;
  v13[1] = storefrontIdentifier;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v7 = v6;
  if (dCopy)
  {
    v8 = [v6 mutableCopy];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lli", -[NSNumber longLongValue](self->_DSID, "longLongValue")];
    [v8 setObject:v9 forKey:@"dsid"];
    v10 = [v8 copy];

    v7 = v10;
  }

  return v7;
}

- (ICMusicSubscriptionStatusCacheKey)initWithDictionaryRepresentation:(id)representation requiringDSID:(BOOL)d
{
  dCopy = d;
  representationCopy = representation;
  v20.receiver = self;
  v20.super_class = ICMusicSubscriptionStatusCacheKey;
  v7 = [(ICMusicSubscriptionStatusCacheKey *)&v20 init];
  if (v7)
  {
    v8 = [representationCopy objectForKey:@"dsid"];
    if (_NSIsNSString())
    {
      longLongValue = [v8 longLongValue];
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:longLongValue];
      DSID = v7->_DSID;
      v7->_DSID = v10;
    }

    v12 = [representationCopy objectForKey:@"phoneNumber"];
    if (_NSIsNSString())
    {
      v13 = [v12 copy];
      phoneNumber = v7->_phoneNumber;
      v7->_phoneNumber = v13;
    }

    v15 = [representationCopy objectForKey:@"storefrontID"];
    if (_NSIsNSString())
    {
      v16 = [v15 copy];
      storefrontIdentifier = v7->_storefrontIdentifier;
      v7->_storefrontIdentifier = v16;
    }

    v18 = v7->_DSID;
    if (dCopy)
    {
      if (!v18)
      {
LABEL_15:

        v7 = 0;
LABEL_16:

        goto LABEL_17;
      }
    }

    else if (!v18)
    {
      v7->_DSID = &unk_1F2C921E8;
    }

    if (v7->_phoneNumber && v7->_storefrontIdentifier)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_17:

  return v7;
}

- (void)setStorefrontIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICMusicSubscriptionStatusCacheKey.m" lineNumber:87 description:{@"Cannot set a nil storefrontIdentifier on an instance of %@", v9}];
  }

  storefrontIdentifier = self->_storefrontIdentifier;
  self->_storefrontIdentifier = identifierCopy;
}

- (void)setPhoneNumber:(id)number
{
  numberCopy = number;
  if (!numberCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICMusicSubscriptionStatusCacheKey.m" lineNumber:82 description:{@"Cannot set a nil phoneNumber on an instance of %@", v9}];
  }

  phoneNumber = self->_phoneNumber;
  self->_phoneNumber = numberCopy;
}

- (void)setDSID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICMusicSubscriptionStatusCacheKey.m" lineNumber:77 description:{@"Cannot set a nil DSID on an instance of %@", v9}];
  }

  DSID = self->_DSID;
  self->_DSID = dCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(ICMusicSubscriptionStatusCacheKey);
  if (v4)
  {
    v5 = [(NSNumber *)self->_DSID copy];
    DSID = v4->_DSID;
    v4->_DSID = v5;

    v7 = [(NSString *)self->_phoneNumber copy];
    phoneNumber = v4->_phoneNumber;
    v4->_phoneNumber = v7;

    v9 = [(NSString *)self->_storefrontIdentifier copy];
    storefrontIdentifier = v4->_storefrontIdentifier;
    v4->_storefrontIdentifier = v9;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    if ([(ICMusicSubscriptionStatusCacheKey *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
      DSID = v5->_DSID;
      v7 = self->_DSID;
      v8 = v7;
      if (v7 == DSID)
      {
      }

      else
      {
        v9 = [(NSNumber *)v7 isEqual:DSID];

        if (!v9)
        {
          goto LABEL_11;
        }
      }

      phoneNumber = v5->_phoneNumber;
      v12 = self->_phoneNumber;
      v13 = v12;
      if (v12 == phoneNumber)
      {
      }

      else
      {
        v14 = [(NSString *)v12 isEqual:phoneNumber];

        if (!v14)
        {
LABEL_11:
          v10 = 0;
LABEL_17:

          goto LABEL_18;
        }
      }

      storefrontIdentifier = self->_storefrontIdentifier;
      v16 = v5->_storefrontIdentifier;
      v17 = storefrontIdentifier;
      v18 = v17;
      if (v17 == v16)
      {
        v10 = 1;
      }

      else
      {
        v10 = [(NSString *)v17 isEqual:v16];
      }

      goto LABEL_17;
    }

    v10 = 0;
  }

LABEL_18:

  return v10;
}

@end