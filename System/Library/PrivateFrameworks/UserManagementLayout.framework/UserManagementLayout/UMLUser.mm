@interface UMLUser
+ (id)userFromManifestDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValidClassTypeinDictionary:(id)dictionary withKey:(id)key withType:(Class)type;
- (UMLUser)init;
- (id)userManifestDictionary;
- (unint64_t)hash;
@end

@implementation UMLUser

- (UMLUser)init
{
  v6.receiver = self;
  v6.super_class = UMLUser;
  v2 = [(UMLUser *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
    goto LABEL_104;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0;
    goto LABEL_104;
  }

  v7 = equalCopy;
  v8 = [(UMLUser *)self uid];
  if (v8 != [(UMLUser *)v7 uid]|| (v9 = [(UMLUser *)self gid], v9 != [(UMLUser *)v7 gid]) || (v10 = [(UMLUser *)self apnsID], v10 != [(UMLUser *)v7 apnsID]))
  {
    v128 = 0;
    memset(v127, 0, sizeof(v127));
    v124 = 0;
    v122 = 0;
    v123 = 0;
    v126 = 0;
    memset(v120, 0, sizeof(v120));
    v13 = 0;
    memset(v125, 0, sizeof(v125));
    v14 = 0;
    v15 = 0;
    v121 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v12 = 0;
    goto LABEL_13;
  }

  userUUID = [(UMLUser *)self userUUID];
  LODWORD(v128) = userUUID == 0;
  if (userUUID || ([(UMLUser *)v7 userUUID], (v115 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    userUUID2 = [(UMLUser *)self userUUID];
    userUUID3 = [(UMLUser *)v7 userUUID];
    v118 = userUUID2;
    if (![userUUID2 isEqual:?])
    {
      HIDWORD(v128) = 1;
      v124 = 0;
      *&v127[4] = 0;
      v122 = 0;
      v123 = 0;
      v126 = 0;
      memset(v120, 0, sizeof(v120));
      v13 = 0;
      memset(v125, 0, sizeof(v125));
      v14 = 0;
      v15 = 0;
      v121 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v12 = 0;
      *v127 = 1;
      goto LABEL_13;
    }

    creationDate3 = 1;
  }

  else
  {
    v115 = 0;
    creationDate3 = 0;
  }

  alternateDSID = [(UMLUser *)self alternateDSID];
  *&v127[8] = alternateDSID == 0;
  *v127 = creationDate3;
  if (alternateDSID || ([(UMLUser *)v7 alternateDSID], (v111 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    alternateDSID2 = [(UMLUser *)self alternateDSID];
    alternateDSID3 = [(UMLUser *)v7 alternateDSID];
    v114 = alternateDSID2;
    if (![alternateDSID2 isEqual:?])
    {
      HIDWORD(v128) = 1;
      v122 = 0;
      *&v127[4] = 0;
      v126 = 0;
      memset(v120, 0, sizeof(v120));
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v123 = 0;
      v121 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v12 = 0;
      v124 = 1;
      memset(v125, 0, 84);
      HIDWORD(v125[10]) = 1;
      goto LABEL_13;
    }

    creationDate4 = 1;
  }

  else
  {
    v111 = 0;
    creationDate4 = 0;
  }

  userType = [(UMLUser *)self userType];
  *&v127[4] = userType == 0;
  HIDWORD(v125[10]) = creationDate4;
  if (userType || ([(UMLUser *)v7 userType], (v107 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    userType2 = [(UMLUser *)self userType];
    userType3 = [(UMLUser *)v7 userType];
    v110 = userType2;
    if (![userType2 isEqual:?])
    {
      HIDWORD(v128) = 1;
      v126 = 0;
      memset(v120, 0, sizeof(v120));
      memset(v125, 0, 80);
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v12 = 0;
      v123 = 0;
      v124 = 1;
      v121 = 0;
      v122 = 1;
      LODWORD(v125[10]) = 1;
      goto LABEL_13;
    }

    LODWORD(v125[10]) = 1;
  }

  else
  {
    v107 = 0;
    LODWORD(v125[10]) = 0;
  }

  username = [(UMLUser *)self username];
  v126 = username == 0;
  if (username || ([(UMLUser *)v7 username], (v103 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    username2 = [(UMLUser *)self username];
    username3 = [(UMLUser *)v7 username];
    v106 = username2;
    if (![username2 isEqual:?])
    {
      HIDWORD(v128) = 1;
      v13 = 0;
      memset(v125, 0, 72);
      v14 = 0;
      memset(v120, 0, 36);
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v12 = 0;
      v123 = 0;
      v124 = 1;
      v121 = 0;
      v122 = 1;
      HIDWORD(v120[4]) = 1;
      v125[9] = 1;
      goto LABEL_13;
    }

    LODWORD(v125[9]) = 1;
  }

  else
  {
    v103 = 0;
    LODWORD(v125[9]) = 0;
  }

  firstName = [(UMLUser *)self firstName];
  HIDWORD(v125[9]) = firstName == 0;
  v104 = firstName;
  if (firstName || ([(UMLUser *)v7 firstName], (v99 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    firstName2 = [(UMLUser *)self firstName];
    firstName3 = [(UMLUser *)v7 firstName];
    v102 = firstName2;
    if (![firstName2 isEqual:?])
    {
      HIDWORD(v128) = 1;
      memset(v120, 0, 32);
      memset(v125, 0, 64);
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v12 = 0;
      v123 = 0;
      v124 = 1;
      v121 = 0;
      v122 = 1;
      v120[4] = 0x100000001;
      v125[8] = 1;
      goto LABEL_13;
    }

    LODWORD(v125[8]) = 1;
  }

  else
  {
    v99 = 0;
    LODWORD(v125[8]) = 0;
  }

  lastName = [(UMLUser *)self lastName];
  HIDWORD(v125[8]) = lastName == 0;
  v100 = lastName;
  if (lastName || ([(UMLUser *)v7 lastName], (v95 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    lastName2 = [(UMLUser *)self lastName];
    lastName3 = [(UMLUser *)v7 lastName];
    v98 = lastName2;
    if (![lastName2 isEqual:?])
    {
      HIDWORD(v128) = 1;
      v13 = 0;
      memset(v125, 0, 56);
      v14 = 0;
      memset(v120, 0, 28);
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v12 = 0;
      v123 = 0;
      v124 = 1;
      v121 = 0;
      v122 = 1;
      v120[4] = 0x100000001;
      HIDWORD(v120[3]) = 1;
      v125[7] = 1;
      goto LABEL_13;
    }

    LODWORD(v125[7]) = 1;
  }

  else
  {
    v95 = 0;
    LODWORD(v125[7]) = 0;
  }

  displayName = [(UMLUser *)self displayName];
  HIDWORD(v125[7]) = displayName == 0;
  v96 = displayName;
  if (displayName || ([(UMLUser *)v7 displayName], (v91 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    displayName2 = [(UMLUser *)self displayName];
    displayName3 = [(UMLUser *)v7 displayName];
    v94 = displayName2;
    if (![displayName2 isEqual:?])
    {
      HIDWORD(v128) = 1;
      memset(v120, 0, 24);
      memset(v125, 0, 48);
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v12 = 0;
      v123 = 0;
      v124 = 1;
      v121 = 0;
      v122 = 1;
      v120[4] = 0x100000001;
      v120[3] = 0x100000001;
      v125[6] = 1;
      goto LABEL_13;
    }

    LODWORD(v125[6]) = 1;
  }

  else
  {
    v91 = 0;
    LODWORD(v125[6]) = 0;
  }

  userLanguauge = [(UMLUser *)self userLanguauge];
  HIDWORD(v125[6]) = userLanguauge == 0;
  v92 = userLanguauge;
  if (userLanguauge || ([(UMLUser *)v7 userLanguauge], (v87 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    userLanguauge2 = [(UMLUser *)self userLanguauge];
    userLanguauge3 = [(UMLUser *)v7 userLanguauge];
    v90 = userLanguauge2;
    if (![userLanguauge2 isEqual:?])
    {
      HIDWORD(v128) = 1;
      v13 = 0;
      memset(v125, 0, 40);
      v14 = 0;
      memset(v120, 0, 20);
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v12 = 0;
      v123 = 0;
      v124 = 1;
      v121 = 0;
      v122 = 1;
      v120[4] = 0x100000001;
      v120[3] = 0x100000001;
      HIDWORD(v120[2]) = 1;
      v125[5] = 1;
      goto LABEL_13;
    }

    LODWORD(v125[5]) = 1;
  }

  else
  {
    v87 = 0;
    LODWORD(v125[5]) = 0;
  }

  fileInfoPath = [(UMLUser *)self fileInfoPath];
  HIDWORD(v125[5]) = fileInfoPath == 0;
  v88 = fileInfoPath;
  if (fileInfoPath || ([(UMLUser *)v7 fileInfoPath], (v83 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    fileInfoPath2 = [(UMLUser *)self fileInfoPath];
    fileInfoPath3 = [(UMLUser *)v7 fileInfoPath];
    v86 = fileInfoPath2;
    if (![fileInfoPath2 isEqual:?])
    {
      HIDWORD(v128) = 1;
      v120[0] = 0;
      v120[1] = 0;
      memset(v125, 0, 32);
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v12 = 0;
      v123 = 0;
      v124 = 1;
      v121 = 0;
      v122 = 1;
      v120[4] = 0x100000001;
      v120[3] = 0x100000001;
      v120[2] = 0x100000001;
      v125[4] = 1;
      goto LABEL_13;
    }

    LODWORD(v125[4]) = 1;
  }

  else
  {
    v83 = 0;
    LODWORD(v125[4]) = 0;
  }

  libInfoPath = [(UMLUser *)self libInfoPath];
  HIDWORD(v125[4]) = libInfoPath == 0;
  v84 = libInfoPath;
  if (libInfoPath || ([(UMLUser *)v7 libInfoPath], (v79 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    libInfoPath2 = [(UMLUser *)self libInfoPath];
    [(UMLUser *)v7 libInfoPath];
    v82 = libInfoPath2;
    v81 = HIDWORD(v128) = 1;
    if (![libInfoPath2 isEqual:v81])
    {
      *(v120 + 4) = 0;
      v13 = 0;
      memset(v125, 0, 24);
      v14 = 0;
      LODWORD(v120[0]) = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v12 = 0;
      v123 = 0;
      v124 = 1;
      v121 = 0;
      v122 = 1;
      v120[4] = 0x100000001;
      v120[3] = 0x100000001;
      v120[2] = 0x100000001;
      HIDWORD(v120[1]) = 1;
      v125[3] = 1;
      goto LABEL_13;
    }

    LODWORD(v125[3]) = 1;
  }

  else
  {
    v79 = 0;
    LODWORD(v125[3]) = 0;
  }

  diskNode = [(UMLUser *)self diskNode];
  HIDWORD(v125[3]) = diskNode == 0;
  v80 = diskNode;
  if (diskNode || ([(UMLUser *)v7 diskNode], (v75 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    diskNode2 = [(UMLUser *)self diskNode];
    [(UMLUser *)v7 diskNode];
    v77 = HIDWORD(v128) = 1;
    v78 = diskNode2;
    if (![diskNode2 isEqual:v77])
    {
      v120[0] = 0;
      v125[0] = 0;
      v125[1] = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v12 = 0;
      v123 = 0;
      v124 = 1;
      v121 = 0;
      v122 = 1;
      v120[4] = 0x100000001;
      v120[3] = 0x100000001;
      v120[2] = 0x100000001;
      v120[1] = 0x100000001;
      v125[2] = 1;
      goto LABEL_13;
    }

    LODWORD(v125[2]) = 1;
  }

  else
  {
    v75 = 0;
    LODWORD(v125[2]) = 0;
  }

  volumeUUID = [(UMLUser *)self volumeUUID];
  HIDWORD(v125[2]) = volumeUUID == 0;
  v76 = volumeUUID;
  v57 = v7;
  if (volumeUUID || ([(UMLUser *)v7 volumeUUID], (v71 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    volumeUUID2 = [(UMLUser *)self volumeUUID];
    volumeUUID3 = [(UMLUser *)v7 volumeUUID];
    v74 = volumeUUID2;
    HIDWORD(v128) = 1;
    if (![volumeUUID2 isEqual:?])
    {
      v13 = 0;
      v125[0] = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v12 = 0;
      v123 = 0;
      v124 = 1;
      v121 = 0;
      v122 = 1;
      v120[4] = 0x100000001;
      v120[3] = 0x100000001;
      v120[2] = 0x100000001;
      v120[1] = 0x100000001;
      v120[0] = 0x100000000;
      v125[1] = 1;
LABEL_206:
      v7 = v57;
      goto LABEL_13;
    }

    LODWORD(v125[1]) = 1;
  }

  else
  {
    v71 = 0;
    LODWORD(v125[1]) = 0;
  }

  homeDirPath = [(UMLUser *)self homeDirPath];
  HIDWORD(v125[1]) = homeDirPath == 0;
  v72 = homeDirPath;
  if (!homeDirPath)
  {
    homeDirPath2 = [(UMLUser *)v7 homeDirPath];
    if (!homeDirPath2)
    {
      homeDirPath2 = 0;
      LODWORD(v125[0]) = 0;
      goto LABEL_188;
    }
  }

  homeDirPath3 = [(UMLUser *)self homeDirPath];
  homeDirPath4 = [(UMLUser *)v57 homeDirPath];
  v70 = homeDirPath3;
  HIDWORD(v128) = 1;
  if (![homeDirPath3 isEqual:?])
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v12 = 0;
    v123 = 0;
    v124 = 1;
    v121 = 0;
    v122 = 1;
    v120[4] = 0x100000001;
    v120[3] = 0x100000001;
    v120[2] = 0x100000001;
    v120[1] = 0x100000001;
    v120[0] = 0x100000000;
    v13 = 1;
    v125[0] = 1;
    goto LABEL_206;
  }

  LODWORD(v125[0]) = 1;
LABEL_188:
  opaqueData = [(UMLUser *)self opaqueData];
  HIDWORD(v125[0]) = opaqueData == 0;
  v68 = opaqueData;
  if (!opaqueData)
  {
    opaqueData2 = [(UMLUser *)v57 opaqueData];
    if (!opaqueData2)
    {
      opaqueData2 = 0;
      LODWORD(v120[0]) = 0;
      goto LABEL_194;
    }
  }

  opaqueData3 = [(UMLUser *)self opaqueData];
  opaqueData4 = [(UMLUser *)v57 opaqueData];
  v66 = opaqueData3;
  HIDWORD(v128) = 1;
  if (![opaqueData3 isEqual:?])
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v12 = 0;
    v123 = 0;
    v124 = 1;
    v121 = 0;
    v122 = 1;
    v120[4] = 0x100000001;
    v120[3] = 0x100000001;
    v120[2] = 0x100000001;
    v120[1] = 0x100000001;
    v13 = 1;
    v14 = 1;
    v120[0] = 0x100000001;
    goto LABEL_206;
  }

  LODWORD(v120[0]) = 1;
LABEL_194:
  keybagOpaqueData = [(UMLUser *)self keybagOpaqueData];
  v123 = keybagOpaqueData == 0;
  v64 = keybagOpaqueData;
  if (!keybagOpaqueData)
  {
    keybagOpaqueData2 = [(UMLUser *)v57 keybagOpaqueData];
    if (!keybagOpaqueData2)
    {
      keybagOpaqueData2 = 0;
      v121 = 0;
      goto LABEL_200;
    }
  }

  keybagOpaqueData3 = [(UMLUser *)self keybagOpaqueData];
  keybagOpaqueData4 = [(UMLUser *)v57 keybagOpaqueData];
  v62 = keybagOpaqueData3;
  HIDWORD(v128) = 1;
  if (![keybagOpaqueData3 isEqual:?])
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v12 = 0;
    v124 = 1;
    v122 = 1;
    v120[4] = 0x100000001;
    v120[3] = 0x100000001;
    v120[2] = 0x100000001;
    v120[1] = 0x100000001;
    HIDWORD(v120[0]) = 1;
    v13 = 1;
    v14 = 1;
    v15 = 1;
    v121 = 1;
    goto LABEL_206;
  }

  v121 = 1;
LABEL_200:
  needsMount = [(UMLUser *)self needsMount];
  if (needsMount != [(UMLUser *)v57 needsMount]|| (v51 = [(UMLUser *)self isForeground], v51 != [(UMLUser *)v57 isForeground]) || (v52 = [(UMLUser *)self isDirty], v52 != [(UMLUser *)v57 isDirty]) || (v53 = [(UMLUser *)self isPrimaryUser], v53 != [(UMLUser *)v57 isPrimaryUser]) || (v54 = [(UMLUser *)self isAdminUser], v54 != [(UMLUser *)v57 isAdminUser]))
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v12 = 0;
    HIDWORD(v128) = 1;
    v124 = 1;
    v122 = 1;
    v120[4] = 0x100000001;
    v120[3] = 0x100000001;
    v120[2] = 0x100000001;
    v120[1] = 0x100000001;
    HIDWORD(v120[0]) = 1;
    v13 = 1;
    v14 = 1;
    v15 = 1;
    goto LABEL_206;
  }

  creationDate = [(UMLUser *)self creationDate];
  v56 = creationDate == 0;
  v59 = creationDate;
  if (!creationDate)
  {
    creationDate2 = [(UMLUser *)v57 creationDate];
    if (!creationDate2)
    {
      creationDate2 = 0;
      v59 = 0;
      v18 = 0;
      HIDWORD(v128) = 1;
      v124 = 1;
      v122 = 1;
      v120[4] = 0x100000001;
      v120[3] = 0x100000001;
      v120[2] = 0x100000001;
      v120[1] = 0x100000001;
      HIDWORD(v120[0]) = 1;
      v13 = 1;
      v14 = 1;
      v15 = 1;
      v16 = 1;
      v17 = 1;
      v12 = 1;
      goto LABEL_206;
    }
  }

  creationDate3 = [(UMLUser *)self creationDate];
  v7 = v57;
  creationDate4 = [(UMLUser *)v57 creationDate];
  v12 = [creationDate3 isEqual:creationDate4];
  v18 = 1;
  HIDWORD(v128) = 1;
  v124 = 1;
  v122 = 1;
  v120[4] = 0x100000001;
  v120[3] = 0x100000001;
  v120[2] = 0x100000001;
  v120[1] = 0x100000001;
  HIDWORD(v120[0]) = 1;
  v13 = 1;
  v14 = 1;
  v15 = 1;
  v16 = 1;
  v17 = v56;
LABEL_13:
  if (v18)
  {
    v19 = v14;
    v20 = v13;
    v21 = v7;
    v22 = v16;
    v23 = v17;

    v17 = v23;
    v16 = v22;
    v7 = v21;
    v13 = v20;
    v14 = v19;
  }

  if (v17)
  {
  }

  if (v16)
  {
  }

  if (v121)
  {
  }

  if (v123)
  {
  }

  if (v15)
  {
  }

  if (LODWORD(v120[0]))
  {
  }

  if (HIDWORD(v125[0]))
  {
  }

  if (v14)
  {
  }

  if (LODWORD(v125[0]))
  {
  }

  if (HIDWORD(v125[1]))
  {
  }

  if (v13)
  {
  }

  if (LODWORD(v125[1]))
  {
  }

  if (HIDWORD(v125[2]))
  {
  }

  if (HIDWORD(v120[0]))
  {
  }

  if (LODWORD(v125[2]))
  {
  }

  if (HIDWORD(v125[3]))
  {
  }

  if (LODWORD(v120[1]))
  {
  }

  if (LODWORD(v125[3]))
  {
  }

  if (HIDWORD(v125[4]))
  {
  }

  if (HIDWORD(v120[1]))
  {
  }

  if (LODWORD(v125[4]))
  {
  }

  if (HIDWORD(v125[5]))
  {
  }

  if (LODWORD(v120[2]))
  {
  }

  if (LODWORD(v125[5]))
  {
  }

  if (HIDWORD(v125[6]))
  {
  }

  if (HIDWORD(v120[2]))
  {
  }

  if (LODWORD(v125[6]))
  {
  }

  if (HIDWORD(v125[7]))
  {
  }

  if (LODWORD(v120[3]))
  {
  }

  if (LODWORD(v125[7]))
  {
  }

  if (HIDWORD(v125[8]))
  {
  }

  if (HIDWORD(v120[3]))
  {
  }

  if (LODWORD(v125[8]))
  {
  }

  if (HIDWORD(v125[9]))
  {
  }

  if (LODWORD(v120[4]))
  {
  }

  if (LODWORD(v125[9]))
  {
  }

  if (v126)
  {
  }

  if (HIDWORD(v120[4]))
  {

    if (!LODWORD(v125[10]))
    {
      goto LABEL_91;
    }
  }

  else if (!LODWORD(v125[10]))
  {
LABEL_91:
    if (!*&v127[4])
    {
      goto LABEL_93;
    }

    goto LABEL_92;
  }

  if (*&v127[4])
  {
LABEL_92:
  }

LABEL_93:
  if (v122)
  {

    if (!HIDWORD(v125[10]))
    {
      goto LABEL_95;
    }
  }

  else if (!HIDWORD(v125[10]))
  {
LABEL_95:
    if (!*&v127[8])
    {
      goto LABEL_97;
    }

    goto LABEL_96;
  }

  if (*&v127[8])
  {
LABEL_96:
  }

LABEL_97:
  if (v124)
  {

    if (!*v127)
    {
      goto LABEL_99;
    }

LABEL_112:

    if (!v128)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

  if (*v127)
  {
    goto LABEL_112;
  }

LABEL_99:
  if (v128)
  {
LABEL_100:
  }

LABEL_101:
  if (HIDWORD(v128))
  {
  }

LABEL_104:
  return v12;
}

- (unint64_t)hash
{
  v3 = [(UMLUser *)self uid];
  v4 = [(UMLUser *)self gid]+ v3;
  v5 = [(UMLUser *)self apnsID]+ v4;
  userUUID = [(UMLUser *)self userUUID];
  v6 = [userUUID hash];
  alternateDSID = [(UMLUser *)self alternateDSID];
  v7 = v6 + [alternateDSID hash];
  userType = [(UMLUser *)self userType];
  v8 = v5 + v7 + [userType hash];
  username = [(UMLUser *)self username];
  v9 = [username hash];
  firstName = [(UMLUser *)self firstName];
  v10 = v9 + [firstName hash];
  lastName = [(UMLUser *)self lastName];
  v11 = v10 + [lastName hash];
  displayName = [(UMLUser *)self displayName];
  v12 = v8 + v11 + [displayName hash];
  userLanguauge = [(UMLUser *)self userLanguauge];
  v13 = [userLanguauge hash];
  fileInfoPath = [(UMLUser *)self fileInfoPath];
  v15 = v13 + [fileInfoPath hash];
  libInfoPath = [(UMLUser *)self libInfoPath];
  v17 = v15 + [libInfoPath hash];
  diskNode = [(UMLUser *)self diskNode];
  v19 = v17 + [diskNode hash];
  volumeUUID = [(UMLUser *)self volumeUUID];
  v21 = v12 + v19 + [volumeUUID hash];
  homeDirPath = [(UMLUser *)self homeDirPath];
  v23 = [homeDirPath hash];
  opaqueData = [(UMLUser *)self opaqueData];
  v25 = v23 + [opaqueData hash];
  keybagOpaqueData = [(UMLUser *)self keybagOpaqueData];
  v27 = v21 + v25 + [keybagOpaqueData hash];
  v28 = v27 + [(UMLUser *)self needsMount];
  v29 = v28 + [(UMLUser *)self isForeground];
  v30 = v29 + [(UMLUser *)self isDirty];
  v31 = v30 + [(UMLUser *)self isPrimaryUser];
  v32 = v31 + [(UMLUser *)self isAdminUser];
  creationDate = [(UMLUser *)self creationDate];
  v34 = [creationDate hash];

  return v32 + v34;
}

- (BOOL)isValidClassTypeinDictionary:(id)dictionary withKey:(id)key withType:(Class)type
{
  v5 = [dictionary objectForKey:key];
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    if (qword_27DA9CCC0 != -1)
    {
      sub_22EE7866C();
    }

    v7 = qword_27DA9CCB8;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = sub_22EE69AE8();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v10 = _os_log_send_and_compose_impl();
        v11 = v10;
        if (v10)
        {
          sub_22EE69B10(v10);
        }
      }

      else
      {
        v11 = 0;
      }

      free(v11);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)userFromManifestDictionary:(id)dictionary
{
  v97 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(UMLUser);
  [(UMLUser *)v4 setUid:sub_22EE75268(dictionaryCopy, @"MKBUserSessionID", 0)];
  if (*__error() == 2)
  {
    if (qword_27DA9CCC0 != -1)
    {
      sub_22EE7866C();
    }

    v5 = qword_27DA9CCB8;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_175;
    }

    v6 = sub_22EE69AE8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      goto LABEL_171;
    }

LABEL_173:
    v76 = 0;
LABEL_174:
    free(v76);
LABEL_175:

    v77 = 0;
    goto LABEL_176;
  }

  if (qword_27DA9CCC0 != -1)
  {
    sub_22EE7866C();
  }

  v8 = qword_27DA9CCB8;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = sub_22EE69AE8();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 &= ~1u;
    }

    if (v9)
    {
      v10 = v8;
      [(UMLUser *)v4 uid];
      v11 = _os_log_send_and_compose_impl();

      if (v11)
      {
        sub_22EE69B10(v11);
      }
    }

    else
    {
      v11 = 0;
    }

    free(v11);
  }

  [(UMLUser *)v4 setGid:sub_22EE75268(dictionaryCopy, @"MKBUserSessionGroupID", 0)];
  if (*__error() == 2)
  {
    if (qword_27DA9CCC0 != -1)
    {
      sub_22EE78680();
    }

    v5 = qword_27DA9CCB8;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_175;
    }

    v12 = sub_22EE69AE8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 & 0xFFFFFFFE;
    }

    if (!v13)
    {
      goto LABEL_173;
    }

    goto LABEL_171;
  }

  if (qword_27DA9CCC0 != -1)
  {
    sub_22EE78680();
  }

  v14 = qword_27DA9CCB8;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = sub_22EE69AE8();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 &= ~1u;
    }

    if (v15)
    {
      v16 = v14;
      [(UMLUser *)v4 gid];
      v17 = _os_log_send_and_compose_impl();

      if (v17)
      {
        sub_22EE69B10(v17);
      }
    }

    else
    {
      v17 = 0;
    }

    free(v17);
  }

  [(UMLUser *)v4 setApnsID:sub_22EE75368(dictionaryCopy, @"MKBUserSessionAPNSID", 0)];
  if (*__error() == 2)
  {
    if (qword_27DA9CCC0 != -1)
    {
      sub_22EE78680();
    }

    v18 = qword_27DA9CCB8;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = sub_22EE69AE8();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        v21 = _os_log_send_and_compose_impl();
        if (!v21)
        {
          goto LABEL_58;
        }

        goto LABEL_56;
      }

      goto LABEL_57;
    }
  }

  else
  {
    if (qword_27DA9CCC0 != -1)
    {
      sub_22EE78680();
    }

    v18 = qword_27DA9CCB8;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v22 = sub_22EE69AE8();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v22 &= ~1u;
      }

      if (v22)
      {
        v23 = v18;
        [(UMLUser *)v4 apnsID];
        v21 = _os_log_send_and_compose_impl();

        if (!v21)
        {
LABEL_58:
          free(v21);
          goto LABEL_59;
        }

LABEL_56:
        sub_22EE69B10(v21);
        goto LABEL_58;
      }

LABEL_57:
      v21 = 0;
      goto LABEL_58;
    }
  }

LABEL_59:

  v24 = sub_22EE75468(dictionaryCopy, @"MKBUserSessionUUID");
  [(UMLUser *)v4 setUserUUID:v24];

  userUUID = [(UMLUser *)v4 userUUID];

  if (!userUUID)
  {
    if (qword_27DA9CCC0 != -1)
    {
      sub_22EE78680();
    }

    v5 = qword_27DA9CCB8;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_175;
    }

    v30 = sub_22EE69AE8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v31 = v30;
    }

    else
    {
      v31 = v30 & 0xFFFFFFFE;
    }

    if (!v31)
    {
      goto LABEL_173;
    }

LABEL_171:
    v75 = _os_log_send_and_compose_impl();
    v76 = v75;
    if (v75)
    {
      sub_22EE69B10(v75);
    }

    goto LABEL_174;
  }

  if (qword_27DA9CCC0 != -1)
  {
    sub_22EE78680();
  }

  v26 = qword_27DA9CCB8;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v27 = sub_22EE69AE8();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 &= ~1u;
    }

    if (v27)
    {
      v28 = v26;
      userUUID2 = [(UMLUser *)v4 userUUID];
      v29 = _os_log_send_and_compose_impl();

      if (v29)
      {
        sub_22EE69B10(v29);
      }
    }

    else
    {
      v29 = 0;
    }

    free(v29);
  }

  v32 = sub_22EE75468(dictionaryCopy, @"MKBUserSessionAlternateUUID");
  [(UMLUser *)v4 setAlternateDSID:v32];

  alternateDSID = [(UMLUser *)v4 alternateDSID];

  if (alternateDSID)
  {
    if (qword_27DA9CCC0 != -1)
    {
      sub_22EE78680();
    }

    v34 = qword_27DA9CCB8;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v35 = sub_22EE69AE8();
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        v35 &= ~1u;
      }

      if (v35)
      {
        v36 = v34;
        alternateDSID2 = [(UMLUser *)v4 alternateDSID];
        v37 = _os_log_send_and_compose_impl();

        if (!v37)
        {
          goto LABEL_97;
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }
  }

  else
  {
    if (qword_27DA9CCC0 != -1)
    {
      sub_22EE78680();
    }

    v34 = qword_27DA9CCB8;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v38 = sub_22EE69AE8();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        v39 = v38;
      }

      else
      {
        v39 = v38 & 0xFFFFFFFE;
      }

      if (v39)
      {
        v37 = _os_log_send_and_compose_impl();
        if (!v37)
        {
LABEL_97:
          free(v37);
          goto LABEL_98;
        }

LABEL_95:
        sub_22EE69B10(v37);
        goto LABEL_97;
      }

LABEL_96:
      v37 = 0;
      goto LABEL_97;
    }
  }

LABEL_98:

  v40 = sub_22EE75468(dictionaryCopy, @"MKBUserTypeKey");
  [(UMLUser *)v4 setUserType:v40];

  userType = [(UMLUser *)v4 userType];

  if (!userType)
  {
    if (qword_27DA9CCC0 != -1)
    {
      sub_22EE78680();
    }

    v5 = qword_27DA9CCB8;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_175;
    }

    v46 = sub_22EE69AE8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v47 = v46;
    }

    else
    {
      v47 = v46 & 0xFFFFFFFE;
    }

    if (!v47)
    {
      goto LABEL_173;
    }

    goto LABEL_171;
  }

  if (qword_27DA9CCC0 != -1)
  {
    sub_22EE78680();
  }

  v42 = qword_27DA9CCB8;
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    v43 = sub_22EE69AE8();
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      v43 &= ~1u;
    }

    if (v43)
    {
      v44 = v42;
      userType2 = [(UMLUser *)v4 userType];
      v45 = _os_log_send_and_compose_impl();

      if (v45)
      {
        sub_22EE69B10(v45);
      }
    }

    else
    {
      v45 = 0;
    }

    free(v45);
  }

  v48 = sub_22EE75468(dictionaryCopy, @"MKBUserSessionShortName");
  [(UMLUser *)v4 setUsername:v48];

  username = [(UMLUser *)v4 username];

  if (!username)
  {
    if (qword_27DA9CCC0 != -1)
    {
      sub_22EE78680();
    }

    v5 = qword_27DA9CCB8;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_175;
    }

    v65 = sub_22EE69AE8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v66 = v65;
    }

    else
    {
      v66 = v65 & 0xFFFFFFFE;
    }

    if (!v66)
    {
      goto LABEL_173;
    }

    goto LABEL_171;
  }

  v50 = sub_22EE75468(dictionaryCopy, @"MKBUserSessionFirstName");
  [(UMLUser *)v4 setFirstName:v50];

  firstName = [(UMLUser *)v4 firstName];

  if (!firstName)
  {
    if (qword_27DA9CCC0 != -1)
    {
      sub_22EE78680();
    }

    v5 = qword_27DA9CCB8;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_175;
    }

    v67 = sub_22EE69AE8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v68 = v67;
    }

    else
    {
      v68 = v67 & 0xFFFFFFFE;
    }

    if (!v68)
    {
      goto LABEL_173;
    }

    goto LABEL_171;
  }

  v52 = sub_22EE75468(dictionaryCopy, @"MKBUserSessionLastName");
  [(UMLUser *)v4 setLastName:v52];

  lastName = [(UMLUser *)v4 lastName];

  if (!lastName)
  {
    if (qword_27DA9CCC0 != -1)
    {
      sub_22EE78680();
    }

    v5 = qword_27DA9CCB8;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_175;
    }

    v69 = sub_22EE69AE8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v70 = v69;
    }

    else
    {
      v70 = v69 & 0xFFFFFFFE;
    }

    if (!v70)
    {
      goto LABEL_173;
    }

    goto LABEL_171;
  }

  v54 = sub_22EE75468(dictionaryCopy, @"MKBUserSessionDisplayName");
  [(UMLUser *)v4 setDisplayName:v54];

  displayName = [(UMLUser *)v4 displayName];

  if (!displayName)
  {
    if (qword_27DA9CCC0 != -1)
    {
      sub_22EE78680();
    }

    v5 = qword_27DA9CCB8;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_175;
    }

    v71 = sub_22EE69AE8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v72 = v71;
    }

    else
    {
      v72 = v71 & 0xFFFFFFFE;
    }

    if (!v72)
    {
      goto LABEL_173;
    }

    goto LABEL_171;
  }

  v56 = sub_22EE75468(dictionaryCopy, @"MKBUserSessionLibinfoHomeDir");
  [(UMLUser *)v4 setLibInfoPath:v56];

  libInfoPath = [(UMLUser *)v4 libInfoPath];

  if (!libInfoPath)
  {
    if (qword_27DA9CCC0 != -1)
    {
      sub_22EE78680();
    }

    v5 = qword_27DA9CCB8;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_175;
    }

    v73 = sub_22EE69AE8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v74 = v73;
    }

    else
    {
      v74 = v73 & 0xFFFFFFFE;
    }

    if (!v74)
    {
      goto LABEL_173;
    }

    goto LABEL_171;
  }

  v58 = sub_22EE75468(dictionaryCopy, @"MKBUserSessionHomeDir");
  [(UMLUser *)v4 setHomeDirPath:v58];

  homeDirPath = [(UMLUser *)v4 homeDirPath];

  if (!homeDirPath)
  {
    if (qword_27DA9CCC0 != -1)
    {
      sub_22EE78680();
    }

    v60 = qword_27DA9CCB8;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
    {
      v61 = sub_22EE69AE8();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        v62 = v61;
      }

      else
      {
        v62 = v61 & 0xFFFFFFFE;
      }

      if (v62)
      {
        v63 = _os_log_send_and_compose_impl();
        v64 = v63;
        if (v63)
        {
          sub_22EE69B10(v63);
        }
      }

      else
      {
        v64 = 0;
      }

      free(v64);
    }
  }

  [(UMLUser *)v4 setNeedsMount:sub_22EE751E8(dictionaryCopy, @"MKBUserSessionNeedsMount")];
  [(UMLUser *)v4 setIsForeground:sub_22EE751E8(dictionaryCopy, @"MKBUserSessionForeground")];
  [(UMLUser *)v4 setIsDirty:sub_22EE751E8(dictionaryCopy, @"MKBUserSessionDirty")];
  [(UMLUser *)v4 setIsPrimaryUser:sub_22EE751E8(dictionaryCopy, @"MKBUserSessionisPrimary")];
  [(UMLUser *)v4 setIsAdminUser:sub_22EE751E8(dictionaryCopy, @"MKBUserSessionisAdminKey")];
  [(UMLUser *)v4 setIsDisabledUser:sub_22EE751E8(dictionaryCopy, @"MKBUserSessionDisabled")];
  [(UMLUser *)v4 setIsLoginUser:sub_22EE751E8(dictionaryCopy, @"MKBUserSessionLoginUser")];
  [(UMLUser *)v4 setIsAuditor:sub_22EE751E8(dictionaryCopy, @"MKBUserSessionAuditor")];
  [(UMLUser *)v4 setHasSyncBag:sub_22EE751E8(dictionaryCopy, @"MKBUserSessionHasSyncBag")];
  v80 = sub_22EE75468(dictionaryCopy, @"MKBUserSessionLanguage");
  [(UMLUser *)v4 setUserLanguauge:v80];

  v81 = sub_22EE75468(dictionaryCopy, @"MKBUserSessionFileInfo");
  [(UMLUser *)v4 setFileInfoPath:v81];

  v82 = sub_22EE75468(dictionaryCopy, @"MKBUserSessionVolumeDeviceNode");
  [(UMLUser *)v4 setDiskNode:v82];

  v83 = sub_22EE75468(dictionaryCopy, @"MKBUserSessionVolumeUUID");
  [(UMLUser *)v4 setVolumeUUID:v83];

  v84 = sub_22EE757B0(dictionaryCopy, @"MKBUserSessionOpaque");
  [(UMLUser *)v4 setOpaqueData:v84];

  v85 = sub_22EE757B0(dictionaryCopy, @"MKBUserSessionKeybagOpaqueData");
  [(UMLUser *)v4 setKeybagOpaqueData:v85];

  v86 = sub_22EE75730(dictionaryCopy, @"MKBUserSessionCreateTimeStamp");
  [(UMLUser *)v4 setCreationDate:v86];

  v87 = sub_22EE75730(dictionaryCopy, @"MKBUserSessionCreateTimeStamp");
  [(UMLUser *)v4 setCreationDate:v87];

  v88 = sub_22EE75730(dictionaryCopy, @"MKBUserSessionCachedLoginStartTime");
  [(UMLUser *)v4 setLastLoginStart:v88];

  v89 = sub_22EE75730(dictionaryCopy, @"MKBUserSessionCachedLoginEndTime");
  [(UMLUser *)v4 setLastLoginEnd:v89];

  v90 = sub_22EE75730(dictionaryCopy, @"MKBUserSessionFirstLoginStartTime");
  [(UMLUser *)v4 setFirstLoginStart:v90];

  v91 = sub_22EE75730(dictionaryCopy, @"MKBUserSessionFirstLoginEndTime");
  [(UMLUser *)v4 setFirstLoginEnd:v91];

  v92 = sub_22EE75730(dictionaryCopy, @"MKBUserSessionCachedLoginStartTime");
  [(UMLUser *)v4 setCachedLoginStart:v92];

  v93 = sub_22EE75730(dictionaryCopy, @"MKBUserSessionCachedLoginEndTime");
  [(UMLUser *)v4 setCachedLoginEnd:v93];

  [(UMLUser *)v4 setGracePeriod:sub_22EE75268(dictionaryCopy, @"MKBUserSessionRequiresPasscode", 0)];
  v77 = v4;
