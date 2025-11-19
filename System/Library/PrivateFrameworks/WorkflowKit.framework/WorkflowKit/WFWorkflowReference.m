@interface WFWorkflowReference
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)attributionTitle;
- (NSUserActivity)userActivityForViewing;
- (WFIcon)attributionIcon;
- (WFWorkflowReference)initWithCoder:(id)a3;
- (WFWorkflowReference)initWithIdentifier:(id)a3 name:(id)a4 color:(int64_t)a5 glyphCharacter:(unsigned __int16)a6 associatedAppBundleIdentifier:(id)a7 searchAttributionAppBundleIdentifier:(id)a8 subtitle:(id)a9 actionsDescription:(id)a10 actionCount:(unint64_t)a11 syncHash:(int64_t)a12 isDeleted:(BOOL)a13 hiddenFromLibraryAndSync:(BOOL)a14 creationDate:(id)a15 modificationDate:(id)a16 lastRunDate:(id)a17 remoteQuarantineStatus:(int64_t)a18 remoteQuarantineHash:(id)a19 showInSearch:(BOOL)a20 receivesInputFromSearch:(BOOL)a21 hasShortcutInputVariables:(BOOL)a22 disabledOnLockScreen:(BOOL)a23 source:(id)a24 runEventsCount:(id)a25 hasOutputAction:(BOOL)a26;
- (id)externalURLForRunningWithSource:(id)a3;
- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
- (id)speakableString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFWorkflowReference

- (unint64_t)hash
{
  v45.receiver = self;
  v45.super_class = WFWorkflowReference;
  v3 = [(WFWorkflowDescriptor *)&v45 hash];
  v4 = [(WFWorkflowReference *)self subtitle];
  v5 = v4;
  if (!v4)
  {
    v4 = &stru_1F4A1C408;
  }

  v6 = [(__CFString *)v4 hash];
  v44 = [(WFWorkflowReference *)self actionsDescription];
  v7 = v6 ^ [v44 hash];
  v8 = v7 ^ [(WFWorkflowReference *)self actionCount]^ v3;
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[WFWorkflowReference syncHash](self, "syncHash")}];
  v10 = v8 ^ [v9 hash];
  v11 = [(WFWorkflowReference *)self icon];
  v12 = [v11 hash];
  v13 = [(WFWorkflowReference *)self creationDate];
  v14 = v12 ^ [v13 hash];
  v15 = [(WFWorkflowReference *)self modificationDate];
  v16 = v14 ^ [v15 hash];
  v17 = [(WFWorkflowReference *)self isDeleted];
  v18 = 3133065982;
  if (v17)
  {
    v18 = 3203381950;
  }

  v19 = v16 ^ v18;
  v20 = [(WFWorkflowReference *)self hiddenFromLibraryAndSync];
  v21 = 3405774846;
  if (v20)
  {
    v21 = 3133079551;
  }

  v22 = v19 ^ v21;
  v23 = [(WFWorkflowReference *)self disabledOnLockScreen];
  v24 = 3133145087;
  if (!v23)
  {
    v24 = 3404726270;
  }

  v25 = v22 ^ v24;
  v26 = [(WFWorkflowReference *)self lastRunDate];
  v27 = v10 ^ v25 ^ [v26 hash];
  v28 = [(WFWorkflowReference *)self remoteQuarantineStatus];
  v29 = [(WFWorkflowReference *)self remoteQuarantineHash];
  v30 = v28 ^ [v29 hash];
  v31 = [(WFWorkflowReference *)self showInSearch];
  v32 = 3014969561;
  if (v31)
  {
    v32 = 2749691239;
  }

  v33 = v30 ^ v32;
  v34 = [(WFWorkflowReference *)self receivesInputFromSearch];
  v35 = 998052521;
  if (v34)
  {
    v35 = 3281674209;
  }

  v36 = v33 ^ v35;
  v37 = [(WFWorkflowReference *)self hasShortcutInputVariables];
  v38 = 1093271700;
  if (v37)
  {
    v38 = 1437221162;
  }

  v39 = v36 ^ v38;
  v40 = [(WFWorkflowReference *)self hasOutputAction];
  v41 = 195948557;
  if (v40)
  {
    v41 = 4277006349;
  }

  v42 = v39 ^ v41;

  return v27 ^ v42;
}

- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4
{
  v5 = MEMORY[0x1E696ACC8];
  v6 = a4;
  v7 = [(WFWorkflowReference *)self copy];
  v11 = 0;
  v8 = [v5 archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v11];
  v9 = v11;

  v6[2](v6, v8, v9);
  return 0;
}

- (WFIcon)attributionIcon
{
  v3 = [(WFWorkflowDescriptor *)self associatedAppBundleIdentifier];
  v4 = [v3 length];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69E0960]);
    v6 = [(WFWorkflowDescriptor *)self associatedAppBundleIdentifier];
    v7 = [v5 initWithBundleIdentifier:v6];
  }

  else
  {
    v6 = [(WFWorkflowReference *)self icon];
    v7 = [v6 icon];
  }

  v8 = v7;

  return v8;
}

- (NSString)attributionTitle
{
  if ([(WFWorkflowReference *)self hiddenFromLibraryAndSync])
  {
    WFLocalizedString(@"Shortcuts");
  }

  else
  {
    [(WFWorkflowDescriptor *)self name];
  }
  v3 = ;

  return v3;
}

- (id)externalURLForRunningWithSource:(id)a3
{
  if (a3)
  {
    v4 = [@"&source=" stringByAppendingString:?];
    v5 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
    v6 = [v4 stringByAddingPercentEncodingWithAllowedCharacters:v5];
  }

  else
  {
    v6 = &stru_1F4A1C408;
  }

  v7 = MEMORY[0x1E695DFF8];
  v8 = MEMORY[0x1E696AEC0];
  v9 = [(WFWorkflowDescriptor *)self name];
  v10 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
  v11 = [v9 stringByAddingPercentEncodingWithAllowedCharacters:v10];
  v12 = [(WFWorkflowReference *)self identifier];
  v13 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
  v14 = [v12 stringByAddingPercentEncodingWithAllowedCharacters:v13];
  v15 = [v8 stringWithFormat:@"shortcuts://x-callback-url/run-shortcut?name=%@&id=%@%@", v11, v14, v6];
  v16 = [v7 URLWithString:v15];

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v16.receiver = self;
  v16.super_class = WFWorkflowReference;
  v4 = a3;
  [(WFWorkflowDescriptor *)&v16 encodeWithCoder:v4];
  v5 = [(WFWorkflowReference *)self icon:v16.receiver];
  [v4 encodeObject:v5 forKey:@"icon"];

  v6 = [(WFWorkflowReference *)self subtitle];
  [v4 encodeObject:v6 forKey:@"subtitle"];

  v7 = [(WFWorkflowReference *)self actionsDescription];
  [v4 encodeObject:v7 forKey:@"actionsDescription"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WFWorkflowReference actionCount](self, "actionCount")}];
  [v4 encodeObject:v8 forKey:@"actionCount"];

  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[WFWorkflowReference syncHash](self, "syncHash")}];
  [v4 encodeObject:v9 forKey:@"syncHash"];

  [v4 encodeBool:-[WFWorkflowReference isDeleted](self forKey:{"isDeleted"), @"isDeleted"}];
  [v4 encodeBool:-[WFWorkflowReference hiddenFromLibraryAndSync](self forKey:{"hiddenFromLibraryAndSync"), @"hiddenFromLibraryAndSync"}];
  v10 = [(WFWorkflowReference *)self creationDate];
  [v4 encodeObject:v10 forKey:@"creationDate"];

  v11 = [(WFWorkflowReference *)self modificationDate];
  [v4 encodeObject:v11 forKey:@"modificationDate"];

  v12 = [(WFWorkflowReference *)self lastRunDate];
  [v4 encodeObject:v12 forKey:@"lastRunDate"];

  [v4 encodeInteger:-[WFWorkflowReference remoteQuarantineStatus](self forKey:{"remoteQuarantineStatus"), @"remoteQuarantineStatus"}];
  v13 = [(WFWorkflowReference *)self remoteQuarantineHash];
  [v4 encodeObject:v13 forKey:@"remoteQuarantineHash"];

  [v4 encodeBool:-[WFWorkflowReference hasShortcutInputVariables](self forKey:{"hasShortcutInputVariables"), @"hasShortcutInputVariables"}];
  [v4 encodeBool:-[WFWorkflowReference showInSearch](self forKey:{"showInSearch"), @"showInSearch"}];
  [v4 encodeBool:-[WFWorkflowReference receivesInputFromSearch](self forKey:{"receivesInputFromSearch"), @"receivesInputFromSearch"}];
  [v4 encodeBool:-[WFWorkflowReference disabledOnLockScreen](self forKey:{"disabledOnLockScreen"), @"disabledOnLockScreen"}];
  v14 = [(WFWorkflowReference *)self source];
  [v4 encodeObject:v14 forKey:@"source"];

  v15 = [(WFWorkflowReference *)self runEventsCount];
  [v4 encodeObject:v15 forKey:@"runEventsCount"];

  [v4 encodeBool:-[WFWorkflowReference hasOutputAction](self forKey:{"hasOutputAction"), @"hasOutputAction"}];
}

