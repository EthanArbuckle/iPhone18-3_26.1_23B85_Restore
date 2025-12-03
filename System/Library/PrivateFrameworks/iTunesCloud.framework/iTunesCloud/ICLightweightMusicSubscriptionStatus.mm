@interface ICLightweightMusicSubscriptionStatus
- (BOOL)isEqual:(id)equal;
- (ICLightweightMusicSubscriptionStatus)initWithCoder:(id)coder;
- (id)_initWithExtendedSubscriptionStatus:(id)status;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICLightweightMusicSubscriptionStatus

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  statusType = self->_statusType;
  if (statusType > 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = off_1E7BFA3D8[statusType];
  }

  v9 = v8;
  [v6 appendFormat:@"; statusType = %@", v9];
  reasonType = self->_reasonType;
  if (reasonType > 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = off_1E7BFA3F8[reasonType];
  }

  v12 = v11;
  [v6 appendFormat:@"; reasonType = %@", v12];
  v13 = ICMusicSubscriptionStatusCapabilitiesGetDescription([(ICLightweightMusicSubscriptionStatus *)self capabilities]);
  [v6 appendFormat:@"; capabilities = %@", v13];
  if ([(NSArray *)self->_eligibleOffers count])
  {
    v14 = [(NSArray *)self->_eligibleOffers componentsJoinedByString:@", "];
    [v6 appendFormat:@"; eligibleOffers = [%@]", v14];
  }

  [v6 appendString:@">"];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  statusType = self->_statusType;
  coderCopy = coder;
  [coderCopy encodeInteger:statusType forKey:@"statusType"];
  [coderCopy encodeInteger:self->_reasonType forKey:@"reasonType"];
  [coderCopy encodeObject:self->_eligibleOffers forKey:@"eligibleOffers"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"expirationDate"];
}

- (ICLightweightMusicSubscriptionStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = ICLightweightMusicSubscriptionStatus;
  v5 = [(ICLightweightMusicSubscriptionStatus *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeIntegerForKey:@"statusType"];
    if (v6 >= 4)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    v5->_statusType = v7;
    v5->_reasonType = [coderCopy decodeIntegerForKey:@"reasonType"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"eligibleOffers"];
    v12 = [v11 copy];
    eligibleOffers = v5->_eligibleOffers;
    v5->_eligibleOffers = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v14;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_11;
  }

  v5 = equalCopy;
  v6 = v5;
  if (self->_statusType != v5->_statusType || self->_reasonType != v5->_reasonType)
  {
    goto LABEL_7;
  }

  eligibleOffers = v5->_eligibleOffers;
  v8 = self->_eligibleOffers;
  v9 = v8;
  if (v8 == eligibleOffers)
  {

    goto LABEL_13;
  }

  v10 = [(NSArray *)v8 isEqual:eligibleOffers];

  if (v10)
  {
LABEL_13:
    expirationDate = self->_expirationDate;
    v14 = v6->_expirationDate;
    v15 = expirationDate;
    v16 = v15;
    if (v15 == v14)
    {
      v11 = 1;
    }

    else
    {
      v11 = [(NSDate *)v15 isEqual:v14];
    }

    goto LABEL_8;
  }

LABEL_7:
  v11 = 0;
LABEL_8:

LABEL_11:
  return v11;
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
  v86 = __ROR8__(v14 + v13, 32);
  v90 = v16 ^ __ROR8__(v15, 43);
  v17 = v16 ^ v11;
  v81 = (v14 + v13) ^ __ROR8__(v13, 47);

  v18 = (v17 + v81) ^ __ROR8__(v81, 51);
  statusType = self->_statusType;
  reasonType = self->_reasonType;
  v21 = v86 + (v90 ^ statusType);
  v22 = __ROR8__(v90 ^ statusType, 48);
  v23 = (v21 ^ v22) + __ROR8__(v17 + v81, 32);
  v24 = v23 ^ __ROR8__(v21 ^ v22, 43);
  v25 = v21 + v18;
  v91 = v24;
  v77 = v23 ^ statusType;
  v82 = v25 ^ __ROR8__(v18, 47);
  v26 = ((v23 ^ statusType) + v82) ^ __ROR8__(v82, 51);
  v27 = __ROR8__(v25, 32) + (v24 ^ reasonType);
  v28 = __ROR8__(v91 ^ reasonType, 48);
  v29 = (v27 ^ v28) + __ROR8__(v77 + v82, 32);
  v30 = v29 ^ __ROR8__(v27 ^ v28, 43);
  v31 = v27 + v26;
  v87 = __ROR8__(v31, 32);
  v92 = v30;
  v78 = v29 ^ reasonType;
  v83 = v31 ^ __ROR8__(v26, 47);
  v32 = self->_eligibleOffers;
  v33 = [(NSArray *)v32 hash];
  v34 = (v78 + v83) ^ __ROR8__(v83, 51);
  v35 = v87 + (v92 ^ v33);
  v36 = __ROR8__(v92 ^ v33, 48);
  v37 = (v35 ^ v36) + __ROR8__(v78 + v83, 32);
  v38 = v37 ^ __ROR8__(v35 ^ v36, 43);
  v39 = v35 + v34;
  v88 = __ROR8__(v39, 32);
  v93 = v38;
  v79 = v37 ^ v33;
  v84 = v39 ^ __ROR8__(v34, 47);

  v40 = self->_expirationDate;
  v41 = [(NSDate *)v40 hash];
  v42 = (v79 + v84) ^ __ROR8__(v84, 51);
  v43 = v88 + (v93 ^ v41);
  v44 = __ROR8__(v93 ^ v41, 48);
  v45 = (v43 ^ v44) + __ROR8__(v79 + v84, 32);
  v46 = v45 ^ __ROR8__(v43 ^ v44, 43);
  v47 = v43 + v42;
  v89 = __ROR8__(v47, 32);
  v94 = v46;
  v80 = v45 ^ v41;
  v85 = v47 ^ __ROR8__(v42, 47);

  v48 = (v80 + v85) ^ __ROR8__(v85, 51);
  v49 = v89 + (v94 ^ 0x2800000000000000);
  v50 = __ROR8__(v94 ^ 0x2800000000000000, 48);
  v51 = (v49 ^ v50) + __ROR8__(v80 + v85, 32);
  v52 = v51 ^ __ROR8__(v49 ^ v50, 43);
  v53 = v49 + v48;
  v54 = v53 ^ __ROR8__(v48, 47);
  v55 = (v51 ^ 0x2800000000000000) + v54;
  v56 = v55 ^ __ROR8__(v54, 51);
  v57 = (__ROR8__(v53, 32) ^ 0xFFLL) + v52;
  v58 = __ROR8__(v52, 48);
  v59 = __ROR8__(v55, 32) + (v57 ^ v58);
  v60 = v59 ^ __ROR8__(v57 ^ v58, 43);
  v61 = v56 + v57;
  v62 = v61 ^ __ROR8__(v56, 47);
  v63 = v62 + v59;
  v64 = v63 ^ __ROR8__(v62, 51);
  v65 = __ROR8__(v61, 32) + v60;
  v66 = __ROR8__(v60, 48);
  v67 = __ROR8__(v63, 32) + (v65 ^ v66);
  v68 = v67 ^ __ROR8__(v65 ^ v66, 43);
  v69 = v64 + v65;
  v70 = v69 ^ __ROR8__(v64, 47);
  v71 = v70 + v67;
  v72 = v71 ^ __ROR8__(v70, 51);
  v73 = __ROR8__(v69, 32) + v68;
  v74 = __ROR8__(v68, 48);
  v75 = __ROR8__(v71, 32) + (v73 ^ v74);
  return (v72 + v73) ^ __ROR8__(v72, 47) ^ v75 ^ __ROR8__(v72 + v73, 32) ^ v75 ^ __ROR8__(v73 ^ v74, 43);
}

- (id)_initWithExtendedSubscriptionStatus:(id)status
{
  statusCopy = status;
  v12.receiver = self;
  v12.super_class = ICLightweightMusicSubscriptionStatus;
  v5 = [(ICLightweightMusicSubscriptionStatus *)&v12 init];
  if (v5)
  {
    v5->_statusType = [statusCopy statusType];
    v5->_reasonType = [statusCopy reasonType];
    eligibleOffers = [statusCopy eligibleOffers];
    v7 = [eligibleOffers copy];
    eligibleOffers = v5->_eligibleOffers;
    v5->_eligibleOffers = v7;

    expirationDate = [statusCopy expirationDate];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = expirationDate;
  }

  return v5;
}

@end