@interface WFGalleryCollection
+ (NSDictionary)properties;
- (BOOL)isEqual:(id)a3;
- (WFGalleryCollection)initWithIdentifier:(id)a3 name:(id)a4 collectionDescription:(id)a5 workflows:(id)a6 minVersion:(int64_t)a7 supportedIdioms:(id)a8 modifiedAt:(id)a9 language:(id)a10 base:(id)a11 persistentIdentifier:(id)a12;
@end

@implementation WFGalleryCollection

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(WFGalleryCollection *)self identifier];
      v7 = [(WFGalleryCollection *)v5 identifier];
      v8 = v6;
      v9 = v7;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        LOBYTE(v11) = 0;
        v12 = v9;
        v13 = v8;
        if (!v8 || !v9)
        {
          goto LABEL_78;
        }

        v14 = [v8 isEqual:v9];

        if (!v14)
        {
          LOBYTE(v11) = 0;
LABEL_79:

          goto LABEL_80;
        }
      }

      v15 = [(WFGalleryCollection *)self name];
      v16 = [(WFGalleryCollection *)v5 name];
      v13 = v15;
      v17 = v16;
      v12 = v17;
      if (v13 == v17)
      {
      }

      else
      {
        LOBYTE(v11) = 0;
        v18 = v17;
        v19 = v13;
        if (!v13 || !v17)
        {
          goto LABEL_77;
        }

        v20 = [v13 isEqualToString:v17];

        if (!v20)
        {
          LOBYTE(v11) = 0;
LABEL_78:

          goto LABEL_79;
        }
      }

      v21 = [(WFGalleryCollection *)self collectionDescription];
      v22 = [(WFGalleryCollection *)v5 collectionDescription];
      v19 = v21;
      v23 = v22;
      v18 = v23;
      v81 = v19;
      if (v19 == v23)
      {
      }

      else
      {
        LOBYTE(v11) = 0;
        v24 = v23;
        if (!v19 || !v23)
        {
          goto LABEL_76;
        }

        v11 = [v19 isEqualToString:v23];

        if (!v11)
        {
          goto LABEL_77;
        }
      }

      v80 = v18;
      v25 = [(WFGalleryCollection *)self workflows];
      v26 = [(WFGalleryCollection *)v5 workflows];
      v27 = v25;
      v28 = v26;
      v78 = v28;
      v79 = v27;
      if (v27 == v28)
      {
      }

      else
      {
        LOBYTE(v11) = 0;
        if (!v27)
        {
          v29 = v28;
          v18 = v80;
          goto LABEL_74;
        }

        v29 = v28;
        v18 = v80;
        if (!v28)
        {
LABEL_74:

          goto LABEL_75;
        }

        v30 = [v27 isEqualToArray:v28];

        if (!v30)
        {
          LOBYTE(v11) = 0;
          v18 = v80;
LABEL_75:
          v24 = v78;
          v19 = v79;
LABEL_76:

          v19 = v81;
LABEL_77:

          goto LABEL_78;
        }
      }

      v31 = [(WFGalleryCollection *)self modifiedAt];
      v32 = [(WFGalleryCollection *)v5 modifiedAt];
      v27 = v31;
      v33 = v32;
      v34 = v33;
      if (v27 != v33)
      {
        LOBYTE(v11) = 0;
        v77 = v27;
        v35 = v33;
        if (v27)
        {
          v18 = v80;
          if (v33)
          {
            v36 = v33;
            v37 = [v27 isEqual:v33];
            v76 = v36;

            if (!v37)
            {
              goto LABEL_41;
            }

LABEL_35:
            v38 = [(WFGalleryCollection *)self minVersion];
            if (v38 != [(WFGalleryCollection *)v5 minVersion])
            {
LABEL_41:
              LOBYTE(v11) = 0;
              v18 = v80;
              v29 = v76;
              goto LABEL_74;
            }

            v39 = [(WFGalleryCollection *)self language];
            v40 = [(WFGalleryCollection *)v5 language];
            v41 = v39;
            v42 = v40;
            v74 = v42;
            v75 = v41;
            v77 = v27;
            if (v41 != v42)
            {
              LOBYTE(v11) = 0;
              if (v41)
              {
                v43 = v42;
                v44 = v41;
                v18 = v80;
                if (v42)
                {
                  v45 = [v75 isEqualToString:v42];

                  if (!v45)
                  {
                    LOBYTE(v11) = 0;
                    v18 = v80;
LABEL_72:
                    v27 = v75;
                    v34 = v76;
                    v35 = v74;
                    goto LABEL_73;
                  }

LABEL_45:
                  v46 = [(WFGalleryCollection *)self base];
                  v47 = [(WFGalleryCollection *)v5 base];
                  v48 = v46;
                  v49 = v47;
                  v72 = v49;
                  v73 = v48;
                  if (v48 != v49)
                  {
                    LOBYTE(v11) = 0;
                    if (v48)
                    {
                      v50 = v49;
                      v51 = v48;
                      v18 = v80;
                      if (v49)
                      {
                        v70 = [v73 isEqual:v49];

                        if (!v70)
                        {
                          LOBYTE(v11) = 0;
                          v18 = v80;
LABEL_70:
                          v43 = v72;
                          v44 = v73;
                          goto LABEL_71;
                        }

LABEL_51:
                        v52 = [(WFGalleryCollection *)self persistentIdentifier];
                        v53 = [(WFGalleryCollection *)v5 persistentIdentifier];
                        v54 = v52;
                        v55 = v53;
                        v69 = v55;
                        v71 = v54;
                        if (v54 == v55)
                        {
                        }

                        else
                        {
                          LOBYTE(v11) = 0;
                          if (!v54)
                          {
                            v56 = v55;
                            v57 = 0;
                            v18 = v80;
                            goto LABEL_67;
                          }

                          v56 = v55;
                          v57 = v54;
                          v18 = v80;
                          if (!v55)
                          {
LABEL_67:
                            v63 = v57;

                            goto LABEL_68;
                          }

                          v67 = [v71 isEqualToString:v55];

                          if (!v67)
                          {
                            LOBYTE(v11) = 0;
                            v18 = v80;
LABEL_68:
                            v50 = v69;
                            v51 = v71;
                            goto LABEL_69;
                          }
                        }

                        v58 = [(WFGalleryCollection *)self supportedIdioms];
                        v59 = [(WFGalleryCollection *)v5 supportedIdioms];
                        v60 = v58;
                        v61 = v59;
                        v62 = v60;
                        v68 = v61;
                        if (v60 == v61)
                        {
                          LOBYTE(v11) = 1;
                        }

                        else
                        {
                          LOBYTE(v11) = 0;
                          if (v60)
                          {
                            v18 = v80;
                            if (v61)
                            {
                              LOBYTE(v11) = [v62 isEqualToArray:v61];
                            }

                            goto LABEL_65;
                          }
                        }

                        v18 = v80;
LABEL_65:

                        v56 = v68;
                        v57 = v62;
                        goto LABEL_67;
                      }
                    }

                    else
                    {
                      v50 = v49;
                      v51 = 0;
                      v18 = v80;
                    }

LABEL_69:
                    v64 = v51;

                    goto LABEL_70;
                  }

                  goto LABEL_51;
                }
              }

              else
              {
                v43 = v42;
                v44 = 0;
                v18 = v80;
              }

LABEL_71:

              goto LABEL_72;
            }

            goto LABEL_45;
          }
        }

        else
        {
          v18 = v80;
        }

LABEL_73:
        v65 = v34;

        v29 = v65;
        v27 = v77;
        goto LABEL_74;
      }

      v76 = v33;

      goto LABEL_35;
    }

    LOBYTE(v11) = 0;
  }

