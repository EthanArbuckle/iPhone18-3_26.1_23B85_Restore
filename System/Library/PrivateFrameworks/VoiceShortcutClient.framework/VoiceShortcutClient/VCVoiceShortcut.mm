@interface VCVoiceShortcut
- (BOOL)hasBeenModified;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (VCVoiceShortcut)initWithCoder:(id)coder;
- (VCVoiceShortcut)initWithIdentifier:(id)identifier phrase:(id)phrase shortcutName:(id)name shortcutDescription:(id)description associatedAppBundleIdentifier:(id)bundleIdentifier dateCreated:(id)created dateLastModified:(id)modified lastRunDate:(id)self0 runEventsCount:(id)self1 shortcut:(id)self2 keyImageData:(id)self3 error:(id *)self4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VCVoiceShortcut

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(VCVoiceShortcut *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  phrase = [(VCVoiceShortcut *)self phrase];
  [coderCopy encodeObject:phrase forKey:@"phrase"];

  shortcutName = [(VCVoiceShortcut *)self shortcutName];
  [coderCopy encodeObject:shortcutName forKey:@"shortcutName"];

  shortcutDescription = [(VCVoiceShortcut *)self shortcutDescription];
  [coderCopy encodeObject:shortcutDescription forKey:@"shortcutDescription"];

  associatedAppBundleIdentifier = [(VCVoiceShortcut *)self associatedAppBundleIdentifier];
  [coderCopy encodeObject:associatedAppBundleIdentifier forKey:@"associatedAppBundleIdentifier"];

  dateCreated = [(VCVoiceShortcut *)self dateCreated];
  [coderCopy encodeObject:dateCreated forKey:@"dateCreated"];

  dateLastModified = [(VCVoiceShortcut *)self dateLastModified];
  [coderCopy encodeObject:dateLastModified forKey:@"dateLastModified"];

  lastRunDate = [(VCVoiceShortcut *)self lastRunDate];
  [coderCopy encodeObject:lastRunDate forKey:@"lastRunDate"];

  runEventsCount = [(VCVoiceShortcut *)self runEventsCount];
  [coderCopy encodeObject:runEventsCount forKey:@"runEventsCount"];

  keyImage = [(VCVoiceShortcut *)self keyImage];
  _imageData = [keyImage _imageData];
  [coderCopy encodeObject:_imageData forKey:@"keyImageData"];

  shortcut = [(VCVoiceShortcut *)self shortcut];
  [coderCopy encodeObject:shortcut forKey:@"shortcut"];
}