LABEL_176:

  v78 = *MEMORY[0x277D85DE8];

  return v77;
}

- (id)userManifestDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{-[UMLUser uid](self, "uid")}];
  [dictionary setObject:v4 forKeyedSubscript:@"MKBUserSessionID"];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:{-[UMLUser gid](self, "gid")}];
  [dictionary setObject:v5 forKeyedSubscript:@"MKBUserSessionGroupID"];

  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[UMLUser apnsID](self, "apnsID")}];
  [dictionary setObject:v6 forKeyedSubscript:@"MKBUserSessionAPNSID"];

  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[UMLUser apnsID](self, "apnsID")}];
  [dictionary setObject:v7 forKeyedSubscript:@"MKBUserSessionAPNSID"];

  userUUID = [(UMLUser *)self userUUID];
  [dictionary setObject:userUUID forKeyedSubscript:@"MKBUserSessionUUID"];

  alternateDSID = [(UMLUser *)self alternateDSID];

  if (alternateDSID)
  {
    alternateDSID2 = [(UMLUser *)self alternateDSID];
    [dictionary setObject:alternateDSID2 forKeyedSubscript:@"MKBUserSessionAlternateUUID"];
  }

  userType = [(UMLUser *)self userType];
  [dictionary setObject:userType forKeyedSubscript:@"MKBUserTypeKey"];

  username = [(UMLUser *)self username];
  [dictionary setObject:username forKeyedSubscript:@"MKBUserSessionShortName"];

  firstName = [(UMLUser *)self firstName];
  [dictionary setObject:firstName forKeyedSubscript:@"MKBUserSessionFirstName"];

  lastName = [(UMLUser *)self lastName];
  [dictionary setObject:lastName forKeyedSubscript:@"MKBUserSessionLastName"];

  displayName = [(UMLUser *)self displayName];
  [dictionary setObject:displayName forKeyedSubscript:@"MKBUserSessionDisplayName"];

  libInfoPath = [(UMLUser *)self libInfoPath];
  [dictionary setObject:libInfoPath forKeyedSubscript:@"MKBUserSessionLibinfoHomeDir"];

  homeDirPath = [(UMLUser *)self homeDirPath];
  [dictionary setObject:homeDirPath forKeyedSubscript:@"MKBUserSessionHomeDir"];

  if ([(UMLUser *)self needsMount])
  {
    v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[UMLUser needsMount](self, "needsMount")}];
    [dictionary setObject:v18 forKeyedSubscript:@"MKBUserSessionNeedsMount"];
  }

  if ([(UMLUser *)self isForeground])
  {
    v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[UMLUser isForeground](self, "isForeground")}];
    [dictionary setObject:v19 forKeyedSubscript:@"MKBUserSessionForeground"];
  }

  v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[UMLUser isDirty](self, "isDirty")}];
  [dictionary setObject:v20 forKeyedSubscript:@"MKBUserSessionDirty"];

  creationDate = [(UMLUser *)self creationDate];
  [dictionary setObject:creationDate forKeyedSubscript:@"MKBUserSessionCreateTimeStamp"];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[UMLUser isPrimaryUser](self, "isPrimaryUser")}];
  [dictionary setObject:v22 forKeyedSubscript:@"MKBUserSessionisPrimary"];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:{-[UMLUser isAdminUser](self, "isAdminUser")}];
  [dictionary setObject:v23 forKeyedSubscript:@"MKBUserSessionisAdminKey"];

  lastLoginStart = [(UMLUser *)self lastLoginStart];

  if (lastLoginStart)
  {
    lastLoginStart2 = [(UMLUser *)self lastLoginStart];
    [dictionary setObject:lastLoginStart2 forKeyedSubscript:@"MKBUserSessionCachedLoginStartTime"];
  }

  lastLoginEnd = [(UMLUser *)self lastLoginEnd];

  if (lastLoginEnd)
  {
    lastLoginEnd2 = [(UMLUser *)self lastLoginEnd];
    [dictionary setObject:lastLoginEnd2 forKeyedSubscript:@"MKBUserSessionCachedLoginEndTime"];
  }

  v28 = [MEMORY[0x277CCABB0] numberWithBool:{-[UMLUser isDirty](self, "isDirty")}];
  [dictionary setObject:v28 forKeyedSubscript:@"MKBUserSessionDirty"];

  if ([(UMLUser *)self isDisabledUser])
  {
    v29 = [MEMORY[0x277CCABB0] numberWithBool:{-[UMLUser isDisabledUser](self, "isDisabledUser")}];
    [dictionary setObject:v29 forKeyedSubscript:@"MKBUserSessionDisabled"];
  }

  if ([(UMLUser *)self isLoginUser])
  {
    v30 = [MEMORY[0x277CCABB0] numberWithBool:{-[UMLUser isLoginUser](self, "isLoginUser")}];
    [dictionary setObject:v30 forKeyedSubscript:@"MKBUserSessionLoginUser"];
  }

  if ([(UMLUser *)self isAuditor])
  {
    v31 = [MEMORY[0x277CCABB0] numberWithBool:{-[UMLUser isAuditor](self, "isAuditor")}];
    [dictionary setObject:v31 forKeyedSubscript:@"MKBUserSessionAuditor"];
  }

  if ([(UMLUser *)self hasSyncBag])
  {
    v32 = [MEMORY[0x277CCABB0] numberWithBool:{-[UMLUser hasSyncBag](self, "hasSyncBag")}];
    [dictionary setObject:v32 forKeyedSubscript:@"MKBUserSessionHasSyncBag"];
  }

  v33 = [MEMORY[0x277CCABB0] numberWithInt:{-[UMLUser gracePeriod](self, "gracePeriod")}];
  [dictionary setObject:v33 forKeyedSubscript:@"MKBUserSessionRequiresPasscode"];

  firstLoginStart = [(UMLUser *)self firstLoginStart];

  if (firstLoginStart)
  {
    firstLoginStart2 = [(UMLUser *)self firstLoginStart];
    [dictionary setObject:firstLoginStart2 forKeyedSubscript:@"MKBUserSessionFirstLoginStartTime"];
  }

  firstLoginEnd = [(UMLUser *)self firstLoginEnd];

  if (firstLoginEnd)
  {
    firstLoginEnd2 = [(UMLUser *)self firstLoginEnd];
    [dictionary setObject:firstLoginEnd2 forKeyedSubscript:@"MKBUserSessionFirstLoginEndTime"];
  }

  cachedLoginStart = [(UMLUser *)self cachedLoginStart];

  if (cachedLoginStart)
  {
    cachedLoginStart2 = [(UMLUser *)self cachedLoginStart];
    [dictionary setObject:cachedLoginStart2 forKeyedSubscript:@"MKBUserSessionCachedLoginStartTime"];
  }

  cachedLoginEnd = [(UMLUser *)self cachedLoginEnd];

  if (cachedLoginEnd)
  {
    cachedLoginEnd2 = [(UMLUser *)self cachedLoginEnd];
    [dictionary setObject:cachedLoginEnd2 forKeyedSubscript:@"MKBUserSessionCachedLoginEndTime"];
  }

  return dictionary;
}

@end