- (WFWorkflowReference)initWithCoder:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = WFWorkflowReference;
  v5 = [(WFWorkflowDescriptor *)&v28 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionsDescription"];
    actionsDescription = v5->_actionsDescription;
    v5->_actionsDescription = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionCount"];
    v5->_actionCount = [v12 unsignedIntegerValue];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"syncHash"];
    v5->_syncHash = [v13 longValue];

    v5->_isDeleted = [v4 decodeBoolForKey:@"isDeleted"];
    v5->_hiddenFromLibraryAndSync = [v4 decodeBoolForKey:@"hiddenFromLibraryAndSync"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modificationDate"];
    modificationDate = v5->_modificationDate;
    v5->_modificationDate = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastRunDate"];
    lastRunDate = v5->_lastRunDate;
    v5->_lastRunDate = v18;

    v5->_remoteQuarantineStatus = [v4 decodeIntegerForKey:@"remoteQuarantineStatus"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteQuarantineHash"];
    remoteQuarantineHash = v5->_remoteQuarantineHash;
    v5->_remoteQuarantineHash = v20;

    v5->_hasShortcutInputVariables = [v4 decodeBoolForKey:@"hasShortcutInputVariables"];
    v5->_showInSearch = [v4 decodeBoolForKey:@"showInSearch"];
    v5->_receivesInputFromSearch = [v4 decodeBoolForKey:@"receivesInputFromSearch"];
    v5->_disabledOnLockScreen = [v4 decodeBoolForKey:@"disabledOnLockScreen"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"source"];
    source = v5->_source;
    v5->_source = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"runEventsCount"];
    runEventsCount = v5->_runEventsCount;
    v5->_runEventsCount = v24;

    v5->_hasOutputAction = [v4 decodeBoolForKey:@"hasOutputAction"];
    v26 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v79.receiver = self;
      v79.super_class = WFWorkflowReference;
      if (![(WFWorkflowDescriptor *)&v79 isEqual:v5])
      {
        v12 = 0;
LABEL_90:

        goto LABEL_91;
      }

      v6 = [(WFWorkflowReference *)self subtitle];
      v7 = [(WFWorkflowReference *)v5 subtitle];
      v8 = v6;
      v9 = v7;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        if (!v8 || !v9)
        {

LABEL_20:
          v19 = [(WFWorkflowReference *)self subtitle];
          if ([v19 length])
          {
            LOBYTE(v20) = 0;
LABEL_88:

            v12 = v20;
            goto LABEL_89;
          }

          v76 = v19;
          v77 = [(WFWorkflowReference *)v5 subtitle];
          if ([v77 length])
          {
            LOBYTE(v20) = 0;
LABEL_87:

            v19 = v76;
            goto LABEL_88;
          }

          v78 = 1;
LABEL_14:
          v13 = [(WFWorkflowReference *)self actionsDescription];
          v14 = [(WFWorkflowReference *)v5 actionsDescription];
          v15 = v13;
          v16 = v14;
          v17 = v16;
          if (v15 == v16)
          {
          }

          else
          {
            if (!v15 || !v16)
            {

              goto LABEL_31;
            }

            v18 = [v15 isEqualToString:v16];

            if (!v18)
            {
LABEL_31:

              LOBYTE(v20) = 0;
              v12 = 0;
              if (!v78)
              {
                goto LABEL_89;
              }

              goto LABEL_87;
            }
          }

          v21 = [(WFWorkflowReference *)self actionCount];
          if (v21 != [(WFWorkflowReference *)v5 actionCount])
          {
            goto LABEL_31;
          }

          v22 = [(WFWorkflowReference *)self syncHash];
          if (v22 != [(WFWorkflowReference *)v5 syncHash])
          {
            goto LABEL_31;
          }

          v23 = [(WFWorkflowReference *)self icon];
          v24 = [(WFWorkflowReference *)v5 icon];
          v25 = v23;
          v26 = v24;
          v75 = v26;
          if (v25 != v26)
          {
            LOBYTE(v20) = 0;
            if (v25)
            {
              v27 = v26;
              v28 = v25;
              if (v26)
              {
                v29 = [v25 isEqual:v26];

                if (!v29)
                {
                  LOBYTE(v20) = 0;
                  goto LABEL_86;
                }

LABEL_37:
                v74 = v25;
                v30 = [(WFWorkflowReference *)self creationDate];
                v31 = [(WFWorkflowReference *)v5 creationDate];
                v32 = v30;
                v33 = v31;
                v72 = v33;
                v73 = v32;
                if (v32 != v33)
                {
                  LOBYTE(v20) = 0;
                  if (v32)
                  {
                    v34 = v33;
                    v35 = v32;
                    v25 = v74;
                    if (v33)
                    {
                      v20 = [v73 isEqual:v33];

                      if (!v20)
                      {
                        v25 = v74;
LABEL_84:
                        v27 = v72;
                        v28 = v73;
                        goto LABEL_85;
                      }

LABEL_43:
                      v36 = [(WFWorkflowReference *)self modificationDate];
                      v37 = [(WFWorkflowReference *)v5 modificationDate];
                      v38 = v36;
                      v39 = v37;
                      v35 = v38;
                      v71 = v39;
                      if (v38 != v39)
                      {
                        LOBYTE(v20) = 0;
                        if (v38)
                        {
                          v40 = v39;
                          v41 = v38;
                          v25 = v74;
                          if (v39)
                          {
                            v42 = v39;
                            v69 = [v35 isEqual:v39];

                            if (!v69)
                            {
LABEL_53:
                              LOBYTE(v20) = 0;
LABEL_82:
                              v34 = v71;
                              goto LABEL_83;
                            }

LABEL_50:
                            v43 = [(WFWorkflowReference *)self isDeleted];
                            if (v43 != [(WFWorkflowReference *)v5 isDeleted])
                            {
                              goto LABEL_53;
                            }

                            v44 = [(WFWorkflowReference *)self disabledOnLockScreen];
                            if (v44 != [(WFWorkflowReference *)v5 disabledOnLockScreen])
                            {
                              goto LABEL_53;
                            }

                            v45 = [(WFWorkflowReference *)self hiddenFromLibraryAndSync];
                            if (v45 != [(WFWorkflowReference *)v5 hiddenFromLibraryAndSync])
                            {
                              goto LABEL_53;
                            }

                            v70 = v35;
                            v46 = [(WFWorkflowReference *)self lastRunDate];
                            v47 = [(WFWorkflowReference *)v5 lastRunDate];
                            v48 = v46;
                            v49 = v47;
                            v67 = v49;
                            v68 = v48;
                            if (v48 != v49)
                            {
                              LOBYTE(v20) = 0;
                              if (v48)
                              {
                                v50 = v49;
                                v66 = v48;
                                v25 = v74;
                                v35 = v70;
                                if (v49)
                                {
                                  v20 = [v68 isEqual:v49];

                                  if (!v20)
                                  {
                                    goto LABEL_69;
                                  }

LABEL_62:
                                  v51 = [(WFWorkflowReference *)self remoteQuarantineStatus];
                                  if (v51 != [(WFWorkflowReference *)v5 remoteQuarantineStatus])
                                  {
                                    LOBYTE(v20) = 0;
LABEL_69:
                                    v25 = v74;
                                    v35 = v70;
LABEL_80:
                                    v40 = v67;
                                    v41 = v68;
                                    goto LABEL_81;
                                  }

                                  v52 = [(WFWorkflowReference *)self remoteQuarantineHash];
                                  v53 = [(WFWorkflowReference *)v5 remoteQuarantineHash];
                                  v54 = v52;
                                  v65 = v53;
                                  v66 = v54;
                                  if (v54 == v65)
                                  {
                                  }

                                  else
                                  {
                                    LOBYTE(v20) = 0;
                                    if (!v54)
                                    {
                                      v55 = v65;
                                      goto LABEL_77;
                                    }

                                    v55 = v65;
                                    if (!v65)
                                    {
LABEL_77:

                                      goto LABEL_78;
                                    }

                                    v20 = [v54 isEqual:v65];

                                    if (!v20)
                                    {
                                      goto LABEL_78;
                                    }
                                  }

                                  v56 = [(WFWorkflowReference *)self showInSearch];
                                  if (v56 != [(WFWorkflowReference *)v5 showInSearch]|| (v57 = [(WFWorkflowReference *)self receivesInputFromSearch], v57 != [(WFWorkflowReference *)v5 receivesInputFromSearch]) || (v58 = [(WFWorkflowReference *)self hasShortcutInputVariables], v58 != [(WFWorkflowReference *)v5 hasShortcutInputVariables]))
                                  {
                                    LOBYTE(v20) = 0;
LABEL_78:
                                    v25 = v74;
                                    v35 = v70;
                                    v50 = v65;
                                    goto LABEL_79;
                                  }

                                  v61 = [(WFWorkflowReference *)self runEventsCount];
                                  v62 = [(WFWorkflowReference *)v5 runEventsCount];
                                  v54 = v61;
                                  v63 = v62;
                                  v55 = v63;
                                  if (v54 == v63)
                                  {

LABEL_98:
                                    v64 = [(WFWorkflowReference *)self hasOutputAction];
                                    v20 = v64 ^ [(WFWorkflowReference *)v5 hasOutputAction]^ 1;
                                    goto LABEL_77;
                                  }

                                  if (!v54 || !v63)
                                  {

                                    LOBYTE(v20) = 0;
                                    goto LABEL_77;
                                  }

                                  v20 = [v54 isEqual:v63];

                                  if (v20)
                                  {
                                    goto LABEL_98;
                                  }

                                  goto LABEL_77;
                                }
                              }

                              else
                              {
                                v50 = v49;
                                v66 = 0;
                                v25 = v74;
                                v35 = v70;
                              }

LABEL_79:

                              goto LABEL_80;
                            }

                            goto LABEL_62;
                          }
                        }

                        else
                        {
                          v40 = v39;
                          v41 = 0;
                          v25 = v74;
                        }

LABEL_81:
                        v59 = v41;

                        goto LABEL_82;
                      }

                      v25 = v74;
                      goto LABEL_50;
                    }
                  }

                  else
                  {
                    v34 = v33;
                    v35 = 0;
                    v25 = v74;
                  }

LABEL_83:

                  goto LABEL_84;
                }

                goto LABEL_43;
              }
            }

            else
            {
              v27 = v26;
              v28 = 0;
            }

LABEL_85:

LABEL_86:
            v12 = v20;
            if ((v78 & 1) == 0)
            {
LABEL_89:

              goto LABEL_90;
            }

            goto LABEL_87;
          }

          goto LABEL_37;
        }

        v11 = [v8 isEqualToString:v9];

        if ((v11 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v78 = 0;
      goto LABEL_14;
    }

    v12 = 0;
  }

LABEL_91:

  return v12;
}