- (VCVoiceShortcut)initWithCoder:(id)coder
{
  v29 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phrase"];
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortcutName"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortcutDescription"];
  v7 = v5;
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedAppBundleIdentifier"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateCreated"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateLastModified"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastRunDate"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"runEventsCount"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortcut"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyImageData"];

  selfCopy = 0;
  if (v7 && v6 && v23 && v8 && v9)
  {
    v24 = 0;
    v15 = [VCVoiceShortcut initWithIdentifier:"initWithIdentifier:phrase:shortcutName:shortcutDescription:associatedAppBundleIdentifier:dateCreated:dateLastModified:lastRunDate:runEventsCount:shortcut:keyImageData:error:" phrase:v7 shortcutName:v9 shortcutDescription:v10 associatedAppBundleIdentifier:v11 dateCreated:v12 dateLastModified:v13 lastRunDate:&v24 runEventsCount:? shortcut:? keyImageData:? error:?];
    v16 = v24;
    if (v16)
    {
      v20 = v7;
      v17 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v26 = "[VCVoiceShortcut initWithCoder:]";
        v27 = 2112;
        v28 = v16;
        _os_log_impl(&dword_1B1DE3000, v17, OS_LOG_TYPE_ERROR, "%s Failed to construct a valid VoiceShortcut from coder: %@", buf, 0x16u);
      }

      v7 = v20;
    }

    self = v15;

    selfCopy = self;
  }

  v18 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (NSString)description
{
  v16 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v15 = NSStringFromClass(v3);
  identifier = [(VCVoiceShortcut *)self identifier];
  phrase = [(VCVoiceShortcut *)self phrase];
  shortcutName = [(VCVoiceShortcut *)self shortcutName];
  shortcutDescription = [(VCVoiceShortcut *)self shortcutDescription];
  associatedAppBundleIdentifier = [(VCVoiceShortcut *)self associatedAppBundleIdentifier];
  dateCreated = [(VCVoiceShortcut *)self dateCreated];
  dateLastModified = [(VCVoiceShortcut *)self dateLastModified];
  lastRunDate = [(VCVoiceShortcut *)self lastRunDate];
  runEventsCount = [(VCVoiceShortcut *)self runEventsCount];
  v12 = [v16 stringWithFormat:@"<%@ %p\nidentifier: %@\nphrase: %@\nshortcutName: %@\nshortcutDescription: %@\nassociatedAppBundleIdentifier: %@\ndateCreated: %@\ndateLastModified: %@\nlastRunDate: %@\nrunEventsCount: %@>", v15, self, identifier, phrase, shortcutName, shortcutDescription, associatedAppBundleIdentifier, dateCreated, dateLastModified, lastRunDate, runEventsCount];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(VCVoiceShortcut *)self identifier];
      identifier2 = [(VCVoiceShortcut *)v5 identifier];
      if (![identifier isEqualToString:identifier2])
      {
        v14 = 0;
LABEL_44:

        goto LABEL_45;
      }

      phrase = [(VCVoiceShortcut *)self phrase];
      phrase2 = [(VCVoiceShortcut *)v5 phrase];
      if (![phrase isEqualToString:phrase2])
      {
        v14 = 0;
LABEL_43:

        goto LABEL_44;
      }

      shortcutName = [(VCVoiceShortcut *)self shortcutName];
      shortcutName2 = [(VCVoiceShortcut *)v5 shortcutName];
      if (![shortcutName isEqual:shortcutName2])
      {
        v14 = 0;
LABEL_42:

        goto LABEL_43;
      }

      shortcutDescription = [(VCVoiceShortcut *)self shortcutDescription];
      shortcutDescription2 = [(VCVoiceShortcut *)v5 shortcutDescription];
      v48 = shortcutDescription;
      if (shortcutDescription == shortcutDescription2)
      {
        v46 = shortcutName;
      }

      else
      {
        shortcutDescription3 = [(VCVoiceShortcut *)self shortcutDescription];
        shortcutDescription4 = [(VCVoiceShortcut *)v5 shortcutDescription];
        v45 = shortcutDescription3;
        if (![shortcutDescription3 isEqual:shortcutDescription4])
        {
          v14 = 0;
          goto LABEL_40;
        }

        v46 = shortcutName;
      }

      associatedAppBundleIdentifier = [(VCVoiceShortcut *)self associatedAppBundleIdentifier];
      associatedAppBundleIdentifier2 = [(VCVoiceShortcut *)v5 associatedAppBundleIdentifier];
      if (![associatedAppBundleIdentifier isEqual:associatedAppBundleIdentifier2])
      {

        v14 = 0;
        goto LABEL_39;
      }

      v41 = associatedAppBundleIdentifier2;
      v42 = shortcutName2;
      v43 = associatedAppBundleIdentifier;
      dateCreated = [(VCVoiceShortcut *)self dateCreated];
      [(VCVoiceShortcut *)v5 dateCreated];
      v19 = v18 = dateCreated;
      if (![dateCreated isEqual:?])
      {
        v14 = 0;
        shortcutName2 = v42;
LABEL_38:

LABEL_39:
        shortcutName = v46;
        if (v48 == shortcutDescription2)
        {
LABEL_41:

          goto LABEL_42;
        }

LABEL_40:

        goto LABEL_41;
      }

      dateLastModified = [(VCVoiceShortcut *)self dateLastModified];
      dateLastModified2 = [(VCVoiceShortcut *)v5 dateLastModified];
      v40 = dateLastModified;
      if (![dateLastModified isEqual:?])
      {
        v14 = 0;
        shortcutName2 = v42;
LABEL_37:

        goto LABEL_38;
      }

      lastRunDate = [(VCVoiceShortcut *)self lastRunDate];
      lastRunDate2 = [(VCVoiceShortcut *)v5 lastRunDate];
      v38 = lastRunDate;
      if (![lastRunDate isEqual:?])
      {
        v14 = 0;
        shortcutName2 = v42;
LABEL_36:

        goto LABEL_37;
      }

      runEventsCount = [(VCVoiceShortcut *)self runEventsCount];
      runEventsCount2 = [(VCVoiceShortcut *)v5 runEventsCount];
      v36 = runEventsCount;
      if (![runEventsCount isEqual:?])
      {
        v14 = 0;
        shortcutName2 = v42;
LABEL_35:

        goto LABEL_36;
      }

      shortcut = [(VCVoiceShortcut *)self shortcut];
      shortcut2 = [(VCVoiceShortcut *)v5 shortcut];
      v34 = shortcut;
      v24 = shortcut == shortcut2;
      shortcutName2 = v42;
      if (v24 || (-[VCVoiceShortcut shortcut](self, "shortcut"), v31 = objc_claimAutoreleasedReturnValue(), -[VCVoiceShortcut shortcut](v5, "shortcut"), v30 = objc_claimAutoreleasedReturnValue(), [v31 isEqual:?]))
      {
        keyImage = [(VCVoiceShortcut *)self keyImage];
        keyImage2 = [(VCVoiceShortcut *)v5 keyImage];
        if (keyImage == keyImage2)
        {

          v14 = 1;
        }

        else
        {
          v29 = keyImage2;
          keyImage3 = [(VCVoiceShortcut *)self keyImage];
          keyImage4 = [(VCVoiceShortcut *)v5 keyImage];
          v14 = [keyImage3 isEqual:keyImage4];
        }

        if (v34 == shortcut2)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v14 = 0;
      }

