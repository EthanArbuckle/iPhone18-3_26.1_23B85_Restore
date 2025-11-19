@interface UMLUser
+ (id)userFromManifestDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValidClassTypeinDictionary:(id)a3 withKey:(id)a4 withType:(Class)a5;
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

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
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

  v7 = v6;
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

  v119 = [(UMLUser *)self userUUID];
  LODWORD(v128) = v119 == 0;
  if (v119 || ([(UMLUser *)v7 userUUID], (v115 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = [(UMLUser *)self userUUID];
    v117 = [(UMLUser *)v7 userUUID];
    v118 = v11;
    if (![v11 isEqual:?])
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

    v3 = 1;
  }

  else
  {
    v115 = 0;
    v3 = 0;
  }

  v116 = [(UMLUser *)self alternateDSID];
  *&v127[8] = v116 == 0;
  *v127 = v3;
  if (v116 || ([(UMLUser *)v7 alternateDSID], (v111 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v25 = [(UMLUser *)self alternateDSID];
    v113 = [(UMLUser *)v7 alternateDSID];
    v114 = v25;
    if (![v25 isEqual:?])
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

    v4 = 1;
  }

  else
  {
    v111 = 0;
    v4 = 0;
  }

  v112 = [(UMLUser *)self userType];
  *&v127[4] = v112 == 0;
  HIDWORD(v125[10]) = v4;
  if (v112 || ([(UMLUser *)v7 userType], (v107 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v26 = [(UMLUser *)self userType];
    v109 = [(UMLUser *)v7 userType];
    v110 = v26;
    if (![v26 isEqual:?])
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

  v108 = [(UMLUser *)self username];
  v126 = v108 == 0;
  if (v108 || ([(UMLUser *)v7 username], (v103 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v27 = [(UMLUser *)self username];
    v105 = [(UMLUser *)v7 username];
    v106 = v27;
    if (![v27 isEqual:?])
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

  v28 = [(UMLUser *)self firstName];
  HIDWORD(v125[9]) = v28 == 0;
  v104 = v28;
  if (v28 || ([(UMLUser *)v7 firstName], (v99 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v29 = [(UMLUser *)self firstName];
    v101 = [(UMLUser *)v7 firstName];
    v102 = v29;
    if (![v29 isEqual:?])
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

  v30 = [(UMLUser *)self lastName];
  HIDWORD(v125[8]) = v30 == 0;
  v100 = v30;
  if (v30 || ([(UMLUser *)v7 lastName], (v95 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v31 = [(UMLUser *)self lastName];
    v97 = [(UMLUser *)v7 lastName];
    v98 = v31;
    if (![v31 isEqual:?])
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

  v32 = [(UMLUser *)self displayName];
  HIDWORD(v125[7]) = v32 == 0;
  v96 = v32;
  if (v32 || ([(UMLUser *)v7 displayName], (v91 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v33 = [(UMLUser *)self displayName];
    v93 = [(UMLUser *)v7 displayName];
    v94 = v33;
    if (![v33 isEqual:?])
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

  v34 = [(UMLUser *)self userLanguauge];
  HIDWORD(v125[6]) = v34 == 0;
  v92 = v34;
  if (v34 || ([(UMLUser *)v7 userLanguauge], (v87 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v35 = [(UMLUser *)self userLanguauge];
    v89 = [(UMLUser *)v7 userLanguauge];
    v90 = v35;
    if (![v35 isEqual:?])
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

  v36 = [(UMLUser *)self fileInfoPath];
  HIDWORD(v125[5]) = v36 == 0;
  v88 = v36;
  if (v36 || ([(UMLUser *)v7 fileInfoPath], (v83 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v37 = [(UMLUser *)self fileInfoPath];
    v85 = [(UMLUser *)v7 fileInfoPath];
    v86 = v37;
    if (![v37 isEqual:?])
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

  v38 = [(UMLUser *)self libInfoPath];
  HIDWORD(v125[4]) = v38 == 0;
  v84 = v38;
  if (v38 || ([(UMLUser *)v7 libInfoPath], (v79 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v39 = [(UMLUser *)self libInfoPath];
    [(UMLUser *)v7 libInfoPath];
    v82 = v39;
    v81 = HIDWORD(v128) = 1;
    if (![v39 isEqual:v81])
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

  v40 = [(UMLUser *)self diskNode];
  HIDWORD(v125[3]) = v40 == 0;
  v80 = v40;
  if (v40 || ([(UMLUser *)v7 diskNode], (v75 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v41 = [(UMLUser *)self diskNode];
    [(UMLUser *)v7 diskNode];
    v77 = HIDWORD(v128) = 1;
    v78 = v41;
    if (![v41 isEqual:v77])
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

  v42 = [(UMLUser *)self volumeUUID];
  HIDWORD(v125[2]) = v42 == 0;
  v76 = v42;
  v57 = v7;
  if (v42 || ([(UMLUser *)v7 volumeUUID], (v71 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v43 = [(UMLUser *)self volumeUUID];
    v73 = [(UMLUser *)v7 volumeUUID];
    v74 = v43;
    HIDWORD(v128) = 1;
    if (![v43 isEqual:?])
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

  v44 = [(UMLUser *)self homeDirPath];
  HIDWORD(v125[1]) = v44 == 0;
  v72 = v44;
  if (!v44)
  {
    v67 = [(UMLUser *)v7 homeDirPath];
    if (!v67)
    {
      v67 = 0;
      LODWORD(v125[0]) = 0;
      goto LABEL_188;
    }
  }

  v45 = [(UMLUser *)self homeDirPath];
  v69 = [(UMLUser *)v57 homeDirPath];
  v70 = v45;
  HIDWORD(v128) = 1;
  if (![v45 isEqual:?])
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
  v46 = [(UMLUser *)self opaqueData];
  HIDWORD(v125[0]) = v46 == 0;
  v68 = v46;
  if (!v46)
  {
    v63 = [(UMLUser *)v57 opaqueData];
    if (!v63)
    {
      v63 = 0;
      LODWORD(v120[0]) = 0;
      goto LABEL_194;
    }
  }

  v47 = [(UMLUser *)self opaqueData];
  v65 = [(UMLUser *)v57 opaqueData];
  v66 = v47;
  HIDWORD(v128) = 1;
  if (![v47 isEqual:?])
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
  v48 = [(UMLUser *)self keybagOpaqueData];
  v123 = v48 == 0;
  v64 = v48;
  if (!v48)
  {
    v60 = [(UMLUser *)v57 keybagOpaqueData];
    if (!v60)
    {
      v60 = 0;
      v121 = 0;
      goto LABEL_200;
    }
  }

  v49 = [(UMLUser *)self keybagOpaqueData];
  v61 = [(UMLUser *)v57 keybagOpaqueData];
  v62 = v49;
  HIDWORD(v128) = 1;
  if (![v49 isEqual:?])
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
  v50 = [(UMLUser *)self needsMount];
  if (v50 != [(UMLUser *)v57 needsMount]|| (v51 = [(UMLUser *)self isForeground], v51 != [(UMLUser *)v57 isForeground]) || (v52 = [(UMLUser *)self isDirty], v52 != [(UMLUser *)v57 isDirty]) || (v53 = [(UMLUser *)self isPrimaryUser], v53 != [(UMLUser *)v57 isPrimaryUser]) || (v54 = [(UMLUser *)self isAdminUser], v54 != [(UMLUser *)v57 isAdminUser]))
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

  v55 = [(UMLUser *)self creationDate];
  v56 = v55 == 0;
  v59 = v55;
  if (!v55)
  {
    v58 = [(UMLUser *)v57 creationDate];
    if (!v58)
    {
      v58 = 0;
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

  v3 = [(UMLUser *)self creationDate];
  v7 = v57;
  v4 = [(UMLUser *)v57 creationDate];
  v12 = [v3 isEqual:v4];
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
  v43 = [(UMLUser *)self userUUID];
  v6 = [v43 hash];
  v42 = [(UMLUser *)self alternateDSID];
  v7 = v6 + [v42 hash];
  v41 = [(UMLUser *)self userType];
  v8 = v5 + v7 + [v41 hash];
  v40 = [(UMLUser *)self username];
  v9 = [v40 hash];
  v39 = [(UMLUser *)self firstName];
  v10 = v9 + [v39 hash];
  v38 = [(UMLUser *)self lastName];
  v11 = v10 + [v38 hash];
  v37 = [(UMLUser *)self displayName];
  v12 = v8 + v11 + [v37 hash];
  v36 = [(UMLUser *)self userLanguauge];
  v13 = [v36 hash];
  v14 = [(UMLUser *)self fileInfoPath];
  v15 = v13 + [v14 hash];
  v16 = [(UMLUser *)self libInfoPath];
  v17 = v15 + [v16 hash];
  v18 = [(UMLUser *)self diskNode];
  v19 = v17 + [v18 hash];
  v20 = [(UMLUser *)self volumeUUID];
  v21 = v12 + v19 + [v20 hash];
  v22 = [(UMLUser *)self homeDirPath];
  v23 = [v22 hash];
  v24 = [(UMLUser *)self opaqueData];
  v25 = v23 + [v24 hash];
  v26 = [(UMLUser *)self keybagOpaqueData];
  v27 = v21 + v25 + [v26 hash];
  v28 = v27 + [(UMLUser *)self needsMount];
  v29 = v28 + [(UMLUser *)self isForeground];
  v30 = v29 + [(UMLUser *)self isDirty];
  v31 = v30 + [(UMLUser *)self isPrimaryUser];
  v32 = v31 + [(UMLUser *)self isAdminUser];
  v33 = [(UMLUser *)self creationDate];
  v34 = [v33 hash];

  return v32 + v34;
}

- (BOOL)isValidClassTypeinDictionary:(id)a3 withKey:(id)a4 withType:(Class)a5
{
  v5 = [a3 objectForKey:a4];
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

+ (id)userFromManifestDictionary:(id)a3
{
  v97 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(UMLUser);
  [(UMLUser *)v4 setUid:sub_22EE75268(v3, @"MKBUserSessionID", 0)];
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

  [(UMLUser *)v4 setGid:sub_22EE75268(v3, @"MKBUserSessionGroupID", 0)];
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

  [(UMLUser *)v4 setApnsID:sub_22EE75368(v3, @"MKBUserSessionAPNSID", 0)];
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

  v24 = sub_22EE75468(v3, @"MKBUserSessionUUID");
  [(UMLUser *)v4 setUserUUID:v24];

  v25 = [(UMLUser *)v4 userUUID];

  if (!v25)
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
      v94 = [(UMLUser *)v4 userUUID];
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

  v32 = sub_22EE75468(v3, @"MKBUserSessionAlternateUUID");
  [(UMLUser *)v4 setAlternateDSID:v32];

  v33 = [(UMLUser *)v4 alternateDSID];

  if (v33)
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
        v95 = [(UMLUser *)v4 alternateDSID];
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

  v40 = sub_22EE75468(v3, @"MKBUserTypeKey");
  [(UMLUser *)v4 setUserType:v40];

  v41 = [(UMLUser *)v4 userType];

  if (!v41)
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
      v96 = [(UMLUser *)v4 userType];
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

  v48 = sub_22EE75468(v3, @"MKBUserSessionShortName");
  [(UMLUser *)v4 setUsername:v48];

  v49 = [(UMLUser *)v4 username];

  if (!v49)
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

  v50 = sub_22EE75468(v3, @"MKBUserSessionFirstName");
  [(UMLUser *)v4 setFirstName:v50];

  v51 = [(UMLUser *)v4 firstName];

  if (!v51)
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

  v52 = sub_22EE75468(v3, @"MKBUserSessionLastName");
  [(UMLUser *)v4 setLastName:v52];

  v53 = [(UMLUser *)v4 lastName];

  if (!v53)
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

  v54 = sub_22EE75468(v3, @"MKBUserSessionDisplayName");
  [(UMLUser *)v4 setDisplayName:v54];

  v55 = [(UMLUser *)v4 displayName];

  if (!v55)
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

  v56 = sub_22EE75468(v3, @"MKBUserSessionLibinfoHomeDir");
  [(UMLUser *)v4 setLibInfoPath:v56];

  v57 = [(UMLUser *)v4 libInfoPath];

  if (!v57)
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

  v58 = sub_22EE75468(v3, @"MKBUserSessionHomeDir");
  [(UMLUser *)v4 setHomeDirPath:v58];

  v59 = [(UMLUser *)v4 homeDirPath];

  if (!v59)
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

  [(UMLUser *)v4 setNeedsMount:sub_22EE751E8(v3, @"MKBUserSessionNeedsMount")];
  [(UMLUser *)v4 setIsForeground:sub_22EE751E8(v3, @"MKBUserSessionForeground")];
  [(UMLUser *)v4 setIsDirty:sub_22EE751E8(v3, @"MKBUserSessionDirty")];
  [(UMLUser *)v4 setIsPrimaryUser:sub_22EE751E8(v3, @"MKBUserSessionisPrimary")];
  [(UMLUser *)v4 setIsAdminUser:sub_22EE751E8(v3, @"MKBUserSessionisAdminKey")];
  [(UMLUser *)v4 setIsDisabledUser:sub_22EE751E8(v3, @"MKBUserSessionDisabled")];
  [(UMLUser *)v4 setIsLoginUser:sub_22EE751E8(v3, @"MKBUserSessionLoginUser")];
  [(UMLUser *)v4 setIsAuditor:sub_22EE751E8(v3, @"MKBUserSessionAuditor")];
  [(UMLUser *)v4 setHasSyncBag:sub_22EE751E8(v3, @"MKBUserSessionHasSyncBag")];
  v80 = sub_22EE75468(v3, @"MKBUserSessionLanguage");
  [(UMLUser *)v4 setUserLanguauge:v80];

  v81 = sub_22EE75468(v3, @"MKBUserSessionFileInfo");
  [(UMLUser *)v4 setFileInfoPath:v81];

  v82 = sub_22EE75468(v3, @"MKBUserSessionVolumeDeviceNode");
  [(UMLUser *)v4 setDiskNode:v82];

  v83 = sub_22EE75468(v3, @"MKBUserSessionVolumeUUID");
  [(UMLUser *)v4 setVolumeUUID:v83];

  v84 = sub_22EE757B0(v3, @"MKBUserSessionOpaque");
  [(UMLUser *)v4 setOpaqueData:v84];

  v85 = sub_22EE757B0(v3, @"MKBUserSessionKeybagOpaqueData");
  [(UMLUser *)v4 setKeybagOpaqueData:v85];

  v86 = sub_22EE75730(v3, @"MKBUserSessionCreateTimeStamp");
  [(UMLUser *)v4 setCreationDate:v86];

  v87 = sub_22EE75730(v3, @"MKBUserSessionCreateTimeStamp");
  [(UMLUser *)v4 setCreationDate:v87];

  v88 = sub_22EE75730(v3, @"MKBUserSessionCachedLoginStartTime");
  [(UMLUser *)v4 setLastLoginStart:v88];

  v89 = sub_22EE75730(v3, @"MKBUserSessionCachedLoginEndTime");
  [(UMLUser *)v4 setLastLoginEnd:v89];

  v90 = sub_22EE75730(v3, @"MKBUserSessionFirstLoginStartTime");
  [(UMLUser *)v4 setFirstLoginStart:v90];

  v91 = sub_22EE75730(v3, @"MKBUserSessionFirstLoginEndTime");
  [(UMLUser *)v4 setFirstLoginEnd:v91];

  v92 = sub_22EE75730(v3, @"MKBUserSessionCachedLoginStartTime");
  [(UMLUser *)v4 setCachedLoginStart:v92];

  v93 = sub_22EE75730(v3, @"MKBUserSessionCachedLoginEndTime");
  [(UMLUser *)v4 setCachedLoginEnd:v93];

  [(UMLUser *)v4 setGracePeriod:sub_22EE75268(v3, @"MKBUserSessionRequiresPasscode", 0)];
  v77 = v4;
LABEL_176:

  v78 = *MEMORY[0x277D85DE8];

  return v77;
}

- (id)userManifestDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{-[UMLUser uid](self, "uid")}];
  [v3 setObject:v4 forKeyedSubscript:@"MKBUserSessionID"];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:{-[UMLUser gid](self, "gid")}];
  [v3 setObject:v5 forKeyedSubscript:@"MKBUserSessionGroupID"];

  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[UMLUser apnsID](self, "apnsID")}];
  [v3 setObject:v6 forKeyedSubscript:@"MKBUserSessionAPNSID"];

  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[UMLUser apnsID](self, "apnsID")}];
  [v3 setObject:v7 forKeyedSubscript:@"MKBUserSessionAPNSID"];

  v8 = [(UMLUser *)self userUUID];
  [v3 setObject:v8 forKeyedSubscript:@"MKBUserSessionUUID"];

  v9 = [(UMLUser *)self alternateDSID];

  if (v9)
  {
    v10 = [(UMLUser *)self alternateDSID];
    [v3 setObject:v10 forKeyedSubscript:@"MKBUserSessionAlternateUUID"];
  }

  v11 = [(UMLUser *)self userType];
  [v3 setObject:v11 forKeyedSubscript:@"MKBUserTypeKey"];

  v12 = [(UMLUser *)self username];
  [v3 setObject:v12 forKeyedSubscript:@"MKBUserSessionShortName"];

  v13 = [(UMLUser *)self firstName];
  [v3 setObject:v13 forKeyedSubscript:@"MKBUserSessionFirstName"];

  v14 = [(UMLUser *)self lastName];
  [v3 setObject:v14 forKeyedSubscript:@"MKBUserSessionLastName"];

  v15 = [(UMLUser *)self displayName];
  [v3 setObject:v15 forKeyedSubscript:@"MKBUserSessionDisplayName"];

  v16 = [(UMLUser *)self libInfoPath];
  [v3 setObject:v16 forKeyedSubscript:@"MKBUserSessionLibinfoHomeDir"];

  v17 = [(UMLUser *)self homeDirPath];
  [v3 setObject:v17 forKeyedSubscript:@"MKBUserSessionHomeDir"];

  if ([(UMLUser *)self needsMount])
  {
    v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[UMLUser needsMount](self, "needsMount")}];
    [v3 setObject:v18 forKeyedSubscript:@"MKBUserSessionNeedsMount"];
  }

  if ([(UMLUser *)self isForeground])
  {
    v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[UMLUser isForeground](self, "isForeground")}];
    [v3 setObject:v19 forKeyedSubscript:@"MKBUserSessionForeground"];
  }

  v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[UMLUser isDirty](self, "isDirty")}];
  [v3 setObject:v20 forKeyedSubscript:@"MKBUserSessionDirty"];

  v21 = [(UMLUser *)self creationDate];
  [v3 setObject:v21 forKeyedSubscript:@"MKBUserSessionCreateTimeStamp"];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[UMLUser isPrimaryUser](self, "isPrimaryUser")}];
  [v3 setObject:v22 forKeyedSubscript:@"MKBUserSessionisPrimary"];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:{-[UMLUser isAdminUser](self, "isAdminUser")}];
  [v3 setObject:v23 forKeyedSubscript:@"MKBUserSessionisAdminKey"];

  v24 = [(UMLUser *)self lastLoginStart];

  if (v24)
  {
    v25 = [(UMLUser *)self lastLoginStart];
    [v3 setObject:v25 forKeyedSubscript:@"MKBUserSessionCachedLoginStartTime"];
  }

  v26 = [(UMLUser *)self lastLoginEnd];

  if (v26)
  {
    v27 = [(UMLUser *)self lastLoginEnd];
    [v3 setObject:v27 forKeyedSubscript:@"MKBUserSessionCachedLoginEndTime"];
  }

  v28 = [MEMORY[0x277CCABB0] numberWithBool:{-[UMLUser isDirty](self, "isDirty")}];
  [v3 setObject:v28 forKeyedSubscript:@"MKBUserSessionDirty"];

  if ([(UMLUser *)self isDisabledUser])
  {
    v29 = [MEMORY[0x277CCABB0] numberWithBool:{-[UMLUser isDisabledUser](self, "isDisabledUser")}];
    [v3 setObject:v29 forKeyedSubscript:@"MKBUserSessionDisabled"];
  }

  if ([(UMLUser *)self isLoginUser])
  {
    v30 = [MEMORY[0x277CCABB0] numberWithBool:{-[UMLUser isLoginUser](self, "isLoginUser")}];
    [v3 setObject:v30 forKeyedSubscript:@"MKBUserSessionLoginUser"];
  }

  if ([(UMLUser *)self isAuditor])
  {
    v31 = [MEMORY[0x277CCABB0] numberWithBool:{-[UMLUser isAuditor](self, "isAuditor")}];
    [v3 setObject:v31 forKeyedSubscript:@"MKBUserSessionAuditor"];
  }

  if ([(UMLUser *)self hasSyncBag])
  {
    v32 = [MEMORY[0x277CCABB0] numberWithBool:{-[UMLUser hasSyncBag](self, "hasSyncBag")}];
    [v3 setObject:v32 forKeyedSubscript:@"MKBUserSessionHasSyncBag"];
  }

  v33 = [MEMORY[0x277CCABB0] numberWithInt:{-[UMLUser gracePeriod](self, "gracePeriod")}];
  [v3 setObject:v33 forKeyedSubscript:@"MKBUserSessionRequiresPasscode"];

  v34 = [(UMLUser *)self firstLoginStart];

  if (v34)
  {
    v35 = [(UMLUser *)self firstLoginStart];
    [v3 setObject:v35 forKeyedSubscript:@"MKBUserSessionFirstLoginStartTime"];
  }

  v36 = [(UMLUser *)self firstLoginEnd];

  if (v36)
  {
    v37 = [(UMLUser *)self firstLoginEnd];
    [v3 setObject:v37 forKeyedSubscript:@"MKBUserSessionFirstLoginEndTime"];
  }

  v38 = [(UMLUser *)self cachedLoginStart];

  if (v38)
  {
    v39 = [(UMLUser *)self cachedLoginStart];
    [v3 setObject:v39 forKeyedSubscript:@"MKBUserSessionCachedLoginStartTime"];
  }

  v40 = [(UMLUser *)self cachedLoginEnd];

  if (v40)
  {
    v41 = [(UMLUser *)self cachedLoginEnd];
    [v3 setObject:v41 forKeyedSubscript:@"MKBUserSessionCachedLoginEndTime"];
  }

  return v3;
}

@end