- (WFWorkflowReference)initWithIdentifier:(id)a3 name:(id)a4 color:(int64_t)a5 glyphCharacter:(unsigned __int16)a6 associatedAppBundleIdentifier:(id)a7 searchAttributionAppBundleIdentifier:(id)a8 subtitle:(id)a9 actionsDescription:(id)a10 actionCount:(unint64_t)a11 syncHash:(int64_t)a12 isDeleted:(BOOL)a13 hiddenFromLibraryAndSync:(BOOL)a14 creationDate:(id)a15 modificationDate:(id)a16 lastRunDate:(id)a17 remoteQuarantineStatus:(int64_t)a18 remoteQuarantineHash:(id)a19 showInSearch:(BOOL)a20 receivesInputFromSearch:(BOOL)a21 hasShortcutInputVariables:(BOOL)a22 disabledOnLockScreen:(BOOL)a23 source:(id)a24 runEventsCount:(id)a25 hasOutputAction:(BOOL)a26
{
  v53 = a6;
  v46 = a3;
  v29 = a4;
  v30 = a7;
  v55 = a8;
  v52 = a9;
  v54 = a10;
  v51 = a15;
  v31 = a16;
  v32 = a17;
  v33 = a19;
  v49 = a24;
  v48 = a25;
  v50 = v31;
  if (!v31)
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    [v43 handleFailureInMethod:a2 object:self file:@"WFWorkflowReference.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"modificationDate"}];
  }

  v56.receiver = self;
  v56.super_class = WFWorkflowReference;
  v34 = [(WFWorkflowDescriptor *)&v56 initWithIdentifier:v46 name:v29 color:a5 glyphCharacter:v53 associatedAppBundleIdentifier:v30 searchAttributionAppBundleIdentifier:v55];
  if (v34)
  {
    v35 = [v52 copy];
    subtitle = v34->_subtitle;
    v34->_subtitle = v35;

    v37 = [v54 copy];
    actionsDescription = v34->_actionsDescription;
    v34->_actionsDescription = v37;

    v34->_actionCount = a11;
    v34->_syncHash = a12;
    v39 = [objc_alloc(MEMORY[0x1E69E0E00]) initWithBackgroundColorValue:a5 glyphCharacter:v53 customImageData:0];
    icon = v34->_icon;
    v34->_icon = v39;

    v34->_isDeleted = a13;
    v34->_hiddenFromLibraryAndSync = a14;
    objc_storeStrong(&v34->_creationDate, a15);
    objc_storeStrong(&v34->_modificationDate, a16);
    objc_storeStrong(&v34->_lastRunDate, a17);
    v34->_remoteQuarantineStatus = a18;
    objc_storeStrong(&v34->_remoteQuarantineHash, a19);
    v34->_showInSearch = a20;
    v34->_receivesInputFromSearch = a21;
    v34->_hasShortcutInputVariables = a22;
    v34->_disabledOnLockScreen = a23;
    objc_storeStrong(&v34->_source, a24);
    objc_storeStrong(&v34->_runEventsCount, a25);
    v34->_hasOutputAction = a26;
    v41 = v34;
  }

  return v34;
}

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v6 = MEMORY[0x1E696ACD0];
  v7 = a3;
  v8 = [v6 unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:a5];

  return v8;
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6982C40] exportedTypeWithIdentifier:@"com.apple.shortcuts.workflow-reference"];
  v3 = [v2 identifier];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (NSArray)readableTypeIdentifiersForItemProvider
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6982C40] exportedTypeWithIdentifier:@"com.apple.shortcuts.workflow-reference"];
  v3 = [v2 identifier];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)speakableString
{
  v3 = objc_alloc(MEMORY[0x1E696EA50]);
  v4 = [(WFWorkflowReference *)self identifier];
  v5 = [(WFWorkflowDescriptor *)self name];
  v6 = [v3 initWithVocabularyIdentifier:v4 spokenPhrase:v5 pronunciationHint:0];

  return v6;
}

- (NSUserActivity)userActivityForViewing
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E69636A8]) initWithActivityType:@"is.workflow.my.app.viewworkflow"];
  v4 = [(WFWorkflowDescriptor *)self name];
  [v3 setTitle:v4];

  v15[0] = @"workflowID";
  v5 = [(WFWorkflowReference *)self identifier];
  v15[1] = @"workflowName";
  v16[0] = v5;
  v6 = [(WFWorkflowDescriptor *)self name];
  v16[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  [v3 setUserInfo:v7];

  v8 = @"workflowID";
  v14[0] = @"workflowID";
  v9 = @"workflowName";
  v14[1] = @"workflowName";
  v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:v14 count:2];
  for (i = 1; i != -1; --i)
  {
  }

  [v3 setRequiredUserInfoKeys:v10];

  [v3 setEligibleForHandoff:0];
  [v3 setEligibleForSearch:0];
  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

@end