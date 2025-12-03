@interface WFWorkflowReference
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)attributionTitle;
- (NSUserActivity)userActivityForViewing;
- (WFIcon)attributionIcon;
- (WFWorkflowReference)initWithCoder:(id)coder;
- (WFWorkflowReference)initWithIdentifier:(id)identifier name:(id)name color:(int64_t)color glyphCharacter:(unsigned __int16)character associatedAppBundleIdentifier:(id)bundleIdentifier searchAttributionAppBundleIdentifier:(id)appBundleIdentifier subtitle:(id)subtitle actionsDescription:(id)self0 actionCount:(unint64_t)self1 syncHash:(int64_t)self2 isDeleted:(BOOL)self3 hiddenFromLibraryAndSync:(BOOL)self4 creationDate:(id)self5 modificationDate:(id)self6 lastRunDate:(id)self7 remoteQuarantineStatus:(int64_t)self8 remoteQuarantineHash:(id)self9 showInSearch:(BOOL)search receivesInputFromSearch:(BOOL)fromSearch hasShortcutInputVariables:(BOOL)variables disabledOnLockScreen:(BOOL)screen source:(id)source runEventsCount:(id)eventsCount hasOutputAction:(BOOL)action;
- (id)externalURLForRunningWithSource:(id)source;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
- (id)speakableString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFWorkflowReference

- (unint64_t)hash
{
  v45.receiver = self;
  v45.super_class = WFWorkflowReference;
  v3 = [(WFWorkflowDescriptor *)&v45 hash];
  subtitle = [(WFWorkflowReference *)self subtitle];
  v5 = subtitle;
  if (!subtitle)
  {
    subtitle = &stru_1F4A1C408;
  }

  v6 = [(__CFString *)subtitle hash];
  actionsDescription = [(WFWorkflowReference *)self actionsDescription];
  v7 = v6 ^ [actionsDescription hash];
  v8 = v7 ^ [(WFWorkflowReference *)self actionCount]^ v3;
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[WFWorkflowReference syncHash](self, "syncHash")}];
  v10 = v8 ^ [v9 hash];
  icon = [(WFWorkflowReference *)self icon];
  v12 = [icon hash];
  creationDate = [(WFWorkflowReference *)self creationDate];
  v14 = v12 ^ [creationDate hash];
  modificationDate = [(WFWorkflowReference *)self modificationDate];
  v16 = v14 ^ [modificationDate hash];
  isDeleted = [(WFWorkflowReference *)self isDeleted];
  v18 = 3133065982;
  if (isDeleted)
  {
    v18 = 3203381950;
  }

  v19 = v16 ^ v18;
  hiddenFromLibraryAndSync = [(WFWorkflowReference *)self hiddenFromLibraryAndSync];
  v21 = 3405774846;
  if (hiddenFromLibraryAndSync)
  {
    v21 = 3133079551;
  }

  v22 = v19 ^ v21;
  disabledOnLockScreen = [(WFWorkflowReference *)self disabledOnLockScreen];
  v24 = 3133145087;
  if (!disabledOnLockScreen)
  {
    v24 = 3404726270;
  }

  v25 = v22 ^ v24;
  lastRunDate = [(WFWorkflowReference *)self lastRunDate];
  v27 = v10 ^ v25 ^ [lastRunDate hash];
  remoteQuarantineStatus = [(WFWorkflowReference *)self remoteQuarantineStatus];
  remoteQuarantineHash = [(WFWorkflowReference *)self remoteQuarantineHash];
  v30 = remoteQuarantineStatus ^ [remoteQuarantineHash hash];
  showInSearch = [(WFWorkflowReference *)self showInSearch];
  v32 = 3014969561;
  if (showInSearch)
  {
    v32 = 2749691239;
  }

  v33 = v30 ^ v32;
  receivesInputFromSearch = [(WFWorkflowReference *)self receivesInputFromSearch];
  v35 = 998052521;
  if (receivesInputFromSearch)
  {
    v35 = 3281674209;
  }

  v36 = v33 ^ v35;
  hasShortcutInputVariables = [(WFWorkflowReference *)self hasShortcutInputVariables];
  v38 = 1093271700;
  if (hasShortcutInputVariables)
  {
    v38 = 1437221162;
  }

  v39 = v36 ^ v38;
  hasOutputAction = [(WFWorkflowReference *)self hasOutputAction];
  v41 = 195948557;
  if (hasOutputAction)
  {
    v41 = 4277006349;
  }

  v42 = v39 ^ v41;

  return v27 ^ v42;
}

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  v5 = MEMORY[0x1E696ACC8];
  handlerCopy = handler;
  v7 = [(WFWorkflowReference *)self copy];
  v11 = 0;
  v8 = [v5 archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v11];
  v9 = v11;

  handlerCopy[2](handlerCopy, v8, v9);
  return 0;
}

