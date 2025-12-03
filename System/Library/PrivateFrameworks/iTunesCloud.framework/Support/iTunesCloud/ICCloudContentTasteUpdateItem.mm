@interface ICCloudContentTasteUpdateItem
- (BOOL)isEqual:(id)equal;
- (ICCloudContentTasteUpdateItem)initWithCoder:(id)coder;
- (ICCloudContentTasteUpdateItem)initWithGlobalPlaylistID:(id)d contentTaste:(int64_t)taste configuration:(id)configuration;
- (ICCloudContentTasteUpdateItem)initWithStoreItemID:(int64_t)d mediaContentTasteItem:(int64_t)item contentTaste:(int64_t)taste configuration:(id)configuration timeStamp:(id)stamp;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICCloudContentTasteUpdateItem

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
  v106 = __ROR8__(v14 + v13, 32);
  v110 = v16 ^ __ROR8__(v15, 43);
  v17 = v16 ^ v11;
  v99 = (v14 + v13) ^ __ROR8__(v13, 47);

  v18 = self->_dsid;
  v19 = [(NSNumber *)v18 hash];
  v20 = (v17 + v99) ^ __ROR8__(v99, 51);
  v21 = v106 + (v110 ^ v19);
  v22 = __ROR8__(v110 ^ v19, 48);
  v23 = (v21 ^ v22) + __ROR8__(v17 + v99, 32);
  v24 = v23 ^ __ROR8__(v21 ^ v22, 43);
  v25 = v21 + v20;
  v107 = __ROR8__(v25, 32);
  v111 = v24;
  v94 = v23 ^ v19;
  v100 = v25 ^ __ROR8__(v20, 47);

  v26 = self->_globalPlaylistID;
  v27 = [(NSString *)v26 hash];
  v28 = (v94 + v100) ^ __ROR8__(v100, 51);
  v29 = v107 + (v111 ^ v27);
  v30 = __ROR8__(v111 ^ v27, 48);
  v31 = (v29 ^ v30) + __ROR8__(v94 + v100, 32);
  v32 = v31 ^ __ROR8__(v29 ^ v30, 43);
  v33 = v29 + v28;
  v108 = __ROR8__(v33, 32);
  v112 = v32;
  v95 = v31 ^ v27;
  v101 = v33 ^ __ROR8__(v28, 47);

  v34 = self->_updateActionTimeStamp;
  v35 = [(NSDate *)v34 hash];
  v36 = (v95 + v101) ^ __ROR8__(v101, 51);
  v37 = v108 + (v112 ^ v35);
  v38 = __ROR8__(v112 ^ v35, 48);
  v39 = (v37 ^ v38) + __ROR8__(v95 + v101, 32);
  v40 = v39 ^ __ROR8__(v37 ^ v38, 43);
  v41 = v37 + v36;
  v109 = __ROR8__(v41, 32);
  v113 = v40;
  v96 = v39 ^ v35;
  v102 = v41 ^ __ROR8__(v36, 47);

  contentTasteItem = self->_contentTasteItem;
  v43 = (v96 + v102) ^ __ROR8__(v102, 51);
  v44 = v109 + (v113 ^ contentTasteItem);
  v45 = __ROR8__(v113 ^ contentTasteItem, 48);
  v46 = (v44 ^ v45) + __ROR8__(v96 + v102, 32);
  v47 = v46 ^ __ROR8__(v44 ^ v45, 43);
  v48 = v44 + v43;
  v97 = v46 ^ contentTasteItem;
  v103 = v48 ^ __ROR8__(v43, 47);
  contentTasteType = self->_contentTasteType;
  v50 = v47 ^ contentTasteType;
  v51 = (v97 + v103) ^ __ROR8__(v103, 51);
  v52 = __ROR8__(v48, 32) + v50;
  v53 = __ROR8__(v50, 48);
  v54 = (v52 ^ v53) + __ROR8__(v97 + v103, 32);
  v55 = v54 ^ __ROR8__(v52 ^ v53, 43);
  v56 = v52 + v51;
  v98 = v54 ^ contentTasteType;
  v104 = v56 ^ __ROR8__(v51, 47);
  storeID = self->_storeID;
  v58 = v55 ^ storeID;
  v59 = (v98 + v104) ^ __ROR8__(v104, 51);
  v60 = __ROR8__(v56, 32) + v58;
  v61 = __ROR8__(v58, 48);
  v62 = (v60 ^ v61) + __ROR8__(v98 + v104, 32);
  v63 = v62 ^ __ROR8__(v60 ^ v61, 43);
  v64 = v60 + v59;
  v105 = v64 ^ __ROR8__(v59, 47);
  v65 = ((v62 ^ storeID) + v105) ^ __ROR8__(v105, 51);
  v66 = __ROR8__(v64, 32) + (v63 ^ 0x3800000000000000);
  v67 = __ROR8__(v63 ^ 0x3800000000000000, 48);
  v68 = (v66 ^ v67) + __ROR8__((v62 ^ storeID) + v105, 32);
  v69 = v68 ^ __ROR8__(v66 ^ v67, 43);
  v70 = v66 + v65;
  v71 = v70 ^ __ROR8__(v65, 47);
  v72 = (v68 ^ 0x3800000000000000) + v71;
  v73 = v72 ^ __ROR8__(v71, 51);
  v74 = (__ROR8__(v70, 32) ^ 0xFFLL) + v69;
  v75 = __ROR8__(v69, 48);
  v76 = __ROR8__(v72, 32) + (v74 ^ v75);
  v77 = v76 ^ __ROR8__(v74 ^ v75, 43);
  v78 = v73 + v74;
  v79 = v78 ^ __ROR8__(v73, 47);
  v80 = v79 + v76;
  v81 = v80 ^ __ROR8__(v79, 51);
  v82 = __ROR8__(v78, 32) + v77;
  v83 = __ROR8__(v77, 48);
  v84 = __ROR8__(v80, 32) + (v82 ^ v83);
  v85 = v84 ^ __ROR8__(v82 ^ v83, 43);
  v86 = v81 + v82;
  v87 = v86 ^ __ROR8__(v81, 47);
  v88 = v87 + v84;
  v89 = v88 ^ __ROR8__(v87, 51);
  v90 = __ROR8__(v86, 32) + v85;
  v91 = __ROR8__(v85, 48);
  v92 = __ROR8__(v88, 32) + (v90 ^ v91);
  return (v89 + v90) ^ __ROR8__(v89, 47) ^ v92 ^ __ROR8__(v89 + v90, 32) ^ v92 ^ __ROR8__(v90 ^ v91, 43);
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
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v20.receiver = self;
      v20.super_class = ICCloudContentTasteUpdateItem;
      if ([(ICCloudContentTasteUpdateItem *)&v20 isEqual:v5])
      {
        updateActionTimeStamp = v5->_updateActionTimeStamp;
        v7 = self->_updateActionTimeStamp;
        v8 = v7;
        if (v7 == updateActionTimeStamp)
        {
        }

        else
        {
          v9 = [(NSDate *)v7 isEqual:updateActionTimeStamp];

          if (!v9)
          {
            goto LABEL_20;
          }
        }

        globalPlaylistID = v5->_globalPlaylistID;
        v12 = self->_globalPlaylistID;
        v13 = v12;
        if (v12 == globalPlaylistID)
        {
        }

        else
        {
          v14 = [(NSString *)v12 isEqual:globalPlaylistID];

          if (!v14)
          {
            goto LABEL_20;
          }
        }

        dsid = v5->_dsid;
        v16 = self->_dsid;
        v17 = v16;
        if (v16 == dsid)
        {
        }

        else
        {
          v18 = [(NSNumber *)v16 isEqual:dsid];

          if (!v18)
          {
            goto LABEL_20;
          }
        }

        if (self->_contentTasteType == v5->_contentTasteType)
        {
          v10 = self->_contentTasteItem == v5->_contentTasteItem;
LABEL_21:

          goto LABEL_22;
        }
      }