LABEL_34:
      goto LABEL_35;
    }

    v14 = 0;
  }

LABEL_45:

  return v14;
}

- (unint64_t)hash
{
  identifier = [(VCVoiceShortcut *)self identifier];
  v4 = [identifier hash];
  shortcut = [(VCVoiceShortcut *)self shortcut];
  v6 = [shortcut hash] ^ v4;
  dateLastModified = [(VCVoiceShortcut *)self dateLastModified];
  v8 = [dateLastModified hash];

  return v6 ^ v8;
}

- (BOOL)hasBeenModified
{
  dateCreated = [(VCVoiceShortcut *)self dateCreated];
  dateLastModified = [(VCVoiceShortcut *)self dateLastModified];
  v5 = [dateCreated compare:dateLastModified] == -1;

  return v5;
}

- (VCVoiceShortcut)initWithIdentifier:(id)identifier phrase:(id)phrase shortcutName:(id)name shortcutDescription:(id)description associatedAppBundleIdentifier:(id)bundleIdentifier dateCreated:(id)created dateLastModified:(id)modified lastRunDate:(id)self0 runEventsCount:(id)self1 shortcut:(id)self2 keyImageData:(id)self3 error:(id *)self4
{
  v76 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  phraseCopy = phrase;
  nameCopy = name;
  descriptionCopy = description;
  bundleIdentifierCopy = bundleIdentifier;
  createdCopy = created;
  modifiedCopy = modified;
  selfCopy = self;
  dateCopy = date;
  countCopy = count;
  shortcutCopy = shortcut;
  dataCopy = data;
  if (![identifierCopy length])
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    v54 = v53 = createdCopy;
    [v54 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcut.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"identifier.length"}];

    createdCopy = v53;
  }

  if (![phraseCopy length])
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    v56 = v55 = createdCopy;
    [v56 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcut.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"phrase.length"}];

    createdCopy = v55;
  }

  if (![nameCopy length])
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    v58 = v57 = createdCopy;
    [v58 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcut.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"shortcutName.length"}];

    createdCopy = v57;
  }

  v65 = createdCopy;
  if (!createdCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCVoiceShortcut.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"dateCreated"}];
  }

  if (!modifiedCopy)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCVoiceShortcut.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"dateLastModified"}];
  }

  v26 = identifierCopy;
  v27 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v26];
  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = [MEMORY[0x1E696ABC0] vc_voiceShortcutErrorWithCode:1001 reason:{@"(%@) is not a valid UUID string.", v26}];
    v29 = v28;
  }

  v30 = v28;
  if (!v27)
  {
    if (!error)
    {
      goto LABEL_28;
    }

    v49 = v30;
    v48 = 0;
    *error = v30;
LABEL_29:
    v38 = descriptionCopy;
    v45 = dataCopy;
    goto LABEL_30;
  }

  if (![bundleIdentifierCopy length])
  {
    _associatedAppBundleIdentifier = [shortcutCopy _associatedAppBundleIdentifier];

    bundleIdentifierCopy = _associatedAppBundleIdentifier;
  }

  if (![bundleIdentifierCopy length])
  {
    v50 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v71 = "[VCVoiceShortcut initWithIdentifier:phrase:shortcutName:shortcutDescription:associatedAppBundleIdentifier:dateCreated:dateLastModified:lastRunDate:runEventsCount:shortcut:keyImageData:error:]";
      v72 = 2114;
      v73 = shortcutCopy;
      v74 = 2114;
      v75 = @"an associatedAppBundleIdentifier is required on the shortcut";
      _os_log_impl(&dword_1B1DE3000, v50, OS_LOG_TYPE_ERROR, "%s Failed to init VCVoiceShortcut with shortcut=%{public}@ because %{public}@", buf, 0x20u);
    }

    if (!error)
    {
      goto LABEL_28;
    }

    [MEMORY[0x1E696ABC0] vc_voiceShortcutErrorWithCode:1009 reason:{@"%@", @"an associatedAppBundleIdentifier is required on the shortcut"}];
    *error = v48 = 0;
    goto LABEL_29;
  }

  v69.receiver = self;
  v69.super_class = VCVoiceShortcut;
  selfCopy = [(VCVoiceShortcut *)&v69 init];
  if (!selfCopy)
  {
LABEL_28:
    v48 = 0;
    goto LABEL_29;
  }

  v32 = [v26 copy];
  identifier = selfCopy->_identifier;
  selfCopy->_identifier = v32;

  v34 = [phraseCopy copy];
  phrase = selfCopy->_phrase;
  selfCopy->_phrase = v34;

  v36 = [nameCopy copy];
  shortcutName = selfCopy->_shortcutName;
  selfCopy->_shortcutName = v36;

  v38 = descriptionCopy;
  v39 = [descriptionCopy copy];
  shortcutDescription = selfCopy->_shortcutDescription;
  selfCopy->_shortcutDescription = v39;

  v41 = [bundleIdentifierCopy copy];
  associatedAppBundleIdentifier = selfCopy->_associatedAppBundleIdentifier;
  selfCopy->_associatedAppBundleIdentifier = v41;

  objc_storeStrong(&selfCopy->_dateCreated, created);
  objc_storeStrong(&selfCopy->_dateLastModified, modified);
  objc_storeStrong(&selfCopy->_lastRunDate, date);
  objc_storeStrong(&selfCopy->_runEventsCount, count);
  v43 = [shortcutCopy copy];
  shortcut = selfCopy->_shortcut;
  selfCopy->_shortcut = v43;

  v45 = dataCopy;
  v46 = [dataCopy length];
  if (v46)
  {
    v46 = [MEMORY[0x1E696E868] imageWithImageData:dataCopy];
  }

  keyImage = selfCopy->_keyImage;
  selfCopy->_keyImage = v46;

  selfCopy = selfCopy;
  v48 = selfCopy;
LABEL_30:

  v51 = *MEMORY[0x1E69E9840];
  return v48;
}

@end