- (WFIcon)attributionIcon
{
  associatedAppBundleIdentifier = [(WFWorkflowDescriptor *)self associatedAppBundleIdentifier];
  v4 = [associatedAppBundleIdentifier length];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69E0960]);
    associatedAppBundleIdentifier2 = [(WFWorkflowDescriptor *)self associatedAppBundleIdentifier];
    icon = [v5 initWithBundleIdentifier:associatedAppBundleIdentifier2];
  }

  else
  {
    associatedAppBundleIdentifier2 = [(WFWorkflowReference *)self icon];
    icon = [associatedAppBundleIdentifier2 icon];
  }

  v8 = icon;

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

- (id)externalURLForRunningWithSource:(id)source
{
  if (source)
  {
    v4 = [@"&source=" stringByAppendingString:?];
    uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
    v6 = [v4 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];
  }

  else
  {
    v6 = &stru_1F4A1C408;
  }

  v7 = MEMORY[0x1E695DFF8];
  v8 = MEMORY[0x1E696AEC0];
  name = [(WFWorkflowDescriptor *)self name];
  uRLPathAllowedCharacterSet2 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
  v11 = [name stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet2];
  identifier = [(WFWorkflowReference *)self identifier];
  uRLPathAllowedCharacterSet3 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
  v14 = [identifier stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet3];
  v15 = [v8 stringWithFormat:@"shortcuts://x-callback-url/run-shortcut?name=%@&id=%@%@", v11, v14, v6];
  v16 = [v7 URLWithString:v15];

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  v16.receiver = self;
  v16.super_class = WFWorkflowReference;
  coderCopy = coder;
  [(WFWorkflowDescriptor *)&v16 encodeWithCoder:coderCopy];
  v5 = [(WFWorkflowReference *)self icon:v16.receiver];
  [coderCopy encodeObject:v5 forKey:@"icon"];

  subtitle = [(WFWorkflowReference *)self subtitle];
  [coderCopy encodeObject:subtitle forKey:@"subtitle"];

  actionsDescription = [(WFWorkflowReference *)self actionsDescription];
  [coderCopy encodeObject:actionsDescription forKey:@"actionsDescription"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WFWorkflowReference actionCount](self, "actionCount")}];
  [coderCopy encodeObject:v8 forKey:@"actionCount"];

  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[WFWorkflowReference syncHash](self, "syncHash")}];
  [coderCopy encodeObject:v9 forKey:@"syncHash"];

  [coderCopy encodeBool:-[WFWorkflowReference isDeleted](self forKey:{"isDeleted"), @"isDeleted"}];
  [coderCopy encodeBool:-[WFWorkflowReference hiddenFromLibraryAndSync](self forKey:{"hiddenFromLibraryAndSync"), @"hiddenFromLibraryAndSync"}];
  creationDate = [(WFWorkflowReference *)self creationDate];
  [coderCopy encodeObject:creationDate forKey:@"creationDate"];

  modificationDate = [(WFWorkflowReference *)self modificationDate];
  [coderCopy encodeObject:modificationDate forKey:@"modificationDate"];

  lastRunDate = [(WFWorkflowReference *)self lastRunDate];
  [coderCopy encodeObject:lastRunDate forKey:@"lastRunDate"];

  [coderCopy encodeInteger:-[WFWorkflowReference remoteQuarantineStatus](self forKey:{"remoteQuarantineStatus"), @"remoteQuarantineStatus"}];
  remoteQuarantineHash = [(WFWorkflowReference *)self remoteQuarantineHash];
  [coderCopy encodeObject:remoteQuarantineHash forKey:@"remoteQuarantineHash"];

  [coderCopy encodeBool:-[WFWorkflowReference hasShortcutInputVariables](self forKey:{"hasShortcutInputVariables"), @"hasShortcutInputVariables"}];
  [coderCopy encodeBool:-[WFWorkflowReference showInSearch](self forKey:{"showInSearch"), @"showInSearch"}];
  [coderCopy encodeBool:-[WFWorkflowReference receivesInputFromSearch](self forKey:{"receivesInputFromSearch"), @"receivesInputFromSearch"}];
  [coderCopy encodeBool:-[WFWorkflowReference disabledOnLockScreen](self forKey:{"disabledOnLockScreen"), @"disabledOnLockScreen"}];
  source = [(WFWorkflowReference *)self source];
  [coderCopy encodeObject:source forKey:@"source"];

  runEventsCount = [(WFWorkflowReference *)self runEventsCount];
  [coderCopy encodeObject:runEventsCount forKey:@"runEventsCount"];

  [coderCopy encodeBool:-[WFWorkflowReference hasOutputAction](self forKey:{"hasOutputAction"), @"hasOutputAction"}];
}