LABEL_20:
      v10 = 0;
      goto LABEL_21;
    }

    v10 = 0;
  }

LABEL_22:

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  globalPlaylistID = self->_globalPlaylistID;
  coderCopy = coder;
  [coderCopy encodeObject:globalPlaylistID forKey:@"_ICCloudContentTasteUpdateItemCodingKeyGlobalPlaylistIDKey"];
  [(NSDate *)self->_updateActionTimeStamp timeIntervalSince1970];
  [coderCopy encodeDouble:@"_ICCloudContentTasteUpdateItemCodingKeyTimeStampKey" forKey:?];
  [coderCopy encodeObject:self->_dsid forKey:@"_ICCloudContentTasteUpdateItemCodingKeyDSIDKey"];
  [coderCopy encodeInt64:self->_storeID forKey:@"_ICCloudContentTasteUpdateItemCodingKeyStoreIDKey"];
  [coderCopy encodeInteger:self->_contentTasteType forKey:@"_ICCloudContentTasteUpdateItemCodingKeyTasteTypeKey"];
  [coderCopy encodeInteger:self->_contentTasteItem forKey:@"_ICCloudContentTasteUpdateItemCodingKeyItemTypeKey"];
}

- (ICCloudContentTasteUpdateItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = ICCloudContentTasteUpdateItem;
  v5 = [(ICCloudContentTasteUpdateItem *)&v16 init];
  if (v5)
  {
    v5->_storeID = [coderCopy decodeInt64ForKey:@"_ICCloudContentTasteUpdateItemCodingKeyStoreIDKey"];
    v5->_contentTasteItem = [coderCopy decodeIntegerForKey:@"_ICCloudContentTasteUpdateItemCodingKeyItemTypeKey"];
    v5->_contentTasteType = [coderCopy decodeIntegerForKey:@"_ICCloudContentTasteUpdateItemCodingKeyTasteTypeKey"];
    v6 = [coderCopy decodeObjectForKey:@"_ICCloudContentTasteUpdateItemCodingKeyGlobalPlaylistIDKey"];
    globalPlaylistID = v5->_globalPlaylistID;
    v5->_globalPlaylistID = v6;

    v8 = [coderCopy decodeObjectForKey:@"_ICCloudContentTasteUpdateItemCodingKeyDSIDKey"];
    dsid = v5->_dsid;
    v5->_dsid = v8;

    v10 = [ICUserIdentity specificAccountWithDSID:v5->_dsid];
    v11 = [[ICConnectionConfiguration alloc] initWithUserIdentity:v10];
    configuration = v5->_configuration;
    v5->_configuration = v11;

    [coderCopy decodeDoubleForKey:@"_ICCloudContentTasteUpdateItemCodingKeyTimeStampKey"];
    v13 = [NSDate dateWithTimeIntervalSince1970:?];
    updateActionTimeStamp = v5->_updateActionTimeStamp;
    v5->_updateActionTimeStamp = v13;
  }

  return v5;
}