LABEL_80:

  return v11;
}

- (WFGalleryCollection)initWithIdentifier:(id)a3 name:(id)a4 collectionDescription:(id)a5 workflows:(id)a6 minVersion:(int64_t)a7 supportedIdioms:(id)a8 modifiedAt:(id)a9 language:(id)a10 base:(id)a11 persistentIdentifier:(id)a12
{
  v45 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v46.receiver = self;
  v46.super_class = WFGalleryCollection;
  v24 = [(WFGalleryCollection *)&v46 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_identifier, a3);
    v26 = [v16 copy];
    name = v25->_name;
    v25->_name = v26;

    v28 = [v17 copy];
    collectionDescription = v25->_collectionDescription;
    v25->_collectionDescription = v28;

    v30 = [v18 copy];
    workflows = v25->_workflows;
    v25->_workflows = v30;

    v25->_minVersion = a7;
    v32 = [v19 copy];
    supportedIdioms = v25->_supportedIdioms;
    v25->_supportedIdioms = v32;

    v34 = [v20 copy];
    modifiedAt = v25->_modifiedAt;
    v25->_modifiedAt = v34;

    v36 = [v21 copy];
    language = v25->_language;
    v25->_language = v36;

    objc_storeStrong(&v25->_base, a11);
    v38 = [v23 copy];
    persistentIdentifier = v25->_persistentIdentifier;
    v25->_persistentIdentifier = v38;

    v40 = v25;
  }

  return v25;
}

+ (NSDictionary)properties
{
  v14[8] = *MEMORY[0x1E69E9840];
  v13[0] = @"name";
  v2 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v14[0] = v2;
  v13[1] = @"description";
  v3 = [WFCloudKitItemProperty objectPropertyWithName:@"collectionDescription"];
  v14[1] = v3;
  v13[2] = @"shortcuts";
  v4 = [WFCloudKitItemProperty itemPropertyWithName:@"workflows" itemClass:objc_opt_class()];
  v14[2] = v4;
  v13[3] = @"minVersion";
  v5 = [WFCloudKitItemProperty scalarPropertyWithName:"scalarPropertyWithName:nilValue:" nilValue:?];
  v14[3] = v5;
  v13[4] = @"language";
  v6 = [WFCloudKitItemProperty objectPropertyWithName:"objectPropertyWithName:ignoredByDefault:encrypted:" ignoredByDefault:? encrypted:?];
  v14[4] = v6;
  v13[5] = @"base";
  v7 = [WFCloudKitItemProperty itemReferencePropertyWithName:@"base" itemClass:objc_opt_class()];
  v14[5] = v7;
  v13[6] = @"persistentIdentifier";
  v8 = [WFCloudKitItemProperty objectPropertyWithName:"objectPropertyWithName:ignoredByDefault:encrypted:" ignoredByDefault:? encrypted:?];
  v14[6] = v8;
  v13[7] = @"supportedIdioms";
  v9 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v14[7] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:8];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end