- (WFWorkflowReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = WFWorkflowReference;
  v5 = [(WFWorkflowDescriptor *)&v28 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionsDescription"];
    actionsDescription = v5->_actionsDescription;
    v5->_actionsDescription = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionCount"];
    v5->_actionCount = [v12 unsignedIntegerValue];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"syncHash"];
    v5->_syncHash = [v13 longValue];

    v5->_isDeleted = [coderCopy decodeBoolForKey:@"isDeleted"];
    v5->_hiddenFromLibraryAndSync = [coderCopy decodeBoolForKey:@"hiddenFromLibraryAndSync"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modificationDate"];
    modificationDate = v5->_modificationDate;
    v5->_modificationDate = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastRunDate"];
    lastRunDate = v5->_lastRunDate;
    v5->_lastRunDate = v18;

    v5->_remoteQuarantineStatus = [coderCopy decodeIntegerForKey:@"remoteQuarantineStatus"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteQuarantineHash"];
    remoteQuarantineHash = v5->_remoteQuarantineHash;
    v5->_remoteQuarantineHash = v20;

    v5->_hasShortcutInputVariables = [coderCopy decodeBoolForKey:@"hasShortcutInputVariables"];
    v5->_showInSearch = [coderCopy decodeBoolForKey:@"showInSearch"];
    v5->_receivesInputFromSearch = [coderCopy decodeBoolForKey:@"receivesInputFromSearch"];
    v5->_disabledOnLockScreen = [coderCopy decodeBoolForKey:@"disabledOnLockScreen"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source"];
    source = v5->_source;
    v5->_source = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"runEventsCount"];
    runEventsCount = v5->_runEventsCount;
    v5->_runEventsCount = v24;

    v5->_hasOutputAction = [coderCopy decodeBoolForKey:@"hasOutputAction"];
    v26 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v79.receiver = self;
      v79.super_class = WFWorkflowReference;
      if (![(WFWorkflowDescriptor *)&v79 isEqual:v5])
      {
        v12 = 0;
LABEL_90:

        goto LABEL_91;
      }

      subtitle = [(WFWorkflowReference *)self subtitle];
      subtitle2 = [(WFWorkflowReference *)v5 subtitle];
      v8 = subtitle;
      v9 = subtitle2;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        if (!v8 || !v9)
        {

LABEL_20:
          subtitle3 = [(WFWorkflowReference *)self subtitle];
          if ([subtitle3 length])
          {
            LOBYTE(v20) = 0;
LABEL_88:

            v12 = v20;
            goto LABEL_89;
          }

          v76 = subtitle3;
          subtitle4 = [(WFWorkflowReference *)v5 subtitle];
          if ([subtitle4 length])
          {
            LOBYTE(v20) = 0;
LABEL_87:

            subtitle3 = v76;
            goto LABEL_88;
          }

          v78 = 1;
LABEL_14:
          actionsDescription = [(WFWorkflowReference *)self actionsDescription];
          actionsDescription2 = [(WFWorkflowReference *)v5 actionsDescription];
          v15 = actionsDescription;
          v16 = actionsDescription2;
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

          actionCount = [(WFWorkflowReference *)self actionCount];
          if (actionCount != [(WFWorkflowReference *)v5 actionCount])
          {
            goto LABEL_31;
          }

          syncHash = [(WFWorkflowReference *)self syncHash];
          if (syncHash != [(WFWorkflowReference *)v5 syncHash])
          {
            goto LABEL_31;
          }

          icon = [(WFWorkflowReference *)self icon];
          icon2 = [(WFWorkflowReference *)v5 icon];
          v25 = icon;
          v26 = icon2;
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
                creationDate = [(WFWorkflowReference *)self creationDate];
                creationDate2 = [(WFWorkflowReference *)v5 creationDate];
                v32 = creationDate;
                v33 = creationDate2;
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
                      modificationDate = [(WFWorkflowReference *)self modificationDate];
                      modificationDate2 = [(WFWorkflowReference *)v5 modificationDate];
                      v38 = modificationDate;
                      v39 = modificationDate2;
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
                            isDeleted = [(WFWorkflowReference *)self isDeleted];
                            if (isDeleted != [(WFWorkflowReference *)v5 isDeleted])
                            {
                              goto LABEL_53;
                            }

                            disabledOnLockScreen = [(WFWorkflowReference *)self disabledOnLockScreen];
                            if (disabledOnLockScreen != [(WFWorkflowReference *)v5 disabledOnLockScreen])
                            {
                              goto LABEL_53;
                            }

                            hiddenFromLibraryAndSync = [(WFWorkflowReference *)self hiddenFromLibraryAndSync];
                            if (hiddenFromLibraryAndSync != [(WFWorkflowReference *)v5 hiddenFromLibraryAndSync])
                            {
                              goto LABEL_53;
                            }

                            v70 = v35;
                            lastRunDate = [(WFWorkflowReference *)self lastRunDate];
                            lastRunDate2 = [(WFWorkflowReference *)v5 lastRunDate];
                            v48 = lastRunDate;
                            v49 = lastRunDate2;
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
                                  remoteQuarantineStatus = [(WFWorkflowReference *)self remoteQuarantineStatus];
                                  if (remoteQuarantineStatus != [(WFWorkflowReference *)v5 remoteQuarantineStatus])
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

                                  remoteQuarantineHash = [(WFWorkflowReference *)self remoteQuarantineHash];
                                  remoteQuarantineHash2 = [(WFWorkflowReference *)v5 remoteQuarantineHash];
                                  v54 = remoteQuarantineHash;
                                  v65 = remoteQuarantineHash2;
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

                                  showInSearch = [(WFWorkflowReference *)self showInSearch];
                                  if (showInSearch != [(WFWorkflowReference *)v5 showInSearch]|| (v57 = [(WFWorkflowReference *)self receivesInputFromSearch], v57 != [(WFWorkflowReference *)v5 receivesInputFromSearch]) || (v58 = [(WFWorkflowReference *)self hasShortcutInputVariables], v58 != [(WFWorkflowReference *)v5 hasShortcutInputVariables]))
                                  {
                                    LOBYTE(v20) = 0;
LABEL_78:
                                    v25 = v74;
                                    v35 = v70;
                                    v50 = v65;
                                    goto LABEL_79;
                                  }

                                  runEventsCount = [(WFWorkflowReference *)self runEventsCount];
                                  runEventsCount2 = [(WFWorkflowReference *)v5 runEventsCount];
                                  v54 = runEventsCount;
                                  v63 = runEventsCount2;
                                  v55 = v63;
                                  if (v54 == v63)
                                  {

LABEL_98:
                                    hasOutputAction = [(WFWorkflowReference *)self hasOutputAction];
                                    v20 = hasOutputAction ^ [(WFWorkflowReference *)v5 hasOutputAction]^ 1;
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

- (WFWorkflowReference)initWithIdentifier:(id)identifier name:(id)name color:(int64_t)color glyphCharacter:(unsigned __int16)character associatedAppBundleIdentifier:(id)bundleIdentifier searchAttributionAppBundleIdentifier:(id)appBundleIdentifier subtitle:(id)subtitle actionsDescription:(id)self0 actionCount:(unint64_t)self1 syncHash:(int64_t)self2 isDeleted:(BOOL)self3 hiddenFromLibraryAndSync:(BOOL)self4 creationDate:(id)self5 modificationDate:(id)self6 lastRunDate:(id)self7 remoteQuarantineStatus:(int64_t)self8 remoteQuarantineHash:(id)self9 showInSearch:(BOOL)search receivesInputFromSearch:(BOOL)fromSearch hasShortcutInputVariables:(BOOL)variables disabledOnLockScreen:(BOOL)screen source:(id)source runEventsCount:(id)eventsCount hasOutputAction:(BOOL)action
{
  characterCopy = character;
  identifierCopy = identifier;
  nameCopy = name;
  bundleIdentifierCopy = bundleIdentifier;
  appBundleIdentifierCopy = appBundleIdentifier;
  subtitleCopy = subtitle;
  descriptionCopy = description;
  dateCopy = date;
  modificationDateCopy = modificationDate;
  runDateCopy = runDate;
  quarantineHashCopy = quarantineHash;
  sourceCopy = source;
  eventsCountCopy = eventsCount;
  v50 = modificationDateCopy;
  if (!modificationDateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFWorkflowReference.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"modificationDate"}];
  }

  v56.receiver = self;
  v56.super_class = WFWorkflowReference;
  v34 = [(WFWorkflowDescriptor *)&v56 initWithIdentifier:identifierCopy name:nameCopy color:color glyphCharacter:characterCopy associatedAppBundleIdentifier:bundleIdentifierCopy searchAttributionAppBundleIdentifier:appBundleIdentifierCopy];
  if (v34)
  {
    v35 = [subtitleCopy copy];
    subtitle = v34->_subtitle;
    v34->_subtitle = v35;

    v37 = [descriptionCopy copy];
    actionsDescription = v34->_actionsDescription;
    v34->_actionsDescription = v37;

    v34->_actionCount = count;
    v34->_syncHash = hash;
    v39 = [objc_alloc(MEMORY[0x1E69E0E00]) initWithBackgroundColorValue:color glyphCharacter:characterCopy customImageData:0];
    icon = v34->_icon;
    v34->_icon = v39;

    v34->_isDeleted = deleted;
    v34->_hiddenFromLibraryAndSync = sync;
    objc_storeStrong(&v34->_creationDate, date);
    objc_storeStrong(&v34->_modificationDate, modificationDate);
    objc_storeStrong(&v34->_lastRunDate, runDate);
    v34->_remoteQuarantineStatus = status;
    objc_storeStrong(&v34->_remoteQuarantineHash, quarantineHash);
    v34->_showInSearch = search;
    v34->_receivesInputFromSearch = fromSearch;
    v34->_hasShortcutInputVariables = variables;
    v34->_disabledOnLockScreen = screen;
    objc_storeStrong(&v34->_source, source);
    objc_storeStrong(&v34->_runEventsCount, eventsCount);
    v34->_hasOutputAction = action;
    v41 = v34;
  }

  return v34;
}

+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  v6 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  v8 = [v6 unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:error];

  return v8;
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6982C40] exportedTypeWithIdentifier:@"com.apple.shortcuts.workflow-reference"];
  identifier = [v2 identifier];
  v7[0] = identifier;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (NSArray)readableTypeIdentifiersForItemProvider
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6982C40] exportedTypeWithIdentifier:@"com.apple.shortcuts.workflow-reference"];
  identifier = [v2 identifier];
  v7[0] = identifier;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)speakableString
{
  v3 = objc_alloc(MEMORY[0x1E696EA50]);
  identifier = [(WFWorkflowReference *)self identifier];
  name = [(WFWorkflowDescriptor *)self name];
  v6 = [v3 initWithVocabularyIdentifier:identifier spokenPhrase:name pronunciationHint:0];

  return v6;
}

- (NSUserActivity)userActivityForViewing
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E69636A8]) initWithActivityType:@"is.workflow.my.app.viewworkflow"];
  name = [(WFWorkflowDescriptor *)self name];
  [v3 setTitle:name];

  v15[0] = @"workflowID";
  identifier = [(WFWorkflowReference *)self identifier];
  v15[1] = @"workflowName";
  v16[0] = identifier;
  name2 = [(WFWorkflowDescriptor *)self name];
  v16[1] = name2;
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