- (id)description
{
  storeID = self->_storeID;
  userIdentity = [(ICConnectionConfiguration *)self->_configuration userIdentity];
  globalPlaylistID = self->_globalPlaylistID;
  contentTasteType = self->_contentTasteType;
  v7 = ICNSStringForICMediaContentTaste();
  contentTasteItem = self->_contentTasteItem;
  v9 = ICNSStringForICMediaContentTasteItem();
  v10 = [NSString stringWithFormat:@"ICCloudContentTasteUpdateItem (%p) storeID=%lld, identity=%@, globalPlaylistID=%@, contentTasteType=%@, contentTasteItem=%@, updateTimeStamp=%@", self, storeID, userIdentity, globalPlaylistID, v7, v9, self->_updateActionTimeStamp];

  return v10;
}

- (ICCloudContentTasteUpdateItem)initWithGlobalPlaylistID:(id)d contentTaste:(int64_t)taste configuration:(id)configuration
{
  dCopy = d;
  configurationCopy = configuration;
  v20.receiver = self;
  v20.super_class = ICCloudContentTasteUpdateItem;
  v11 = [(ICCloudContentTasteUpdateItem *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_configuration, configuration);
    objc_storeStrong(&v12->_globalPlaylistID, d);
    v12->_contentTasteType = taste;
    v12->_contentTasteItem = 4;
    v13 = +[NSDate date];
    updateActionTimeStamp = v12->_updateActionTimeStamp;
    v12->_updateActionTimeStamp = v13;

    userIdentityStore = [(ICConnectionConfiguration *)v12->_configuration userIdentityStore];
    userIdentity = [(ICConnectionConfiguration *)v12->_configuration userIdentity];
    v17 = [userIdentityStore DSIDForUserIdentity:userIdentity outError:0];
    dsid = v12->_dsid;
    v12->_dsid = v17;
  }

  return v12;
}

- (ICCloudContentTasteUpdateItem)initWithStoreItemID:(int64_t)d mediaContentTasteItem:(int64_t)item contentTaste:(int64_t)taste configuration:(id)configuration timeStamp:(id)stamp
{
  configurationCopy = configuration;
  stampCopy = stamp;
  v22.receiver = self;
  v22.super_class = ICCloudContentTasteUpdateItem;
  v15 = [(ICCloudContentTasteUpdateItem *)&v22 init];
  v16 = v15;
  if (v15)
  {
    v15->_storeID = d;
    objc_storeStrong(&v15->_configuration, configuration);
    v16->_contentTasteType = taste;
    v16->_contentTasteItem = item;
    objc_storeStrong(&v16->_updateActionTimeStamp, stamp);
    userIdentityStore = [(ICConnectionConfiguration *)v16->_configuration userIdentityStore];
    userIdentity = [(ICConnectionConfiguration *)v16->_configuration userIdentity];
    v19 = [userIdentityStore DSIDForUserIdentity:userIdentity outError:0];
    dsid = v16->_dsid;
    v16->_dsid = v19;
  }

  return v16;
}

@end